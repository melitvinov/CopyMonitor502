unit Climat502;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls,DateUtils, PicCtr, Menus, ImgList, ComCtrls,
  Spin, ToolWin, TeEngine, Series, TeeProcs, Chart,GanttCh, Gauges,//GGraf,
  FConstType, FController, MPlayer, ClimCalc,
  FBox, FPanel,SetGrid, MessageU,DefineClim502,
  GIFDef, GIFComponent, FPicLabel, FPicPanel,TSGrid, Grids_ts, Stg,StgBlock, CalcStg,Port502,Calc502;   //,Grids_ts
//---------------------------------------------------
//       Определения входов
//S-сумма,T-тепличный,С-общий,
//A-аналоговый,D-дискретный,Sens-сенсор
//---------------------------------------------------
const
//  DZ_SUM_METEO      =	DZ_SumSensMeteo;  //11; // Количество датчиков метеостанции
  DZ_SUM_COMMON     = 20;
  //DZ_MAX_SUM_ZONE   = 4;
  DZ_MODEL          = 8;
  DZ_cNameIdent     =178;
  DZ_BLOCK_CALIB    =2;

  NODEF=-1;
  UNREAL=-4;
  

type TWarmGroupConfig=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     procedure GetProperGrid( x, y:integer);override;
//      procedure CalcMax(var MaxGroup:array of double);
      function FindWarmMax(vZone,vGroup:word; var MaxGroup:double; var vTxt:string):boolean;
      procedure FindCO2Max(vZone,vBoil:word; var MaxCO2:double; var vTxt:string);
      function GetWaterVolume(Zone,Contur:word):double;
      function GetLengthPipe(Zone,Contur:word):double;
      function GetDiamPipe(Zone,Contur:word):double;

end;
{
type TStrategyIrrig502=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
     procedure PostPortRead;override;
end;   }

type TCalSensIrrig502=Class(TBlock)
public
     Sens_mV:array [1..MAX_SENS_SUM] of Int16;
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    procedure SetChan;
    function DoCalibr:integer;
end;

type TRegIrrig502=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure SetChan;
     function DoRegs:integer;
     function SetReg(tY:integer):integer;
end;

{***********************************************************
--------------------Описание дополнительных установок --------
************************************************************}
{***********************************************************
--------------------Описание Hot блока----------------------
************************************************************}
type THot502=Class(TBlock)
private
//      function TestAlarmSens:Boolean;
//    function TestAllArtefact:Boolean;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure PostPortRead; override;
     procedure SetTree(var Tree:TTreeView); override;
//     procedure TestCtrTime;
     function DayTime:Boolean;
     function GetExist(x,y:integer):TConfigExist; override;
     function SetBinSens(y,val:Int16):Int16;
//     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer; override;
end;
{***********************************************************
--------------------Описание блока парамтры-----------------
************************************************************}
type TConfig502=Class(TBlock)
public
     procedure Init;override;
     procedure SaveToFile;override;
end;

type TAchivePC502=Class(TBlock)
private
//     SumListVal:word;
     WriteArchivDate:TDateTime;
     function CalcDayArxPC(ArxDate:TDateTime):Boolean;
     function CalcAllArxPC(StartDate:TDateTime):Boolean;
     procedure SetChan;
//     procedure ArchivToWeb;
public
     procedure Init;override;
//     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
//       var Txt:String):Double;override;
end;

{type THotAlarm=class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double; override;
end;


type TNewArxPC_DZ=Class(TBlock)
private
//     SumListVal:word;
     WriteArchivDate:TDateTime;
     function CalcDayArxPC(ArxDate:TDateTime):Boolean;
     function CalcAllArxPC(StartDate:TDateTime):Boolean;
     procedure ArchivToWeb;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end; }

type  TFClimat502 = class(TFPicCtr)
    Panel1: TPanel;
    Panel2: TPanel;
    StringGridAlarm: TtsGrid;
    FPanel19: TFPanel;
    GIFSShow12: TGIFSShow;
    FPanel1: TFPanel;
    Image1: TImage;
    BevelTepl: TBevel;
    GIFSShow2: TGIFSShow;
    Label4: TLabel;
    Label67: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    GIFSShow3: TGIFSShow;
    Gauge2: TGauge;
    Gauge8: TGauge;
    Label36: TLabel;
    Label20: TLabel;
    Label77: TLabel;
    Label76: TLabel;
    GIFSShow6: TGIFSShow;
    Label79: TLabel;
    Label113: TLabel;
    SpeedButton14: TSpeedButton;
    Gauge3: TGauge;
    Gauge14: TGauge;
    Gauge11: TGauge;
    Label39: TLabel;
    GIFSShow1: TGIFSShow;
    Label14: TLabel;
    Label26: TLabel;
    Label5: TLabel;
    Label78: TLabel;
    Label37: TLabel;
    Label13: TLabel;
    Label114: TLabel;
    Label25: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Gauge1: TGauge;
    Gauge4: TGauge;
    Label42: TLabel;
    LCtr: TLabel;
    Label66: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label33: TLabel;
    Label17: TLabel;
    FPanel4: TFPanel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Gauge17: TGauge;
    Label86: TLabel;
    Label90: TLabel;
    FPanel13: TFPanel;
    Gauge13: TGauge;
    Label48: TLabel;
    FBox45: TFBox;
    FBox46: TFBox;
    FBox47: TFBox;
    FBox48: TFBox;
    Label65: TLabel;
    Label68: TLabel;
    Label71: TLabel;
    LKont5: TLabel;
    Label74: TLabel;
    Label142: TLabel;
    FPicLabel5: TFPicLabel;
    FPanel14: TFPanel;
    Gauge9: TGauge;
    Label43: TLabel;
    FBox22: TFBox;
    FBox23: TFBox;
    FBox24: TFBox;
    FBox25: TFBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label73: TLabel;
    Label141: TLabel;
    FPicLabel4: TFPicLabel;
    FPanel15: TFPanel;
    Gauge5: TGauge;
    Label2: TLabel;
    FBox18: TFBox;
    FBox19: TFBox;
    FBox20: TFBox;
    FBox21: TFBox;
    Label6: TLabel;
    Label8: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label72: TLabel;
    Label140: TLabel;
    FPicLabel3: TFPicLabel;
    FPanel16: TFPanel;
    Gauge7: TGauge;
    Label1: TLabel;
    FBox14: TFBox;
    FBox15: TFBox;
    FBox16: TFBox;
    FBox17: TFBox;
    Label3: TLabel;
    Label10: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label75: TLabel;
    Label139: TLabel;
    FPicLabel2: TFPicLabel;
    FPanel17: TFPanel;
    Gauge6: TGauge;
    Label9: TLabel;
    FBox10: TFBox;
    FBox11: TFBox;
    FBox12: TFBox;
    FBox13: TFBox;
    Label23: TLabel;
    Label24: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label127: TLabel;
    Label138: TLabel;
    FPicLabel1: TFPicLabel;
    FPanel12: TFPanel;
    Label52: TLabel;
    Gauge10: TGauge;
    Label63: TLabel;
    Label7: TLabel;
    FPanel11: TFPanel;
    Label49: TLabel;
    Label51: TLabel;
    Label134: TLabel;
    Label18: TLabel;
    FPanel10: TFPanel;
    Label16: TLabel;
    Gauge26: TGauge;
    Label50: TLabel;
    Label22: TLabel;
    FPanel9: TFPanel;
    Label107: TLabel;
    GIFSShow8: TGIFSShow;
    Label31: TLabel;
    FPanel8: TFPanel;
    Label92: TLabel;
    GIFSShow10: TGIFSShow;
    Label21: TLabel;
    FPanel2: TFPanel;
    Label38: TLabel;
    Gauge12: TGauge;
    Label53: TLabel;
    Label54: TLabel;
    FPanel3: TFPanel;
    Label55: TLabel;
    Gauge15: TGauge;
    Label56: TLabel;
    Label57: TLabel;
    FPanel5: TFPanel;
    Label58: TLabel;
    Gauge16: TGauge;
    Label59: TLabel;
    Label60: TLabel;
    FPanel6: TFPanel;
    Label61: TLabel;
    Gauge18: TGauge;
    Label62: TLabel;
    Label64: TLabel;
    FPanel7: TFPanel;
    Label69: TLabel;
    Gauge19: TGauge;
    Label70: TLabel;
    Label80: TLabel;
    procedure InfoLabelClick(Sender: TObject);
  private
    { Private declarations }
    NowSens,NowTepl,NowSeries:integer;
    OldX,OldY:Longint;
//    BlockNewArxPC:TNewArxPC_DZ;//TBlock;
    HotBlock:THot502;
    BlockArxPC:TAchivePC502;//TBlock;
    SensorsBlock:TCalSensIrrig502;
    RegBlock:TRegIrrig502;
    TimerBlock:TTimer502;
    NowTimer:T1Timer;

  public
    KoefStgBlock:TKoefStgBlock502;
    HotStgBlock:THotStgBlock502;
    CalcStgBlock:TCalcStgBlock502;
    WarmGroupConfig:TWarmGroupConfig;
    Tasks:array [1..6] of integer;
    TaskCount:integer;

    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
//    function CtrFromFile(const NameFile:string):Boolean;override;
//##    function TagToZone(vTag:Longint):Integer;override;
    function BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer; override;
  end;


//=============================================================================

implementation
uses Port, HandClim, audit, WindSon, FTopMes, BoilerIPC;//,GGraf;
{$R *.DFM}

var gRCS:Byte;

function GetColorAlrStatus(x:integer):TColor; //override;
begin
    case x of
    1..10: Result:=$008AE083;
    20..29: Result:=$0018ADF5;
    30..39: Result:=clRed;
    else Result:=clNone;
    end;
end;

procedure InitFan;
begin
  if FanHandle > 32 then Exit;
  if FindWindow('TFanForm',nil) = 0 then FanHandle:=WinExec(PChar('Fan.exe'+' "'+ParamStr(0)+'"'),SW_SHOWNORMAL);
end;
//---------------------------- СОСТОЯНИЕ C-403 ------------------
{***********************************************************
--------------------Инициализация контроллера---------------
************************************************************}

procedure TFClimat502.InitCtr(vIdentCtr:TIdentCtr);
//var i,nZone:integer;
begin
     inherited;
     Design:='Clim502';
     SumZone:=1;//IdentCtr[idSubTip];
     IsIPC:=true;
     IsSTM:=True;
     Is502:=True;
     HotBlock:=THot502.Create(Self);
     ConfigBlock:=TConfig502.Create(Self);
     KoefStgBlock:=TKoefStgBlock502.Create(Self);
     TimerBlock:=TTimer502.Create(Self);
     HotStgBlock:=THotStgBlock502.Create(Self);
     CalcStgBlock:=TCalcStgBlock502.Create(Self);
     CalcStgBlock.CountY:=KoefStgBlock.CountY;
     SensorsBlock:=TCalSensIrrig502.Create(Self);
     RegBlock:=TRegIrrig502.Create(Self);
//##     HandMode:=THandMode_DZ.Create(Self);
//##     NetMeteo:=TNetMeteo_DZ.Create(Self);
//##     AlarmHot:=THotAlarm.Create(Self);
//####     BlockArxPC:=TBlArxPC_DZ.Create(Self);
//##     blPCArchive{BlockNewArxPC}:=TNewArxPC_DZ.Create(Self);
//####     WarmGroupConfig:=TWarmGroupConfig.Create(Self);
//##     Settings_DZ:=TSettings_DZ.Create(Self);
     BlockArxPC:=TAchivePC502.Create(Self);
     AuditBlock:=TAudit.Create(Self);
//     WarmGroupBlock:=TWarmGroup.Create(Self);
     LoadImageSkin(Image1,'Climat65_1.jpg');
     InitPortThread;
     LCtr.Caption:=CtrName;
     InitFan;
end;

{***********************************************************
--------------------Инициализация блока Hot-----------------
************************************************************}
const
  posLightSource=25;
  posCO2Src=21;
  
procedure THot502.Init;
var y:integer;
begin
     CountX:=2;//ParentCtr.SumZone;
     CountY:=YMesHotSum;
  // Устанавливаем размер блока, новая модификация
     SizeCol:=400;//YMesHotSum*2;
     FullSize:=SizeCol;
     SendByte:=0;//DZ_sizePCSend403;//DZ_cSendTime;
     Pref:=ProgMess[231];    //'Состояние';
     NameBlock:=ProgMess[232];    //'Состояние климата';
     ConstNames:=Addr(DZ_cDefineHot[1]);
     XNames:=Addr(XHot502Names[1]);
//     SavingConstNames:=True;
//     Diagnosis:=Addr(DZ_Diagnos[1]);
//     CountDiagnosis:=DZ_SUM_DIAGNOS;
//     Translator:=CountY;
      for y:=1 to CountY do
        ConstNames[y].Index:=(y-1)*2;
end;

{***********************************************************
--------------------Загрузка значений блока Hot-------------
************************************************************}

function THot502.SetBinSens(y,val:Int16):Int16;
begin
    (pInt16(Addr(pByteArray(Adr)^[ConstNames[y].Index])))^:=val;
    Result:=val;
end;

function THot502.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var v,y1,y2:SmallInt; d:Double; Txt1:string;//Int16;//
begin
      if (ValY>0) and (ValX>0) then
      begin
      if ValX=2 then
                    begin
                    Txt:='';
                    if (ConstNames[ValY].Kind and kdSensor)>0 then Txt:='Sensor';
                    if (ConstNames[ValY].Kind and kdReg)>0 then Txt:='Regulator';
                    if (ConstNames[ValY].op and (opPlus+opMinus))>0 then
                        begin
                        y1:=ConstNames[ValY].o1;
                        if y1<0 then y1:=ValY+y1;
                        y2:=ConstNames[ValY].o2;
                        if y2<0 then y2:=ValY+y2;
                        LoadXYvirt(cOutBlock,0,y1,Txt1);
                        LoadXYvirt(cOutBlock,0,y2,Txt);
                        if (ConstNames[ValY].op=opPlus) then Txt:=Txt1+' + '+Txt
                              else Txt:=Txt1+' - '+Txt;
                        end;
                    Exit;
                    end;
      if ((ConstNames[ValY].Kind and kdSensor)>0)and (vInBlock=cOutBlock)  then
          begin
          v:=(pInt16(Addr(pByteArray(Adr)^[ConstNames[ValY].Index])))^;
          if (v<0) and (v > -10) then
             begin Txt:='/'+ProgMess[642-v]; Result:=0;
             if v=-1 then GridCellColor:=clmSil else GridCellColor:=clmRed; Exit; end;
          end;
      if ConstNames[ValY].op >0  then
          begin
          y1:=ConstNames[ValY].o1;
          if y1<0 then y1:=ValY+y1;
          y2:=ConstNames[ValY].o2;
          if y2<0 then y2:=ValY+y2;
          case ConstNames[ValY].op of
              opPlus: d:=LoadXYvirt(cOutBlock,ValX,y1,Txt)+LoadXYvirt(cOutBlock,ValX,y2,Txt);
              opMinus: d:=LoadXYvirt(cOutBlock,ValX,y1,Txt)-LoadXYvirt(cOutBlock,ValX,y2,Txt);
              opDDWP: begin
                      d:=GetDDWP(round(LoadXYvirt(cOutBlock,ValX,y1,Txt)),round(LoadXYvirt(cOutBlock,ValX,y2,Txt)));
                      end;
              opAbsRH: d:=GetAbsH(round(LoadXYvirt(cOutBlock,ValX,y1,Txt)),round(LoadXYvirt(cOutBlock,ValX,y2,Txt)));
              end;
          Txt:=FloatToStr(d);
          with ConstNames[ValY] do
            Result:=Convers('',Addr(v),Frm,cInBlock,ValX,ValY,Txt,Ed);
          Exit;
          end;
      end;
      Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
      if (ValY>0) and ((ConstNames[ValY].Kind and (kdReg+kdPump))>0)and (vInBlock=cOutBlock)and(ValX>0)  then
          begin
          v:=round(Result);
          Txt:='';
          if (v and resUndef) >0 then begin Txt:='Undef'; GridCellColor:=clmSil; Exit; end;
          if (v and resNoSend) > 0 then begin Txt:='No send '; GridCellColor:=clmRed; end;
          if (v and resPWM) > 0 then begin Txt:=Txt+'PWM '; end;
          if (v and 1)>0 then Txt:=Txt+'On' else Txt:=Txt+'Off';
          end;
end;
{var pHot:pByteArray;
  prognT:tIn:=GetProgn(pHot^[DZ_itTAir+tIndex]+pHot^[DZ_itTAir+tIndex+1]*256);
  AbsRH: tIn:=GetAbsH(pHot^[DZ_itTAir+tIndex]+pHot^[DZ_itTAir+tIndex+1]*256,pHot^[DZ_itRH+tIndex]+pHot^[DZ_itRH+tIndex+1]*256);
  DDWP: tIn:=GetDDWP(pHot^[DZ_itTAir+tIndex]+pHot^[DZ_itTAir+tIndex+1]*256,pHot^[DZ_itRH+tIndex]+pHot^[DZ_itRH+tIndex+1]*256);
  DDWPS: tIn:=GetDDWP(pHot^[DZ_itTSheet+tIndex]+pHot^[DZ_itTSheet+tIndex+1]*256,pHot^[DZ_itRH+tIndex]+pHot^[DZ_itRH+tIndex+1]*256);
  TR: tIn:=GetTR(pHot^[DZ_itTAir+tIndex]+pHot^[DZ_itTAir+tIndex+1]*256,pHot^[DZ_itRH+tIndex]+pHot^[DZ_itRH+tIndex+1]*256);
  TipTime: pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
 end; }

function THot502.GetExist(x,y:integer):TConfigExist;
begin
  Result:=inherited GetExist(x,y);
//  if Not (ParentCtr.Block[DZ_BLOCK_CALIB] as TCalSens_DZ).GetExistSens(x,y)
//    then Result:=cfExistFalse;
end;

procedure THot502.PostPortRead;
var pHot:PByteArray;
    i,Minut,tmpCo2:integer;
//    SRaise,SSet:TDateTime;
    st,st1:string;
begin
 if Not Ready then Exit;
 pHot:=Adr;
end;

function THot502.DayTime:Boolean;
var pHot:PByteArray;
    i:integer;
begin
 pHot:=Adr;
// Result:=True else Result:=False;
end;

procedure THot502.SetTree(var Tree:TTreeView);
var vSt:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i,nTemp,tGroup:word;
    nSens:word;
begin
   with ParentCtr as TFClimat502,Tree do begin
    Items.BeginUpdate;
    tGroup:=0;
    Param.Block:=Self;
    if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else begin
          Param.Block:=Self;
          NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
          end;
      for nSens:=1 to CountY do
          begin
          if (ConstNames[nSens].Kind and kdNewTree)>0 then
              begin
              inc(tGroup);
              Param.Block:=Self;
              Node1:=Items.AddChildObject(NodeHead,TreeName[tGroup],Param.Ptr);
              end;
          Param.Y:=nSens;  Param.X:=1;
          //if GetReadAccess(1,nSens)>=NowAccess then continue;
          LoadXY(cOutBlock,0,nSens,vSt);
          with (Items.AddChildObject(Node1,vSt,Param.Ptr)) do
            begin
            imNum:=TipSensToNumImage(ConstNames[nSens].TipSens);
            ImageIndex:=imNum;
            end;
         end;
    end;
end;



//***********************************************************
//--------------------Блок конфигурация тепловых групп ------
//************************************************************
const
//  sumWarmGroupSource = 5;
  sumWarmContur=5;
  posCO2Source=21;

  numCO2Source=6;
  sumCO2Contur = 1;
  sumWarmCO2Source= sumWarmContur + sumCO2Contur;
  WarmGroupSource:array[1..sumWarmCO2Source] of word=
        (70,78,86,94,102,130);  //44
  WarmCountY=7;//
var NameWarmGroup:array [1..WarmCountY] of TNameConst=(
    (Name:'Контур 1';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Контур 2';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:5;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Контур 3';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:10;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Контур 4';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:15;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Контур 5';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:20;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Подача СО2';Frm:SS;Ed:'генератор';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Досветка';Frm:SS;Ed:'щит';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER)
);

var NameWarmXTabl:array [1..4] of TNameConst=(
    (Name:'Источник';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:10;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Потребление';Frm:ffff;Ed:'м3/час';TipSens:TipCalc;Min:0;Max:0;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Длина труб';Frm:ffff;Ed:'м';TipSens:TipCalc;Min:0;Max:0;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Диаметр труб';Frm:ffff;Ed:'мм';TipSens:TipCalc;Min:0;Max:0;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
);

procedure TWarmGroupConfig.Init; //override;
begin
     CountX:=4; //ParentCtr.SumZone;
     CountY:=WarmCountY;  //sumWarmCO2Source;
     SizeCol:=SizeOf(Double)*CountY;//
     FullSize:=SizeCol*CountX;
     SendByte:=0; //FullSize;
     ReceiveByte:=0;
     Pref:='Источники';  //ProgMess[198];
     NameBlock:='Источники тепла и СО2';  //ProgMess[198];
     FixRow:=1;
     ConstNames:=Addr(NameWarmGroup[1]);
//     SavingConstNames:=True;
//     Translator:=CountY;
end;

function TWarmGroupConfig.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pWGConfig:pByteArray;
    Frm:TSFormat; Ed:string;
begin
     pWGConfig:=Adr;
     Result:=ValX;
     if ValY=0 then
        begin
        if ValX=0 then Txt:=ParentCtr.CtrName
        else Txt:=NameWarmXTabl[ValX].Name;
        Exit;
        end;
     if ValX=1 then Ed:=NameWarmGroup[ValY].Ed
     else Ed:=NameWarmXTabl[ValX].Ed;
     Result:=Convers(NameWarmGroup[ValY].Name
            ,Addr(pWGConfig[(ValX-1)*SizeCol+(ValY-1)*SizeOf(Double)]),NameWarmXTabl[ValX].Frm,vInBlock,ValX,ValY,Txt,Ed);
     if(ParentCtr.SumZone >= NameWarmGroup[ValY].Mech) then
      ConfigExist:= cfExistTrue else ConfigExist:= cfExistFalse;

end;

function TWarmGroupConfig.FindWarmMax(vZone,vGroup:word; var MaxGroup:double; var vTxt:string):boolean;
var Contur,PosY:integer;   //x,,nGroup
    res:double;
    st:string;
    DiffTime: LongInt;
begin
  for Contur:=1 to sumWarmContur do
    begin
    PosY:=(vZone-1)*sumWarmContur+Contur;
    if vGroup <> round(LoadXYvirt(cOutBlock,1,PosY,st)) then continue;
    DiffTime:=MinutesBetween(ParentCtr.Block[0].BlDate,Now);
    if (ParentCtr.DataPath <> '')
     or (DiffTime>5)
     or (DiffTime<-5) then begin Result:=false; exit; end;
    res:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,vZone,WarmGroupSource[Contur],st);
    if res > MaxGroup then begin MaxGroup:=res; vTxt:=st; end;
    end;
  Result:=true;
end;

procedure TWarmGroupConfig.FindCO2Max(vZone,vBoil:word; var MaxCO2:double; var vTxt:string);
var res:double;
    st:string;
begin
    if vBoil <> round(LoadXYvirt(cOutBlock,1,posCO2Source+vZone-1,st)) then Exit; //continue;
    res:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,vZone,WarmGroupSource[numCO2Source],st);
    if res > MaxCO2 then begin MaxCO2:=res; vTxt:=st; end;
end;

function TWarmGroupConfig.GetWaterVolume(Zone,Contur:word):double;
var st:string;
begin
    Result:=LoadXYvirt(cOutBlock,2,(Zone-1)*sumWarmContur+Contur,st);
end;

function TWarmGroupConfig.GetLengthPipe(Zone,Contur:word):double;
var st:string;
begin
    Result:=LoadXYvirt(cOutBlock,3,(Zone-1)*sumWarmContur+Contur,st);
end;

function TWarmGroupConfig.GetDiamPipe(Zone,Contur:word):double;
var st:string;
begin
    Result:=LoadXYvirt(cOutBlock,4,(Zone-1)*sumWarmContur+Contur,st);
end;

//***********************************************************
//--------------------Инициализация блока Конфигурация-----------
//************************************************************

procedure TConfig502.Init; //override;
begin
     CountX:=1;
//     if (CountX<1) or (CountX>5) then CountX:=1;
     CountY:=Conf502Sum;
     SizeCol:=Conf502Size;
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[193]; //'Конфигурация';
     NameBlock:=ProgMess[194]; //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(YNamesConf502[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
     if (CountX>1) then
     begin
        XNames:=Addr(XNamesConf502[1]);
        XNamesCount:=1;
     end;   
end;
procedure TConfig502.SaveToFile;//override;
begin
      ParentCtr.Model:=PByteArray(Adr)^[0];
      inherited SaveToFile;
end;
{***********************************************************
--------------------Инициализация блока механизмы-----------
************************************************************}
const
      //YMaxReg502Count=30;
      XReg502Count=11;//14;
      c1Reg502Size=30;
      colCmd=2;

var  YReg502Names:array [1..YMaxReg502Count] of TNameConst;

procedure TRegIrrig502.SetChan;
var y,yC:integer;  //,tg
begin
  yC:=0; //tg:=0;
  for y:=1 to ParentCtr.Block[0].CountY do
     begin
     if (ParentCtr.Block[0].ConstNames[y].Kind and (kdPump+kdReg))>0 then
          begin
          yC:=yC+1;
          ConstNames[yC]:=ParentCtr.Block[0].ConstNames[y];
          ConstNames[yC].Index:=(yC-1)*c1Reg502Size;
          ConstNames[yC].Tag:=y;
          ConstNames[yC].Mech:=0;
          ConstNames[yC].AccessW:=RW_GUEST;
          ParentCtr.Block[0].ConstNames[y].Tag:=yC;
          if yC >= YMaxReg502Count then break;
          end;
     end;
   CountY:=yC;
end;

type TReg=record
    OutN:Int16;
    Cmd:Byte;
    Delta,Status,IntPart,Posit:Int16;

    Pkf:Int16;
    Ikf:Int16;
    MoveTime,ReversTime:Int16;
    Task,Mes:Int16;
    end;
TRegs=array[1..1] of TReg;
TpReg=^TReg;
TpRegs=^TRegs;

var  XReg502Names:array [1..XReg502Count] of TXNames=(
//1
(Name:'Выход';Frm:LpMpIO;Ed:' ';Index:2;Cfg:0;Kind:0;Min:-0.01;Max:1500), //xcb
(Name:'Состояние';Frm:SS;Ed:'';Index:0;Cfg:0;Kind:0;Min:-0.01;Max:32),
//(Name:'Тип';Frm:ComboSS;Ed:'';Index:2;Cfg:0;Kind:0;Min:648;Max:652), //xcb
(Name:'Разница';Frm:None;Ed:'';Index:-2;Cfg:0;Kind:0;Min:0;Max:0),
(Name:'Положение';Frm:None;Ed:'';Index:-1;Cfg:0;Kind:0;Min:0;Max:0),
(Name:'Интервал включения';Frm:SSSS;Ed:'сек';Index:12;Cfg:0;Kind:0;Min:-0.01;Max:10000),
(Name:'П-коэф';Frm:SSpSS;Ed:' ';Index:4;Cfg:0;Kind:0;Min:-0.01;Max:32), //xcb
(Name:'И-коэф';Frm:SSpSS;Ed:' ';Index:6;Cfg:0;Kind:0;Min:-0.01;Max:30), //xcb
(Name:'Время хода';Frm:SSSS;Ed:'сек';Index:8;Cfg:0;Kind:0;Min:-0.01;Max:1000), //xcb
(Name:'Пауза реверса';Frm:SS;Ed:'сек';Index:10;Cfg:0;Kind:0;Min:-0.01;Max:200), //xcb
//(Name:'Режим';Frm:ComboBit;Ed:'0';Index:14;Cfg:0;Kind:0;Min:comAutoHand;Max:comAutoHand+1), //xcb
//(Name:'Измерено';Frm:None;Ed:'';Index:16;Cfg:0;Kind:0;Min:0;Max:0),
(Name:'Импульс';Frm:SSSpS;Ed:'сек';Index:16;Cfg:0;Kind:0;Min:-3000;Max:3000),
(Name:'Пауза';Frm:SS;Ed:'сек';Index:18;Cfg:0;Kind:0;Min:-0.01;Max:255)
  );

function TRegIrrig502.SetReg(tY:integer):integer;
var Delta:double; tx:string; pReg:TpReg;  //tY,Cmd:integer;
begin
  pReg:=Addr(TpRegs(Adr)^[tY]);
  Delta:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,1,ConstNames[tY].Tag-1,tx);
//  Posit:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,1,ConstNames[tY].Tag,tx);
//  pReg^.IntPart:=pReg^.IntPart+Delta*pReg^.Ikf/100;
//  pReg^.Posit:=Delta*pReg^.Pkf/100+pReg^.IntPart;
end;

function TRegIrrig502.DoRegs:integer;
var vV1,vS1:double; tx:string; tY,Cmd:integer; Any:TAny;
begin
  SetEndRecord;
  Result:=0;
  for tY:=1 to CountY do
      begin
      Cmd:=round(ParentCtr.Block[0].LoadXYvirt(cOutBlock,1,ConstNames[tY].Tag,tx));
      if (round(LoadXYvirt(cOutBlock,1,tY,tx)) and MSC_IO)=0 then
            begin
            tx:=IntToStr(Cmd or resUndef);
            (ParentCtr.Block[0] as THot502).LoadXYvirt(cInBlock,1,ConstNames[tY].Tag,tx);
            ParentCtr.Block[0].ConstNames[ConstNames[tY].Tag].Link:=linkHotInvisible;
            continue;
            end;
      ParentCtr.Block[0].ConstNames[ConstNames[tY].Tag].Link:=0;
      SetReg(tY);
      tx:=IntToStr(Cmd and (Not resUndef)); ParentCtr.Block[0].LoadXYvirt(cInBlock,1,ConstNames[tY].Tag,tx);
      inc(Result);
      end;
  UpdateGridBlock(Self);
end;

procedure TRegIrrig502.Init;//override;
begin
     CountX:=XReg502Count;
     CountY:=1;//YReg502Count;
     SizeCol:=c1Reg502Size;
     FullSize:=SizeCol*YMaxReg502Count;//CountX;
     SendByte:=FullSize;
     Pref:=ProgMess[227];         //'Механизмы';
     NameBlock:=ProgMess[228];    //'Параметры механизмов';
     ConstNames:=Addr(YReg502Names[1]);
     XNames:=Addr(XReg502Names[1]);
     SetChan;
     Sort:=Sort or srPortOut;
     RegisterPortBlock(Self);
//     Translator:=CountY;
end;

function TRegIrrig502.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
//var vV1,vS1:double; tx:string; ind:integer;
begin
  if (ValY>0) and (ValX>0) then
    begin
//    if (ValX=colCmd) then
    if XNames[ValX].Index<=0 then
      begin
      if ((ConstNames[ValY].Kind and kdReg) =0) and (XNames[ValX].Index<0) then
          begin Txt:=''; Exit; end;
      if (ValX=colCmd) and (StrToIntDef(Txt,-3333)=-3333) then vInBlock:=cOutBlock;
      Result:=ParentCtr.Block[0].LoadXYvirt(vInBlock,1,ConstNames[ValY].Tag+XNames[ValX].Index,Txt);
      Exit;
      end;
    end;
  Result:= inherited  LoadXYvirt(vInBlock,ValX,ValY,Txt);
end;

//***************************************************************
//begin =============== Блок метеоданных по сети-----------------
//***************************************************************

{const  mStartNum: array [0..DZ_SUM_REGUL-1] of Byte=(21,22,26,27,31,57);
var RealPozY:word;

type ConfVal=record
     NumInHot:Byte;
     Task:InInt;
     Kof:array [0..SUM_KOF-1] of double;
     end;
   TConfMeteo=array [0..DZ_SUM_REGUL-1] of ConfVal;
}//---------- END СОСТОЯНИЕ C-403 ------------------
//---------------------------- ГРАНИЦЫ C-403 ------------------

const //YMaxCalibr502Count=MAX_SENS_SUM;//60; // учесть массив mV
      XCalibr502Count=14;
      c1Calibr502Size=20;
var  YCalibr502Names:array [1..YMaxCalibr502Count] of TNameConst;

procedure TCalSensIrrig502.SetChan;
var y,yC:integer;  //,tg
begin
  yC:=0; //tg:=0;
  for y:=1 to ParentCtr.Block[0].CountY do
     begin
     if (ParentCtr.Block[0].ConstNames[y].Kind and (kdSensor))>0 then
          begin
          yC:=yC+1;
          ConstNames[yC]:=ParentCtr.Block[0].ConstNames[y];
          ConstNames[yC].Index:=(yC-1)*c1Calibr502Size;
          ConstNames[yC].Tag:=y;
          ConstNames[yC].Mech:=0;
          ConstNames[yC].AccessW:=RW_GUEST;
          ParentCtr.Block[0].ConstNames[y].Tag:=yC;
          if yC >= YMaxCalibr502Count then break;
          end;
     end;
   CountY:=yC;
end;

const  xInp=1; xmV=GxmV{5}; xCalcVal=6;
       xV1=7;xS1=8;xV2=9;xS2=10;

var  XCalibr502Names:array [1..XCalibr502Count] of TXNames=(
//1
(Name:'Вход';Frm:LpMpIO;Ed:' ';Index:0;Cfg:0;Kind:0;Min:0;Max:1666), //xcb
(Name:'Тип';Frm:ComboSS;Ed:'';Index:2;Cfg:0;Kind:0;Min:561;Max:572), //xcb
(Name:'Выход';Frm:SS;Ed:' ';Index:3;Cfg:0;Kind:0;Min:0;Max:15), //xcb
(Name:'Коррек';Frm:SS;Ed:' ';Index:4;Cfg:0;Kind:0;Min:0;Max:30), //xcb
(Name:'Принято';Frm:SSSS;Ed:'mV ';Index:18;Cfg:0;Kind:0;Min:-10;Max:5000), //xcb
(Name:'Рассчитано';Frm:None;Ed:'';Index:18;Cfg:0;Kind:0;Min:0;Max:0), //xcb
(Name:'Напряжение 1';Frm:SSSS;Ed:'mV';Index:5;Cfg:0;Kind:0;Min:-0.01;Max:5000), //xcb
(Name:'Эталон 1';Frm:None;Ed:'';Index:9;Cfg:0;Kind:0;Min:0;Max:0), //xcb
(Name:'Напряжение 2';Frm:SSSS;Ed:'mV';Index:7;Cfg:0;Kind:0;Min:-0.01;Max:5000), //xcb
(Name:'Эталон 2';Frm:None;Ed:'';Index:11;Cfg:0;Kind:0;Min:0;Max:0), //xcb
(Name:'Нижняя граница';Frm:SSpSS;Ed:'';Index:13;Cfg:0;Kind:0;Min:0;Max:0), //xcb
(Name:'Верхняя граница';Frm:SSpSS;Ed:'';Index:15;Cfg:0;Kind:0;Min:0;Max:0), //xcb
(Name:'Время до аварии';Frm:SS;Ed:'сек';Index:17;Cfg:0;Kind:0;Min:0;Max:240), //xcb
(Name:'Действия';Frm:SS;Ed:' ';Index:18;Cfg:0;Kind:0;Min:0;Max:240) //xcb
  );

procedure TCalSensIrrig502.Init;//override;
begin
     CountX:=XCalibr502Count;
     CountY:=1;//YCalibr502Count;
     SizeCol:=c1Calibr502Size;
     FullSize:=SizeCol*YMaxCalibr502Count;//CountX;
     SendByte:=FullSize;
     Pref:=ProgMess[203]; //'Калибровки';
     NameBlock:=ProgMess[204]; //'Калибровка датчиков';
     ConstNames:=Addr(YCalibr502Names[1]);
     XNames:=Addr(XCalibr502Names[1]);
     SetChan;
     Sort:=Sort or srPortIn;
     RegisterPortBlock(Self);
//     Translator:=CountY;
end;

function TCalSensIrrig502.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
begin
    if (ValX=xCalcVal) and (ValY>0) then
      begin  //Txt:=TimeToStr(ParentCtr.Block[0].BlDate);
      Result:=ParentCtr.Block[0].LoadXYvirt(vInBlock,1,ConstNames[ValY].Tag,Txt);
      Exit;
      end;
    if (ValX=xmV) and (ValY>0) then
      begin
      NewFormat502:=True;
      Result:=Convers('',Addr(Sens_mV[ValY]),SSSS,vInBlock,ValX,ValY,Txt,'mV');
      NewFormat502:=False;
      Exit;
      end;
    Result:= inherited  LoadXYvirt(vInBlock,ValX,ValY,Txt);
end;

function TCalSensIrrig502.DoCalibr:integer;
var vV1,vS1:double; tx:string; tY,mV:integer; Any:TAny;Visible:Boolean;
begin
  Result:=0;
  SetEndRecord;
  for tY:=1 to CountY do
      begin
      Visible:=(round(LoadXYvirt(cOutBlock,xInp,tY,tx)) and MSC_IO)>0;
      if Not Visible then
        begin
            (ParentCtr.Block[0] as THot502).SetBinSens(ConstNames[tY].Tag,NODEF);//-1);
            //if ParentCtr.Block[0].ConstNames[ConstNames[tY].Tag].Link <> linkHotInvisible
            //      then
                   ParentCtr.Block[0].ConstNames[ConstNames[tY].Tag].Link:=linkHotInvisible;
            continue;
        end;
      ParentCtr.Block[0].ConstNames[ConstNames[tY].Tag].Link:=0;
      //ParentCtr.Block[0].ConstNames[ConstNames[tY].Tag].AccessR:=RW_GUEST;
      mV:=Sens_mV[tY];//round(LoadXYvirt(cOutBlock,xmV,tY,tx));
      if (mV<0) and (mV>-10) then
        begin (ParentCtr.Block[0] as THot502).SetBinSens(ConstNames[tY].Tag,mV); continue; end;
      vV1:=LoadXYvirt(cOutBlock,xV1,tY,tx);
      vS1:=LoadXYvirt(cOutBlock,xS1,tY,tx);
      try
                        vS1:=vS1+(mV-vV1)
                        /(LoadXYvirt(cOutBlock,xV2,tY,tx)-vV1)
                        *(LoadXYvirt(cOutBlock,xS2,tY,tx)-vS1);
      mV:=0;
      except mV:=1; end;
      if mV=1 then begin (ParentCtr.Block[0] as THot502).SetBinSens(ConstNames[tY].Tag,-3); continue; end;
      tx:=FormatFloat('0.##',vS1);
      ParentCtr.Block[0].LoadXYvirt(cInBlock,1,ConstNames[tY].Tag,tx);
      inc(Result);
      end;
  UpdateGridBlock(Self);
end;

//*********************************************************************
//************** END ДАТЧИКИ  ************************
//*********************************************************************

//--------- START ARXIV PC ---------------
const
      XAchivePC502Count=5;
      XCalibrPC502Count=14;
      c1AchivePC502Size=20;
      YMaxAchivePC502Count=20;

var  YAchivePC502Names:array [1..YMaxAchivePC502Count] of TNameConst;

procedure TAchivePC502.SetChan;
var y,yC:integer;  //,tg
begin
  yC:=0; //tg:=0;
  for y:=1 to ParentCtr.Block[0].CountY do
     begin
     if (ParentCtr.Block[0].ConstNames[y].Kind and (kdSensor))>0 then
          begin
          yC:=yC+1;
          ConstNames[yC]:=ParentCtr.Block[0].ConstNames[y];
          ConstNames[yC].Index:=(yC-1)*c1Calibr502Size;
          ConstNames[yC].Tag:=y;
          ConstNames[yC].Mech:=0;
          ConstNames[yC].AccessW:=RW_GUEST;
//          ParentCtr.Block[0].ConstNames[y].Tag:=yC;
          if yC >= YMaxAchivePC502Count then break;
          end;
     end;
   CountY:=yC;
end;

var  XAchivePC502Names:array [1..XAchivePC502Count] of TXNames=(
//1
(Name:'Среднее за сутки';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0;Min:0;Max:0),
(Name:'Среднее днем';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0;Min:0;Max:0),
(Name:'Среднее ночью';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0;Min:0;Max:0),
(Name:'Максимум днем';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0;Min:0;Max:0),
(Name:'Максимум ночью';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0;Min:0;Max:0)
);

procedure TAchivePC502.Init;//override;
begin
     CountX:=XAchivePC502Count;
     CountY:=YMaxAchivePC502Count;
     SizeCol:=CountY*SizeOf(Double);
     FullSize:=SizeCol*CountX;
     SendByte:=0;
     FixRow:=1;
     Pref:=ProgMess[262];  //'Архив ПК';
     NameBlock:=ProgMess[263];  //'Архивные данные в ПК';
     ConstNames:=Addr(YAchivePC502Names[1]);
     XNames:=Addr(XAchivePC502Names[1]);
     SetChan;
     Translator:=CountConstNames;
end;

{
const
    cSumListVal=7;
    ListValues:array[1..cSumListVal] of word= (1,21,22,46,24,39,57);
    cSumStat=11;
    cCountNameAchivePC=cSumStat+4;
    iMidl=1;          iMidlDay=2;       iMidlNight=3;
    iMaxDay=4;        iTimeMaxDay=5;
    iMinDay=6;        iTimeMinDay=7;
    iMaxNight=8;      iTimeMaxNight=9;
    iMinNight=10;      iTimeMinNight=11;

type
TPCArx=record
  Tic:word;
  TicDay:word;
  SumSun:word;
//  StatVal:array[0..1] of Double; //TStatVal;
  StatValues:array[1..4,1..cSumListVal,1..cSumStat] of Double; //TStatVal;
  end;

var NameAchivePC:array [1..cCountNameAchivePC] of TNameConst=(
    (Name:'Дата';Frm:SSsSS;Ed:'';TipSens:TipText;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Длительность регистрации ';Frm:SShSSm_12;Ed:'ч:м';TipSens:TipText;Min:0;Max:0;
      Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Днем регистрации ';Frm:SSpSS;Ed:'ч:м';TipSens:TipText;Min:0;Max:0;
      Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Сумма солнечной радиации';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:0;
      Index:6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),

    (Name:'Среднее за сутки';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Среднее днем ';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Среднее ночью ';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Максимум днем';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время максисмума';Frm:SShSSm;Ed:'';TipSens:TipText;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Минимум днем';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время минимума';Frm:SShSSm;Ed:'';TipSens:TipText;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Максимум ночью ';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время максимума';Frm:SShSSm;Ed:'';TipSens:TipText;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Минимум ночью';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время минимума';Frm:SShSSm;Ed:'';TipSens:TipText;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
    );

  }

function TAchivePC502.CalcAllArxPC(StartDate:TDateTime):Boolean;
var  Save_Cursor:TCursor;
begin
 if (Int(WriteArchivDate) = Int(Now))  or (ParentCtr.DataPath<>'') then  Exit;
 WriteArchivDate:=Now;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try
 if LoadFileByDate(Now,dEnd) then StartDate:=int(BlDate)+1
  else  begin
        StartDate:=EncodeDate(YearOf(Now),1,1);  // Now-ClimLongArx; //
        end;
 while Int(StartDate) < Int(Now) do  // DayOf()
    begin
    if CalcDayArxPC(StartDate) then begin SaveToFile; {if ParentCtr.DataPath='' then ArchivToWeb;} end;
    StartDate:=StartDate+1;
    end;
 finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TAchivePC502.CalcDayArxPC(ArxDate:TDateTime):Boolean;
var
 nVal,nZone:integer;
 vVal:Double;
 st:string;
 NowDay:Boolean;
begin
end;

//--------- END ARXIV PC ---------------

//--------- START NEW ARXIV PC ---------------

//--------- END ARXIV PC ---------------
//=====================================================================
//=====================================================================

procedure TFClimat502.SetPicCtr;
var
  SensCount:integer;
  Color:TColor;
  st:string;
begin
  //CalcSensor
  SensCount:=SensorsBlock.DoCalibr;
  TimerBlock.GetTimer(Now,NowTimer);
//CalcStrategy Hot
  CalcStgBlock.CalcStg;
  //CalcDeltas
  //CalcStrategy SybSystem
  //CalcExcept
  //TaskReg
  //TaskOut
  RegBlock.DoRegs;
  with Block[0] do
      begin
      Ready:=True;
      BlDate:=Now;
      if SensCount>0 then
            begin
            SaveToFile;
            PSost.Caption:='Рассчет';
            PSost.Color:=clGreen;//clLime;
            CtrImage:=imWrite;
            end
      else begin
        PSost.Caption:='Нет датчиков';
        PSost.Color:=clRed;
        CtrImage:=imFatal;
        end;
      end;
end;


function TFClimat502.BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer;
begin
//  if GetGridBlock(Grid)=StrategyBlock then begin (ComboBox as TComboBox).Items:=StgList; Result:= csComboBox; Exit; end;
  Result:=inherited BeforeCellSelect(Grid,ComboBox);
//  if GetGridBlock(Grid)=HandMode then  FHandClim.Exec(Self);
end;

procedure TFClimat502.InfoLabelClick(Sender: TObject);
begin
  inherited;
//     NowSens:=TagToSens((Sender as TComponent).Tag);
//     NowTepl:=TagToZone((Sender as TComponent).Tag);
// вывести график
     //SetChar;
//     if Width<700 then WindowState:=wsMaximized;
end;
end.
