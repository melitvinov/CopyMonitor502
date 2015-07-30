unit Climat65;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls,DateUtils, PicCtr, Menus, ImgList, ComCtrls,
  Spin, ToolWin, TeEngine, Series, TeeProcs, Chart,GanttCh, Gauges,GGraf,
  FConstType, FController, MPlayer,DefineClim65,ClimCalc,
  FBox, FPanel,SetGrid, MessageU, GIFDef, GIFComponent, FPicLabel;
//---------------------------------------------------
//       Определения входов
//S-сумма,T-тепличный,С-общий,
//A-аналоговый,D-дискретный,Sens-сенсор
//---------------------------------------------------
const
  MAX_SUM_ZONE_65=2;
  CLIM65_HAND=4;
  CountYNetMeteo=cSMeteoSens;
  cNameIdent65=178;
const
  X_NAME=0;
  X_POZ_Y=1;
  X_MAX=3;
  X_SOURCE=2;
//  X_OPER=4;
  X_TASK=4;
  X_STATE_REG=5;
  X_N_REGUL=6;
  X_KOF=7;

  X_P=0;
  X_I=1;
  X_D=2;
  X_SUM_I=3;
  X_PRED=4;
  SUM_KOF=5;

  SUM_REGUL=6;
  Y_START_REGUL=CountYNetMeteo-SUM_REGUL+1;
  Y_CAN_CHANGIN=Y_START_REGUL;

type
  TFClimat65 = class(TFPicCtr)
    BevelTepl: TBevel;
    Label34: TLabel;
    Label35: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label33: TLabel;
    Label17: TLabel;
    Label42: TLabel;
    Gauge1: TGauge;
    Gauge4: TGauge;
    Label39: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label31: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label37: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Gauge2: TGauge;
    Gauge8: TGauge;
    Label66: TLabel;
    Label67: TLabel;
    Gauge14: TGauge;
    Image1: TImage;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    LCtr: TLabel;
    Label79: TLabel;
    Gauge20: TGauge;
    Gauge21: TGauge;
    Gauge22: TGauge;
    Label111: TLabel;
    Label112: TLabel;
    LTepl2: TLabel;
    Gauge23: TGauge;
    Gauge24: TGauge;
    LTepl1: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Splitter2: TSplitter;
    Label130: TLabel;
    ListView1: TListView;
    FPanel2: TFPanel;
    FPanel3: TFPanel;
    Label94: TLabel;
    Gauge18: TGauge;
    Label95: TLabel;
    Label96: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    FPanel5: TFPanel;
    Label106: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    FPanel6: TFPanel;
    Gauge19: TGauge;
    Label99: TLabel;
    Label105: TLabel;
    FPanel7: TFPanel;
    Label110: TLabel;
    FPanel8: TFPanel;
    Label92: TLabel;
    FPanel9: TFPanel;
    Label107: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    FPanel10: TFPanel;
    Label16: TLabel;
    Gauge26: TGauge;
    Label50: TLabel;
    Label64: TLabel;
    FPanel11: TFPanel;
    Label49: TLabel;
    Label51: TLabel;
    FPanel12: TFPanel;
    Label52: TLabel;
    Gauge10: TGauge;
    Label63: TLabel;
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
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
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
    FPanel1: TFPanel;
    Gauge3: TGauge;
    Label7: TLabel;
    FBox6: TFBox;
    FBox7: TFBox;
    FBox8: TFBox;
    FBox9: TFBox;
    Label18: TLabel;
    Label22: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label131: TLabel;
    FPanel18: TFPanel;
    Gauge11: TGauge;
    Label21: TLabel;
    FBox1: TFBox;
    FBox2: TFBox;
    FBox3: TFBox;
    FBox4: TFBox;
    Label32: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label60: TLabel;
    Label100: TLabel;
    FPanel19: TFPanel;
    Gauge12: TGauge;
    Label55: TLabel;
    FBox5: TFBox;
    FBox26: TFBox;
    FBox27: TFBox;
    FBox28: TFBox;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label101: TLabel;
    FPanel20: TFPanel;
    Gauge15: TGauge;
    FBox29: TFBox;
    FBox30: TFBox;
    FBox31: TFBox;
    FBox32: TFBox;
    Label62: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label80: TLabel;
    Label102: TLabel;
    Label61: TLabel;
    FPanel21: TFPanel;
    Gauge16: TGauge;
    Label81: TLabel;
    FBox33: TFBox;
    FBox34: TFBox;
    FBox35: TFBox;
    FBox36: TFBox;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label103: TLabel;
    SpeedButton14: TSpeedButton;
    FPanel4: TFPanel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Gauge17: TGauge;
    Label86: TLabel;
    Label90: TLabel;
    FPanel22: TFPanel;
    Label104: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Gauge25: TGauge;
    Label132: TLabel;
    Label133: TLabel;
    GIFSShow2: TGIFSShow;
    GIFSShow6: TGIFSShow;
    GIFSShow9: TGIFSShow;
    GIFSShow1: TGIFSShow;
    GIFSShow3: TGIFSShow;
    GIFSShow4: TGIFSShow;
    GIFSShow7: TGIFSShow;
    GIFSShow8: TGIFSShow;
    GIFSShow5: TGIFSShow;
    GIFSShow10: TGIFSShow;
    GIFSShow11: TGIFSShow;
    Label134: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    FPicLabel1: TFPicLabel;
    FPicLabel2: TFPicLabel;
    FPicLabel3: TFPicLabel;
    FPicLabel4: TFPicLabel;
    FPicLabel5: TFPicLabel;
    FPicLabel6: TFPicLabel;
    FPicLabel7: TFPicLabel;
    FPicLabel8: TFPicLabel;
    FPicLabel9: TFPicLabel;
    FPicLabel10: TFPicLabel;
    procedure TreeView1Edited(Sender: TObject; Node: TTreeNode;
      var S: String);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Image1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure SpeedButton14Click(Sender: TObject);
  private
    { Private declarations }
    NowSens,NowTepl,NowSeries:integer;

    OldX,OldY:Longint;
    FilterTValue: array [1..8] of Double;
    FilterTTime: array [1..8] of TDateTime;
    function GetTemp(fTask:integer;fDo:integer;ValX:integer;inDate:TDateTime):integer;

//    NumInBoil:word;
  public
//    SumZona:word;
//    HandMode:TBlock;
//    NetMeteo:TBlock;
//    function PaintTree:integer;
//    procedure PaintTree;
//    procedure SetChar;
//    procedure SetView;
    function GetTextZona(x,y:integer):string; override;
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
//    function CtrToFile:string;override;
    function CtrFromFile(NameFile:string):Boolean;override;
  end;

type THotV0=Class(TBlock)
private
//     IntSour:Integer;
//     mFil:array [1..10] of Double;
//     Step:Integer;

public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure PostPortRead; override;
     procedure SetTree(var Tree:TTreeView); override;
//     function SetState(rs:Byte):Byte;
//     function TipSensToImage(TipSens:TTipSens):Byte;
     function SendTime:Boolean;
//     procedure RandBlock; override;
     function DayTime:Boolean;
//     procedure SetHotTime;
end;

type THotV1=Class(TBlock)
private
public
     procedure Init;override;
//!!!     function ValXName(ValX,ValY: integer): string;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure PostPortRead; override;
     procedure SetTree(var Tree:TTreeView); override;
//     function MCBitToImage(rs:Byte):Byte;
//     function TipSensToImage(TipSens:TTipSens):Byte;
     function SendTime:Boolean;
//     procedure RandBlock; override;
     function DayTime:Boolean;
//    procedure SetHotTime;
end;

type TLev=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TControlC65=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TParMecC65=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;
type TCalSens=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TTimer=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
//     procedure GetProperGrid( x, y:integer);override;
end;

{type TArxiv=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TArxivV5=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;
}


type TBlArxPC=Class(TBlock)
private
//     SumListVal:word;
     DateTest:TDateTime;
     function CalcDayArxPC(ArxDate:TDateTime):Boolean;
     function CalcAllArxPC(StartDate:TDateTime):Boolean;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TStrategy=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     function GetForComboBox(vX,vY:integer;ComboBox:TComboBox):Boolean;override;
//     procedure GetProperGrid( x, y:integer);override;
end;

type TConfigOutputs=Class(TBlock)
public
     procedure Init;override;
//     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
//       var Txt:String):Double;override;
end;

type THandMode=Class(TBlock)
//private
public
    procedure Init;override;
    function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    function SendToPort(EndMethod: TEndPortMethod):Boolean;override;
    function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
end;

type TNetMeteo=Class(TBlock)
private
    Source:array [1..CountYNetMeteo] of string[30];
    procedure CalcMax;
    procedure SetRegul;
    function DoOper(nRegul:Byte;Mes,Task:Double):string;
public
    procedure Init;override;
    function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    procedure CalcNetRegul;
end;

//function MCBitToImage(rs:Byte):Byte;
//function GetImColor:TColor;
//function GetWindDirect(Direct:double;wind:word):string;
//function RealSensor:Boolean;
//function GetRowExist(Block:TBlock;y:word):Boolean;
//function GetColorZone(x,y:integer):TColor; //override;

//=============================================================================

implementation
uses Port, HandClim, DefineClim403, WindSon;
{$R *.DFM}

    function TFClimat65.GetTextZona(x,y:integer):string;
begin
//  inherited;
  if (x=0) and (y=0) then begin Result:=CtrName; Exit; end;
  if (SumZone > 1)
    and (x > 0)
    and ((y=0) or (y > cSMeteoSens)) then
//      Result:=Format(ProgMess[59],[x]) else Result:='';   //'Зона %d '
      case x of
      1: Result:=LTepl1.Caption+' ';
      2: Result:=LTepl2.Caption+' ';
      end
      else Result:='';
end;

//---------------------------- СОСТОЯНИЕ C-65 ------------------
type eTimer=record
        DataStart:InInt;
        DataEnd:InInt;
        TimeStart:InInt;
        Temper:InInt;
        Tepl:Byte;
        LevSR:InInt;
        end;

type eProgTepl=record
        ActTimer:Byte;
        LastStart:InInt;
        LastSR:InInt;
        end;

procedure TFClimat65.InitCtr(vIdentCtr:TIdentCtr);
//var Handle:THandle;
begin
     inherited;
     NameIdent:=cNameIdent65;
     SumZone:=IdentCtr[idSubTip];
     if (SumZone<1) or (SumZone>2) then SumZone:=1;
     if SumZone<2 then BevelTepl.Width:=330;
     // Константы горячего блока и сам блок
     THotV1.Create(Self);   // старая модификация
{      if (CtrModific and CLIM65_HAND) > 0
      then THotV1.Create(Self)     // новая модификация
      else THotV0.Create(Self);   // старая модификация
     // Создание блоков данных в порядке как в контроллере }
     TControlC65.Create(Self);
     TCalSens.Create(Self);
     TTimer.Create(Self);
     if SumZone>1 then
       begin
       with Block[CountBlock-1] do
         begin
         Pref:=Pref+' 1';
         NameBlock:=NameBlock+' 1';
         end;
       TTimer.Create(Self);
       with Block[CountBlock-1] do
         begin
         Pref:=Pref+' 2';
         NameBlock:=NameBlock+' 2';
         Sort:=srDoubleBlock;
         end;
       end;
     TStrategy.Create(Self);
     if(SumZone=1) then with Block[CountBlock-1] do FNumBlock:=FNumBlock+1;
     TParMecC65.Create(Self);
     if(SumZone=1) then with Block[CountBlock-1] do FNumBlock:=FNumBlock+1;
     ConfigBlock:=TConfigOutputs.Create(Self);
     if(SumZone=1) then with Block[CountBlock-1] do FNumBlock:=FNumBlock+1;
     TLev.Create(Self);
     if (CtrModific and CLIM65_HAND) > 0 then
      begin
      if(SumZone=1) then with Block[CountBlock-1] do FNumBlock:=FNumBlock+1;
      HandMode:=THandMode.Create(Self);
      end else HandMode:=nil;
     if(SumZone=1) then with Block[CountBlock-1] do FNumBlock:=FNumBlock+1;
     NetMeteo:=TNetMeteo.Create(Self);
     if(SumZone=1) then with Block[CountBlock-1] do FNumBlock:=FNumBlock+1;
     TBlArxPC.Create(Self);
     LoadImageSkin(Image1,'Climat65.jpg');

{     Handle:=LoadLibrary('MonImage.dll');
     if Handle<>0 then
        begin
        Image1.Picture.Bitmap.Handle:=LoadBitmap(Handle,'IMAGE_CLIM65');
        FreeLibrary(Handle)
        end
     else MessageDlg('Ошибка библиотеки "MonImage.dll"',mtWarning,[mbOK],0);
//     ShowMessade('Ошибка библиотеки "MonImage.dll"'); }
end;

//begin =============== Блок метеоданных по сети-----------------

{  SUM_OPER=3;
  ComboOper: array [1..SUM_OPER] of string[2]=(
        '>',
        '=',
        '<'
        );
}
var RealPozY:word;
type ConfVal=record
     NumInHot:Byte;
     Task:InInt;
     Kof:array [0..SUM_KOF-1] of double;
     end;
   TConfMeteo=array [0..SUM_REGUL-1] of ConfVal;

function TNetMeteo.DoOper(nRegul:Byte;Mes,Task:Double):string;
var Upr,Integr:double;
    pConfMeteo:^TConfMeteo;
begin
    pConfMeteo:=Adr;
    Integr:=pConfMeteo^[nRegul].Kof[X_SUM_I] + (Task-Mes)*pConfMeteo^[nRegul].Kof[X_I];
    Upr:= pConfMeteo^[nRegul].Kof[X_P] * (Task-Mes)
        + {pConfMeteo^[nRegul].Kof[X_I] * }Integr
        + pConfMeteo^[nRegul].Kof[X_D] * (pConfMeteo^[nRegul].Kof[X_PRED]-Mes);
    if Upr > 100 then Upr:= 100;
    if Upr <=  0 then Upr:=0;
    if (Upr < 100) and (Upr > 0)
      then pConfMeteo^[nRegul].Kof[X_SUM_I]:= Integr;
    pConfMeteo^[nRegul].Kof[X_PRED]:=Mes;
    Result:=IntToStr(round(Upr));
end;

procedure TNetMeteo.SetRegul;
var y:word;
    vSt:string;
begin
    for y:=Y_START_REGUL to CountY do
      begin
      vSt:=DoOper(y-Y_START_REGUL
               ,LoadXY(cOutBlock,X_MAX,y,vSt)
               ,LoadXY(cOutBlock,X_TASK,y,vSt));
      LoadXY(cInBlock,X_STATE_REG,y,vSt);
      end;
end;

procedure TNetMeteo.CalcNetRegul;
begin
//      SetEndRecord;
      CalcMax;
      UpdateGridBlock(Self);
end;

procedure TNetMeteo.Init;//override;
begin
     CountY:=CountYNetMeteo;
     CountX:=X_KOF+3;
     SizeCol:=SizeOf(TConfMeteo);
     FullSize:=SizeOf(TConfMeteo);
     SendByte:=0;
     Pref:=ProgMess[282];   //'Сеть';
     NameBlock:=ProgMess[283];   //'Данные по сети';
     FixRow:=1;
     ConstNames:=Addr(cDefineHotV1[1]);
     EnableXML:=False;
end;

function TNetMeteo.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pHot:PByteArray;
    pConfMeteo:^TConfMeteo;
begin
     Result:=0;
//     imNum:=imNoReal;
//     if (ValX=0) and (ValY=3) then CalcMax;
     if ValY=0 then
        begin
        case ValX of
        X_NAME:       Txt:=ProgMess[284];   //'Параметр';
        X_POZ_Y:      Txt:=ProgMess[285];   //'Номер';
        X_MAX:        Txt:=ProgMess[286];   //'Макс значение';
        X_SOURCE:     Txt:=ProgMess[287];   //'Источник';
        X_TASK:       Txt:=ProgMess[288];   //'Задание';
        X_STATE_REG:  Txt:=ProgMess[289];   //'Включает';
        X_N_REGUL:    Txt:=ProgMess[290];   //'Регулятор';
        X_KOF+X_P:    Txt:=ProgMess[291];   //'П-коэф';
        X_KOF+X_I:    Txt:=ProgMess[292];   //'И-коэф';
        X_KOF+X_D:    Txt:=ProgMess[293];   //'Д-коэф';
        X_KOF+X_SUM_I:Txt:=ProgMess[294];   //'Интегр';
        end;
        Exit;
        end;
     pHot:=ParentCtr.Block[0].Adr;
     if Not Ready then Ready:=ParentCtr.Block[0].Ready;
     pConfMeteo:=Adr;
     if (ValY>=Y_START_REGUL) and (pConfMeteo^[ValY-Y_START_REGUL].NumInHot > 0 )
        then RealPozY:=pConfMeteo^[ValY-Y_START_REGUL].NumInHot
        else RealPozY:=ValY;
     try
     case ValX of
       X_NAME: begin
            Result:=0;
            Txt:=ConstNames[RealPozY].Name;
//            Result:=Convers(ConstNames[RealPozY].Name,
//              pHot,ConstNames[RealPozY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[RealPozY].Ed);
            end;
       X_MAX: begin
            pHot:=Addr(pHot^[ConstNames[ValY].Index]);
//!!!            pHot:=Addr(pHot^[ConstNames[RealPozY].Index]);
            Result:=Convers(ConstNames[RealPozY].Name,
              pHot,ConstNames[RealPozY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[RealPozY].Ed);
            if (ConstNames[RealPozY].TipSens = TipSensor) or (ConstNames[RealPozY].TipSens = SensorRCS) then
               imNum:=MinInt(imNum,RCSBitToImage(pHot^[2]));
            AccessW:=RW_NOEDIT;
            if Result=0 then imColor:=clRed else imColor:=clGreen;
            if ConstNames[RealPozY].Ed = '°' then
                Txt:=Txt+' '+GetWindDirect(Result,PByteArray(ParentCtr.Block[0].Adr)^[iSensOut+6]
                + PByteArray(ParentCtr.Block[0].Adr)^[iSensOut+7]); //[pHot^[-3]+pHot^[-2]);
            end;
        X_POZ_Y: if (ValY>=Y_START_REGUL) then
            begin
            Result:=Convers('',
            Addr(pConfMeteo^[ValY-Y_START_REGUL].NumInHot),SS,vInBlock,ValX,ValY,Txt,'');
            if round(Result) > ParentCtr.Block[0].CountY then
              begin Result:=0; Txt:='0'; end;
            imNum:=imNoConnect;
            end;
        X_SOURCE:  begin
            Txt:=Source[ValY];
            AccessW:=RW_NOEDIT;
            end;
        X_TASK: if (ValY>=Y_START_REGUL) then
            Result:=Convers('',
            Addr(pConfMeteo^[ValY-Y_START_REGUL].Task),ConstNames[RealPozY].Frm
            ,vInBlock,ValX,ValY,Txt,ConstNames[RealPozY].Ed);
        X_STATE_REG:  if (ValY>=Y_START_REGUL) then
                  begin
                  Result:=Convers('',
                    Addr(pHot^[iPulRegul+ValY-Y_START_REGUL]),SS,vInBlock,ValX,ValY,Txt,'%');
                  AccessW:=RW_NOEDIT;
                  end;
        X_N_REGUL:  if (ValY>=Y_START_REGUL) then
                  begin
                  Result:=0;
                  Txt:=ProgMess[290]+' '+IntToStr(ValY-Y_START_REGUL+1);  //'Регулятор '
                  AccessW:=RW_NOEDIT;
                  end;
        X_KOF..X_KOF+3:  if (ValY>=Y_START_REGUL) then
                  begin
                  if vInBlock=cInBlock then
                    pConfMeteo^[ValY-Y_START_REGUL].Kof[ValX-X_KOF]:=StrToFloat(Txt);
                  Result:=pConfMeteo^[ValY-Y_START_REGUL].Kof[ValX-X_KOF];
                  Txt:=FloatToStr(Result);
                  end;
        end;
        except
          Txt:='?';
          Result:=0;
//          MessageDlg('Неверное значение',mtWarning,[mbOK],0);
        end;
      if (ValY < Y_START_REGUL) and ((ValX=X_POZ_Y) or (ValX  > X_MAX))
           then begin Txt:=''; imNum:=imNoReal; end;
end;

procedure TNetMeteo.CalcMax;
var x,y,ClientsY:integer;
  Txt,TxtMax:string;
  vData,MaxData:double;
  iMax:integer;
  pConfMeteo:^TConfMeteo;
begin
  pConfMeteo:=Adr;
  Ready:=True;
  BlDate:=Now;

//=============== поиск максимума воды ==========
  MaxData:=0;
  for x:=1 to SumClimatClients do
      begin
      with ClimatClient[x] do
      vData:=Ctr.Block[0].LoadXY(cOutBlock,Zone,posZoneMaxWater,Txt);
      if vData > MaxData then
                begin
                MaxData:=vData;
                iMax:=x;
                TxtMax:=Txt;
                end;
      end;
  ParentCtr.Block[0].LoadXY(cInBlock,1,posAbsMaxWater,TxtMax);
//=============== end поиск максимума воды ==========

  for y:=1 to CountY do
    begin
    ClientsY:=y;
    if (y>=Y_START_REGUL) then ClientsY:=pConfMeteo^[y-Y_START_REGUL].NumInHot;
    if ClientsY=0 then ClientsY:=y;
{    if ClientsY<> y  then
        begin
        ParentCtr.Block[0].LoadXY(cOutBlock,1,y,Txt);
        if RealSensor then
          begin
          MessageDlg('Подставлено значение реального датчика '+ConstNames[y].Name+'. Сначала отключите его!',mtWarning,[mbOK],0);
          pConfMeteo^[y-Y_START_REGUL].NumInHot:=0;
          end;
        end; }
    MaxData:=-22222222;
    iMax:=0;
    TxtMax:='0';
    for x:=1 to SumClimatClients do
      begin
      RealPozY:=ClientsY;       //Если блок подставит датчик, то изменит RealPozY
      with ClimatClient[x] do
      vData:=Ctr.Block[0].LoadXY(cOutBlock,Zone,ClientsY,Txt);
      if (RealPozY = ClientsY)  //Если блок не подставил другой датчик, то
          and RealSensor(imNum)        //((imNum=0) or ((imNum >= imNorm) and (imNum <= imNoCalibr)))
//          and (vData <> 0)
          and ((Now-ClimatClient[x].Ctr.Block[0].BlDate)<(6*cMin))
        then if vData > MaxData then
                begin
                MaxData:=vData;
                iMax:=x;
                TxtMax:=Txt;
                end;
      end;
    if (iMax = 0) {or (MaxData = 0)} then
        begin
//        TxtMax:='0';
        Source[y]:='~';
        end
    else
        begin
        with ClimatClient[iMax] do
          begin
// записывать можно либо только при найденных данных, либо всегда
          LoadXY(cInBlock,X_MAX,y,TxtMax);   // запись максимума в Нот если нашли данные
          Source[y]:=Ctr.CtrName+' '+Ctr.GetTextZona(Zone,ClientsY);
          end;
        end;
// записывать можно либо только при найденных данных, либо всегда
//    LoadXY(cInBlock,X_MAX,y,TxtMax);   // запись максимума в Нот всегда
    end;
  SetRegul;
end;

//================== HOT V0
procedure THotV0.Init;
begin
     CountX:=1;
     CountY:=SumMesTepl* ParentCtr.SumZone + SumCommon;//SumAllMesHot;
     // Устанавливаем размер блока, старая модификация
     SizeCol:=iTepl+sizeTepl*ParentCtr.SumZone;
     FullSize:=SizeCol;
     SendByte:=cSendTime;
     Pref:=ProgMess[231];  //'Состояние';
     NameBlock:=ProgMess[232];  //'Состояние климата';
     ConstNames:=Addr(cDefineHotV0[1]);
//     SavingConstNames:=True;
     Diagnosis:=Addr(comClimatDiagnosV1[1]);
     CountDiagnosis:=SumDiadnos;
end;

procedure THotV1.Init;
begin
//     CountComY:=SumCommon;//Сколько строк не выводить в зоне Б
     CountX:=ParentCtr.SumZone;
     CountY:=SumMesTepl+SumCommon;
     // Устанавливаем размер блока, новая модификация
     SizeCol:=iTepl+sizeTepl*2+sizeTMech*2;
     FullSize:=SizeCol;
     SendByte:=cSendTime;
     Pref:=ProgMess[231];  //'Состояние';
     NameBlock:=ProgMess[232];  //'Состояние климата';
     ConstNames:=Addr(cDefineHotV1[1]);
//     SavingConstNames:=True;
     Diagnosis:=Addr(comClimatDiagnosV1[1]);
     CountDiagnosis:=SumDiadnos;
end;

function THotV0.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pHot:pByteArray;
    tInInt:InInt;
    pt:Pointer;
    tIndex,nTepl:word;
    tTask,tDelt:Double;
begin
with ParentCtr as TFClimat65 do
 begin
 Result:=ValX;
 if ValY=0 then
       begin
       if ValX=0 then  Txt:=ParentCtr.CtrName else Txt:='Значение';
       Exit;
       end;
 nTepl:=1;
 tIndex:=0;
 if ValY>=StTeplSens then    //теплиц не одна и в тепличных
       begin

       nTepl:=((ValY-StTeplSens) div SumMesTepl)+1;
       ValY:=StTeplSens+((ValY-StTeplSens) mod SumMesTepl);
       tIndex:=iTepl+(nTepl-1)*sizeTepl;
       if ValX=0 then
          begin
          Txt:=GetTextZona(nTepl,1)+ConstNames[ValY].Name;
          Exit;
          end;
       end;
 pt:=Addr(tInInt);
 pHot:=Adr;
// if vInBlock=cInBlock then SetHotTime;
 case ConstNames[ValY].TipSens of
 TipBit:
     begin
     Result:=ConversBit(ConstNames[ValY].Name,
       Addr(pHot^[ConstNames[ValY].Index+tIndex]),
       Round(ConstNames[ValY].Max),ConstNames[ValY].Frm,vInBlock,ValX,Txt);
     Exit;
     end;
 TipSensor,SensorRCS:
     begin
     imNum:=TipSensToNumImage(ConstNames[ValY].TipSens);
     imNum:=MinInt(imNum,RCSBitToImage(pHot^[ConstNames[ValY].Index+tIndex+2]));
     pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
     end;
  prognT:SetInInt(tInInt,GetProgn(GetInt51(Addr(pHot^[itTAir+tIndex]))));
  AbsRH: SetInInt(tInInt,
           GetAbsH(GetInt51(Addr(pHot^[itTAir+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  DDWP:SetInInt(tInInt,
           GetDDWP(GetInt51(Addr(pHot^[itTAir+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  DDWPS: SetInInt(tInInt,
           GetDDWP(GetInt51(Addr(pHot^[itTSheet+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  TR: SetInInt(tInInt,
           GetTR(GetInt51(Addr(pHot^[itTAir+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  TipTime: pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  else pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  end;
  Result:=Convers(ConstNames[ValY].Name,pt,
        ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
  if (ValX>0) and (ConstNames[ValY].TipSens=TipGoTask) and (ClimGoTask>0) then
     begin
     tTask:=0.01*GetInt51(Addr(pHot^[itDoT+tIndex]));
     tDelt:=(tTask-Result)*(tTask-Result);
     if tDelt>1 then Exit;
     if Result<tTask then tDelt:=-tDelt;
     Result:=tTask+tDelt;
     end;
  if (ValX>0) and (ConstNames[ValY].Ed = '°') then
    Txt:=GetWindDirect(Result,pHot^[iSensOut+6]+pHot^[iSensOut+7]);
 end;
end;

function THotV1.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pHot:pByteArray;
    tInInt:InInt;
    pt:Pointer;
    tIndex:word;
//    tTask,tDelt:Double;
begin
with ParentCtr as TFClimat65 do
 begin
 Result:=0;
 if ValY=0 then
       begin
       Txt:=GetTextZona(ValX,ValY);
       Exit;
       end;
 if (ValY<=CountYNetMeteo) then
    begin
//    if (ValX>1) then imNum:=imNoConnect;
    if (ValX>2) then begin Txt:=''; Exit; end;
    if (ValX=2) then ValX:=X_STATE_REG;
    if (ValX=1) then ValX:=X_MAX;
    Result:=NetMeteo.LoadXY(vInBlock,ValX,ValY,Txt);
//    if (ValX=0) then Txt:=Txt+' - по сети';
    Exit;
    end;
 if ValX=0 then
 begin
  Result:=Convers(ConstNames[ValY].Name,Adr,
        SS,vInBlock,ValX,ValY,Txt,'');
   Exit;
 end;
 tIndex:=0;
 if ValY>=StTeplSens then
   tIndex:=iTepl
   else if ValX > 1 then
    begin Txt:=''; Exit; end;;
 if (ValY>=StTeplMecan) then
   tIndex:=tIndex+(ValX-1)*sizeTMech-iTepl
 else
   tIndex:=tIndex+(ValX-1)*sizeTepl;
 pt:=Addr(tInInt);
 pHot:=Adr;
// if vInBlock=cInBlock then SetHotTime;
 case ConstNames[ValY].TipSens of
 TipSensor,SensorRCS:
     begin
     imNum:=MinInt(imNum,RCSBitToImage(pHot^[ConstNames[ValY].Index+tIndex+2]));
     pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
     end;
  TipGoTask:
     SetInInt(tInInt,GetTemp(GetInt51(Addr(pHot^[itTAir+tIndex])),GetInt51(Addr(pHot^[itDoT+tIndex])),ValX,BlDate));
  prognT:SetInInt(tInInt,GetInt51(Addr(pHot^[itTAir+tIndex])));
  AbsRH: SetInInt(tInInt,
           GetAbsH(GetInt51(Addr(pHot^[itTAir+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  DDWP:SetInInt(tInInt,
           GetDDWP(GetInt51(Addr(pHot^[itTAir+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  DDWPS: SetInInt(tInInt,
           GetDDWP(GetInt51(Addr(pHot^[itTSheet+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  TR: SetInInt(tInInt,
           GetTR(GetInt51(Addr(pHot^[itTAir+tIndex])),
                  GetInt51(Addr(pHot^[itRH+tIndex]))));
  TipTime: pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  else pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  end;

  Result:=Convers(ConstNames[ValY].Name,pt,
        ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
  if (ValY>=StTeplMecan) then
    if (Result>0) then
      imColor := clRed
      else imColor := clGreen;
 end;

end;

function THotV0.SendTime:Boolean;
var pHot:pByteArray;
    Minut:word;
begin
if FormFalseTime then Exit;
FormFalseTime:=True;
if FMain.mnAutoSynxTime.Checked or (MessageDlg(Format(ProgMess[iAtten]+ProgMess[321]+ProgMess[322] //'Внимание! Время контроллера "%s" отличается от ПК. Синхронизировать?'
  ,[ParentCtr.CtrName]),mtWarning,[mbYes, mbNo],0)= mrYes) then
 begin
 pHot:=Adr;
 pHot^[0]:=$80;
 Minut:=MinuteOfTheDay(Now);
 pHot^[iTime]:=Minut div 256;
 pHot^[iTime+1]:=Minut mod 256;
 pHot^[iTime+2]:=MonthOfTheYear(Now);
 pHot^[iTime+3]:=DayOfTheMonth(Now);
 pHot^[iTime+4]:=YearOf(Now)-2000;
 Result:=SendToPort(nil);
 end;
FormFalseTime:=False;
end;

function THotV1.SendTime:Boolean;
var pHot:pByteArray;
    PCTime,CtrlTime:word;
begin
// проверка времени контроллера
 if FormFalseTime then Exit;
 pHot:=Adr;
 PCTime:=MinuteOfTheDay(Now);
 CtrlTime:=pHot^[iTime]*256+pHot^[iTime+1];
 if (ParentCtr.DataPath<>'')
     or (PCTime<15)
     or (PCTime>(24*60-15))
     or (((CtrlTime+15)>PCTime) and((CtrlTime-15)< PCTime)) then Exit;
 FormFalseTime:=True;
 if FMain.mnAutoSynxTime.Checked or (MessageDlg('Внимание! Время контроллера "'+ParentCtr.CtrName
     +'" отличается от ПК. Синхронизировать?'
       ,mtWarning,[mbYes, mbNo],0)= mrYes) then
     begin
     pHot^[0]:=$80;
     pHot^[iTime]:=PCTime div 256;
     pHot^[iTime+1]:=PCTime mod 256;
     pHot^[iTime+2]:=MonthOfTheYear(Now);
     pHot^[iTime+3]:=DayOfTheMonth(Now);
     pHot^[iTime+4]:=YearOf(Now)-2000;
     Result:=SendToPort(nil);
     end;
  FormFalseTime:=False;
//  pHot^[iTime+4]:=pHot^[iTime+4] or $80;
end;

procedure THotV0.PostPortRead;
var pHot:PByteArray;
    i,Minut:integer;
    SRaise,SSet:TDateTime;
begin
 if Not Ready then Exit;
 pHot:=Adr;
 for i:=0 to SumSensOut-1 do
   begin
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
   if ((pHot^[iSensOut+i*3+2] and (1+16)) = 0)
      then
// если датчик подсоединен и измеряет и не 0, то его в общие данные
      begin
      mMeteo[i].UpdateTime:=BlDate;
      mMeteo[i].Val51[0]:=pHot^[iSensOut+i*3];
      mMeteo[i].Val51[1]:=pHot^[iSensOut+i*3+1];
//      mMeteo[i].RCS:=pHot^[iSensOut+i*3+2];
//      NameCtrMeteo:=ParentCtr.CtrName;
      if i=comSun then
          begin
          mMeteo[comSumSun].Val51[0]:=pHot^[iSumSun];
          mMeteo[comSumSun].Val51[1]:=pHot^[iSumSun+1];
          mMeteo[comSumSun].UpdateTime:=BlDate;
          mMeteo[comMidlSR].Val51[0]:=pHot^[iMidlSR];
          mMeteo[comMidlSR].Val51[1]:=pHot^[iMidlSR+1];
          mMeteo[comMidlSR].UpdateTime:=BlDate;
          end;
{      if i=comWind then
          begin
          mMeteo[comMidlWind].IZ[0]:=pHot^[iMidlWind];
          mMeteo[comMidlWind].IZ[1]:=pHot^[iMidlWind+1];
          end;   }
      end
   else
// если датчик не измеряет то из метеоданных
      begin
      if (Now>mMeteo[i].UpdateTime) and(Now < (mMeteo[i].UpdateTime+5*cMin)) then
        begin
        pHot^[iSensOut+i*3]:=mMeteo[i].Val51[0];
        pHot^[iSensOut+i*3+1]:=mMeteo[i].Val51[1];
        if i=comSun then
            begin
            pHot^[iSumSun]:=mMeteo[comSumSun].Val51[0];
            pHot^[iSumSun+1]:=mMeteo[comSumSun].Val51[1];
            end;
        end;
      end;
   end;

 inherited; // записать блок в файл
 if (ParentCtr.DataPath<>'') then Exit;

 // рассчет восхода и захода
// SunRaiseSet(Now,MeteoLong,MeteoWidth,MeteoZone,SRaise,SSet);
 Minut:=MinuteOfTheDay(GlobSunRaise);
 pHot^[iVosx]:=Minut div 256;
 pHot^[iVosx+1]:=Minut mod 256;
 Minut:=MinuteOfTheDay(GlobSunSet);
 pHot^[iVosx+2]:=Minut div 256;
 pHot^[iVosx+3]:=Minut mod 256;

 // рассчет прогноза температуры
// tIndex:=iTepl;
// i:=GetProgn(GetInt51(Addr(pHot^[itTAir+iTepl])));
// pHot^[iNextTAir]:=i div 256;
// pHot^[iNextTAir+1]:=i mod 256;
 pHot^[iPulRegul]:=0;
 pHot^[iPulRegul+1]:=0;
 pHot^[iPulRegul+2]:=0;
 pHot^[iPulRegul+3]:=0;

 pHot^[0]:=0;
 SendByte:=sizePCSend325;
 FPort.BlockSend(Self,IN_UNIT,0,nil);
// восстановить размер передачи по умолчанию
 SendByte:=cSendTime;
// проверка времени контроллера
 Minut:=MinuteOfTheDay(Now);
 i:=pHot^[iTime]*256+pHot^[iTime+1];
 if (ParentCtr.DataPath='') and (Minut>15) and (Minut<(24*60-15))
     and (((i+15)<Minut) or((i-15)> Minut)) then
       begin
       SendTime;
       pHot^[iTime+4]:=pHot^[iTime+4] or $80;
       end;

end;

procedure THotV1.PostPortRead;
var pHot:PByteArray;
    i,Minut:integer;
    SRaise,SSet:TDateTime;
begin
 if Not Ready then Exit;
 with ((ParentCtr as TFClimat65).NetMeteo) as TNetMeteo do
    CalcNetRegul;

 pHot:=Adr;
 for i:=0 to SumSensOut-1 do
   begin
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
   if ((pHot^[iSensOut+i*3+2] and (1+16)) = 0)
      then
// если датчик подсоединен и измеряет, то его в общие данные
      begin
      mMeteo[i].UpdateTime:=BlDate;
      mMeteo[i].Val51[0]:=pHot^[iSensOut+i*3];
      mMeteo[i].Val51[1]:=pHot^[iSensOut+i*3+1];
//      mMeteo[i].RCS:=pHot^[iSensOut+i*3+2];
      if i=comSun then
          begin
          mMeteo[comSumSun].Val51[0]:=pHot^[iSumSun];
          mMeteo[comSumSun].Val51[1]:=pHot^[iSumSun+1];
          mMeteo[comMidlSR].Val51[0]:=pHot^[iMidlSR];
          mMeteo[comMidlSR].Val51[1]:=pHot^[iMidlSR+1];
          end;
      end
   else
// если датчик не измеряет то из метеоданных
      begin
      if (Now>mMeteo[i].UpdateTime) and(Now < (mMeteo[i].UpdateTime+5*cMin)) then
        begin
        if i=comSun then
            begin
            pHot^[iSumSun]:=mMeteo[comSumSun].Val51[0];
            pHot^[iSumSun+1]:=mMeteo[comSumSun].Val51[1];
            end;
        end;
      end;
   end;
 if WindPortThread.Workeed then
      begin
      pHot^[iWind65]:=round(WindPortThread.Wind*100) div 256;
      pHot^[iWind65+1]:=round(WindPortThread.Wind*100) mod 256;
      pHot^[iWind65+2]:=0;
      pHot^[iDirWind65]:=round(WindPortThread.Direct) div 256;
      pHot^[iDirWind65+1]:=round(WindPortThread.Direct) mod 256;
      pHot^[iDirWind65+2]:=0;
      end;
//=======
 inherited; // записать блок в файл
 if (ParentCtr.DataPath<>'') then Exit;

 // рассчет восхода и захода
// SunRaiseSet(Now, MeteoLong,MeteoWidth,MeteoZone,SRaise,SSet);
 Minut:=MinuteOfTheDay(GlobSunRaise);
 pHot^[iVosx]:=Minut div 256;
 pHot^[iVosx+1]:=Minut mod 256;
 Minut:=MinuteOfTheDay(GlobSunSet);
 pHot^[iVosx+2]:=Minut div 256;
 pHot^[iVosx+3]:=Minut mod 256;

 // рассчет прогноза температуры
// tIndex:=iTepl;
{ i:=GetProgn(GetInt51(Addr(pHot^[itTAir+iTepl])));
 pHot^[iNextTAir]:=i div 256;
 pHot^[iNextTAir+1]:=i mod 256;
}
 pHot^[0]:=0;
 SendByte:=sizePCSend325;
 FPort.BlockSend(Self,IN_UNIT,0,nil);
// восстановить размер передачи по умолчанию
 SendByte:=cSendTime;
// проверка времени контроллера
 SendTime;
end;

function THotV0.DayTime:Boolean;
var pHot:PByteArray;
    i:integer;
begin
 pHot:=Adr;
 i:=pHot^[iTime]*256+pHot^[iTime+1];
 if (i> ((pHot^[iVosx]*256+pHot^[iVosx+1])+1))and (i<(pHot^[iVosx+2]*256+pHot^[iVosx+3]))
  then Result:=True else Result:=False;
end;

function THotV1.DayTime:Boolean;
var pHot:PByteArray;
    i:integer;
begin
 pHot:=Adr;
 i:=pHot^[iTime]*256+pHot^[iTime+1];
 if (i> ((pHot^[iVosx]*256+pHot^[iVosx+1])+1))and (i<(pHot^[iVosx+2]*256+pHot^[iVosx+3]))
  then Result:=True else Result:=False;
end;

//---------- END СОСТОЯНИЕ C-65 ------------------
//---------------------------- ГРАНИЦЫ C-65-V2 ------------------

{var NameLev:array [0..3] of string[17]=(
        'Верхняя авария',  //277
        'Верхний сигнал',
        'Нижний сигнал',
        'Нижняя авария'
        );
}
//---------------------------- ГРАНИЦЫ C-65 ------------------

type eALev=array[0..3] of InInt;

type mLev=array[0..0] of eALev;

procedure TLev.Init;
begin
     CountX:=4;
     CountY:=SumSensOut+SumTeplASens*ParentCtr.SumZone;
     SizeCol:=SizeOf(InInt)*CountY;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:=ProgMess[275];   //'Допуски';
     NameBlock:=ProgMess[276];   //'Контрольные допуски';
     EnableXML:=False;
end;

function TLev.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pLev:^mLev;
    lTepl,iLev,nSens,nLev:word;
begin
with ParentCtr as TFClimat65 do
  begin
  pLev:=Adr;
  lTepl:=10;
  nLev:=4-ValX;
  if ValY=0 then
       begin
       if ValX=0 then  Txt:=ParentCtr.CtrName
             else Txt:=ProgMess[277+nLev];  //NameLev[nLev];
       Exit;
       end;
  if ValY>cSMeteoSens then
       begin
       nSens:=StTeplSens+((ValY-1-cSMeteoSens) div SumZone);
       lTepl:=(ValY-1-cSMeteoSens) mod  SumZone;
       iLev:=SumSensOut+lTepl*SumTeplASens+((ValY-1-cSMeteoSens) div SumZone);//StTeplSens+lTepl*SumTeplASens;
       end
   else
       begin
       nSens:=ValY;
       iLev:=nSens-1;
       end;
  Result:=Convers(GetTextZona(lTepl+1,ValY)+Block[0].ConstNames[nSens].Name,
          Addr(pLev^[iLev][nLev]),Block[0].ConstNames[nSens].Frm,vInBlock,ValX,ValY,Txt,Block[0].ConstNames[nSens].Ed);
  end;
end; 

//---------- ПАРАМЕТРЫ C-65 ------------------
type rTControlC65=record
     rmTepl:array [1..1] of Byte;
     rSTASens:Byte;
     rSTDSens:Byte;
     rSTepl:Byte;
     rIdent:Byte;
//----- начало сохраняемых данных
     mConst: array[0..LongArrayConst-1] of Byte;
    end;

procedure TControlC65.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
     if (CountX<1) or (CountX>3) then CountX:=1;
     CountY:=SumParUpr;
     SizeCol:=LongArrayConst;
     FullSize:=SizeCol*CountX+5;
     SendByte:=FullSize;
     Pref:=ProgMess[198];   // 'Параметры';
     NameBlock:=ProgMess[199];   //'Параметры управления';
     FixRow:=1;
     ConstNames:=Addr(NameParUpr[1]);
end;

function TControlC65.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:^rTControlC65;
begin
     ADat:=Adr;
     Result:=ValX;
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        Exit;
        end;
     Result:=Convers(ConstNames[ValY].Name
            ,Addr(ADat^.mConst[ConstNames[ValY].Index+SizeCol*(ValX-1)]),ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
end;
//--------- END ПАРАМЕТРЫ C-65 ------------------

//---------- ПАРАМЕТРЫ МЕХАНИЗМОВ C-65 ------------------
procedure TParMecC65.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
     CountY:=SumParMec;
     SizeCol:=sizeParMec;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:=ProgMess[227];   //'Механизмы';
     NameBlock:=ProgMess[228];   //'Параметры механизмов';
     FixRow:=1;
     ConstNames:=Addr(NameParMec[1]);
end;

function TParMecC65.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:pByteArray;
begin
     ADat:=Adr;
     Result:=ValX;
     if ValY=0 then
       begin
       if ValX=0 then begin Txt:=ParentCtr.CtrName;Exit;end;
       Txt:=ParentCtr.GetTextZona(ValX,ValY);
       if Txt='' then Txt:=ProgMess[195]; //'Значение';
       Exit;
       end;
           begin
           Result:=Convers(NameParMec[ValY].Name
             ,Addr(ADat^[NameParMec[ValY].Index+SizeCol*(ValX-1)])
             ,NameParMec[ValY].Frm,vInBlock,ValX,ValY,Txt,NameParMec[ValY].Ed);
           end;
end;
//--------- END ПАРАМЕТРЫ МЕХАНИЗМОВ C-65 ------------------

//----------КАНАЛЫ ДАТЧИКОВ C-65 ------------------
type eCalAnalSens=record
        fk: array [1..2] of InInt;
        kk: array [1..2] of InInt;
        NPort:Byte;
        NInput:Byte;
        end;
type rCalSens=record
        CalPort:InInt;
        CalSens:array [1..2] of eCalAnalSens;
        end;

procedure TCalSens.Init;//override;
begin
     CountX:=6;
     CountY:=cSMeteoSens+cSInTeplSens*ParentCtr.SumZone+1;
     SizeCol:=2+10*(CountY-1);
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[203];  //'Калибровки';
     NameBlock:=ProgMess[204];  //'Калибровка датчиков';
     EnableXML:=False;
end;

function TCalSens.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pCal:^rCalSens;
    nSens,nParCal,ind,vTepl,nTepl:word;
begin
 nTepl:=ParentCtr.SumZone;
 pCal:=Adr;
 vTepl:=100;
 nParCal:=ValX;
 if ValY=0 then
        begin
        case nParCal of
             0:Txt:=ParentCtr.CtrName;
             1:Txt:=ProgMess[264];  //'Номер порта';
             2:Txt:=ProgMess[265];  //'Вход в порту';
             3:Txt:=ProgMess[266];  //'Эталон1';
             4:Txt:=ProgMess[267];  //'Напряжение1';
             5:Txt:=ProgMess[268];  //'Эталон2';
             6:Txt:=ProgMess[269];  //'Напряжение2';
             end;
        Exit;
        end;
  if ValY=CountY then
       begin
       if (ValX>1) then begin Result:=0; Txt:='';Exit; end;
       nSens:=1;
       Result:=Convers(Format(ProgMess[270],[nSens]),  //'Для Порта N%d частота на 1000 мВ'
       Addr(pCal^.CalPort{[nSens]}),SSSS,vInBlock,ValX,ValY,Txt,ProgMess[272]);    //'Гц');
       Exit;
       end;
  if ValY>cSMeteoSens then
       begin
       nSens:=(ValY-1-cSMeteoSens) div nTepl;
       vTepl:=(ValY-1-cSMeteoSens) mod  nTepl;
       ind:=nSens+1+cSMeteoSens+vTepl*cSInTeplSens;
       nSens:=nSens+StTeplSens;
       end
   else
       begin
       nSens:=ValY;
       ind:=nSens;
       end;
    with ParentCtr as TFClimat65 do
    case nParCal of
      0: if vTepl=100 then Txt:=Block[0].ConstNames[nSens].Name
        else Txt:=GetTextZona(vTepl+1,ValY)+Block[0].ConstNames[nSens].Name;
      1: Result:=Convers('',
       Addr(pCal^.CalSens[ind].NPort),SS,vInBlock,ValX,ValY,Txt,'');
      2: Result:=Convers('',
       Addr(pCal^.CalSens[ind].NInput),SS,vInBlock,ValX,ValY,Txt,'');
      3: Result:=Convers('',
       Addr(pCal^.CalSens[ind].kk[1]),Block[0].ConstNames[nSens].Frm,vInBlock,ValX,ValY,Txt,Block[0].ConstNames[nSens].Ed);
      4: Result:=Convers('',
       Addr(pCal^.CalSens[ind].fk[1]),SSSS,vInBlock,ValX,ValY,Txt,ProgMess[271]);    //'мВ'
      5: Result:=Convers('',
       Addr(pCal^.CalSens[ind].kk[2]),Block[0].ConstNames[nSens].Frm,vInBlock,ValX,ValY,Txt,Block[0].ConstNames[nSens].Ed);
      6: Result:=Convers('',
       Addr(pCal^.CalSens[ind].fk[2]),SSSS,vInBlock,ValX,ValY,Txt,ProgMess[271]);    //'мВ'
      end;   //end case
end;

//--------- END ДАТЧИКИ C-65      ------------------
//--------- ЗАДАНИЕ НА СУТКИ С-65 ------------------
const
     iTimeStart=0;
     iTimeEnd=iTimeStart+2;
     iTaskTemper=iTimeEnd+2;
     iTaskHumin=iTaskTemper+2;
     iTaskCO2=iTaskHumin+2;
     iOpt1Temp=iTaskCO2+2;
     iMinPipe1=iOpt1Temp+4;
     iMinOpenWin=iMinPipe1+2;
     iWinYes=iMinOpenWin+1;
     iTimeSiod=iWinYes+1;
     iScreenYes=iTimeSiod+2;
     iVentYes=iScreenYes+1;
     iDosvet=iVentYes+1;
     sizeTimer=iDosvet+1;
     SumTimer=19;

var  NameTimer:array [1..SumTimer] of TNameConst=(
 (Name:'Время начала действия программы (если 0 - прогр не активна)';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:24*60;Def:HIDE_MIN_MAX;
    Index:0;GridColor:$ffef00;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Время окончания действия программы (если 0-прогр не активна)';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:24*60;Def:HIDE_MIN_MAX;
    Index:2;GridColor:$ffdf00;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать температуру воздуха (если 0-прогр не активна)';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:30;Def:HIDE_MIN_MAX;
    Index:iTaskTemper;GridColor:clRed;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать влажность воздуха (если 0-то не управлять)';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:95;Def:HIDE_MIN_MAX;
    Index:iTaskHumin;GridColor:clBlue;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать дефицит водяного пара ';Frm:SSpS0;Ed:'г/м3';TipSens:DDWP;Min:0;Max:20;Def:HIDE_MIN_MAX;
    Index:iTaskHumin;GridColor:clBlue;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать концентрацию CO2 (если 0 - не управлять)';Frm:SSSS;Ed:'ppm';TipSens:TipCalc;Min:0;Max:3000;Def:HIDE_MIN_MAX;
    Index:iTaskCO2;GridColor:clYellow;Mech:T_CO2;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Минимум контура 1 (если 0, то насос может выключаться)';Frm:SS;Ed:'°C';TipSens:TipCalc;Min:0;Max:55;Def:HIDE_MIN_MAX;
    Index:iMinPipe1;GridColor:$ffff80;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Оптимальная температура контура 1 (если 0,то любая от мин до макс)  ';Frm:SS;Ed:'°C';TipSens:TipCalc;Min:0;Max:60;Def:HIDE_MIN_MAX;
    Index:iOpt1Temp;GridColor:$2fdfef;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Минимум контура 2 (если 0, то насос может выключаться)';Frm:SS;Ed:'°C';TipSens:TipCalc;Min:0;Max:55;Def:HIDE_MIN_MAX;
    Index:iMinPipe1+1;GridColor:$ffff80;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Оптимальная температура контура 2 (если 0,то любая от мин до макс)';Frm:SS;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:HIDE_MIN_MAX;
    Index:iOpt1Temp+1;GridColor:$3fafef;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать температуру контура 3 (если 0, то в автомате)';Frm:SS;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:HIDE_MIN_MAX;
    Index:iOpt1Temp+2;GridColor:$af0fef;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать температуру контура 4 (если 0, то в автомате)';Frm:SS;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:HIDE_MIN_MAX;
    Index:iOpt1Temp+3;GridColor:$af0fef;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать разность давления';Frm:SpS;Ed:'Кг/см2';TipSens:TipCalc;Min:0;Max:2;Def:HIDE_MIN_MAX;
    Index:iOpt1Temp+3;GridColor:$af0fef;Mech:T_PRES_REG;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Режим работы фрамуг (закрыты,в минимуме,авто)';Frm:ComboSS;Ed:'';TipSens:TipCombo;Min:comFram;Max:comFram+2;Def:HIDE_MIN_MAX;
    Index:iWinYes;GridColor:$ff0f00;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Минимальное положение фрамуг ';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:70;Def:HIDE_MIN_MAX;
    Index:iMinOpenWin;GridColor:$ff0faf;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Время распыления СИОД (если 0,то запрещено)';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:0;Max:400;Def:HIDE_MIN_MAX;
    Index:iTimeSiod;GridColor:$ffaf0f;Mech:T_SIO_PUMP;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Режим работы экрана (открыт,закрыт,авто)';Frm:ComboSS;Ed:'';TipSens:TipCombo;Min:comScreen;Max:comScreen+2;Def:HIDE_MIN_MAX;
    Index:iScreenYes;GridColor:$afdfaf;Mech:T_SCREEN;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Режим вентиляторов (откл,вкл,авто)';Frm:ComboSS;Ed:'';TipSens:TipCombo;Min:comOnOff;Max:comOnOff+2;Def:HIDE_MIN_MAX;
    Index:iVentYes;GridColor:$afefaf;Mech:T_VENT;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Прогноз изменения Т теплицы (включение досветки)';Frm:SS;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:HIDE_MIN_MAX;
    Index:iDosvet;GridColor:clYellow;Mech:T_LIGHT;AccessR:RW_GUEST;AccessW:RW_GUEST )
  );

type r1Timer=array[0..sizeTimer-1] of Byte;
type rTimer=array[1..NumTimer] of r1Timer;
procedure TTimer.Init;//override;
begin
     CountX:=NumTimer;
     CountY:=SumTimer;
     SizeCol:=SizeOf(r1Timer);
     FullSize:=SizeOf(rTimer);
     SendByte:=FullSize;
     Pref:=ProgMess[224];    //'Задание';
     NameBlock:=ProgMess[225];   //'Задание микроклимата';
     FixRow:=1;
     Sort:=0;
     ConstNames:=Addr(NameTimer[1]);
end;

function TTimer.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  pTimer:^rTimer;
     tInInt:InInt;
begin
  pTimer:=Adr;
  if ValY=0 then
    begin
    if ValX=0 then Txt:=Pref
    else  Txt:=ProgMess[224]+' '+IntToStr(ValX);
    Exit;
    end;
  if (Sort and srDoubleBlock)= 0 then GetExist(1,ValY)
    else GetExist(2,ValY);
  case ConstNames[ValY].TipSens of
    DDWP:
        begin
        SetInInt(tInInt,
          GetDDWP(pTimer^[ValX][iTaskTemper]*256+pTimer^[ValX][iTaskTemper+1],
                  pTimer^[ValX][iTaskHumin]*256+pTimer^[ValX][iTaskHumin+1]));
        Result:=Convers(ConstNames[ValY].Name,
         Addr(tInInt),SSpS0,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
        if(ValX>0) and (vInBlock=cInBlock) then
             begin
             SetInInt(tInInt,
               GetRH_DDWP(pTimer^[ValX][iTaskTemper]*256+pTimer^[ValX][iTaskTemper+1],
                          GetInInt(tInInt)));
             if (tInInt[0]>0) and (tInInt[0]<>pTimer^[ValX][iTaskHumin]) then
                begin
                pTimer^[ValX][iTaskHumin]:=tInInt[0];
                pTimer^[ValX][iTaskHumin+1]:=tInInt[1];
                end;
             end;
        end
    else
    Result:=Convers(ConstNames[ValY].Name,//+Format(' (от %g до %g, типовое: %g ',[NameParUpr[ValY].Min,NameParUpr[ValY].Max,NameParUpr[ValY].Def])+NameParUpr[ValY].Ed+')',
            Addr(pTimer^[ValX][ConstNames[ValY].Index]),ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
    end;
end;

function TTimer.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
var ChartBl:TChart;
    iX,iY,yG:integer;
    dbStart,dbEnd,dbDan,Midl,LongMidl:Double;
    pTimer:^rTimer;
begin
 ChartBl:=Any.Ptr;
 Result:=1;
 ActionMes:='';
 with ChartBl do
  begin
  (Series[0]as TGanttSeries).Clear;
//  (Series[1]as TFastLineSeries).Clear;
  pTimer:=Adr;
  yG:=0;
  iY:=0;
  for iX:=1 to CountX do
      with (Series[0]as TGanttSeries) do
      begin
      dbStart:=(pTimer^[iX][iTimeStart]*256+pTimer^[iX][iTimeStart+1])*cMin;
      dbEnd:=(pTimer^[iX][iTimeEnd]*256+pTimer^[iX][iTimeEnd+1])*cMin;
      dbDan:=(pTimer^[iX][iTaskTemper]*256+pTimer^[iX][iTaskTemper+1])/100;
      if (dbStart=dbEnd) or (dbDan=0) then continue;
      if dbEnd=0 then dbEnd:=24*60*cMin;
      with (Series[1]as TFastLineSeries) do
           begin
           AddXY(dbStart,dbDan,'',clTeeColor);
           AddXY(dbEnd,dbDan,'',clTeeColor);
           if dbStart>dbEnd then
              begin
              AddXY(0,dbDan,'',clTeeColor);
              AddXY(24*60*cMin,dbDan,'',clTeeColor);
              end;
           end;
      if dbStart>dbEnd then
         begin
         NextTask[AddGanttColor(0,dbEnd, yG, ProgMess[201]+' '+IntToStr(iX),RGB(iY*32+(iY div 8),iX*64+(iX div 4),200))]:=-1;
         dbEnd:=24*60*cMin;
         end;
      NextTask[AddGanttColor(dbStart,dbEnd,yG,ProgMess[201]+' '+IntToStr(iX),RGB(iY*32+(iY div 8),iX*64+(iX div 4),200))]:=-1;
      yG:=yG+10;
      end;
  if (Series[0]as TGanttSeries).Count<1 then
      begin
      if (Sort and srDoubleBlock)=0 then Result:=erNullProg;//1003;
      ActionMes:=ProgMess[212];
      Exit;
      end;
//проверка программ на пересечения
  with (Series[0]as TGanttSeries) do
   begin
   yG:=-1;
   for iX:=0 to count-1 do
      begin
      dbDan:=100;
      for iY:=0 to count-1 do
        begin
        if iX=iY then continue;
        dbEnd:=StartValues[iY]-EndValues[iX];
        if (dbEnd>0) and (dbEnd<dbDan) then
           begin dbDan:=dbEnd;NextTask[iX]:=iY;end;
        if ((StartValues[iX]>=StartValues[iY])
           and (StartValues[iX]<=EndValues[iY]))
        or ((EndValues[iX]>=StartValues[iY])
           and (EndValues[iX]<=EndValues[iY]))
           then begin
            Result:=erCrossProg;
            yG:=iX;ValueColor[yG]:=(ValueColor[yG] or $FF) and $00FFFF;end;
        end;
      end;
   end;
//проверка градиента температуры
   if Result=erCrossProg then
        begin
        ActionMes:=ProgMess[209];
        Exit;
        end;
   with (Series[1]as TFastLineSeries) do
     begin
     Midl:=0;
     LongMidl:=0;
     for iX:=0 to count-2 do
        begin
        Midl:=Midl+(YValues.Value[iX]+YValues.Value[iX+1])*(XValues.Value[iX+1]-XValues.Value[iX]);
        LongMidl:=LongMidl+(XValues.Value[iX+1]-XValues.Value[iX]);
        dbDan:=(YValues.Value[iX]-YValues.Value[iX+1])*cMin*60/((XValues.Value[iX]-XValues.Value[iX+1]));
        if (dbDan>ClimMaxGradient) or (dbDan<-ClimMaxGradient)  then
             begin
             Result:=erGradTemp;
             ActionMes:=ProgMess[210]+' '+IntToStr(ClimMaxGradient);
             Exit;
             end;
        end;
     end;
  end;
  ActionMes:=ProgMess[211]+Format(' %.2f',[Midl/(2*LongMidl)]);
end;

//--------- END ЗАДАНИЕ НА СУТКИ С-65 ------------------
//--------- АРХИВ С-65 ------------------
{type r1Arx=record
     Data:InInt;
     SolRad:InInt;
     MidlTem:InInt;
     MidlRH:InInt;
     Siod:InInt;
     end;
type rArx=array [1..NumArx] of r1Arx;  }
{type mArx=array [0..1] of Byte;
var
NameArx:array [0..4] of TNameConst=(
 (Name:'Дата';Frm:SSsSS;Ed:'';TipSens:TipCalc;Min:0;Max:366;Def:20;Index:0),
 (Name:'Солнца за день';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:4000;Def:20;Index:2),
 (Name:'Средняя температура';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:30;Def:20;Index:4),
 (Name:'Средняя влажность';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:95;Def:20;Index:6),
 (Name:'Время работы СИОД';Frm:SSmSSs;Ed:'м:сек';TipSens:DDWP;Min:0;Max:20;Def:20;Index:8)
 );
procedure TArxiv.Init;//override;
begin
     CountX:=NumArx;
     CountY:=1+(ParentCtr as TFClimat65).SumZone*3;
     SizeCol:=16;//(CountY+1)*2;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     FixRow:=1;
     Pref:=ProgMess[260];   //'АрхКлимат';
     NameBlock:=ProgMess[261];   //'Архивные данные климата';
     bProperty:=bNoGridGraf;
end;

function TArxiv.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pArx:^mArx;
    iY:word;
begin
  pArx:=Adr;
//  ValY:=ValY+1;
  if (ValX>0) then
        begin
        if (pArx^[(ValX-1)*SizeCol]<=0) or (pArx^[(ValX-1)*SizeCol]>12)or
         (pArx^[(ValX-1)*SizeCol+1]<=0) or (pArx^[(ValX-1)*SizeCol+1]>31)then
            begin
            txt:='~';
            Result:=0;
            Exit;
            end;
        end;
   iY:=ValY*2;
   if (ValY>4) Then ValY:=ValY-3;
   Result:=Convers(NameArx[ValY].Name,
          Addr(pArx^[iY+(ValX-1)*SizeCol]),NameArx[ValY].Frm,InBlock,ValX,ValY,Txt,NameArx[ValY].Ed);
  if (ValX>0) and(Result=0) then Txt:='~';
  if (ValX=0) and (CountY>4) and (ValY>1) then
     Txt:=ParentCtr.GetTextZona((iY div 10)+1,ValY)+Txt;

end;
//---- END АРХИВ С-65 ------------------
}
//--------- АРХИВ С-65_v5 ------------------
{typedef struct eeArxPeakSens

		int	Value;
		int	Time;

    typedef struct eeArxTepl

		int				MidlTemp;
		int				MidlRH;
		int 			MidlSDay[2]; //t,RH
		int 			MidlSNight[2];
		eArxPeakSens 	PeakTempMax;
		eArxPeakSens 	PeakRHMax;
		eArxPeakSens 	PeakTempMin;
		eArxPeakSens 	PeakRHMin;
		int	TimeSIO;

	 eArxTepl;

typedef struct eeArx

		uchar			ArxivMod[4];
4		int				Date;
6		int				SolRad;
8		eArxPeakSens 	PeakSR;
12		eArxTepl 		Tepl[cSTepl];
	}
const
  iaDate=4;
  iaTepl=12;
  sizeATepl=30;
  iatPeakTempMax=12;
  SumArxCom=4;
  SumArxTepl=15;
var
NameArxV5:array [0..SumArxCom+SumArxTepl-1] of TNameConst=(
 (Name:'Дата';Frm:SSsSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:iaDate),
 (Name:'Солнца за день';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:6),
 (Name:'Максимум солнца';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:8),
 (Name:'Время максимума';Frm:SShSSm;Ed:'час:мин';TipSens:TipTime;Min:0;Max:0;Index:10),

 (Name:'Средняя температура';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:0),
 (Name:'Дневная температура';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:4),
 (Name:'Ночная температура';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:8),
 (Name:'Максимум температуры';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:12),
 (Name:'Время максимума темп';Frm:SShSSm;Ed:'час:мин';TipSens:TipTime;Min:0;Max:0;Index:14),
 (Name:'Минимум температуры';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:20),
 (Name:'Время минимума темп';Frm:SShSSm;Ed:'час:мин';TipSens:TipTime;Min:0;Max:0;Index:22),
 (Name:'Средняя влажность';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:2),
 (Name:'Дневная влажность';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:6),
 (Name:'Ночная влажность';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:10),
 (Name:'Максимум влажности';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:16),
 (Name:'Время максимума влаж';Frm:SShSSm;Ed:'час:мин';TipSens:TipTime;Min:0;Index:18),
 (Name:'Минимум влажности';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:24),
 (Name:'Время минимума влаж';Frm:SShSSm;Ed:'час:мин';TipSens:TipTime;Min:0;Max:0;Index:26),
 (Name:'Время работы СИОД';Frm:SSmSSs;Ed:'м:сек';TipSens:TipCalc;Min:0;Max:0;Def:0;Index:28)
 );
{procedure TArxivV5.Init;//override;
begin
     CountX:=NumArxV5;
     CountY:=SumArxCom+SumArxTepl*(ParentCtr as TFClimat65).SumZone-1;
     SizeCol:=sizeATepl*2+iaTepl;  //(ParentCtr as TFClimat65).SumZone
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     FixRow:=1;
     // ( MESI
     Pref:=ProgMess[260];  //'АрхКлимат';
     NameBlock:=ProgMess[261];  //'Архивные данные климата';
     // MESI )
     bProperty:=bNoGridGraf;
end;

function TArxivV5.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pArx:pByteArray;
    iY,iX,nTepl:word;
begin
  pArx:=Adr;
  iY:=0;
  iX:=(ValX-1)*SizeCol;
  nTepl:=0;
  if ValY>=SumArxCom then
    begin
    nTepl:=1;
    iY:=iaTepl;
    if ValY>=(SumArxCom+SumArxTepl) then
        begin
        nTepl:=2;
        iY:=iY+sizeATepl;
        ValY:=ValY-SumArxTepl;
        end;
    end;
  if (ValX>0) then
        begin
        if (pArx^[iaDate+iX]<=0) or (pArx^[iaDate+iX]>12)or
         (pArx^[iaDate+iX+1]<=0) or (pArx^[iaDate+iX+1]>31)then
            begin
            txt:='~';
            Result:=0;
            Exit;
            end;
        end;
   Result:=Convers(ParentCtr.GetTextZona(nTepl,ValY)+NameArxV5[ValY].Name,
          Addr(pArx^[NameArxV5[ValY].Index+iY+iX]),NameArxV5[ValY].Frm,InBlock,ValX,ValY,Txt,NameArxV5[ValY].Ed);
  if (ValX>0) and(Result=0) then Txt:='~';
end;
//---- END АРХИВ С-65_v5------------------
}

//--------- START ARXIV PC ---------------
const
    cSumListVal=7;
    ListVal:array[1..cSumListVal] of word= (1,21,22,46,24,39,57);
    cSumStat=11;
    cSumHide=15;
// cSizeColAchivePC=990;
    cCountNameAchivePC=cSumStat+4;
    iMidl=1;          iMidlDay=2;       iMidlNight=3;
    iMaxDay=4;        iTimeMaxDay=5;
    iMinDay=6;        iTimeMinDay=7;
    iMaxNight=8;      iTimeMaxNight=9;
    iMinNight=10;     iTimeMinNight=11;

type
TPCArx=record
  Tic:word;
  TicDay:word;
  SumSun:word;
//  StatVal:array[0..1] of Double; //TStatVal;
  StatVal:array[1..4,1..cSumListVal,1..cSumStat] of Double; //TStatVal;
  end;

var NameAchivePC:array [1..cCountNameAchivePC] of TNameConst=(
    (Name:'Дата';Frm:SSsSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Длительность регистрации (мин)';Frm:SShSSm_12;Ed:'ч:м';TipSens:TipCalc;Min:0;Max:0;
      Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Днем регистрации (мин)';Frm:SSpSS;Ed:'м3';TipSens:TipCalibr;Min:0;Max:0;
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
    (Name:'Время максисмума';Frm:SShSSm;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Минимум днем';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время минимума';Frm:SShSSm;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Максимум ночью ';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время максисмума';Frm:SShSSm;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Минимум ночью';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время минимума';Frm:SShSSm;Ed:'';TipSens:TipCalc;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
    );

procedure TBlArxPC.Init;//override;
begin
     CountX:=ParentCtr.SumZone;
//     SumListVal:=cSumListVal;
//     CountComY:=SumStat+4;        //Сколько строк не выводить в зоне Б
     CountY:=cSumListVal*cSumStat+4;
     SizeCol:=CountY*SizeOf(Double);
     FullSize:=SizeOf(TPCArx);  //SizeCol*CountX;
     SendByte:=0;
     FixRow:=1;
     Pref:=ProgMess[262];  //'Архив ПК';
     NameBlock:=ProgMess[263];  //'Архивные данные в ПК';
     ConstNames:=Addr(NameAchivePC[1]);
     CountConstNames:=cCountNameAchivePC;
     EnableXML:=False;
end;

function TBlArxPC.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pPCArx:^TPCArx;
    nVal,nStat:word;
begin
  pPCArx:=Adr;
  Result:=ValX;
  if (ValY=0) and (ValX=0) and (Int(DateTest) <> Int(Now)) then CalcAllArxPC(Now);
  if (ValY <= cSumHide)and(ValY > 3) and (ValX > 1) then
  begin
    Txt:='';
    Exit;
  end;
  case ValY of
    0:  begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        Exit;
        end;
    1:  begin
        Result:=BlDate;
        if ValX=0 then Txt:=ConstNames[ValY].Name //'Дата'
         else Txt:=FormatDateTime(ShortDateFormat,BlDate);
        Exit;
        end;
    2:  begin
        if ValX=0 then  Txt:=ConstNames[ValY].Name //Txt:='Длительность регистрации (мин)'
        else Txt:=IntToStr(pPCArx^.Tic);
        Result:=pPCArx^.Tic;
        Exit;
        end;
    3:  begin
        if ValX=0 then  Txt:=ConstNames[ValY].Name //Txt:='Днем регистрации (мин)'
        else Txt:=IntToStr(pPCArx^.TicDay);
        Result:=pPCArx^.TicDay;
        Exit;
        end;
    4:  begin
        if ValX=0 then  Txt:=ConstNames[ValY].Name //Txt:='Накопленное солнце'
        else Txt:=IntToStr(pPCArx^.SumSun);
        Result:=pPCArx^.SumSun;
        Exit;
        end;
  end;
  ValY:=ValY-5;
  nVal:=ValY div cSumStat+1;
  nStat:=ValY mod cSumStat+1;
  if ValX=0 then
        begin
        Result:=ParentCtr.Block[0].LoadXY(cOutBlock,0,ListVal[nVal],Txt);
        Txt:=ConstNames[nStat+4].Name+' '+Txt;
        Exit;
        end;
  Result:=pPCArx^.StatVal[ValX][nVal][nStat];
  if Result = 0 then Txt:='' else
  case ConstNames[nStat+4].Frm of
        SSpS0: Txt:=Format('%3.1f',[Result]);
        SShSSm:
           begin
           Txt:=FormatDateTime(ShortTimeFormat,Result);
           Result:=Frac(Result)*24;
           end;
        end;
end;

function TBlArxPC.CalcAllArxPC(StartDate:TDateTime):Boolean;
var  Save_Cursor:TCursor;
begin
if (Frac(Now) < cMin*60) or (ParentCtr.DataPath <> '')  then Exit;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 DateTest:=Now;
 try
 if LoadFileByDate(Now,dEnd) then StartDate:=BlDate+1
  else  begin
        StartDate:=EncodeDate(YearOf(Now),1,1);  // Now-ClimLongArx; //
        end;
 while Int(StartDate) < Int(Now) do  // DayOf()
    begin
    if CalcDayArxPC(StartDate) then SaveToFile;
    StartDate:=StartDate+1;
    end;
 finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

function TBlArxPC.CalcDayArxPC(ArxDate:TDateTime):Boolean;
var
 pPCArx:^TPCArx;
 nVal,nZone:integer;  //,iStatVal
 vVal:Double;
 st:string;
 NowDay:Boolean;
begin
pPCArx:=Adr;
Result:=False;
with ParentCtr do
  begin
  if not Block[0].LoadFileCycle(ArxDate) then Exit;
  Result:=True;
  Ready:=True;
  ClearData;
  BlDate:=int(ArxDate)+1-cMin;
  for nZone:=1 to CountX do
  for nVal:=1 to cSumListVal do
      begin
//      iStatVal:=i*SumStat;
      pPCArx^.StatVal[nZone][nVal][iMaxDay]:=-1000;
      pPCArx^.StatVal[nZone][nVal][iTimeMaxDay]:=0;
      pPCArx^.StatVal[nZone][nVal][iMaxNight]:=-1000;
      pPCArx^.StatVal[nZone][nVal][iTimeMaxNight]:=0;
      pPCArx^.StatVal[nZone][nVal][iMinDay]:=1000;
      pPCArx^.StatVal[nZone][nVal][iTimeMinDay]:=0;
      pPCArx^.StatVal[nZone][nVal][iMinNight]:=1000;
      pPCArx^.StatVal[nZone][nVal][iTimeMinNight]:=0;
      end;
  repeat
    // ( MESI
    if(CtrModific and CLIM65_HAND) > 0 then
      NowDay:=(Block[0] as THotV1).DayTime
    else
      NowDay:=(Block[0] as THotV0).DayTime;
    // MESI )
    if NowDay then pPCArx^.TicDay:=pPCArx^.TicDay+1;
    if NowDay and (HourOf(Block[0].BlDate) > 12) then
        begin
        vVal:=Block[0].LoadXY(cOutBlock,1,SSumSun,st);
        if round(vVal) > pPCArx^.SumSun then pPCArx^.SumSun:=round(vVal);
        end;
    pPCArx^.Tic:=pPCArx^.Tic+1;
    for nZone:=1 to CountX do
    for nVal:=1 to cSumListVal do
      begin
//      iStatVal:=i*SumStat;
      vVal:=Block[0].LoadXY(cOutBlock,nZone,ListVal[nVal],st);
      pPCArx^.StatVal[nZone][nVal][iMidl]:=pPCArx^.StatVal[nZone][nVal][iMidl]+vVal;
      if NowDay then
          begin
          pPCArx^.StatVal[nZone][nVal][iMidlDay]:=pPCArx^.StatVal[nZone][nVal][iMidlDay]+vVal;
          if (vVal <> 0) and (vVal>pPCArx^.StatVal[nZone][nVal][iMaxDay]) then
              begin
              pPCArx^.StatVal[nZone][nVal][iMaxDay]:=vVal;
              pPCArx^.StatVal[nZone][nVal][iTimeMaxDay]:=Block[0].BlDate;
              end;
          if (vVal <> 0) and (vVal<pPCArx^.StatVal[nZone][nVal][iMinDay]) then
              begin
              pPCArx^.StatVal[nZone][nVal][iMinDay]:=vVal;
              pPCArx^.StatVal[nZone][nVal][iTimeMinDay]:=Block[0].BlDate;
              end;
          end
      else begin
          pPCArx^.StatVal[nZone][nVal][iMidlNight]:=pPCArx^.StatVal[nZone][nVal][iMidlNight]+vVal;
          if (vVal <> 0) and (vVal>pPCArx^.StatVal[nZone][nVal][iMaxNight]) then
              begin
              pPCArx^.StatVal[nZone][nVal][iMaxNight]:=vVal;
              pPCArx^.StatVal[nZone][nVal][iTimeMaxNight]:=Block[0].BlDate;
              end;
          if (vVal <> 0) and (vVal<pPCArx^.StatVal[nZone][nVal][iMinNight]) then
              begin
              pPCArx^.StatVal[nZone][nVal][iMinNight]:=vVal;
              pPCArx^.StatVal[nZone][nVal][iTimeMinNight]:=Block[0].BlDate;
              end;

          end;
      end;
  until Not Block[0].LoadFileCycle(ArxDate);
  for nZone:=1 to CountX do
  for nVal:=1 to cSumListVal do
    begin
//      iStatVal:=i*SumStat;
    if(pPCArx^.StatVal[nZone][nVal][iMaxDay]=-1000) then pPCArx^.StatVal[nZone][nVal][iMaxDay]:=0;
    if(pPCArx^.StatVal[nZone][nVal][iMaxNight]=-1000) then pPCArx^.StatVal[nZone][nVal][iMaxNight]:=0;
    if(pPCArx^.StatVal[nZone][nVal][iMinDay]=1000) then  pPCArx^.StatVal[nZone][nVal][iMinDay]:=0;
    if(pPCArx^.StatVal[nZone][nVal][iMinNight]=1000) then  pPCArx^.StatVal[nZone][nVal][iMinNight]:=0;

    if pPCArx^.Tic>0 then
        pPCArx^.StatVal[nZone][nVal][iMidl]:=pPCArx^.StatVal[nZone][nVal][iMidl]/pPCArx^.Tic;
    if pPCArx^.TicDay>0 then
        pPCArx^.StatVal[nZone][nVal][iMidlDay]:=pPCArx^.StatVal[nZone][nVal][iMidlDay]/pPCArx^.TicDay;
    if (pPCArx^.Tic-pPCArx^.TicDay)>0 then
        pPCArx^.StatVal[nZone][nVal][iMidlNight]:=pPCArx^.StatVal[nZone][nVal][iMidlNight]/(pPCArx^.Tic-pPCArx^.TicDay);
    end;
  end;
end;

{type  TFormatArx=(p1,p2,date);
      TSatictic=record
        Name:string[20];
        Frm:TFormatArx;
        end;

const }
{ Statistic:array [0..SumStat-1] of TSatictic=(
  (Name:'Среднее за сутки';Frm:p1),(Name:'Среднее днем ';Frm:p1),(Name:'Среднее ночью ';Frm:p1),
  (Name:'Максимум днем ';Frm:p1),(Name:'Время максисмума ';Frm:date),
  (Name:'Минимум днем ';Frm:p1),(Name:'Время минимума ';Frm:date),
  (Name:'Максимум ночью ';Frm:p1),(Name:'Время максисмума ';Frm:date),
  (Name:'Минимум ночью ';Frm:p1),(Name:'Время минимума ';Frm:date));
}
{
function TBlArxPC.CalcDayArxPC(ArxDate:TDateTime):Boolean;
var
 pPCArx:^TPCArx;
 i,j,iStatVal:integer;
 vVal:Double;
 st:string;
 NowDay:Boolean;
begin
pPCArx:=Adr;
Result:=False;
with ParentCtr do
  begin
  if not Block[0].LoadFileCycle(ArxDate) then Exit;
  Result:=True;
  Ready:=True;
  ClearData;
  BlDate:=ArxDate+1-cMin;
  for j:=1 to CountX do
  for i:=0 to cSumListVal-1 do
      begin
      iStatVal:=i*SumStat;
      pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxDay]:=-1000;
      pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxNight]:=-1000;
      pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinDay]:=1000;
      pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinNight]:=1000;
      end;
  repeat
    // ( MESI
    if(CtrModific and CLIM65_HAND) > 0 then
      NowDay:=(Block[0] as THotV1).DayTime
    else
      NowDay:=(Block[0] as THotV0).DayTime;
    // MESI )
    if NowDay then pPCArx^.TicDay:=pPCArx^.TicDay+1;
    if NowDay and (HourOf(Block[0].BlDate) > 12) then
        begin
        vVal:=Block[0].LoadXY(cOutBlock,1,SSumSun,st);
        if round(vVal) > pPCArx^.SumSun then pPCArx^.SumSun:=round(vVal);
        end;
    pPCArx^.Tic:=pPCArx^.Tic+1;
    for j:=1 to CountX do
    for i:=0 to cSumListVal-1 do
      begin
      iStatVal:=i*SumStat;
      vVal:=Block[0].LoadXY(cOutBlock,j,ListVal[i],st);
      pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidl]:=pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidl]+vVal;
      if NowDay then
          begin
          pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlDay]:=pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlDay]+vVal;
          if vVal>pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxDay] then
              begin
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxDay]:=vVal;
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iTimeMaxDay]:=Block[0].BlDate;
              end;
          if vVal<pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinDay] then
              begin
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinDay]:=vVal;
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iTimeMinDay]:=Block[0].BlDate;
              end;
          end
      else begin
          pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlNight]:=pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlNight]+vVal;
          if vVal>pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxNight] then
              begin
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxNight]:=vVal;
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iTimeMaxNight]:=Block[0].BlDate;
              end;
          if vVal<pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinNight] then
              begin
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinNight]:=vVal;
              pPCArx^.StatVal[(j-1)*CountY+iStatVal+iTimeMinNight]:=Block[0].BlDate;
              end;

          end;
      end;
  until Not Block[0].LoadFileCycle(ArxDate);
  for j:=1 to CountX do
  for i:=0 to cSumListVal-1 do
    begin
      iStatVal:=i*SumStat;
    if(pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxDay]=-1000) then pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxDay]:=0;
    if(pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxNight]=-1000) then pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMaxNight]:=0;
    if(pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinDay]=1000) then  pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinDay]:=0;
    if(pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinNight]=1000) then  pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMinNight]:=0;

    if pPCArx^.Tic>0 then
        pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidl]:=pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidl]/pPCArx^.Tic;
    if pPCArx^.TicDay>0 then
        pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlDay]:=pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlDay]/pPCArx^.TicDay;
    if (pPCArx^.Tic-pPCArx^.TicDay)>0 then
        pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlNight]:=pPCArx^.StatVal[(j-1)*CountY+iStatVal+iMidlNight]/(pPCArx^.Tic-pPCArx^.TicDay);
    end;
  end;
end;
}
{procedure TBlArxPC.Init;//override;
begin
     CountX:=(ParentCtr as TFClimat65).SumZona;
     SumListVal:=cSumListVal;
     CountComY:=SumStat+4;        //Сколько строк не выводить в зоне Б
     CountY:=SumListVal*SumStat+3;
     SizeCol:=CountY*SizeOf(Double);
     FullSize:=SizeCol*CountX;
     SendByte:=0;
     FixRow:=1;
     Pref:=ProgMess[262];  //'Архив ПК';
     NameBlock:=ProgMess[263];  //'Архивные данные в ПК';
end;
}
{function TBlArxPC.CalcAllArxPC(StartDate:TDateTime):Boolean;
var  Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    // Show hourglass cursor
 DateTest:=Now;
 try
 if LoadFileByDate(Now,dEnd) then StartDate:=BlDate+1
  else  begin
        StartDate:=EncodeDate(YearOf(Now),1,1);  // Now-ClimLongArx; //
        end;
 while Int(StartDate) < Int(Now) do  // DayOf()
    begin
    if CalcDayArxPC(StartDate) then SaveToFile;
    StartDate:=StartDate+1;
    end;
 finally
    Screen.Cursor := Save_Cursor;  // Always restore to normal
  end;
end; }
{
function TBlArxPC.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pPCArx:^TPCArx;
    iY:word;
begin
  pPCArx:=Adr;
  Result:=ValX;
  if Int(DateTest) <> Int(Now) then CalcAllArxPC(Now);
  if (ValY<=CountComY)and(ValY>3) and (ValX>1) then
  begin
    Txt:='';
    Exit;
  end;
  case ValY of
    0:  begin
        if ValX=0 then
//          Txt:=ParentCtr.CtrName
//        else
          Txt:=ParentCtr.GetTextZona(ValX,ValY);
//        if Txt='' then Txt:='Значение';
        Exit;
        end;
    1:  begin
        Result:=BlDate;
        if ValX=0 then Txt:='Дата'
         else Txt:=FormatDateTime('dd/mm/yy',BlDate);
        Exit;
        end;
    2:  begin
        if ValX=0 then  Txt:='Длительность регистрации (мин)'
        else Txt:=IntToStr(pPCArx^.Tic);
        Result:=pPCArx^.Tic;
        Exit;
        end;
    3:  begin
        if ValX=0 then  Txt:='Днем регистрации (мин)'
        else Txt:=IntToStr(pPCArx^.TicDay);
        Result:=pPCArx^.TicDay;
        Exit;
        end;
    4:  begin
        if ValX=0 then  Txt:='Накопленное солнце'
        else Txt:=IntToStr(pPCArx^.SumSun);
        Result:=pPCArx^.SumSun;
        Exit;
        end;
  end;
  ValY:=ValY-5;
  Result:=pPCArx^.StatVal[(ValX-1)*CountY+ValY];
  iY:=ValY mod SumStat;
  ValY:=ValY div SumStat;
  if ValX=0 then
        begin
        Result:=ParentCtr.Block[0].LoadXY(cOutBlock,ValX,ListVal[ValY],Txt);
        Txt:=Txt+' '+Statistic[iY].Name;
        Exit;
        end;
  case Statistic[iY].Frm of
        p1: Txt:=Format('%3.1f',[Result]);
        date:
           begin
           Txt:=FormatDateTime('hh:mm',Result);
           Result:=Frac(Result)*24;
           end;
        end;
end; }
//--------- END ARXIV PC ---------------

//--------- START STRATEGY С-65------------------
const
      StartConturW=1;
      SumConturW=5;//10;
      StartConturFr=StartConturW+SumConturW;
      SumConturFr=3;//10;
      StartCritery=StartConturFr+SumConturFr;
      SumCritery=5;
      StartNameAB=StartCritery+SumCritery;
      SumNameAB=5;
      EndTablMes=StartNameAB+SumNameAB-1;
      SumConturStrategy=SumConturW+SumConturFr;

{var mText:array [1..EndTablMes] of string[30]=(
        'Контур 1(нижний)',
        'Контур 2(верхний)',
        'Контур 3(зонный)',
        'Контур 4(зонный)',
        'Контур 5(подлотковый)',
        'Фрамуги',// наветренные)',
//        'Фрамуги подветренные',
        'Экран',
        'СИОД (резерв)',
        'Температура в половине А',
        'Температура в половине Б',
        'Температура средняя',
        'Влажность в половине А',
        'Влажность в половине Б',
        'Нет исполнителя',
        'Только А',
        'Только Б',
        'А и Б общие ',
        'А и Б отдельные'
        ); }
//--------------------------------------------------- start variant 326

const SNameStrategy=4;
      sizeYStrategy=SumConturStrategy;
      sizeXStrategy=7;
      iConfKont=5;
var NameAction:array [1..SumConturStrategy] of TNameConst=(
 (Name:'Нагрев контура 1';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_PUMP1;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 2';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_PUMP2;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 3';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_PUMP3;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 4';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_PUMP4;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 5';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_PUMP5;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Закрытие фрамуг ';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_FRAM_SOUTH;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Закрытие экрана ';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_SCREEN;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Включение СИОД ';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:T_SIO_PUMP;
    AccessR:RW_GUEST;AccessW:RW_USER)
        );

{NameStrategy:array [1..SNameStrategy] of TNameConst=(
(Name:'Участие в нагреве воздуха (1°C)';Frm:mSS;Ed:'балл';TipSens:TipControl;Min:-100;Max:100;Def:HIDE_MIN_MAX;
  Index:1;GridColor:$0030df;AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Участие в увеличении влажности (10%)';Frm:mSS;Ed:'балл';TipSens:TipControl;Min:-100;Max:50;Def:HIDE_MIN_MAX;
  Index:2;GridColor:clBlue;AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Важность оптимального теплоносителя (10°C)';Frm:mSS;Ed:'балл';TipSens:TipControl;Min:-100;Max:100;Def:HIDE_MIN_MAX;
  Index:3;GridColor:clYellow;AccessR:RW_GUESTI;AccessW:RW_USER),
//(Name:'Относительная экономическая эффективность действия';Frm:mSS;Ed:'балл';TipSens:TipControl;Min:0;Max:100;Def:2;Index:4),
(Name:'Тепловая эффективность';Frm:mSS;Ed:'балл';TipSens:TipControl;Min:-100;Max:100;Def:HIDE_MIN_MAX;
  Index:5;GridColor:clRed;AccessR:RW_GUEST;AccessW:RW_USER)
//(Name:'Конфигурация';Frm:SS;Ed:'';TipSens:TipText;Min:StartNameAB;Max:StartNameAB+SumNameAB-1;Def:0;Index:6;GridColor:$a0ffa0;AccessR:RW_GUESTI;AccessW:RW_USER)
//,(Name:'Зарезервированный параметр';Frm:SS;Ed:'';TipSens:TipText;Min:StartConturW;Max:StartConturW+SumConturStrategy-1;Index:7)
);
}
LevStrategy:array[1..sizeYStrategy,1..sizeXStrategy,1..2] of Shortint=(
//температур,влажности,оптимальн, эконом , мощность, разделение, помошник
     ((10,100),(-50,0),(10,100),(20,100),(40,60),(0,4),(0,8)),      //1
     ((10,100),(0,20),(0,70),(20,100),(30,80),(0,4),(0,8)),         //2
     ((10,60),(0,10),(0,60),(20,100),(20,80),(0,4),(0,8)),       //3
     ((10,60),(0,10),(0,60),(20,100),(20,80),(0,4),(0,8)),       //4
     ((10,50),(0,10),(0,60),(40,100),(20,60),(0,4),(0,8)),      //5
     ((20,100),(0,100),(0,1),(50,100),(20,80),(0,4),(0,8)),      //Фрам
     ((0,50),(0,60),(0,1),(0,100),(0,40),(0,4),(0,8)),       //Экран
     ((0,50),(0,100),(0,1),(0,100),(0,40),(0,4),(0,8))       //СИО
     );
type mStrategy=array[1..sizeYStrategy,1..sizeXStrategy] of Byte;
procedure TStrategy.Init;//override;
begin
//     Num:=blStrategy;
     CountY:=SumConturStrategy;
     CountX:=SNameStrategy;
     SizeCol:=SizeOf(mStrategy);
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[233];   //'Стратегия';
     NameBlock:=ProgMess[234];   //'Стратегия управления';
     FixRow:=1;
     ConstNames:=Addr(NameAction[1]);
end;

{function GetRowExist(Block:TBlock;y:word):Boolean;
var i:word;
begin
     Result:=False;
     with Block do
     for i:=1 to ParentCtr.SumZone do
      Result:=Result or GetExist(i,y);
end;
}

function TStrategy.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;//override;
var pStrat:^mStrategy;
    iX:word;
    pValueStrat:^Byte;
begin
     pStrat:=Adr;
     Result:=ValX;
     if ValY =0 then
       begin
       if ValX=0 then Txt:=ParentCtr.CtrName  //'Действия'
         else Txt:=ProgMess[294+ValX]; //NameStrategy[ValX].Name;//Action[ValX];
       Exit;
       end;
//     if ValX=0 then begin Txt:=ConstNames[ValY].Name; Exit; end;
// !!!!! Переворот
//-------------------------------
     iX:=ValX;  //NameStrategy[ValX].Index;
     if iX=4 then iX:=5;
     pValueStrat:=Addr(pStrat^[ValY][iX]);
{     if ValX>0 then
        begin
        if NameStrategy[ValX].TipSens = TipText then
          begin
          vStrat:=pValueStrat^+round(NameStrategy[ValX].Min);
          if vStrat> round(NameStrategy[ValX].Max) then
             begin
             pValueStrat^:=0;
             Txt:='!!!!';
             end
             else Txt:=mText[vStrat];
          Result:=pValueStrat^;
          Exit;
          end;
        end; }

     ConfigExist:=GetRowExist(Self,ValY); //GetExist(1,ValY) or GetExist(2,ValY);
     Result:=Convers(ConstNames[ValY].Name,
         Addr(pValueStrat^),mSS,vInBlock,ValX,ValY,Txt,'');//NameStrategy[ValY].Ed);
     if (ValX>0) then
        begin
        if (Result< LevStrategy[ValY][iX][1]) then
            begin
//            Txt:='!Мало '+Txt;
            pValueStrat^:=LevStrategy[ValY][iX][1];
            end;
        if (Result> LevStrategy[ValY][iX][2]) then
            begin
//            Txt:='!Много '+Txt;
            pValueStrat^:=LevStrategy[ValY][iX][2];
            end;
        end;
end;

{procedure TStrategy.GetProperGrid( x, y:integer);
var st:string;
begin
    inherited;
    if x> 0 then
      begin
      if LoadXY(cOutBlock,iConfKont,y,st)>0 then ProperGrid.ForeColor:=NameStrategy[x].GridColor
        else ProperGrid.ForeColor:=clGrayText;
      if y>0 then
         begin
         ProperGrid.Progress:=round(LoadXY(cOutBlock,x,y,st));
         if x=iConfKont then ProperGrid.Progress:=ProperGrid.Progress*25;
         end;
      end;
end;
}
{function TStrategy.GetForComboBox(vX,vY:integer;ComboBox:TComboBox):Boolean;
var i:word;
    pStrategy:^mStrategy;
begin
    Result:=False;
    pStrategy:=Adr;
    if NameStrategy[vX].TipSens<>TipText then Exit;
    Result:=True;
    ComboBox.Items.Clear;
    for i:=round(NameStrategy[vX].Min) to round(NameStrategy[vX].Max) do
      ComboBox.Items.Add(mText[i]);
    ComboBox.ItemIndex:=pStrategy^[vY][NameStrategy[vX].Index];
end;
}

//begin-----------Блок конфигурация оборудования-----------------

procedure TConfigOutputs.Init;//override;
begin
     CountY:=SumConfigOutputs;
     CountX:=ParentCtr.SumZone;
     SizeCol:=SizeConfigOutputs;
     FullSize:=SizeCol*MAX_SUM_ZONE_65;
     SendByte:=FullSize;
     Pref:=ProgMess[193];    //'Конфигурация';
     NameBlock:=ProgMess[194];    //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(NameConfigOutputs[1]);
//     SavingConstNames:=True;
end;

{function TConfigOutputs.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pConfigOutputs:PByteArray;
begin
     pConfigOutputs:=Adr;
     Result:=ValX;
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
//        if Txt='' then Txt:=ProgMess[193];    //'Значение';
        Exit;
        end;
//     pConfigOutputs:=Addr(pConfigOutputs^[ConstNames[ValY].Index+SizeCol*(ValX-1)])
     Result:=Convers(ConstNames[ValY].Name,
            Addr(pConfigOutputs^[ConstNames[ValY].Index+SizeCol*(ValX-1)])
            ,ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,'-е реле');
end;  }
//end-----------Блок конфигурация оборудования-----------------

//begin-----------Блок режим работы оборудования-----------------

const SIZE_BLOCK_HAND=SizeTMech*MAX_SUM_ZONE_65;
var  CopyMode: array [0..SIZE_BLOCK_HAND] of Byte;

procedure THandMode.Init;//override;
begin
     CountY:=SumTeplMecan;
     CountX:=ParentCtr.SumZone*2;
     SizeCol:=SizeTMech;//40;//SumConfigOutputs*2;
     FullSize:=ParentCtr.Block[0].FullSize;
     StartSend:=iMech;
     SendByte:=SIZE_BLOCK_HAND;
     Pref:=ProgMess[226];  //'Ручное';
     NameBlock:=ProgMess[213];  //'Ручное управление';
     FixRow:=1;
     ConstNames:=Addr(cDefineHotV1[StTeplMecan]);//Addr(NameConfigOutputs[1]);
     Sort := srHowHot;
     EnableXML:=False;
end;

function THandMode.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pModeOutputs:PByteArray;
    Mode1_Hand0:Byte;
begin
     pModeOutputs:=Adr;
     if (ValX=0) and (ValY=3) then
         CopyMemory(Addr(CopyMode),Addr(PByteArray(Adr)^[StartSend]),SendByte);
     Result:=0;
     Mode1_Hand0:=ValX mod 2;
     ValX:=(ValX+1) div 2;
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        if Mode1_Hand0=0 then Txt:=Txt+' '+ProgMess[249]   //'Установить'
          else Txt:=Txt+' '+ProgMess[250];  //'Состояние';
        Exit;
        end;
      pModeOutputs:=Addr(pModeOutputs^[ConstNames[ValY].Index+SizeCol*(ValX-1)]);
      if Mode1_Hand0=0 then pModeOutputs:=Addr(CopyMode[ConstNames[ValY].Index-StartSend+SizeCol*(ValX-1)]);
      GetExist(ValX,ValY);
      Result:=Convers(ConstNames[ValY].Name,
            pModeOutputs,ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
      if ValX>0 then if Result>0 then imColor:=clRed else imColor:=clGreen;
      if Mode1_Hand0 >0 then AccessW:=RW_NOEDIT;
end;

function THandMode.SendToPort(EndMethod: TEndPortMethod):Boolean;
begin
  CopyMemory(Addr(PByteArray(Adr)^[StartSend]),Addr(CopyMode),SendByte);
  Result:=inherited SendToPort(EndMethod);
end;

function THandMode.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
begin
 FHandClim.Exec(TFClimat65(ParentCtr));
 Result:=0;
end;

//--------------------- end variant 326
//--------- END STRATEGY С-65------------------

procedure THotV0.SetTree(var Tree:TTreeView);
var// st:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i,nTemp:word;
    nSens:word;
begin
   with ParentCtr as TFClimat65,Tree do begin
    Items.BeginUpdate;
//      Items.Clear;
    Param.X:=0;
    Param.Y:=0;
    if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
// Заполнение внешних измерений
      Param.X:=1;
      Param.Y:=0;
      Node1:=Items.AddChildObject(NodeHead,'Общие данные',Param.Ptr);
      for nSens:=StCommon to EndCommon do begin
        Param.Y:=nSens;
        (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
        end;
    for i:=1 to SumZone do
      begin
// Заполнение измерений
      Param.X:=1;
      Param.Y:=0;
      Node1:=Items.AddChildObject(NodeHead,'Измерения '+GetTextZona(i,0),Param.Ptr);
      for nSens:=StTeplSens to EndTeplSens do begin
             Param.Y:=nSens+SumMesTepl*(i-1);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
// Заполнение управления
      Param.X:=1;
      Param.Y:=0;
      Node1:=Items.AddChildObject(NodeHead,'Расчетный климат '+GetTextZona(i,0),Param.Ptr);
      for nSens:=StTeplCalc to EndTeplCalc do begin
             Param.Y:=nSens+SumMesTepl*(i-1);
//             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                TipSensToNumImage(ConstNames[nSens].TipSens);
             end;

      Param.Y:=0;
      Node1:=Items.AddChildObject(NodeHead,'Обогрев '+GetTextZona(i,0),Param.Ptr);
      for nSens:=StTeplWarm to EndTeplWarm do begin
             Param.Y:=nSens+SumMesTepl*(i-1);
             nTemp:=TipSensToNumImage(ConstNames[nSens].TipSens);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                nTemp;   //GetState(DefineHot[nSens].TipSens);
             end;

      Param.Y:=0;
      Node1:=Items.AddChildObject(NodeHead,'Вентиляция '+GetTextZona(i,0),Param.Ptr);
      for nSens:=StTeplVent to EndTeplVent do begin
             Param.Y:=nSens+SumMesTepl*(i-1);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      Param.Y:=0;
      Node1:=Items.AddChildObject(NodeHead,'Экран, вентиляторы и СИОД '+GetTextZona(i,0),Param.Ptr);
      for nSens:=StTeplScreen to EndTeplScreen do begin
             Param.Y:=nSens+SumMesTepl*(i-1);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      Param.Y:=0;
      Node1:=Items.AddChildObject(NodeHead,'Механизмы '+GetTextZona(i,0),Param.Ptr);
      for nSens:=StTeplMecan to EndTeplMecan do begin
             Param.Y:=nSens+SumMesTepl*(i-1);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      end;
   Items.EndUpdate;
//   NodeHead.Expand(False);
   end;
end;

procedure THotV1.SetTree(var Tree:TTreeView);
var vSt:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i,nTemp:word;
    nSens:word;
begin
   with ParentCtr as TFClimat65,Tree do begin
//    NetMeteo.SetEndRecord;
    Items.BeginUpdate;
//      Items.Clear;
    Param.X:=0;
    Param.Y:=0;
    if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else begin
          Param.Block:=Self;
          NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
          end;
// Заполнение внешних измерений
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[236],Param.Ptr);      //'Общие данные'
      Param.X:=1;
      for nSens:=StCommon to EndCommon do begin
        Param.Y:=nSens;
        if GetReadAccess(1,nSens)>=NowAccess then continue;
        LoadXY(cOutBlock,0,nSens,vSt);
        with (Items.AddChildObject(Node1,vSt,Param.Ptr)) do
            begin
            ImageIndex:=TipSensToNumImage(ConstNames[nSens].TipSens);
            end;
        end;
    for i:=1 to CountX do
      begin
// Заполнение измерений
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[237]+' '+GetTextZona(i,0),Param.Ptr); //'Измерения '
      Param.X:=i;
      for nSens:=StTeplSens to EndTeplSens do begin
             if GetReadAccess(i,nSens)>=NowAccess then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
// Заполнение управления
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[238]+' '+GetTextZona(i,0),Param.Ptr);  //'Расчетный климат '
      Param.X:=i;
      for nSens:=StTeplCalc to EndTeplCalc do begin
             Param.Y:=nSens;
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;

      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[239]+' '+GetTextZona(i,0),Param.Ptr); //'Обогрев '
      Param.X:=i;
      for nSens:=StTeplWarm to EndTeplWarm do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             nTemp:=TipSensToNumImage(ConstNames[nSens].TipSens);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                nTemp;   //GetState(DefineHot[nSens].TipSens);
             end;

//      Param.Y:=0;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[240]+' '+GetTextZona(i,0),Param.Ptr);  //'Вентиляция '
      Param.X:=i;
      for nSens:=StTeplVent to EndTeplVent do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[241]+' '+GetTextZona(i,0),Param.Ptr);  //'Экран, вентиляторы и СИОД '
      Param.X:=i;
      for nSens:=StTeplScreen to EndTeplScreen do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[242]+' '+GetTextZona(i,0),Param.Ptr);   //'Механизмы '
      Param.X:=i;
      for nSens:=StTeplMecan to EndTeplMecan do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      end;
   Items.EndUpdate;
//   NodeHead.Expand(False);
   end;
end;

{function TFClimat65.PaintTree:integer;

function StateNode(vNode:TTreeNode):Byte;
var i:word;
    St:string;
    xy:Txy;
    NodeRect: TRect;
    Stat:Byte;
//-------------------------------------
begin
   xy.Ptr:=vNode.Data;
   if Not vNode.HasChildren and ((xy.Y>0) or (vNode.Count<1)) then
      begin
      Block[0].LoadXY(cOutBlock,xy.X,xy.Y,St);
      Result:=imNum;
      vNode.StateIndex:=Result;
      NodeRect :=vNode.DisplayRect(True);
      TreeView1.Canvas.Font.Color:=GetImColor(imNum);
      TreeView1.Canvas.Brush.Color:=TreeView1.Color;
      TreeView1.Canvas.TextOut(NodeRect.Left, NodeRect.Top,vNode.Text+' ='+St);
      Exit;
      end;
   Result:=0;
   for i:=0 to vNode.Count-1 do
      begin
      Stat:=StateNode(vNode.Item[i]);
      if (Stat<imRasch) and (Result<Stat) then Result:=Stat;
      end;
   vNode.ImageIndex:=Result;
end;

begin
  Result:= StateNode(TreeView1.Items[0]);
  if Result > imNorm then MessageBeep(MB_ICONQUESTION);
end;}
//---------------------------------------

procedure TFClimat65.SetPicCtr;
var
  MaxLevAlarm,iY,iX,vLevel,PozY:integer;
  Color:TColor;
  st:string;
begin
  ListView1.Clear;
  if Not Block[0].Ready  then Exit;
  ListView1.Items.BeginUpdate;
//  MaxLevAlarm:=PaintTree;
{  if MaxLevAlarm > imNorm then
     with ListView1.Items.Add do
        begin
        Caption:=imText[MaxLevAlarm];
        ImageIndex:=MaxLevAlarm;
        Data:=Pointer(clRed);
        end; }
  MaxLevAlarm:=0;
  with Block[0] do
  for iY:=1 to CountDiagnosis do
    for iX:=1 to CountX do
      begin
      if Not GetDiagnosis(iX,iY,vLevel,PozY,Color,st)
           or (vLevel <= 0 )
           or (PozY =0 )
           then continue;
      if vLevel > MaxLevAlarm then MaxLevAlarm:=vLevel;
      with ListView1.Items.Add do
        begin
        Caption:=st;
        Data:=Pointer(Color);
        if vLevel = alFatal then ImageIndex:=imNoReal
        else ImageIndex:=imNoRealPC;
        end;
      end;
  with ListView1 do
       begin
       if Items.Count>0 then
          begin
          Hint:=CtrName;
          if Not Visible then Visible:=True;
          if HostDockSite is TCustomDockForm then
             begin
            (HostDockSite as TCustomDockForm).Caption:=CtrName;
            end;
          end
          else Visible:=False;
       end;
   ListView1.Items.EndUpdate;
   PSost.Caption:=GetTextFromAlarm(MaxLevAlarm,Color);
   PSost.Color:=Color;
end;

procedure TFClimat65.TreeView1Edited(Sender: TObject; Node: TTreeNode;
  var S: String);
var xy:Txy;
begin
 if Node.HasChildren then Exit;
 xy.Ptr:=Node.Data;
 if xy.Y>0 then
   begin
   Block[0].ConstNames[xy.Y].Name:=S;
   end;
end;

procedure TFClimat65.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
end;

{procedure TFClimat65.SetChar;
var st:string;
    tVal:double;
    vTime:TDateTime;
begin
// номер графика
with Block[0] do begin
     try
     ShowProgress;
     NowSeries:=NowSeries+1;
     NowSeries:=NowSeries mod Chart1.SeriesCount;
     with Chart1.Series[NowSeries] do begin
      Clear;
      LoadXY(cOutBlock,0,NowSens,st);
      Title:=GetTextZona(NowTepl,NowSens)+st;
      end;
  while LoadFileCycle(DateChar.DateTime) do
    begin
    tVal:=LoadXY(cOutBlock,NowTepl,NowSens,st);
    vTime:=BlDate;//frac(BlDate)+int(Now);
    Chart1.Series[NowSeries].AddXY(vTime,tVal,'',clTeeColor);//AddSer(Chart1.Series[NowSeries],tVal,vTime);
    end;
  SetView;
  Chart1.LeftAxis.Automatic:=True;
  finally HideProgress; end;
  end;
end;}


procedure TFClimat65.Image1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := (Source is TLabel) or (Source is TTreeView);
end;

procedure TFClimat65.ListView1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  ListView1.Canvas.Font.Color:=TColor(Item.Data);
end;

function TFClimat65.CtrFromFile(NameFile:string):Boolean;
begin
result:=inherited CtrFromFile(NameFile);
LCtr.Caption:=CtrName;
end;

procedure TFClimat65.SpeedButton14Click(Sender: TObject);
begin
 FHandClim.Exec(Self);
end;

function TFClimat65.GetTemp(fTask:integer;fDo:integer;ValX:integer;inDate:TDateTime):integer;
var
  tDelt: double;
begin
     Result:=fTask;
     if FilterTValue[ValX]=0 then FilterTValue[ValX]:=Result;
     FilterTValue[ValX]:=FilterTValue[ValX]*ClimGoTask+Result*(1-ClimGoTask);

     if (FilterTTime[ValX]<(inDate-cMin*3)) or (FilterTTime[ValX]>(inDate+cMin*3)) then
       FilterTValue[ValX]:=Result;
     if (abs(FilterTValue[ValX]-fDo)<abs(Result-fDo)) then
       Result:=round(FilterTValue[ValX])
     else
       FilterTValue[ValX]:=Result;

     FilterTTime[ValX]:=inDate;
     tDelt:=((fDo-Result)*(fDo-Result))/100;
     if tDelt>100 then Exit;
     if Result<fDo then tDelt:=-tDelt;
     Result:=round(fDo+tDelt);

end;

end.
