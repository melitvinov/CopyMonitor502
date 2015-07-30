unit ServerZ;                     

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids_ts, TSGrid,  ComCtrls, DateUtils,
  FConstType, FPanel, FController, PicCtr,  SetGrid, GIFDef, GIFComponent,
  ExtCtrls, Boiler, StdCtrls, ComObj;

type
  THotServerZ=Class(TBlock)
    private
      LastPlantDate,LastFruDate:TDateTime;
//      IsFirstFru:Boolean;
      LastPlantH,LastPlantDel,LastFruH,LastFruDel,LastPlantDTime,LastFruDTime:Double;
    public
      procedure Init;override;
      function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//      procedure SetTree(var Tree:TTreeView); override;
//      procedure PostPortRead; override;
    function CalcFlow(const Ah,Bh,Ch,Dh,HeatRes,Square,dX,Kst,Ksh,Vin:double): double;
    end;

  TControlZ=Class(TBlock)
    public
     procedure Init;override;
    end;

  TSensors=Class(TBlock)
    public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure SaveToFile; override;
    end;


  TConfig=Class(TBlock)
    public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    end;
  DoubleArray=array[1..10] of double;
  PDoubleArray=^DoubleArray;

  TFServerZ = class(TFPicCtr)
    Splitter1: TSplitter;
    FPanel1: TFPanel;
    FPDrain: TFPanel;
    FPanel8: TFPanel;
    GIFSShow3: TGIFSShow;
    xHotGrid: TtsGrid;
    FPZone: TFPanel;
    FPanel7: TFPanel;
    GIFSShow4: TGIFSShow;
    ArxivGrid: TtsGrid;
    Bevel1: TBevel;
    DrainImage: TImage;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    xRH: TLabel;
    xCo2: TLabel;
    xTAir: TLabel;
    xSun: TLabel;
    xSapFlow: TLabel;
    procedure xHotGridEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure xHotGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    OleZServer:OleVariant;
  public
    { Public declarations }
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
    function CtrFromFile(CtrNameFile:string):Boolean;override;
  end;

var
  FServerZ: TFServerZ;
implementation

{$R *.dfm}

uses MessageU,GGraf, Audit,Subr;   // Port, , ClimCalc

const COUNT_Y_CONTROL_Z=6;
      SIZE_CONTROL_Z=COUNT_Y_CONTROL_Z*SizeOf(Double);
  cSmHeatRes=1;
  cSmSquare=2;
  cSmdX=3;
  cSmKst=4;
  cSmKsh=5;
  cSmVolts=6;
       BOX_SIZE=SizeOf(Double);
var
YNameControlZ:array [1..COUNT_Y_CONTROL_Z] of TNameConst=(
    (Name:'Сокодвижение-Резистор нагрева';Frm:ffff;Ed:'Ом';TipSens:TipCalc;Min:0;Max:1500;Def:NO_MIN_MAX;
      Index:BOX_SIZE*0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Сокодвижение-Площадь сечения';Frm:ffff;Ed:'см2';TipSens:TipCalc;Min:0;Max:90;Def:NO_MIN_MAX;
      Index:BOX_SIZE*1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Сокодвижение-Расстояние датчиков';Frm:ffff;Ed:'мм';TipSens:TipCalc;Min:0;Max:120;Def:NO_MIN_MAX;
      Index:BOX_SIZE*2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Сокодвижение-Теплопроводность стебля';Frm:ffff;Ed:'Вт/м*К';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*3;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Сокодвижение-Теплопроводность изоляции';Frm:ffff;Ed:'Вт/мВ';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Сокодвижение-Напряжение питания';Frm:ffff;Ed:'В';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*5;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
  );

var XNameControlZ:array [1..1] of TXNames=(
    (Name:'Значение';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0)
    );

procedure TControlZ.Init;//override;
begin
     CountY:=COUNT_Y_CONTROL_Z;
     CountX:=1;
     SizeCol:=SIZE_CONTROL_Z;
     FullSize:=SizeCol;
//     ReceiveByte:=RESEIVE_SIZE;
     SendByte:=0;               //SizeCol;
     Pref:='Параметры';//ProgMess[231];    //'Состояние';
     NameBlock:=Pref;
     ConstNames:=Addr(YNameControlZ[1]);
     XNames:=Addr(XNameControlZ[1]);
     XNamesCount:=CountX;
end;
//----------------- end control -------------------
const COUNT_Y_SERVER_HOT=18;
      posSapFlow=16;//COUNT_Y_SERVER_HOT-1;
      posPlantDel=17;
      posFruDel=18;//COUNT_Y_SERVER_HOT;
      posPlantH=7;
      posFruH=8;
      posStartSensor=1;
      SUM_SENSORS=15;
      SIZE_HOT_SERVER=SUM_SENSORS*SizeOf(Double);
var
NameHotServerZ:array [1..COUNT_Y_SERVER_HOT] of TNameConst=(
    (Name:'(1)Мощность солнца';Frm:ffff;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:1500;Def:NO_MIN_MAX;
      Index:BOX_SIZE*0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(2)Температура воздуха';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:NO_MIN_MAX;
      Index:BOX_SIZE*1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(3)Влажность воздуха';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:120;Def:NO_MIN_MAX;
      Index:BOX_SIZE*2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(4)Концентрация СО2';Frm:ffff;Ed:'ppm';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*3;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(5)Температура листа';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(6)Влажность листа';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*5;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(7)Вес растения';Frm:ffff;Ed:'кГ';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(8)Вес плода';Frm:ffff;Ed:'г';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*7;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(9)Диаметр стебля';Frm:ffff;Ed:'мм';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*8;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(10)Диаметр плода';Frm:ffff;Ed:'мм';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*9;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(11)Влажность почвы';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*10;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(12)Термопара A';Frm:ffff;Ed:'мВ';TipSens:TipCalibr;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*11;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(13)Термопара B';Frm:ffff;Ed:'мВ';TipSens:TipProg;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*12;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(14)Термопара C';Frm:ffff;Ed:'мВ';TipSens:TipProg;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*13;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'(15)Термопара D';Frm:ffff;Ed:'мВ';TipSens:TipProg;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*14;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Сокодвижение';Frm:ffff;Ed:'г/час';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:BOX_SIZE*15;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Прирост растения';Frm:ffff;Ed:'г/сутки';TipSens:TipCalc;Min:-50;Max:50;Def:NO_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Прирост плода';Frm:ffff;Ed:'г/сутки';TipSens:TipCalc;Min:-10;Max:50;Def:NO_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
  );

var HotServerXName:array [1..1] of TXNames=(
    (Name:'Значение';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0)
    );

procedure THotServerZ.Init;//override;
begin
     CountY:=COUNT_Y_SERVER_HOT;
     CountX:=1;
     SizeCol:=SIZE_HOT_SERVER;
     FullSize:=SizeCol;
//     ReceiveByte:=RESEIVE_SIZE;
     SendByte:=0;               //SizeCol;
     Pref:=ProgMess[231];    //'Состояние';
     NameBlock:=Pref;
     ConstNames:=Addr(NameHotServerZ[1]);
     LastFruDate:=Now-365;
end;

function CalcDel(vNowVal,vNowDate:double; var vLastDate:TDateTime;var vLastVal,vLastDel,vLastDTime:double):double;
const
    Knom=0.08;
    dTmin=cMin/2;
    dTmax=120*cMin;
    dValMax=100;
var Del,K,dT:Double;
begin
      dT:=vNowDate-vLastDate;
      if (dT < 0)then          // or (K>1)
          begin
          vLastVal:=vNowVal;
          vLastDel:=0;
          end;
      if dT > 0 then
      try
          Del:=(vNowVal-vLastVal)/dT;
          if(Del > dValMax) or (Del < -dValMax)then
              begin
              IsArtefact:=True;
              end
          else
              begin
              vNowVal:=vLastVal*0.5+vNowVal*0.5;
              Del:=(vNowVal-vLastVal)/dT;
              K:=Knom*vLastDTime/dT;
              if (K>1) or (K<0) then K:=1;
              vLastDel:=vLastDel*(1-K)+Del*K;
//              Txt:=Format('%8.2f',[Result])+' '+ConstNames[ValY].Ed;
              end;
      except
      end;
      Result:=vLastDel;
      vLastDate:=vNowDate;
      vLastVal:=vNowVal;
      vLastDTime:=dT;
end;

function THotServerZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var  HotArray,ControlArray:PDoubleArray;
begin
  if ( ValY = posFruDel) and (ValX>0) then
      begin
      Result:=CalcDel(LoadXYvirt(cOutBlock,ValX,posFruH,Txt),BlDate,LastFruDate,LastFruH,LastFruDel,LastFruDTime);
      Txt:=Format('%8.2f',[Result])+' '+ConstNames[ValY].Ed;
      Exit;
      end;
  if ( ValY = posPlantDel) and (ValX>0) then
      begin
      Result:=CalcDel(LoadXYvirt(cOutBlock,ValX,posPlantH,Txt),BlDate,LastPlantDate,LastPlantH,LastPlantDel,LastPlantDTime);
      Txt:=Format('%8.2f',[Result])+' '+ConstNames[ValY].Ed;
      Exit;
      end;

  if ( ValY = posSapFlow) and (ValX>0) then   //ConstNames[ValY].Index
      begin
      Txt:='';
      HotArray:=Adr;  //Block[0].
      ControlArray:=ParentCtr.Block[3].Adr;
      if ParentCtr.Block[3].SetEndRecord then
      Result:=CalcFlow(HotArray^[ValY-4],HotArray^[ValY-3]
        ,HotArray^[ValY-2],HotArray^[ValY-1]
        ,ControlArray^[cSmHeatRes],ControlArray^[cSmSquare]
        ,ControlArray^[cSmdX],ControlArray^[cSmKst]
        ,ControlArray^[cSmKsh],ControlArray^[cSmVolts])
      else begin Result:=-5; Txt:='Нет параметров'; Exit; end;
      if Result > 0 then
        Txt:=Format('%8.2f',[Result])+' '+ConstNames[ValY].Ed  //FloatToStr(Result)
        else Txt:='Не рассчитано';
      Exit;
      end;
  Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
end;

function THotServerZ.CalcFlow(const Ah,Bh,Ch,Dh,HeatRes,Square,dX,Kst,Ksh,Vin:double): double;
var  Pin, Qv, Qr, Qf, dT: double;  //Vin,
begin
          dT:=(Ah+Bh)/2/0.04;
          if dT < 0.25 then begin Result:=-2; Exit; end;
//          Vin:=Dh;
          if Vin > 0 then Pin:=Vin*Vin/HeatRes
            else Pin:=Dh*Dh/HeatRes;
          Qv:=Kst*Square*(Bh-Ah)/0.04/dX/10;
          Qr:=Ksh*Ch;
          Qf:=Pin-Qv-Qr;
          if Qf <=0 then begin Result:=-3; Exit; end;
          Result:=Qf/4.186/dT*3600;
end;
//--------------------------------------------------------------------

var ConfigXName:array [1..1] of TXNames=(
    (Name:'Наличие';Frm:SS;Ed:' ';Index:0;Cfg:0;Kind:0)
    );

procedure TConfig.Init;//override;
begin
     CountY:=COUNT_Y_SERVER_HOT;
     CountX:=1;
     SizeCol:=CountY*SizeOf(double);
     FullSize:=SizeCol;
     SendByte:=0;
     Pref:=ProgMess[193];       //'Конфигурация';
     NameBlock:=ProgMess[194];  //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(NameHotServerZ[1]);
     XNames:=Addr(ConfigXName[1]);
     XNamesCount:=CountX;
end;

function TConfig.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pConf:PByteArray;
begin
  pConf:=Adr;
  if (ValY > 0) and (ValX > 0) then
     Result:=Convers(ConstNames[ValY].Name,
            Addr(pConf^[ConstNames[ValY].Index]),SS
            ,vInBlock,ValX,ValY,Txt,'')
  else Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
  ConfigExist:=cfExistTrue;
end;

//----------TSensors ------------------
const   SENSOR_Y_COUNT=SUM_SENSORS;
        SENSOR_X_COUNT=8;
        COL_SIZE=SENSOR_Y_COUNT*SizeOf(double);

var SensorXName:array [1..SENSOR_X_COUNT] of TXNames=(
    (Name:'Номер модуля';Frm:ffff;Ed:'модуль';Index:COL_SIZE*0;Cfg:0;Kind:0),
    (Name:'Номер входа в модуле';Frm:ffff;Ed:'вход';Index:COL_SIZE*1;Cfg:0;Kind:0),
    (Name:'Диапазон';Frm:ComboSS;Ed:' ';Index:COL_SIZE*2;Cfg:0;Kind:0),     //imsDiapaz
    (Name:'Эталон1';Frm:None;Ed:'';Index:COL_SIZE*3;Cfg:0;Kind:0),
    (Name:'Напряжение1';Frm:ffff;Ed:'мВ';Index:COL_SIZE*4;Cfg:0;Kind:0),
    (Name:'Эталон2';Frm:None;Ed:'';Index:COL_SIZE*5;Cfg:0;Kind:0),
    (Name:'Напряжение2';Frm:ffff;Ed:'мВ';Index:COL_SIZE*6;Cfg:0;Kind:0),
    (Name:'Усреднение';Frm:ffff;Ed:'точек';Index:COL_SIZE*7;Cfg:0;Kind:0)
     );

procedure TSensors.Init;        //override;
begin
     CountX:=SENSOR_X_COUNT;
     CountY:=SENSOR_Y_COUNT;
     SizeCol:=CountX*CountY*SizeOf(double);
     FullSize:=SizeCol;
     SendByte:=0;
     Pref:=ProgMess[203];                       //'Калибровки';
     NameBlock:=ProgMess[204];                  //'Калибровка датчиков';
     ConstNames:=Addr(NameHotServerZ[posStartSensor]);
     XNames:=Addr(SensorXName[1]);
     XNamesCount:=CountX;
end;

function TSensors.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var mi,ma:double;
begin
  ma:=-22222;
  if (ValY > 0) and (ValX > 0) then
    if XNames[ValX].Frm=ComboSS then
        begin
        mi:=ConstNames[ValY].Min;
        ma:=ConstNames[ValY].Max;
        ConstNames[ValY].Min:=imsDiapazModule;
        ConstNames[ValY].Max:=imsDiapazModule+6;
        end;
  Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
  if ma <> -22222 then
        begin
        ConstNames[ValY].Min:=mi;
        ConstNames[ValY].Max:=ma;
        end;
end;

procedure TSensors.SaveToFile; //override;
begin
     inherited;
     try
     (ParentCtr as TFServerZ).OleZServer.AddCtr(FileNameFromDate(Now),1);
     except end;
end;

//----------END Sensors ------------------

procedure TFServerZ.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
     CtrModific:=SUM_SENSORS;
     Design:='SapFlow';
     Period:=60;
     TimeView:=5;
     THotServerZ.Create(Self);
     ConfigBlock:=TConfig.Create(Self);
     TSensors.Create(Self);
     TControlZ.Create(Self);
     AuditBlock:=TAudit.Create(Self);
//     try
//      OleZServer:=CreateOleObject('ZServer.ComZServer');
//     except  end;
end;

function TFServerZ.CtrFromFile(CtrNameFile:string):Boolean;
var i:integer;
begin
     if(DataPath='') then DataPath:=GetDefaultDataPath;
     with Block[0] do for i:=1 to CountY do
        begin
        ConstNames[i].Mech:=i;
        ConstNames[posStartSensor+i-1].Index:= BOX_SIZE*(i-1);
        end;
     with Block[2] do for i:=1 to CountX do XNames[i].Index:= COL_SIZE*(i-1);

     LoadImageSkin(DrainImage,'ZServer.jpg');
     result:=inherited CtrFromFile(CtrNameFile);
     UnitNum:=0; PortName:='';

     if DataPath = GetDefaultDataPath then
     try
      OleZServer:=CreateOleObject('ZServer.ComZServer');
      OleZServer.AddCtr(Block[2].FileNameFromDate(Now),0);
     except  end;

//     try
//     if Pos('[',DataPath) < 1 then OleZServer.AddCtr(Block[2].FileNameFromDate(Now),0);
//     except end;
end;

procedure TFServerZ.SetPicCtr;
begin
// if Block[0].Ready then PSost.Caption:=ProgMess[80];      //'Принимает'
// PSost.Color:=vColor;
  BlockToGrid(Block[0],xHotGrid);
  xHotGrid.EndDrag(False);
end;


procedure TFServerZ.xHotGridEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  inherited;
  xHotGrid.EndDrag(False);
end;

procedure TFServerZ.xHotGridMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  xHotGrid.BeginDrag(False,10);
end;

end.
