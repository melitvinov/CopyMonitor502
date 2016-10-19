unit Climat501U;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls,DateUtils, PicCtr, Menus, ImgList, ComCtrls,
  Spin, ToolWin, TeEngine, Series, TeeProcs, Chart,GanttCh, Gauges, GGraf,
  FConstType, FController, MPlayer,// ClimCalc,
  FPicLabel, Grids_ts, TSGrid, GIFDef,
  FBox, SetGrid, MessageU,DefineClim510,    //, FPicPanel, FPicLabel
  GIFComponent, FPicPanel, xmldom, XMLIntf, msxmldom, XMLDoc,
  jpeg, FPanel;
//---------------------------------------------------
//       Определения входов
//S-сумма,T-тепличный,С-общий,
//A-аналоговый,D-дискретный,Sens-сенсор
//---------------------------------------------------
const
  DZ_SUM_METEO      =	DZ_SumSensMeteo;  //11; // Количество датчиков метеостанции
  DZ_SUM_COMMON     = 20;
  //DZ_MAX_SUM_ZONE   = 4;
  DZ_MODEL          = 8;
  DZ_cNameIdent     =178;
  DZ_BLOCK_CALIB    =2;
const
//--------- константы блока метео
  DZ_SUM_REGUL=6;
  DZ_Y_START_REGUL=DZ_SUM_METEO-DZ_SUM_REGUL+1;  //CountYNetMeteo-SUM_REGUL+1;
  DZ_Y_CAN_CHANGIN=DZ_Y_START_REGUL;
  DZ_COUNT_Y_NET=DZ_SUM_METEO;  //+DZ_SUM_REGUL;

  X_NAME=0;
  X_POZ_Y=1;
  X_MAX=2;
  X_SOURCE=3;
//  X_OPER=4;
  X_TASK=4;
  X_STATE_REG=6;
  X_N_REGUL=5;
  X_KOF=7;

  X_P=0;
  X_I=1;
  X_D=2;
  X_SUM_I=3;
  X_PRED=4;
  SUM_KOF=5;

type T2Byte=integer;//SmallInt;

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

{***********************************************************
--------------------Описание дополнительных установок --------
************************************************************}
type TSettings_DZ=Class(TBlock)
public
     procedure Init;override;
     function CalcPower(ValX:integer;dTemp,Sun: double):double;
end;

type TBlArxPC_DZ=Class(TBlock)
private
//     SumListVal:word;
     WriteArchivDate:TDateTime;
     function CalcDayArxPC(ArxDate:TDateTime):Boolean;
     function CalcAllArxPC(StartDate:TDateTime):Boolean;
//     procedure ArchivToWeb;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;


type THotAlarm=class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double; override;
end;

type THotAlarm511=class(THotAlarm)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double; override;
end;

type THotFans=class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double; override;
     procedure FanSaveAsXML(ValX,ValY: integer; BlockNode:IXMLNode);
     procedure BlockSaveAsXML(const DomFileName:string);
     function GetExist(x,y:integer):TConfigExist; override;

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
end;

type  TFClimat501U = class(TFPicCtr)
    ILZone: TImageList;
    ILZoneHot: TImageList;
    Panel2: TPanel;
    StringGridAlarm: TtsGrid;
    FPanel19: TFPanel;
    GIFSShow12: TGIFSShow;
    Image1: TImage;
    Label67: TLabel;
    Label35: TLabel;
    Label34: TLabel;
    Label20: TLabel;
    SpeedButton14: TSpeedButton;
    Gauge11: TGauge;
    GIFSShow1: TGIFSShow;
    Gauge1: TGauge;
    Gauge4: TGauge;
    LNZone: TLabel;
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
    FPBarZone: TFPanel;
    ZoneBar: TToolBar;
    TBZone1: TToolButton;
    TBZone2: TToolButton;
    TBZone3: TToolButton;
    TBZone4: TToolButton;
    TBZone5: TToolButton;
    TBZone6: TToolButton;
    TBZone7: TToolButton;
    TBZone8: TToolButton;
    StaticText1: TStaticText;
    StaticText3: TStaticText;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText6: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText14: TStaticText;
    StaticText13: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    StaticText32: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    Gauge12: TGauge;
    Gauge15: TGauge;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label26: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label42: TLabel;
    Label53: TLabel;
    Label25: TLabel;
    Label32: TLabel;
    Label38: TLabel;
    Label13: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label39: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    SpeedButton1: TSpeedButton;
    procedure TreeView1Edited(Sender: TObject; Node: TTreeNode;
      var S: String);
//    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
//    procedure _TBClearClick(Sender: TObject);
//    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
//      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
//    procedure SELongChange(Sender: TObject);
//    procedure DateCharChange(Sender: TObject);
    procedure InfoLabelClick(Sender: TObject);
//    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
//      Y: Integer);
//    procedure Chart1AfterDraw(Sender: TObject);
//    procedure _TBPrintClick(Sender: TObject);
    procedure ListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure SpeedButton14Click(Sender: TObject);
    procedure TBZone1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
    NowSens,NowTepl,NowSeries:integer;
    OldX,OldY:Longint;
//    BlockNewArxPC:TNewArxPC_DZ;//TBlock;
    BlockArxPC:TBlArxPC_DZ;//TBlock;
  public
    WarmGroupConfig:TWarmGroupConfig;
    Settings_DZ:TSettings_DZ;
    AlarmHot:THotAlarm;
    FansHot:THotFans;
    ZonePower:array[1..4] of double;
    ActivZone:integer;
    //function PaintTree:integer;
    //procedure SetChar;
//    procedure SetView;
    function GetTextZona(x,y:integer):string; override;
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
//    function CtrFromFile(const NameFile:string):Boolean;override;
    function TagToZone(vTag:Longint):Integer;override;
    function BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer; override;

    //function GetCO2Consum(vCO,vCOr,Speed:T2Byte):T2Byte;
    //function GetMaxTrans(vT,vH,vTr,vHr,Speed:T2Byte):T2Byte;


  end;

{***********************************************************
--------------------Описание Hot блока----------------------
************************************************************}
type THot_DZ=Class(TBlock)
private
      function TestAlarmSens:Boolean;
//    function TestAllArtefact:Boolean;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure PostPortRead; override;
     procedure SetTree(var Tree:TTreeView); override;
     procedure TestCtrTime;
     function DayTime:Boolean;
     function GetExist(x,y:integer):TConfigExist; override;
end;

{***********************************************************
--------------------Описание Hot 511 блока----------------------
************************************************************}
type THot_511=Class(TBlock)
private
      function TestAlarmSens:Boolean;
//    function TestAllArtefact:Boolean;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure PostPortRead; override;
     procedure SetTree(var Tree:TTreeView); override;
     procedure TestCtrTime;
     function DayTime:Boolean;
     function GetExist(x,y:integer):TConfigExist; override;
end;
{***********************************************************
--------------------Описание конфигурации 511--------
************************************************************}
type TConfig_DZ511=Class(TBlock)
public
     procedure Init;override;
end;

{***********************************************************
--------------------Описание калибровок внутренних 511--------
************************************************************}

type TCalInSens_DZ511=Class(TBlock)
public
     procedure Init;override;
     //function GetExistSens(nZone,nSens:integer):Boolean;
end;

{***********************************************************
--------------------Описание блока механизмы 511----------------
************************************************************}
type TParMec_DZ511=Class(TBlock)
public
     procedure Init;override;

end;

{***********************************************************
--------------------Описание блока ручное управление 511--------
************************************************************}

type THandMode_DZ511=Class(TBlock) //Class(THandMode)
private
      DZ511_CopyHand: array [0..DZ511_sizeHand] of Byte;

public
    procedure Init;override;
    function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    function SendToPort(EndMethod: TEndPortMethod):Boolean;override;
//    function SetAny(x,y:WORD;var Any:TAny):Integer;override;
end;

{***********************************************************
--------------------Описание блока парамтры-----------------
************************************************************}
type TControl_DZ=Class(TBlock)
public
     procedure Init;override;

end;

type TControl_DZ511=Class(TBlock)
public
     procedure Init;override;

end;

{***********************************************************
--------------------Описание блока настройка----------------
************************************************************}
type TTune_DZ=Class(TBlock)
public
     procedure Init;override;
 //    function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
 //      var Txt:String):Double;override;
end;
{***********************************************************
--------------------Описание блока настройка 511----------------
************************************************************}
type TTune_DZ511=Class(TBlock)
public
     procedure Init;override;
 //    function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
 //      var Txt:String):Double;override;
end;

{***********************************************************
--------------------Описание блока механизмы----------------
************************************************************}
type TParMec_DZ=Class(TBlock)
public
     procedure Init;override;

end;
{***********************************************************
--------------------Описание блока ручное управление--------
************************************************************}

type THandMode_DZ=Class(TBlock) //Class(THandMode)
private
      DZ_CopyHand: array [0..DZ_sizeHand] of Byte;

public
    procedure Init;override;
    function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    function SendToPort(EndMethod: TEndPortMethod):Boolean;override;
//    function SetAny(x,y:WORD;var Any:TAny):Integer;override;
end;
{***********************************************************
--------------------Описание конфигурации --------
************************************************************}
type TConfig_DZ=Class(TBlock)
public
     procedure Init;override;
end;
{***********************************************************
--------------------Описание блока задание-----------------
************************************************************}

type TTimer_DZ=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
{     procedure GetProperGrid( x, y:integer);override;    }
end;

type TTimer_DZ511=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
{     procedure GetProperGrid( x, y:integer);override;    }
end;


type TLev_DZ=Class(TBlock)
public
     procedure Init;override;
end;

type TCalInSens_DZ=Class(TBlock)
public
     procedure Init;override;
     //function GetExistSens(nZone,nSens:integer):Boolean;
end;

type TCalOutSens_DZ=Class(TBlock)
public
     procedure Init;override;

end;


type TStrategy_DZ=Class(TBlock)
public
     procedure Init;override;
end;

type TStrategy_DZ511=Class(TBlock)
public
     procedure Init;override;
     //function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
     //  var Txt:String):Double;override;
end;

type TNetMeteo_DZ=Class(TBlock)
private
    Source:array [1..DZ_COUNT_Y_NET] of string[30];
    procedure CalcMax;
    procedure SetRegul;
    function DoOper(nRegul:Byte;Mes,Task:Double):string;
//    procedure StartNum;
public
    procedure Init;override;
    function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    procedure CalcNetRegul;
end;

//=============================================================================

implementation
uses Port, HandClim, audit, WindSon, FTopMes, BoilerIPC, Subr, //GGraf,
  ConvUtils, Strategy501U, ClimCalc;
{$R *.DFM}

const
    HOT_ALARM_WAR=20;
    HOT_ALARM_ALR=30;
    Messa: string[30] = 'Расчет положения клапана UC';

var gRCS:Byte;
    alarmMessage:Byte;
    pascalSaveInterval:TDateTime;
    pascalNameContr:string;
    pascalCountZone:integer;

function GetCO2Consum(vCO,vCOr,Speed:T2Byte):T2Byte;
begin
    Result := (vCOr - vCO)*Speed;
    // разница между датчиком в теплице и датчиком в рукаве и умноженное на скорость вращения вентиляторов
end;

function GetMaxTrans(vT,vH,vTr,vHr,Speed:T2Byte):T2Byte;
var
absHruk:integer;
absH:integer;
res:integer;
begin
    absHruk := AbsHum(vTr, vHr);
    absH    := AbsHum(vT, vH);
    res := (absH - absHruk)*Speed;
    Result := res;
    // разница между датчиком в теплице и датчиком в рукаве и умноженное на скорость вращения вентиляторов
end;

function GetColorAlrStatus(x:integer):TColor; //override;
begin
    case x of
    1..10: Result:=$008AE083;
    HOT_ALARM_WAR..29: Result:=$0018ADF5;
    HOT_ALARM_ALR..66000: Result:=clRed;
    else Result:=clNone;
    end;
end;

function TFClimat501U.TagToZone(vTag:Longint):Integer;
begin
  Result:=(vTag div ctStartZone) mod 10;   //PicX
  if Result=0 then Result:=ActivZone;
end;

function TFClimat501U.GetTextZona(x,y:integer):string;
begin
  if (x=0) and (y=0) then begin Result:=CtrName; Exit; end;
  if (SumZone > 1) and (x > 0) and ((y=0) or (y > DZ_SUM_COMMON)) then
      Result:=ZoneBar.Buttons[x-1].Caption else Result:='';   //'Зона %d '
end;

//---------------------------- СОСТОЯНИЕ C-403 ------------------
{***********************************************************
--------------------Инициализация контроллера---------------
************************************************************}

procedure TFClimat501U.InitCtr(vIdentCtr:TIdentCtr);
var i,nZone:integer;
begin
     inherited;
     Design:='Climat';
     NameIdent:=cNameIdent403;
     SumZone:=IdentCtr[idSubTip];
     IsIPC:=true;
     pascalSaveInterval := Now;
     if (SumZone<1) or (SumZone> DZ_MAX_SUM_ZONE) then SumZone:=1;
     ActivZone:=1;
     if (IdentCtr[idModific] and 4) > 0 then
     begin
       THot_511.Create(Self);
       TControl_DZ511.Create(Self);
       TTimer_DZ511.Create(Self);
       TTune_DZ511.Create(Self);
       TStrategy_DZ511.Create(Self);
       ConfigBlock:=TConfig_DZ511.Create(Self);
       TCalInSens_DZ511.Create(Self);
       TCalOutSens_DZ.Create(Self);
       TParMec_DZ511.Create(Self);
       TLev_DZ.Create(Self);            // task 61
       HandMode:=THandMode_DZ511.Create(Self);
       NetMeteo:=TNetMeteo_DZ.Create(Self);
       AlarmHot:=THotAlarm511.Create(Self);
       FansHot:=THotFans.Create(Self)
     end
     else
     begin
       THot_DZ.Create(Self);
       TControl_DZ.Create(Self);
       TTimer_DZ.Create(Self);
       TTune_DZ.Create(Self);
       TStrategy_DZ.Create(Self);
       ConfigBlock:=TConfig_DZ.Create(Self);
       TCalInSens_DZ.Create(Self);
       TCalOutSens_DZ.Create(Self);
       TParMec_DZ.Create(Self);
       TLev_DZ.Create(Self);           // task 61
       HandMode:=THandMode_DZ.Create(Self);
       NetMeteo:=TNetMeteo_DZ.Create(Self);
       AlarmHot:=THotAlarm.Create(Self);
       FansHot:=nil;
     end;
     BlockArxPC:=TBlArxPC_DZ .Create(Self);
     blPCArchive{BlockNewArxPC}:=TNewArxPC_DZ.Create(Self);
     WarmGroupConfig:=TWarmGroupConfig.Create(Self);
     Settings_DZ:=TSettings_DZ.Create(Self);
     AuditBlock:=TAudit.Create(Self);
//     WarmGroupBlock:=TWarmGroup.Create(Self);
     if SumZone=1 then
     begin
        FPBarZone.Visible:=False;
        //FPBarZone511.Visible:=False;
     end;
     for i:=0 to ComponentCount-1 do
        begin
        nZone:=TagToZone(Components[i].Tag);
        if nZone > 1 then
          TControl(Components[i]).Visible := nZone <= SumZone;
        if (Components[i] is TStaticText) and (nZone > 0) and (SumZone=1) then
          TStaticText(Components[i]).Visible :=False;
        end;

     //pcClimate510.Pages[1].TabVisible:=false;
end;

{***********************************************************
--------------------Инициализация блока Hot-----------------
************************************************************}
const
  posLightSource=25;
  posCO2Src=21;

procedure THot_DZ.Init;
begin
//     CountComY:=SumCommon;//Сколько строк не выводить в зоне Б
     CountX:=ParentCtr.SumZone;
     CountY:=DZ511_SumMesHot;  //SumMesTepl+DZ_SUM_COMMON;  SumCommon;
  // Устанавливаем размер блока, новая модификация
     SizeCol:=DZ511_iTepl+DZ_sizeTepl*DZ_MAX_SUM_ZONE;
     FullSize:=SizeCol;
     SendByte:=DZ511_sizePCSend403;//DZ_cSendTime;
     Pref:=ProgMess[231];    //'Состояние';
     NameBlock:=ProgMess[232];    //'Состояние климата';
     //ConstNames:=Addr(DZ_cDefineHot[1]);
     ConstNames:=Addr(DZ511_cDefineHot[1]);
//     SavingConstNames:=True;
     Diagnosis:=Addr(DZ_Diagnos[1]);
     CountDiagnosis:=DZ_SUM_DIAGNOS;
     Translator:=CountY;
end;

{***********************************************************
--------------------Загрузка значений блока Hot-------------
************************************************************}
function THot_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;

var pHot:pByteArray;
    tIn:Integer;
    pt:Pointer;
    tIndex,i:word;
    tTask,tDelt:Double;
begin
with ParentCtr as TFClimat501U do
 begin
 Result:=0;
 gRCS:=0;
 if ValY=0 then
       begin
       Txt:=GetTextZona(ValX,ValY);
       Exit;
       end;
 Result:=0;
 if vInBlock=cOutBlock then Txt:='';
 if ValY = DZ511_posZonePower then
        begin
        if ValX=0 then begin Txt:=ConstNames[ValY].Name; Exit; end;
        if Not Ready then Exit;
        for i:=0 to 4 do
          if LoadXY(cOutBlock,ValX,140+i*4,Txt)>0 then
          Result:=Result+GetPowerContur(LoadXY(cOutBlock,ValX,31+i,Txt)-LoadXY(cOutBlock,ValX,21,Txt),
            (ParentCtr as TFClimat501U).WarmGroupConfig.GetLengthPipe(ValX,i+1),
            (ParentCtr as TFClimat501U).WarmGroupConfig.GetDiamPipe(ValX,i+1));
        Txt:=FloatToStr(Result)+' '+ConstNames[ValY].Ed;
        Exit;
        end;
 if ValY = DZ511_posCalcPower then
        begin
        if ValX=0 then begin Txt:=ConstNames[ValY].Name; Exit; end;
        if Not Ready then Exit;
          Result:=Settings_DZ.CalcPower(ValX,LoadXY(cOutBlock,ValX,21,Txt)-LoadXY(cOutBlock,1,1,Txt),LoadXY(cOutBlock,1,2,Txt));
        Txt:=FloatToStr(Result)+' '+ConstNames[ValY].Ed;
        Exit;
        end;
 if (ValY <= DZ_SUM_METEO) then
    begin
      if ValX <= 1 then
          begin
          if ValX = 1 then ValX:=X_MAX;
          Result:=NetMeteo.LoadXY(vInBlock,ValX,ValY,Txt);
          end
      else imNum:=imNoConnect;
    Exit;
    end;

 if ValX=0 then
    begin
    Result:=Convers(ConstNames[ValY].Name,Adr,
        SS,vInBlock,ValX,ValY,Txt,'');
    Exit;
    end;
 tIndex:=0;
 if ValY >= DZ511_StTeplSens then
   tIndex:=DZ511_iTepl
   else if ValX > 1 then
    begin Txt:=''; Exit; end;;
 tIndex:=tIndex+(ValX-1)*DZ511_sizeTepl;
 pt:=Addr(tIn);
 pHot:=Adr;
 case ConstNames[ValY].TipSens of
 TipSensor,TipGoTask,SensorRCS:
     begin
     gRCS:=pHot^[ConstNames[ValY].Index+tIndex+2];
     imNum:=RCSBitToImage(pHot^[ConstNames[ValY].Index+tIndex+2]);
     pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
     end;
  prognT:tIn:=GetProgn(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256);
  AbsRH: tIn:=GetAbsH(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256);
  DDWP: tIn:=GetDDWP(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256);
  DDWPS: tIn:=GetDDWP(pHot^[DZ_itTSheet+tIndex]+pHot^[DZ_itTSheet+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256);  //было
  TR: tIn:=GetTR(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256);
  TipTime: pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  else pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  end;
  Result:=Convers(ConstNames[ValY].Name,pt,
        ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
{  if (ConstNames[ValY].Frm <> ComboBit)
      and (ConstNames[ValY].Frm <> ComboSS)
       and (Result<ConstNames[ValY].Min) or (Result>ConstNames[ValY].Max) then
               begin
               imNum:=imNoRealPC;
               end; }
  if (ValX>0) and (ConstNames[ValY].TipSens=TipGoTask) and (ClimGoTask>0) then
     begin
     tTask:=0.01*GetInt51(Addr(pHot^[DZ511_itDoT+tIndex]));
     tDelt:=(tTask-Result)*(tTask-Result);
     if tDelt>1 then Exit;
     if Result<tTask then tDelt:=-tDelt;
     Result:=tTask+tDelt;
     end;
  if (ValY>=DZ511_StTeplMecan) then
    if (Result>0) then
      imColor := clRed
      else imColor := clGreen;
 end;
end;

function THot_DZ.TestAlarmSens:Boolean;
var y,x:integer; st:string; st1:string;Color:TColor;
begin
  for y:=1 to CountY do
    begin
    if ConstNames[y].TipSens <> SensorRCS then continue;
    for x:=1 to CountX do
        begin
        LoadXY(cOutBlock,x,y,st);
        //if gRCS=0 then continue;
        if gRCS >= 32 then
          begin
            HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Отказ датчика',clNone,clNone,clRed);      // запись в журнал
            alarmMessage := alDifficulty;//alFatal;
            continue;
          end;
        if gRCS = 1 then    // нет измерений по причине отсутствия связи
          begin
            //HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Отказ датчика',clNone,clNone,clRed);      // запись в журнал
            //alarmMessage := alDifficulty;//alFatal;
            continue;
          end;
        //if (gRCS and bMinMaxV)>0 then                  //bMinMaxV=        32; //0x20 bMinMaxU=        64; //0x40 bHiAlarm=        4;  //0x04 bLowAlarm=       8;  //0x08
        //  begin               1
        //    HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Отказ датчика',clNone,clRed);
        //    alarmMessage := alFatal;
        //    continue;
        //  end;
        if (gRCS and bHiAlarm)>0 then
          begin
            HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Выше допуска',clNone,clFuchsia);
            alarmMessage := alAttention;
            continue;
          end;
        if (gRCS and bLowAlarm)>0 then
          begin
            HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Ниже допуска',clNone,clBlue);
            alarmMessage := alAttention;
            continue;
          end;
        end;
    end;
end;

{function THot_DZ.TestAlarmSens:Boolean;
var y,x:integer; st:string;
begin
  for y:=1 to CountY do
    begin
    if ConstNames[y].TipSens <> SensorRCS then continue;
    for x:=1 to CountX do
        begin
        LoadXY(cOutBlock,x,y,st);
        if gRCS=0 then continue;
        if (gRCS and bMinMaxV)>0 then                  //bMinMaxV=        32; //0x20 bMinMaxU=        64; //0x40 bHiAlarm=        4;  //0x04 bLowAlarm=       8;  //0x08
          begin HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Отказ датчика',clNone,clFuchsia); continue; end;
        if (gRCS and bHiAlarm)>0 then
          begin HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Выше допуска',clNone,clFuchsia);continue; end;
        if (gRCS and bLowAlarm)>0 then
          begin HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Ниже допуска',clNone,clBlue);continue; end;
        end;
    end;
end; }

function THot_DZ.GetExist(x,y:integer):TConfigExist;
begin
  Result:=inherited GetExist(x,y);
//  if Not (ParentCtr.Block[DZ_BLOCK_CALIB] as TCalSens_DZ).GetExistSens(x,y)
//    then Result:=cfExistFalse;
end;

procedure THot_DZ.PostPortRead;
var pHot:PByteArray;
    i,Minut,tmpCo2:integer;
    SRaise,SSet:TDateTime;
    st,st1:string;
begin

 with ParentCtr as TFClimat501U do
    for i:=1 to 4 do ZonePower[i]:=LoadXY(cOutBlock,1,DZ511_posZonePower,st);;
 with ((ParentCtr as TFClimat501U).NetMeteo) as TNetMeteo_DZ do
    CalcNetRegul;

 pHot:=Adr;
 for i:=0 to DZ_SumOutMeteo-1 do
   begin
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
   if ((pHot^[DZ511_iSensOut+i*3+2] and (1+16)) = 0)
      then
// если датчик подсоединен и измеряет, то его в общие данные
//--------------------------------------------
      begin
      bNeedMeteo:=true;
      mMeteo[i].UpdateTime:=BlDate;
      mMeteo[i].Val51[0]:=pHot^[DZ511_iSensOut+i*3];
      mMeteo[i].Val51[1]:=pHot^[DZ511_iSensOut+i*3+1];
      if (ParentCtr.IsIPC) then
      begin
        mMeteo[i].Val51[1]:=pHot^[DZ511_iSensOut+i*3];
        mMeteo[i].Val51[0]:=pHot^[DZ511_iSensOut+i*3+1];
      end;
      mMeteo[i].Source:=ParentCtr.CtrName;
      if i=comSun then
          begin
          mMeteo[comSumSun].Val51[0]:=pHot^[DZ511_iSumSun];
          mMeteo[comSumSun].Val51[1]:=pHot^[DZ511_iSumSun+1];
          if (ParentCtr.IsIPC) then
          begin
            mMeteo[comSumSun].Val51[1]:=pHot^[DZ511_iSumSun];
            mMeteo[comSumSun].Val51[0]:=pHot^[DZ511_iSumSun+1];
          end;
          mMeteo[comSumSun].UpdateTime:=BlDate;
          mMeteo[comSumSun].Source:=ParentCtr.CtrName;
//          mMeteo[comMidlSR].IZ[0]:=pHot^[DZ_iMidlSR];
//          mMeteo[comMidlSR].IZ[1]:=pHot^[DZ_iMidlSR+1];
//          mMeteo[comMidlSR].TimeRes:=BlDate;
          end;
      end
//--------------------------------------------
   else
// если датчик не измеряет то из метеоданных
//--------------------------------------------
      begin
      if TestEquDate(mMeteo[i].UpdateTime,Now,10) then //(Now < mMeteo[i].TimeRes) or (Now > (mMeteo[i].TimeRes+5*cMin)) then
            begin
            pHot^[DZ511_iSensOut+i*3]:=mMeteo[i].Val51[0];
            pHot^[DZ511_iSensOut+i*3+1]:=mMeteo[i].Val51[1];
            if (ParentCtr.IsIPC) then
            begin
              pHot^[DZ511_iSensOut+i*3]:=mMeteo[i].Val51[1];
              pHot^[DZ511_iSensOut+i*3+1]:=mMeteo[i].Val51[0];
            end;
//            pHot^[DZ_iSensOut+i*3+2]:=mMeteo[i].RCS;
            if i=comSun then
                begin
                pHot^[DZ511_iSumSun]:=mMeteo[comSumSun].Val51[0];
                pHot^[DZ511_iSumSun+1]:=mMeteo[comSumSun].Val51[1];
                if (ParentCtr.IsIPC) then
                  begin
                  pHot^[DZ511_iSumSun]:=mMeteo[comSumSun].Val51[1];
                  pHot^[DZ511_iSumSun+1]:=mMeteo[comSumSun].Val51[0];
                  end;
                end;
          end;
//!!!!!!--------------------------------------------------------------------------
      end;
// end  из метеоданных
//--------------------------------------------
   end;
 if WindPortThread.Workeed then
      begin
      pHot^[DZ511_iWind+2]:=0;
      pHot^[DZ511_iDirWind+2]:=0;
      pHot^[DZ511_iWind]:=round(WindPortThread.Wind*100) div 256;
      pHot^[DZ511_iWind+1]:=round(WindPortThread.Wind*100) mod 256;
      pHot^[DZ511_iDirWind]:=round(WindPortThread.Direct) div 256;
      pHot^[DZ511_iDirWind+1]:=round(WindPortThread.Direct) mod 256;
      if (ParentCtr.IsIPC) then
        begin
          pHot^[DZ511_iWind]:=round(WindPortThread.Wind*100) mod 256;
          pHot^[DZ511_iWind+1]:=round(WindPortThread.Wind*100) div 256;
          pHot^[DZ511_iDirWind]:=round(WindPortThread.Direct) mod 256;
          pHot^[DZ511_iDirWind+1]:=round(WindPortThread.Direct) div 256;
        end;
      end;
//==================================================
 if (ParentCtr.DataPath <> '') then Exit;
 // рассчет восхода и захода
 //SunRaiseSet(Now,MeteoLong,MeteoWidth,{MeteoZone}4,SRaise,SSet);
 Minut:=MinuteOfTheDay(GlobSunRaise);
 pHot^[DZ511_iVosx]:=Minut div 256;
 pHot^[DZ511_iVosx+1]:=Minut mod 256;
 if (ParentCtr.IsIPC) then
 begin
   pHot^[DZ511_iVosx+1]:=Minut div 256;
   pHot^[DZ511_iVosx]:=Minut mod 256;
 end;
 Minut:=MinuteOfTheDay(GlobSunSet);
 pHot^[DZ511_iVosx+2]:=Minut div 256;
 pHot^[DZ511_iVosx+3]:=Minut mod 256;
 if (ParentCtr.IsIPC) then
 begin
   pHot^[DZ511_iVosx+3]:=Minut div 256;
   pHot^[DZ511_iVosx+2]:=Minut mod 256;
 end;
 pHot^[DZ511_iFeedBack+1]:=0;
 pHot^[DZ511_iFeedBack+2]:=0;
 with FMain.ListCtr do for i:=0 to Tabs.Count-1 do
   if (Tabs.Objects[i] is TFBoilerIPC) then
   begin
     if (Tabs.Objects[i] as TFBoilerIPC).HotPanels.LoadXY(cOutBlock,round((ParentCtr as TFClimat501U).WarmGroupConfig.LoadXY(cOutBlock,1,posLightSource,st1)),1,st)>0 then
       pHot^[DZ511_iFeedBack+1]:=1;
     tmpCo2:=round((ParentCtr as TFClimat501U).WarmGroupConfig.LoadXY(cOutBlock,1,posCO2Src,st1));
     if (tmpCo2>0) then
      if (Tabs.Objects[i] as TFBoilerIPC).HotMech.LoadXY(cOutBlock,1,216+(tmpCo2-1)*2,st)>0 then
        pHot^[DZ511_iFeedBack+2]:=1;

     break;
  end;
 pHot^[0]:=0;

//--- вернуть общие данные ----
// SendByte:=DZ_sizePCSend325;
 FPort.BlockSend(Self,IN_UNIT,0,nil);
//--- восстановить размер передачи по умолчанию
// SendByte:=DZ_cSendTime;
// проверка времени контроллера
 TestCtrTime;
end;

function THot_DZ.DayTime:Boolean;
var pHot:PByteArray;
    i:integer;
begin
 pHot:=Adr;
 i:=pHot^[DZ511_iTime]+pHot^[DZ511_iTime+1]*256;
 if (i> ((pHot^[DZ511_iVosx]+pHot^[DZ511_iVosx+1]*256)+1))and (i<(pHot^[DZ511_iVosx+2]+pHot^[DZ511_iVosx+3]*256))
  then Result:=True else Result:=False;
end;

procedure THot_DZ.TestCtrTime;
var pHot:pByteArray;
    PCTime,CtrlTime:word;
begin
// проверка времени контроллера
 if FormFalseTime then Exit;
 pHot:=Adr;
 PCTime:=MinuteOfTheDay(Now);
 CtrlTime:=pHot^[DZ511_iTime]*256+pHot^[DZ511_iTime+1];
 if (ParentCtr.IsIPC) then
  CtrlTime:=pHot^[DZ511_iTime+1]*256+pHot^[DZ511_iTime];
 if (ParentCtr.DataPath <> '')
     or (PCTime<15)
     or (PCTime>(24*60-15))
     or (((CtrlTime+10)>PCTime) and((CtrlTime-10)< PCTime)) then Exit;
 FormFalseTime:=True;
 //'Внимание! Время контроллера "%s" отличается от ПК. Синхронизировать?'
 if FMain.mnAutoSynxTime.Checked or (MessageDlg(Format(ProgMess[iAtten]+ProgMess[321]+ProgMess[322],[ParentCtr.CtrName]),mtWarning,[mbYes, mbNo],0)= mrYes) then
     begin
     pHot^[0]:=$80;
     pHot^[DZ511_iTime+4]:=YearOf(Now)-2000;

     pHot^[DZ511_iTime]:=PCTime div 256;
     pHot^[DZ511_iTime+1]:=PCTime mod 256;
     pHot^[DZ511_iTime+2]:=MonthOfTheYear(Now);
     pHot^[DZ511_iTime+3]:=DayOfTheMonth(Now);
     if (ParentCtr.IsIPC) then
     begin
       pHot^[DZ511_iTime]:=PCTime mod 256;
       pHot^[DZ511_iTime+1]:=PCTime div 256;
       pHot^[DZ511_iTime+2]:=DayOfTheMonth(Now);
       pHot^[DZ511_iTime+3]:=MonthOfTheYear(Now);
     end;

     SendByte:=DZ511_SizeSendTime;
     SendToPort(nil);
     SendByte:=DZ_sizePCSend403;
     HotMessage(ParentCtr.CtrName,ProgMess[23]);
     end;
  FormFalseTime:=False;
end;

procedure THot_DZ.SetTree(var Tree:TTreeView);
var vSt:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i,nTemp:word;
    nSens:word;
begin
   with ParentCtr as TFClimat501U,Tree do begin
//    NetMeteo.SetEndRecord;
    Items.BeginUpdate;
    Param.Block:=Self;
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
      for nSens:=DZ511_StCommon to DZ511_EndCommon do begin
        Param.Y:=nSens;
        if GetReadAccess(1,nSens)>=NowAccess then continue;
        LoadXY(cOutBlock,0,nSens,vSt);
        with (Items.AddChildObject(Node1,vSt,Param.Ptr)) do
            begin
            imNum:=TipSensToNumImage(ConstNames[nSens].TipSens);
            ImageIndex:=imNum;
            end;
        end;
    for i:=1 to CountX do
      begin
// Заполнение измерений
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[237]+' '+GetTextZona(i,0),Param.Ptr); //'Измерения '
      Param.X:=i;
      for nSens:=DZ511_StTeplSens to DZ511_EndTeplSens do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
// Заполнение управления
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[238]+' '+GetTextZona(i,0),Param.Ptr);  //'Расчетный климат '
      Param.X:=i;
      for nSens:=DZ511_StTeplCalc to DZ511_EndTeplCalc do begin
             Param.Y:=nSens;
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;

      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[239]+' '+GetTextZona(i,0),Param.Ptr); //'Обогрев '
      Param.X:=i;
      for nSens:=DZ511_StTeplWarm to DZ511_EndTeplWarm do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             nTemp:=TipSensToNumImage(ConstNames[nSens].TipSens);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                nTemp;   //GetState(DefineHot[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;

      Param.Block:=Self;

      //Node1:=Items.AddChildObject(NodeHead,ProgMess[240]+' '+GetTextZona(i,0),Param.Ptr);  //'Вентиляция '
      Node1:=Items.AddChildObject(NodeHead,Messa+' '+GetTextZona(i,0),Param.Ptr);  //'Вентиляция '
      Param.X:=i;
      for nSens:=DZ511_StTeplVent to DZ511_EndTeplVent do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
//      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[314]+' '+GetTextZona(i,0),Param.Ptr);  //'Экраны'
      Param.X:=i;
      for nSens:=DZ511_StTeplScreen to DZ511_EndTeplScreen do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
//      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[241]+' '+GetTextZona(i,0),Param.Ptr);  //'Расчет дополнительных систем'
      Param.X:=i;
      for nSens:=DZ511_StTeplOther to DZ511_EndTeplOther do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
//      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[242]+' '+GetTextZona(i,0),Param.Ptr);   //'Механизмы '
      Param.X:=i;
      for nSens:=DZ511_StTeplMecan to DZ511_EndTeplMecan do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
      end;
   Items.EndUpdate;
//   NodeHead.Expand(False);
   end;
end;


{***********************************************************
--------------------Инициализация блока Hot-----------------
************************************************************}
procedure GetOutIndex(var blockName:TNameBlock; blocks:array of TNameConst; count:Integer; offset:Integer);
var
  FileDir:String;
  f:TextFile;
  str:string;
  strUTF:UTF8String;
  i,j:integer;
begin
//  <row Offset="75">Температура наружная</row>
  FileDir:=blockName+'.txt';
  AssignFile(f,FileDir);
  if not FileExists(FileDir) then
  begin
    Rewrite(f);
    CloseFile(f);
  end;
  Append(f);
  for i:=0 to count-1 do
  begin
    str := '<row Offset="'+ IntToStr(offset+blocks[i].Index) +'">'+blocks[i].Name+'</row>';
    strUTF := AnsiToUtf8(str);


    for j:=1 to Length(strUTF) do
    begin
      Write(f,strUTF[j]);
    end;
  end;
  Flush(f);
  CloseFile(f);
end;



procedure THot_511.Init;
begin
//     CountComY:=SumCommon;//Сколько строк не выводить в зоне Б
     CountX:=ParentCtr.SumZone;
     CountY:=DZ511_SumMesHot;  //SumMesTepl+DZ_SUM_COMMON;  SumCommon;
  // Устанавливаем размер блока, новая модификация
     SizeCol:=DZ511_iTepl+DZ511_sizeTepl*DZ_MAX_SUM_ZONE+20+(DZ511_SumFullFans)*2*DZ_MAX_SUM_ZONE;
     FullSize:=SizeCol;
     SendByte:=DZ511_sizePCSend403;//DZ_cSendTime;
     Pref:=ProgMess[231];    //'Состояние';
     NameBlock:=ProgMess[232];    //'Состояние климата';
     ConstNames:=Addr(DZ511_cDefineHot[1]);


     //GetOutIndex(NameBlock, DZ511_cDefineHot, DZ511_SumMesHot, 73);

//     SavingConstNames:=True;
     Diagnosis:=Addr(DZ_Diagnos[1]);
     CountDiagnosis:=DZ_SUM_DIAGNOS;
     Translator:=CountY;
end;

{***********************************************************
--------------------Загрузка значений блока Hot-------------
************************************************************}
function THot_511.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;

var pHot:pByteArray;
    pTemp:T2Byte;
    tIn:Integer;
    pt:Pointer;
    tIndex,i:word;
    tTask,tDelt:Double;
begin
with ParentCtr as TFClimat501U do
 begin
 Result:=0;
 gRCS:=0;
 if ValY=0 then
       begin
         Txt:=GetTextZona(ValX,ValY);
         Exit;
       end;
 Result:=0;
 if vInBlock=cOutBlock then Txt:='';
 if ValY = DZ511_posZonePower then
        begin
        if ValX=0 then begin Txt:=ConstNames[ValY].Name; Exit; end;
        if Not Ready then Exit;
        for i:=0 to 4 do
          if LoadXY(cOutBlock,ValX,140+i*4,Txt)>0 then
          Result:=Result+GetPowerContur(LoadXY(cOutBlock,ValX,31+i,Txt)-LoadXY(cOutBlock,ValX,21,Txt),
            (ParentCtr as TFClimat501U).WarmGroupConfig.GetLengthPipe(ValX,i+1),
            (ParentCtr as TFClimat501U).WarmGroupConfig.GetDiamPipe(ValX,i+1));
        Txt:=FloatToStr(Result)+' '+ConstNames[ValY].Ed;
        Exit;
        end;
 if ValY = DZ511_posCalcPower then
        begin
        if ValX=0 then begin Txt:=ConstNames[ValY].Name; Exit; end;
        if Not Ready then Exit;
          Result:=Settings_DZ.CalcPower(ValX,LoadXY(cOutBlock,ValX,21,Txt)-LoadXY(cOutBlock,1,1,Txt),LoadXY(cOutBlock,1,2,Txt));
        Txt:=FloatToStr(Result)+' '+ConstNames[ValY].Ed;
        Exit;
        end;



 if (ValY <= DZ_SUM_METEO) then
    begin
      if ValX <= 1 then
          begin
          if ValX = 1 then ValX:=X_MAX;
          Result:=NetMeteo.LoadXY(vInBlock,ValX,ValY,Txt);
          end
      else imNum:=imNoConnect;
    Exit;
    end;

 if ValX=0 then
    begin
    Result:=Convers(ConstNames[ValY].Name,Adr,
        SS,vInBlock,ValX,ValY,Txt,'');
    Exit;
    end;
 tIndex:=0;
 if ValY >= DZ511_StTeplSens then
   tIndex:=DZ511_iTepl
   else if ValX > 1 then
    begin Txt:=''; Exit; end;;
 tIndex:=tIndex+(ValX-1)*DZ511_sizeTepl;
 pt:=Addr(tIn);
 pHot:=Adr;



 case ConstNames[ValY].TipSens of
 TipSensor,TipGoTask,SensorRCS:
     begin
     gRCS:=pHot^[ConstNames[ValY].Index+tIndex+2];
     imNum:=RCSBitToImage(pHot^[ConstNames[ValY].Index+tIndex+2]);
     pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
     end;
  prognT:tIn:=GetAbsH(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256);
  AbsRH: tIn:=GetAbsH(pHot^[DZ511_itRH+42+tIndex]+pHot^[DZ511_itRH+42+tIndex+1]*256,pHot^[DZ511_itRH+21+tIndex]+pHot^[DZ511_itRH+21+tIndex+1]*256);
  DDWP: tIn:=GetDDWP(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256);
  DDWPS: tIn:=Round((GetAbsH(pHot^[DZ511_itTAir+3*3+tIndex]+pHot^[DZ511_itTAir+3*3+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256)-GetAbsH(pHot^[DZ511_itRH+14*3+tIndex]+pHot^[DZ511_itRH+14*3+tIndex+1]*256,pHot^[DZ511_itRH+2*3+tIndex]+pHot^[DZ511_itRH+2*3+tIndex+1]*256))*40*0.757/10);
  TR: tIn:=GetTR(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256,pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256);
  TipTime: pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  else pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
  end;

  case ConstNames[ValY].Tag of
  calcTrans: begin tIn:=GetMaxTrans(pHot^[DZ511_itTAir+tIndex]+pHot^[DZ511_itTAir+tIndex+1]*256,
                          pHot^[DZ511_itRH+tIndex]+pHot^[DZ511_itRH+tIndex+1]*256,
                          pHot^[DZ511_itRH+42+tIndex]+pHot^[DZ511_itRH+42+tIndex+1]*256,
                          pHot^[DZ511_itRH+21+tIndex]+pHot^[DZ511_itRH+21+tIndex+1]*256,
                          Round(((pHot^[DZ511_iMechanic+25+tIndex]+pHot^[DZ511_iMechanic+25+tIndex+1]*256) *
                          Round(Settings_DZ.LoadXYvirt(cOutBlock,ValX,11,Txt)))/100) );
                          pt:=Addr(tIn);
                          //txt := FloatToStr(tIn);
                          //Result:=LoadXYvirt(cOutTxtBlock,ValX,ValY,txt);
                          //Exit;
                          end;
   // транспирация
  calcConsumCO2: begin tIn:=GetCO2Consum(pHot^[DZ511_itRH+15+tIndex]+pHot^[DZ511_itRH+15+tIndex+1]*256,
                          pHot^[DZ511_itRH+9+tIndex]+pHot^[DZ511_itRH+9+tIndex+1]*256,
                          Round(((pHot^[DZ511_iMechanic+25+tIndex]+pHot^[DZ511_iMechanic+25+tIndex+1]*256) *
                          Round(Settings_DZ.LoadXYvirt(cOutBlock,ValX,11,Txt)))/100) );
                          pt:=Addr(tIn);
                          end;
   // потребление СО2

  //DDTRANS:  tIn:=GetMaxTrans(pHot^[DZ_itTAir+tIndex]+pHot^[DZ_itTAir+tIndex+1]*256,pHot^[DZ_itRH+tIndex]+pHot^[DZ_itRH+tIndex+1]*256);
  //DDCONSUM: tIn:=GetCO2Consum(pHot^[DZ_itTAir+tIndex]+pHot^[DZ_itTAir+tIndex+1]*256,pHot^[DZ_itRH+tIndex]+pHot^[DZ_itRH+tIndex+1]*256);
  end;

  Result:=Convers(ConstNames[ValY].Name,pt,
        ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
{  if (ConstNames[ValY].Frm <> ComboBit)
      and (ConstNames[ValY].Frm <> ComboSS)
       and (Result<ConstNames[ValY].Min) or (Result>ConstNames[ValY].Max) then
               begin
               imNum:=imNoRealPC;
               end; }
  if (ValX>0) and (ConstNames[ValY].TipSens=TipGoTask) and (ClimGoTask>0) then
     begin
     tTask:=0.01*GetInt51(Addr(pHot^[DZ511_itDoT+tIndex]));
     tDelt:=(tTask-Result)*(tTask-Result);
     if tDelt>1 then Exit;
     if Result<tTask then tDelt:=-tDelt;
     Result:=tTask+tDelt;
     end;
  if (ValY>=DZ511_StTeplMecan) then
    if (Result>0) then
      imColor := clRed
      else imColor := clGreen;
 end;
end;

function THot_511.TestAlarmSens:Boolean;
var y,x:integer; st:string; st1:string;Color:TColor;
begin
  for y:=1 to CountY do
    begin
    if ConstNames[y].TipSens <> SensorRCS then continue;
    for x:=1 to CountX do
        begin
        LoadXY(cOutBlock,x,y,st);
        if gRCS=0 then continue;
        if gRCS = 1 then
          begin
            //HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Датчик не подключен',clNone,clNone,clRed);      // запись в журнал
            //alarmMessage := alFatal;
            continue;
          end;
        if gRCS > 1 then
          begin
            HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Отказ датчика',clNone,clNone,clRed);      // запись в журнал
            alarmMessage := alFatal;
            continue;
          end;
        //if (gRCS and bMinMaxV)>0 then                  //bMinMaxV=        32; //0x20 bMinMaxU=        64; //0x40 bHiAlarm=        4;  //0x04 bLowAlarm=       8;  //0x08
        //  begin
        //    HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Отказ датчика',clNone,clRed);
        //    alarmMessage := alFatal;
        //    continue;
        //  end;
        if (gRCS and bHiAlarm)>0 then
          begin
            HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Выше допуска',clNone,clFuchsia);
            alarmMessage := alAttention;
            continue;
          end;
        if (gRCS and bLowAlarm)>0 then
          begin
            HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Ниже допуска',clNone,clBlue);
            alarmMessage := alAttention;
            continue;
          end;
        end;
    end;
end;

{function THot_511.TestAlarmSens:Boolean;
var y,x:integer; st:string;
begin
  for y:=1 to CountY do
    begin
    if ConstNames[y].TipSens <> SensorRCS then continue;
    for x:=1 to CountX do
        begin
        LoadXY(cOutBlock,x,y,st);
        if gRCS=0 then continue;
        if (gRCS and bMinMaxV)>0 then                  //bMinMaxV=        32; //0x20 bMinMaxU=        64; //0x40 bHiAlarm=        4;  //0x04 bLowAlarm=       8;  //0x08
          begin HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Отказ датчика',clNone,clFuchsia); continue; end;
        if (gRCS and bHiAlarm)>0 then
          begin HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Выше допуска',clNone,clFuchsia);continue; end;
        if (gRCS and bLowAlarm)>0 then
          begin HotMessage(ParentCtr.CtrName,ParentCtr.GetTextZona(x,y)+' '+ConstNames[y].Name+'-Ниже допуска',clNone,clBlue);continue; end;
        end;
    end;
end;  }

function THot_511.GetExist(x,y:integer):TConfigExist;
begin
  Result:=inherited GetExist(x,y);
//  if Not (ParentCtr.Block[DZ_BLOCK_CALIB] as TCalSens_DZ).GetExistSens(x,y)
//    then Result:=cfExistFalse;
end;

procedure THot_511.PostPortRead;
var pHot:PByteArray;
    i,Minut,tmpCo2:integer;
    SRaise,SSet:TDateTime;
    st,st1:string;
begin
 if Not Ready then Exit;
 if Not Ready then Exit;
// if ((ParentCtr as TFClimat510).FansHot<>nil) then
//    (ParentCtr as TFClimat510).FansHot.BlockSaveAsXML(ParentCtr.GetDataPath+'Fans '+ParentCtr.CtrName+'.xml');

 with ParentCtr as TFClimat501U do
    for i:=1 to 4 do ZonePower[i]:=LoadXY(cOutBlock,1,DZ511_posZonePower,st);;
 with ((ParentCtr as TFClimat501U).NetMeteo) as TNetMeteo_DZ do
    CalcNetRegul;

 pHot:=Adr;
 for i:=0 to DZ511_SumOutMeteo-1 do
   begin
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
   if ((pHot^[DZ511_iSensOut+i*3+2] and (1+16)) = 0)
      then
// если датчик подсоединен и измеряет, то его в общие данные
//--------------------------------------------
      begin
      bNeedMeteo:=true;
      mMeteo[i].UpdateTime:=BlDate;
      mMeteo[i].Val51[0]:=pHot^[DZ511_iSensOut+i*3];
      mMeteo[i].Val51[1]:=pHot^[DZ511_iSensOut+i*3+1];
      if (ParentCtr.IsIPC) then
      begin
        mMeteo[i].Val51[1]:=pHot^[DZ511_iSensOut+i*3];
        mMeteo[i].Val51[0]:=pHot^[DZ511_iSensOut+i*3+1];
      end;
      mMeteo[i].Source:=ParentCtr.CtrName;
      if i=comSun then
          begin
          mMeteo[comSumSun].Val51[0]:=pHot^[DZ511_iSumSun];
          mMeteo[comSumSun].Val51[1]:=pHot^[DZ511_iSumSun+1];
          if (ParentCtr.IsIPC) then
          begin
            mMeteo[comSumSun].Val51[1]:=pHot^[DZ511_iSumSun];
            mMeteo[comSumSun].Val51[0]:=pHot^[DZ511_iSumSun+1];
          end;
          mMeteo[comSumSun].UpdateTime:=BlDate;
          mMeteo[comSumSun].Source:=ParentCtr.CtrName;
//          mMeteo[comMidlSR].IZ[0]:=pHot^[DZ_iMidlSR];
//          mMeteo[comMidlSR].IZ[1]:=pHot^[DZ_iMidlSR+1];
//          mMeteo[comMidlSR].TimeRes:=BlDate;
          end;
      end
//--------------------------------------------
   else
// если датчик не измеряет то из метеоданных
//--------------------------------------------
      begin
      if TestEquDate(mMeteo[i].UpdateTime,Now,10) then //(Now < mMeteo[i].TimeRes) or (Now > (mMeteo[i].TimeRes+5*cMin)) then
            begin
            pHot^[DZ511_iSensOut+i*3]:=mMeteo[i].Val51[0];
            pHot^[DZ511_iSensOut+i*3+1]:=mMeteo[i].Val51[1];
            if (ParentCtr.IsIPC) then
            begin
              pHot^[DZ511_iSensOut+i*3]:=mMeteo[i].Val51[1];
              pHot^[DZ511_iSensOut+i*3+1]:=mMeteo[i].Val51[0];
            end;
//            pHot^[DZ_iSensOut+i*3+2]:=mMeteo[i].RCS;
            if i=comSun then
                begin
                pHot^[DZ511_iSumSun]:=mMeteo[comSumSun].Val51[0];
                pHot^[DZ511_iSumSun+1]:=mMeteo[comSumSun].Val51[1];
                if (ParentCtr.IsIPC) then
                  begin
                  pHot^[DZ511_iSumSun]:=mMeteo[comSumSun].Val51[1];
                  pHot^[DZ511_iSumSun+1]:=mMeteo[comSumSun].Val51[0];
                  end;
                end;
          end;
//!!!!!!--------------------------------------------------------------------------
      end;
// end  из метеоданных
//--------------------------------------------
   end;
 if WindPortThread.Workeed then
      begin
      pHot^[DZ511_iWind+2]:=0;
      pHot^[DZ511_iDirWind+2]:=0;
      pHot^[DZ511_iWind]:=round(WindPortThread.Wind*100) div 256;
      pHot^[DZ511_iWind+1]:=round(WindPortThread.Wind*100) mod 256;
      pHot^[DZ511_iDirWind]:=round(WindPortThread.Direct) div 256;
      pHot^[DZ511_iDirWind+1]:=round(WindPortThread.Direct) mod 256;
      if (ParentCtr.IsIPC) then
        begin
          pHot^[DZ511_iWind]:=round(WindPortThread.Wind*100) mod 256;
          pHot^[DZ511_iWind+1]:=round(WindPortThread.Wind*100) div 256;
          pHot^[DZ511_iDirWind]:=round(WindPortThread.Direct) mod 256;
          pHot^[DZ511_iDirWind+1]:=round(WindPortThread.Direct) div 256;
        end;
      end;
//==================================================
 if (ParentCtr.DataPath <> '') then Exit;
 // рассчет восхода и захода
 //SunRaiseSet(Now,MeteoLong,MeteoWidth,{MeteoZone}4,SRaise,SSet);
 Minut:=MinuteOfTheDay(GlobSunRaise);
 pHot^[DZ511_iVosx]:=Minut div 256;
 pHot^[DZ511_iVosx+1]:=Minut mod 256;
 if (ParentCtr.IsIPC) then
 begin
   pHot^[DZ511_iVosx+1]:=Minut div 256;
   pHot^[DZ511_iVosx]:=Minut mod 256;
 end;
 Minut:=MinuteOfTheDay(GlobSunSet);
 pHot^[DZ511_iVosx+2]:=Minut div 256;
 pHot^[DZ511_iVosx+3]:=Minut mod 256;
 if (ParentCtr.IsIPC) then
 begin
   pHot^[DZ511_iVosx+3]:=Minut div 256;
   pHot^[DZ511_iVosx+2]:=Minut mod 256;
 end;
 pHot^[DZ511_iFeedBack+1]:=0;
 pHot^[DZ511_iFeedBack+2]:=0;
 with FMain.ListCtr do for i:=0 to Tabs.Count-1 do
   if (Tabs.Objects[i] is TFBoilerIPC) then
   begin
     if (Tabs.Objects[i] as TFBoilerIPC).HotPanels.LoadXY(cOutBlock,round((ParentCtr as TFClimat501U).WarmGroupConfig.LoadXY(cOutBlock,1,posLightSource,st1)),1,st)>0 then
       pHot^[DZ511_iFeedBack+1]:=1;
     tmpCo2:=round((ParentCtr as TFClimat501U).WarmGroupConfig.LoadXY(cOutBlock,1,posCO2Src,st1));
     if (tmpCo2>0) then
      if (Tabs.Objects[i] as TFBoilerIPC).HotMech.LoadXY(cOutBlock,1,216+(tmpCo2-1)*2,st)>0 then
        pHot^[DZ511_iFeedBack+2]:=1;

     break;
  end;
 pHot^[0]:=0;

//--- вернуть общие данные ----
// SendByte:=DZ_sizePCSend325;
 FPort.BlockSend(Self,IN_UNIT,0,nil);
//--- восстановить размер передачи по умолчанию
// SendByte:=DZ_cSendTime;
// проверка времени контроллера
 TestCtrTime;
end;

function THot_511.DayTime:Boolean;
var pHot:PByteArray;
    i:integer;
begin
 pHot:=Adr;
 i:=pHot^[DZ511_iTime]+pHot^[DZ511_iTime+1]*256;
 if (i> ((pHot^[DZ511_iVosx]+pHot^[DZ511_iVosx+1]*256)+1))and (i<(pHot^[DZ511_iVosx+2]+pHot^[DZ511_iVosx+3]*256))
  then Result:=True else Result:=False;
end;

procedure THot_511.TestCtrTime;
var pHot:pByteArray;
    PCTime,CtrlTime:word;
begin
// проверка времени контроллера
 if FormFalseTime then Exit;
 pHot:=Adr;
 PCTime:=MinuteOfTheDay(Now);
 CtrlTime:=pHot^[DZ511_iTime]*256+pHot^[DZ511_iTime+1];
 if (ParentCtr.IsIPC) then
  CtrlTime:=pHot^[DZ511_iTime+1]*256+pHot^[DZ511_iTime];
 if (ParentCtr.DataPath <> '')
     or (PCTime<15)
     or (PCTime>(24*60-15))
     or (((CtrlTime+10)>PCTime) and((CtrlTime-10)< PCTime)) then Exit;
 FormFalseTime:=True;
 //'Внимание! Время контроллера "%s" отличается от ПК. Синхронизировать?'
 if FMain.mnAutoSynxTime.Checked or (MessageDlg(Format(ProgMess[iAtten]+ProgMess[321]+ProgMess[322],[ParentCtr.CtrName]),mtWarning,[mbYes, mbNo],0)= mrYes) then
     begin
     pHot^[0]:=$80;
     pHot^[DZ511_iTime+4]:=YearOf(Now)-2000;

     pHot^[DZ511_iTime]:=PCTime div 256;
     pHot^[DZ511_iTime+1]:=PCTime mod 256;
     pHot^[DZ511_iTime+2]:=MonthOfTheYear(Now);
     pHot^[DZ511_iTime+3]:=DayOfTheMonth(Now);
     if (ParentCtr.IsIPC) then
     begin
       pHot^[DZ511_iTime]:=PCTime mod 256;
       pHot^[DZ511_iTime+1]:=PCTime div 256;
       pHot^[DZ511_iTime+2]:=DayOfTheMonth(Now);
       pHot^[DZ511_iTime+3]:=MonthOfTheYear(Now);
     end;

     SendByte:=DZ511_SizeSendTime;
     SendToPort(nil);
     SendByte:=DZ511_sizePCSend403;
     HotMessage(ParentCtr.CtrName,ProgMess[23]);
     end;
  FormFalseTime:=False;
end;

procedure THot_511.SetTree(var Tree:TTreeView);
var vSt:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i,nTemp:word;
    nSens:word;
begin
   with ParentCtr as TFClimat501U,Tree do begin
//    NetMeteo.SetEndRecord;
    Items.BeginUpdate;
    Param.Block:=Self;
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
      for nSens:=DZ511_StCommon to DZ511_EndCommon do begin
        Param.Y:=nSens;
        if GetReadAccess(1,nSens)>=NowAccess then continue;
        LoadXY(cOutBlock,0,nSens,vSt);
        with (Items.AddChildObject(Node1,vSt,Param.Ptr)) do
            begin
            imNum:=TipSensToNumImage(ConstNames[nSens].TipSens);
            ImageIndex:=imNum;
            end;
        end;
    for i:=1 to CountX do
      begin
// Заполнение измерений
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[237]+' '+GetTextZona(i,0),Param.Ptr); //'Измерения '
      Param.X:=i;
      for nSens:=DZ511_StTeplSens to DZ511_EndTeplSens do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
// Заполнение управления
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[238]+' '+GetTextZona(i,0),Param.Ptr);  //'Расчетный климат '
      Param.X:=i;
      for nSens:=DZ511_StTeplCalc to DZ511_EndTeplCalc do begin
             Param.Y:=nSens;
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;

      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[239]+' '+GetTextZona(i,0),Param.Ptr); //'Обогрев '
      Param.X:=i;
      for nSens:=DZ511_StTeplWarm to DZ511_EndTeplWarm do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             nTemp:=TipSensToNumImage(ConstNames[nSens].TipSens);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                nTemp;   //GetState(DefineHot[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;

      Param.Block:=Self;
      //Node1:=Items.AddChildObject(NodeHead,ProgMess[240]+' '+GetTextZona(i,0),Param.Ptr);  //'Вентиляция '
      Node1:=Items.AddChildObject(NodeHead,Messa+' '+GetTextZona(i,0),Param.Ptr);  //'Вентиляция '
      Param.X:=i;
      for nSens:=DZ511_StTeplVent to DZ511_EndTeplVent do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
//      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[314]+' '+GetTextZona(i,0),Param.Ptr);  //'Экраны'
      Param.X:=i;
      for nSens:=DZ511_StTeplScreen to DZ511_EndTeplScreen do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
//      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[241]+' '+GetTextZona(i,0),Param.Ptr);  //'Расчет дополнительных систем'
      Param.X:=i;
      for nSens:=DZ511_StTeplOther to DZ511_EndTeplOther do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
//      if Node1.Count=0 then Items.Delete(Node1);
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[242]+' '+GetTextZona(i,0),Param.Ptr);   //'Механизмы '
      Param.X:=i;
      for nSens:=DZ511_StTeplMecan to DZ511_EndTeplMecan do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;
      end;
   Items.EndUpdate;
//   NodeHead.Expand(False);
   end;
end;
//***********************************************************
//--------------------Блок дополнительных настроек ------
//************************************************************
const
    SetupCountY=11;
    cSSRoof=1;
    cSSWall=2;
    cSKRoof=3;
    cSKWall=4;
    cSKSun=5;
    cSScreen=6;
    cSSqScreen=7;
    cSPLight=8;
    cSKLight=9;
    cSPay=10;
    cSAHU=11;

var XNamesSettings:array [1..1] of TXNames=(
    (Name:'Зона';Frm:None;Ed:'';Index:SetupCountY*8;Cfg:0;Kind:0)
     );

var NameSettings:array [1..SetupCountY] of TNameConst=(
    (Name:'Площадь верхнего остекления';Frm:ffff;Ed:'м2';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:0;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Площадь бокового остекления';Frm:ffff;Ed:'м2';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:8;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Коэфф. теплопровод. крыши';Frm:ffff;Ed:'Вт/м2*°C';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:16;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Коэфф. теплопровод. торца';Frm:ffff;Ed:'Вт/м2*°C';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:24;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Коэфф. пропускания света';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:32;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Коэфф. зашторивания';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:40;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Площадь зашторивания';Frm:ffff;Ed:'м2';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:48;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Установленная мощность ламп';Frm:ffff;Ed:'МВт';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:56;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'КПД ламп';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:64;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Стоимоть ГКал';Frm:ffff;Ed:'руб';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:72;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Мощность установки AHU';Frm:ffff;Ed:'м3/ч/м2';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:80;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER)
    );
    
procedure TSettings_DZ.Init; //override;
begin
     CountX:=DZ_MAX_SUM_ZONE; //ParentCtr.SumZone;
     CountY:=SetupCountY;  //sumWarmCO2Source;
     SizeCol:=SizeOf(Double)*CountY;//
     FullSize:=SizeCol*CountX;
     SendByte:=0; //FullSize;
     ReceiveByte:=0;
     Pref:=ProgMess[605];//'Расчеты';  //
     NameBlock:=ProgMess[606];//'Уставки расчетов';  //ProgMess[198];
     FixRow:=1;
     ConstNames:=Addr(NameSettings[1]);
     if (CountX>1) then
     begin
       XNames:=Addr(XNamesSettings[1]);
       XNamesCount:=1;
     end;  
//     SavingConstNames:=True;
     Translator:=CountY;
end;

function TSettings_DZ.CalcPower(ValX:integer;dTemp,Sun: double):double;
var
  Txt: string;
begin
  Result:=(LoadXY(cOutBlock,ValX,cSSRoof,Txt)*LoadXY(cOutBlock,ValX,cSKRoof,Txt)*dTemp+
  LoadXY(cOutBlock,ValX,cSSWall,Txt)*LoadXY(cOutBlock,ValX,cSKWall,Txt)*dTemp-Sun*LoadXY(cOutBlock,ValX,cSSRoof,Txt)*LoadXY(cOutBlock,ValX,cSKSun,Txt)/100)/1000000;
  if Result<0 then Result:=0;
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
  //WarmGroupSource:array[1..sumWarmCO2Source] of word=
  //      (70,78,86,94,102,138);  //44
  WarmGroupSource511:array[1..sumWarmCO2Source] of word=
        (89,97,105,113,121,149);  //44
  WarmCountY=28;
var NameWarmGroup:array [1..WarmCountY] of TNameConst=(
    (Name:'Зона 1 Контур 1';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 1 Контур 2';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:5;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 1 Контур 3';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:10;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 1 Контур 4';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:15;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 1 Контур 5';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:20;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 2 Контур 1';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:25;Mech:2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 2 Контур 2';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:30;Mech:2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 2 Контур 3';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:35;Mech:2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 2 Контур 4';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:40;Mech:2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 2 Контур 5';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:45;Mech:2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 3 Контур 1';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:50;Mech:3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 3 Контур 2';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:55;Mech:3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 3 Контур 3';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:60;Mech:3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 3 Контур 4';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:65;Mech:3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 3 Контур 5';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:70;Mech:3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 4 Контур 1';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:4;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 4 Контур 2';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:4;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 4 Контур 3';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:4;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 4 Контур 4';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:4;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 4 Контур 5';Frm:SS;Ed:'теплогруппа';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:4;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 1 подача СО2';Frm:SS;Ed:'генератор';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 2 подача СО2';Frm:SS;Ed:'генератор';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 3 подача СО2';Frm:SS;Ed:'генератор';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 4 подача СО2';Frm:SS;Ed:'генератор';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:4;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 1 Досветка';Frm:SS;Ed:'щит';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 2 Досветка';Frm:SS;Ed:'щит';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 3 Досветка';Frm:SS;Ed:'щит';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Зона 4 Досветка';Frm:SS;Ed:'щит';TipSens:TipCalc;Min:0;Max:10;Def:NO_MIN_MAX;
      Index:0;Mech:4;AccessR:RW_GUEST;AccessW:RW_USER)
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
     Pref:=ProgMess[603];//'Источники';  //
     NameBlock:=ProgMess[604];//'Источники тепла и СО2';  //ProgMess[198];
     FixRow:=1;
     ConstNames:=Addr(NameWarmGroup[1]);
     Translator:=CountY;
//     SavingConstNames:=True;
     Translator:=CountY;
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
    //res:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,vZone,WarmGroupSource[Contur],st);
    //if ((ParentCtr as TFClimat501U).FansHot<>nil) then
      res:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,vZone,WarmGroupSource511[Contur],st);
    if res > MaxGroup then begin MaxGroup:=res; vTxt:=st; end;
    end;
  Result:=true;
end;

procedure TWarmGroupConfig.FindCO2Max(vZone,vBoil:word; var MaxCO2:double; var vTxt:string);
var res:double;
    st:string;
begin
    if vBoil <> round(LoadXYvirt(cOutBlock,1,posCO2Source+vZone-1,st)) then Exit; //continue;
    //res:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,vZone,WarmGroupSource[numCO2Source],st);
    //if ((ParentCtr as TFClimat501U).FansHot<>nil) then
    res:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,vZone,WarmGroupSource511[numCO2Source],st);
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
//--------------------Инициализация блока параметры-----------
//************************************************************

procedure TControl_DZ.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
//     if (CountX<1) or (CountX>5) then CountX:=1;
     CountY:=DZ511_SumParUpr;
     SizeCol:=DZ511_SizeParUpr;
     FullSize:=SizeCol*CountX+5;
     SendByte:=FullSize;
     Pref:=ProgMess[198];    //'Параметры';
     NameBlock:=ProgMess[199];    //'Параметры управления';
     FixRow:=1;
     ConstNames:=Addr(DZ511_NameParUpr[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
     if (CountX>1) then
     begin
        XNames:=Addr(XNamesParsC510[1]);
        XNamesCount:=1;
     end;
end;


procedure TControl_DZ511.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
//     if (CountX<1) or (CountX>5) then CountX:=1;
     CountY:=DZ511_SumParUpr;
     SizeCol:=DZ511_SizeParUpr;
     FullSize:=SizeCol*CountX+5;
     SendByte:=FullSize;
     Pref:=ProgMess[198];    //'Параметры';
     NameBlock:=ProgMess[199];    //'Параметры управления';
     FixRow:=1;
     ConstNames:=Addr(DZ511_NameParUpr[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
     if (CountX>1) then
     begin
        XNames:=Addr(XNamesParsC511[1]);
        XNamesCount:=1;
     end;
end;


procedure TConfig_DZ.Init;//override;
begin
     CountY:=DZ511_SumConfig;
     CountX:=ParentCtr.SumZone;
     SizeCol:=CountY;
//     FullSize:=SizeCol*DZ_MAX_SUM_ZONE;
//     if (ParentCtr.IsIPC=true) then
     FullSize:=SizeCol*CountX*2;
     SendByte:=FullSize;
     Pref:=ProgMess[193];       //'Конфигурация';
     NameBlock:=ProgMess[194];  //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(NameConfiguration[1]);
     Translator:=CountY;
     if (CountX>1) then
     begin
       XNames:=Addr(XNamesConfigC510[1]);
       XNamesCount:=1;
     end;

//     SavingConstNames:=True;
end;


procedure TConfig_DZ511.Init;//override;
begin
     CountY:=DZ511_SumConfig;
     CountX:=ParentCtr.SumZone;
     SizeCol:=CountY;
//     FullSize:=SizeCol*DZ_MAX_SUM_ZONE;
//     if (ParentCtr.IsIPC=true) then
     FullSize:=SizeCol*CountX*2;
     SendByte:=FullSize;
     Pref:=ProgMess[193];       //'Конфигурация';
     NameBlock:=ProgMess[194];  //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(NameConfiguration511[1]);
     Translator:=CountY;
     if (CountX>1) then
     begin
       XNames:=Addr(XNamesConfigC511[1]);
       XNamesCount:=1;
     end;

//     SavingConstNames:=True;
end;

{***********************************************************
--------------------Инициализация блока настройка-----------
************************************************************}

procedure TTune_DZ.Init; //override;
begin
     CountX:=1;
     CountY:=DZ511_SumParTune;
     SizeCol:=DZ511_EndTune;
     FullSize:=SizeCol*CountX+5;
     SendByte:=FullSize;
     Pref:=ProgMess[229];   //'Настройка';
     NameBlock:=ProgMess[230];   //'Точная настройка';
     FixRow:=1;
     ConstNames:=Addr(DZ511_NameTuneClimate[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
end;

{***********************************************************
--------------------Инициализация блока настройка 511-----------
************************************************************}

procedure TTune_DZ511.Init; //override;
begin
     CountX:=1;
     CountY:=DZ511_SumParTune;
     SizeCol:=DZ511_EndTune;
     FullSize:=SizeCol*CountX+5;
     SendByte:=FullSize;
     Pref:=ProgMess[229];   //'Настройка';
     NameBlock:=ProgMess[230];   //'Точная настройка';
     FixRow:=1;
     ConstNames:=Addr(DZ511_NameTuneClimate[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
end;


{***********************************************************
--------------------Инициализация блока механизмы-----------
************************************************************}
procedure TParMec_DZ.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
     CountY:=DZ_SumVisualRegs*DZ511_SumParsMech;
     SizeCol:=DZ511_SizeParMech*DZ_SumRegs;
     FullSize:=SizeCol*DZ_MAX_SUM_ZONE;
     SendByte:=FullSize;
     Pref:=ProgMess[227];         //'Механизмы';
     NameBlock:=ProgMess[228];    //'Параметры механизмов';
     FixRow:=1;
     ConstNames:=Addr(NameMechC510[1]);
     Translator:=0;//CountY;
     if (CountX>1) then
     begin
       XNames:=Addr(XNamesMechC510[1]);
       XNamesCount:=1;
     end;
     Translator:=CountY;
end;

procedure TParMec_DZ511.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
     CountY:=(DZ511_SumRegs-4)*DZ511_SumParsMech;
     SizeCol:=DZ511_SizeParMech*DZ511_SumRegs;
     FullSize:=SizeCol*DZ_MAX_SUM_ZONE;
     SendByte:=FullSize;
     Pref:=ProgMess[227];         //'Механизмы';
     NameBlock:=ProgMess[228];    //'Параметры механизмов';
     FixRow:=1;
     //DZ511_cDefineHot
     ConstNames:=Addr(NameMechC511[1]);
     Translator:=0;//CountY;
     if (CountX>1) then
     begin
       XNames:=Addr(XNamesMechC511[1]);
       XNamesCount:=1;
     end;
     Translator:=CountY;
end;


{***********************************************************
--------------------Инициализация блока ручное--------------
************************************************************}

procedure THandMode_DZ.Init;//override;
begin
     CountY:=DZ511_SumTeplMecan;
     CountX:=ParentCtr.SumZone*2;
     SizeCol:=DZ511_sizeHand;
     FullSize:=ParentCtr.Block[0].FullSize;
     StartSend:=DZ511_iMechanic;
     SendByte:=DZ511_sizeHand;       //*DZ_MAX_SUM_ZONE;
     Pref:=ProgMess[226];         //'Ручное';
     NameBlock:=ProgMess[213];    //'Ручное управление';
     FixRow:=1;
     ConstNames:=Addr(DZ511_cDefineHot[DZ511_StTeplMecan]); //Addr(NameConfigOutputs[1]);
     Sort := srHowHot;
     EnableXML:=False;
     ActHandZone:=0;
     Translator:=CountY;
end;

function THandMode_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pModeOutputs:PByteArray;
    Mode1_Hand0, nZone:Byte;

begin
     pModeOutputs:=Adr;
     if (ValX=0) and (ValY=0) then
        begin
        if (ActHandZone > ParentCtr.SumZone) or (ActHandZone < 1)
         then ActHandZone:=1;
        StartSend:=DZ511_iTepl+DZ511_iMechanic+DZ511_sizeTepl*(ActHandZone-1);    //DZ_iTepl+
        CopyMemory(Addr(DZ_CopyHand),Addr(PByteArray(Adr)^[StartSend]),SendByte);
        end;
     Result:=0;
     Mode1_Hand0:=ValX mod 2;
     nZone:=(ValX+1) div 2;
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(nZone,ValY);
        if ValX > 0 then
         if Mode1_Hand0=1 then Txt:=Txt+' '+ProgMess[250]  //'Состояние'
          else Txt:=Txt+' '+ProgMess[249];   //'Установить';
        Exit;
        end;
      pModeOutputs:=Addr(pModeOutputs^[DZ511_iTepl+DZ511_sizeTepl*(nZone-1)+ConstNames[ValY].Index]);
      if (Mode1_Hand0=0) and (ActHandZone=nZone)
        then pModeOutputs:=Addr(DZ_CopyHand[ConstNames[ValY].Index - DZ511_iMechanic]);
      GetExist(nZone,ValY);
      Result:=Convers(ConstNames[ValY].Name,
            pModeOutputs,ConstNames[ValY].Frm,vInBlock,nZone,ValY,Txt,ConstNames[ValY].Ed);
      if nZone > 0 then if Result>0 then imColor:=clRed else imColor:=clGreen;
      if Mode1_Hand0 >0 then AccessW:=RW_NOEDIT;
end;

function THandMode_DZ.SendToPort(EndMethod: TEndPortMethod):Boolean;
begin
  if (ActHandZone > ParentCtr.SumZone) or (ActHandZone < 1) then Exit;
  CopyMemory(Addr(PByteArray(Adr)^[StartSend]),Addr(DZ_CopyHand),SendByte);
  Result:=inherited SendToPort(EndMethod);
end;


{***********************************************************
--------------------Инициализация блока ручное 511--------------
************************************************************}

procedure THandMode_DZ511.Init;//override;
begin
     CountY:=DZ511_SumTeplMecan;
     CountX:=ParentCtr.SumZone*2;
     SizeCol:=DZ511_sizeHand;
     FullSize:=ParentCtr.Block[0].FullSize;
     StartSend:=DZ511_iMechanic;                        
     SendByte:=DZ511_sizeHand;       //*DZ_MAX_SUM_ZONE;
     Pref:=ProgMess[226];         //'Ручное';
     NameBlock:=ProgMess[213];    //'Ручное управление';
     FixRow:=1;
     ConstNames:=Addr(DZ511_cDefineHot[DZ511_StTeplMecan]); //Addr(NameConfigOutputs[1]);
     Sort := srHowHot;
     EnableXML:=False;
     ActHandZone:=0;
     Translator:=CountY;
end;



function THandMode_DZ511.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pModeOutputs:PByteArray;
    Mode1_Hand0, nZone:Byte;
begin
     pModeOutputs:=Adr;
     //if (ActHandZone <> (ValX div 2)) then
     //  SendToPort(nil);
       //MessageDlg("Запишите блок данных в контроллер перед переходом в другую зону",


     ActHandZone := ValX div 2;
     Mode1_Hand0:=ValX mod 2;
     nZone:=(ValX+1) div 2;


     if (ValX=0) and (ValY=0) then
       begin
         if (ActHandZone > ParentCtr.SumZone) or (ActHandZone < 1)
         then ActHandZone:=1;
         //StartSend:=DZ511_iTepl+DZ511_iMechanic+DZ511_sizeTepl*(ActHandZone-1);
         //CopyMemory(Addr(DZ511_CopyHand),Addr(PByteArray(Adr)^[StartSend]),SendByte);
       end;

     StartSend:=DZ511_iTepl+DZ511_iMechanic+DZ511_sizeTepl*(ActHandZone-1);
     CopyMemory(Addr(DZ511_CopyHand),Addr(PByteArray(Adr)^[StartSend]),SendByte);

     Result:=0;

//     Mode1_Hand0:=ValX mod 2;
//     nZone:=(ValX+1) div 2;
//StratMess
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(nZone,ValY);
        if ValX > 0 then
         //if Mode1_Hand0=1 then Txt:=Txt+' '+ProgMess[250]  //'Состояние'
         if Mode1_Hand0 = 0 then Txt:=Txt+' '+ProgMess[250]  //'Состояние'
          else Txt:=Txt+' '+ProgMess[249];   //'Установить';
        Exit;
        end;
      pModeOutputs:=Addr(pModeOutputs^[DZ511_iTepl+DZ511_sizeTepl*(nZone-1)+ConstNames[ValY].Index]);
      if (Mode1_Hand0 = 0) and (ActHandZone=nZone)
        then pModeOutputs:=Addr(DZ511_CopyHand[ConstNames[ValY].Index - DZ511_iMechanic]);
      GetExist(nZone,ValY);
      Result:=Convers(ConstNames[ValY].Name,
            pModeOutputs,ConstNames[ValY].Frm,vInBlock,nZone,ValY,Txt,ConstNames[ValY].Ed);
      if nZone > 0 then if Result>0 then imColor:=clRed else imColor:=clGreen;
      if Mode1_Hand0 = 0 then AccessW:=RW_NOEDIT;
end;


function THandMode_DZ511.SendToPort(EndMethod: TEndPortMethod):Boolean;
begin
  if (ActHandZone > ParentCtr.SumZone) or (ActHandZone < 1) then Exit;
  CopyMemory(Addr(PByteArray(Adr)^[StartSend]),Addr(DZ511_CopyHand),SendByte);
  Result:=inherited SendToPort(EndMethod);
end;

{function THandMode_DZ.SetAny(x,y:WORD;var Any:TAny):Integer;
begin
 FHandClim.Exec(ParentCtr);
 Result:=0;
end;
}
{***********************************************************
--------------------Инициализация блока задание-----------
************************************************************}
type r1Timer_DZ=array[0..DZ_sizeTimer-1] of Byte;
type rTimer_DZ=array[1..DZ_NumTimer] of r1Timer_DZ;

procedure TTimer_DZ.Init;//override;
begin
     CountX:=DZ_NumTimer;
     CountY:=DZ_SumTimer;
     SizeCol:=SizeOf(r1Timer_DZ);
     FullSize:=SizeOf(rTimer_DZ);
     SendByte:=FullSize;
     Pref:=ProgMess[224];      //'Задание';
     NameBlock:=ProgMess[225];  //  'Задание микроклимата';
     FixRow:=1;
     ConstNames:=Addr(DZ_NameTimer[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
     if (ParentCtr.IdentCtr[idModific] and 1) = 0 then
       ConstNames[3].AccessR := RW_INVISIBLE;
end;

function loadXYstartType(pTimerArray:PByteArray; SizeCol:integer; ValX:Integer):string;
var
     SumZone, nZone, dbTypeStart:integer;
     sunRise, sunSet: integer;
     dbStart:word;
     tempTime:integer;
begin
  sunRise := MinuteOfTheDay(GlobSunRaise);
  sunSet := MinuteOfTheDay(GlobSunSet);
  dbTypeStart := pTimerArray^[(ValX-1)*SizeCol+DZ511_iStartType];
  dbStart:=(pTimerArray^[(ValX-1)*SizeCol+DZ511_iTimeStart+1]*256+pTimerArray^[(ValX-1)*SizeCol+DZ511_iTimeStart]);
  case dbTypeStart of
    0:  //START_OFF
    begin
      //if dbTypeStart > 0 then
        tempTime := dbStart;
    end;
    1:  //START_BEFORE_SUNSET
    begin
      if sunSet >= dbStart then
        tempTime := sunSet - dbStart;
    end;
    2:  //START_AFTER_SUNSET
    begin
      if sunSet + dbStart > 1440 then
        tempTime := (sunSet + dbStart) mod 1440
      else
        tempTime := sunSet + dbStart;
    end;
    3:  //START_BEFORE_SUNRISE
    begin
      if sunRise >= dbStart then
        tempTime := sunRise - dbStart;
    end;
    4:  //START_AFTER_SUNRISE
    begin
      if sunRise + dbStart > 1440 then
        tempTime := (sunRise + dbStart) mod 1440
      else
        tempTime := sunRise + dbStart;
    end;
  end;
  Result := TimeToStr(tempTime*cMin);
end;

{***********************************************************
--------------------Загрузка значений блока таймер-------------
************************************************************}
function TTimer_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  pTimer:^rTimer_DZ;
     pTimerArray:PByteArray;
     tIn:integer;
     NewRH:integer;
     i:integer;
     SumZone, nZone, dbTypeStart:integer;
     sunRise, sunSet: integer;
     dbStart:word;
     time,time1:string;
     tempTime:integer;
begin
  SumZone:=ParentCtr.SumZone;
  pTimer:=Adr;
  pTimerArray:=Adr;
  if ValY=0 then
    begin
    if ValX=0 then Txt:=ParentCtr.CtrName
    else  Txt:=ProgMess[224]+' '+IntToStr(ValX);
    Exit;
    end;
  if ValX > 0 then
     begin
     ConfigExist:=GetRowExist(Self,ValY);//+GetExist(pTimer^[ValX][DZ_iTimerZone],ValY);
     GridCellColor:=GetZoneColor(pTimer^[ValX][DZ511_iTimerZone],ValY);
     end;
  if ConstNames[ValY].Index = -1 then
  begin
    if ValX = 0 then
      Txt := ConstNames[ValY].Name
    else
      Txt := loadXYstartType(pTimerArray, SizeCol, ValX);
    Exit;
  end;
  case ConstNames[ValY].TipSens of
    DDWP:
        begin
          tIn:=GetDDWP(pTimer^[ValX][DZ511_iTaskTemper+1]*256+pTimer^[ValX][DZ511_iTaskTemper],
                  pTimer^[ValX][DZ511_iTaskHumin]*100);
        Result:=Convers(ConstNames[ValY].Name,
         Addr(tIn),SSpS0,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
        if(ValX>0) and (vInBlock=cInBlock) then
             begin
             NewRH:=GetRH_DDWP(pTimer^[ValX][DZ511_iTaskTemper+1]*256+pTimer^[ValX][DZ511_iTaskTemper],
                          tIn) div 100;
             if (NewRH > 0) and (NewRH <> pTimer^[ValX][DZ511_iTaskHumin]) then
                pTimer^[ValX][DZ511_iTaskHumin]:=NewRH;
             end;
        end
    else
    Result:=Convers(ConstNames[ValY].Name,
      Addr(pTimer^[ValX][ConstNames[ValY].Index]),ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
    end;
end;

const tmSt=1;tmEnd=2;valDt=3;LstTm=1;LstDt=2;Sum=3;Lg=4;
//type TStatZ=array [1..DZ_NumTimer,1..4,1..Lg] of double;
type tsk1=record tmSt,tmEnd,valDt:Double; end;
type TStatZ=array [0..DZ_NumTimer,1..4] of tsk1;

procedure InitZ(var StatZ:TStatZ);
var i:integer;
begin
  for i:=1 to 4 do StatZ[0,i].tmSt:=0;
end;

function InsZ(var StatZ:TStatZ;vZ:integer;tsk:tsk1):Integer;
var i,cnt,fnd:integer;
begin
  cnt:=round(StatZ[0,vZ].tmSt);
  StatZ[0,vZ].tmSt:=cnt+1;
  fnd:=0;
  for i:=1 to cnt do
      if tsk.tmSt < StatZ[i,vZ].tmSt then begin fnd:=i; break; end;
  if fnd=0 then
      begin
      StatZ[cnt+1,vZ]:=tsk;
      Exit;
      end;
  for i:=cnt downto fnd do StatZ[i+1,vZ]:=StatZ[i,vZ];
  StatZ[fnd,vZ]:=tsk;
end;

function GetZ(var StatZ:TStatZ;vZ:integer;Gradient:integer):string;
var i,cnt:integer;
  sm,lg,tmLast,valLast,dd,ddd:double;
begin
  cnt:=round(StatZ[0,vZ].tmSt);
  if cnt<1 then begin Result:='нет зад'; Exit; end;
  sm:=0; lg:=0;
  for i:=1 to cnt do
      begin
      if sm<>0  then
          begin
          dd:=StatZ[i,vZ].tmSt-tmLast;
          if dd <= 0 then begin Result:='пересеч'; ActionMes:=ProgMess[209]; Exit; end;
          ddd:=(StatZ[i,vZ].valDt-valLast)*cMin*60/dd;
          if (ddd > Gradient) or (ddd < -Gradient)  then
             begin ActionMes:=Format(ProgMess[210],[Gradient]); Result:='>'+IntToStr(Gradient)+'° час'; Exit; end;
          sm:=sm+(StatZ[i,vZ].valDt+valLast)*dd/2;
          lg:=lg+dd;
          end;
      dd:=StatZ[i,vZ].tmEnd-StatZ[i,vZ].tmSt;
      valLast:=StatZ[i,vZ].valDt;
      tmLast:=StatZ[i,vZ].tmEnd;
      sm:=sm+valLast*dd;
      lg:=lg+dd;
      end;
  dd:=StatZ[1,vZ].tmSt-tmLast;
  if dd<0 then dd:=dd+24*60*cMin;
  sm:=sm+(StatZ[1,vZ].valDt+valLast)*dd/2;
  lg:=lg+dd;
  if lg<>0 then Result:=Format('%f C',[sm/lg]) else Result:='err';
end;

// ***************************************************************************************************

function startTypeGetStartTime(time:Double; startType:integer):Double;
var
  sunRise, sunSet,tempTime:Double;
  pTimer:PByteArray;
  pHot:PByteArray;
begin
  sunRise := MinuteOfTheDay(GlobSunRaise);
  sunSet := MinuteOfTheDay(GlobSunSet);
  case startType of
    0:  //START_OFF
      begin
        Result := time;
      end;
    1:  //START_BEFORE_SUNSET
      begin
        tempTime := (sunSet * cMin) - time;
        if tempTime <= cMin then
          Result := cMin
        else
          Result := tempTime;
      end;
    2:  //START_AFTER_SUNSET
      begin
        tempTime := (sunSet * cMin) + time;
        if tempTime > (24*60*cMin) then
          Result := tempTime - (24*60*cMin)
        else
          Result := tempTime;
      end;
    3:  //START_BEFORE_SUNRISE
      begin
        tempTime := (sunRise * cMin) - time;
        if tempTime <= cMin then
          Result := cMin
        else
          Result := tempTime;
      end;
    4:  //START_AFTER_SUNRISE
      begin
        tempTime := (sunRise * cMin) + time;
        if tempTime > (24*60*cMin) then
          Result := tempTime - (24*60*cMin)
        else
          Result := tempTime;
      end;
  end;
end;

function TTimer_DZ.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
var ChartBl:TChart;
    iX,iY,yG,nZone,SumZone,ActiveZone:integer;
    dbSunrise,dbStart,dbStartNext,dbEnd,dbDan,Midl,LongMidl{,tsTemper},dd:Double;
    dbTypeStart,dbTypeStartNext:integer;
    pTimer:PByteArray;
    pHot:PByteArray;
    StatZ:TStatZ; tsk:tsk1;
    st:string;
    Minut, sunRise, sunSet:Double;

    TempStart, TempEnd: Double;
begin
 ChartBl:=Any.Ptr;
 SumZone:=ParentCtr.SumZone;
// for iX:=1 to SumZone do begin StatZ[iX,Sum]:=0; StatZ[iX,Lg]:=0; end;
 Result:=1;
 ActionMes:='';
 pTimer:=Adr;
 if (Col<1) or(Col > CountX) then Col:=1;
 if (Row<4) or(Row >=CountY) then Row:=4;
 with ChartBl do
  begin
  ActiveZone:=pTimer^[(Col-1)*SizeCol+DZ511_iTimerZone];
  if (ActiveZone < 1) or (ActiveZone > SumZone) then ActiveZone:=-1;
  iY:=0;
  for iX:=1 to CountX do
      begin
      nZone:=pTimer^[(iX-1)*SizeCol+DZ511_iTimerZone];
      if (nZone<=0) or (nZone > SumZone) then continue;
      dbTypeStart:=pTimer^[(iX-1)*SizeCol+DZ511_iStartType];
      dbTypeStartNext:=pTimer^[(iX)*SizeCol+DZ511_iStartType];
      dbStartNext:=(pTimer^[(iX)*SizeCol+DZ511_iTimeStart+1]*256+pTimer^[(iX)*SizeCol+DZ511_iTimeStart])*cMin;
      dbStart:=(pTimer^[(iX-1)*SizeCol+DZ511_iTimeStart+1]*256+pTimer^[(iX-1)*SizeCol+DZ511_iTimeStart])*cMin;
      dbEnd:=dbStart+cMin;
      dbDan:=LoadXY(cOutBlock,iX,Row,st);
      tsk.valDt:=(pTimer^[(iX-1)*SizeCol+DZ511_iTaskTemper+1]*256+pTimer^[(iX-1)*SizeCol+DZ511_iTaskTemper])/100;
      if (dbStart=dbEnd) or (tsk.valDt=0) then continue;
      if dbEnd=0 then dbEnd:=24*60*cMin;
//--------------------------------------------
      tsk.tmSt:=dbStart;
      tsk.tmEnd:=dbEnd;
      if dbEnd<dbStart then
          begin
          tsk.tmEnd:=24*60*cMin;
          InsZ(StatZ,nZone,tsk);
          tsk.tmSt:=0;
          tsk.tmEnd:=dbEnd;
          end;
      InsZ(StatZ,nZone,tsk);
//--------------------------------------------

      if nZone = ActiveZone then
        with (Series[ChartBl.Tag]as TFastLineSeries) do
           begin
           // ************************************************************************************************************************** !!!!!!!!!!!!!!!! *************
           TempStart := startTypeGetStartTime(dbStart, dbTypeStart);
           AddXY(TempStart,dbDan,'',clTeeColor);
           dbEnd:=TempStart+cMin;
           AddXY(dbEnd,dbDan,'',clTeeColor);


           //AddXY(dbStart,dbDan,'',clTeeColor);
           //AddXY(dbEnd,dbDan,'',clTeeColor);
           if dbStart>dbEnd then
              begin
                AddXY(0,dbDan,'',clTeeColor);
                AddXY(24*60*cMin,dbDan,'',clTeeColor);
              end;
           end;

      with (Series[0]as TGanttSeries) do
          begin
          if dbStart>dbEnd then
              begin
                yG:=AddGantt(0,dbEnd,iX*3,Format(ProgMess[235],[iX]));
                ValueColor[yG]:=GetColorZone(nZone,1);
                dbEnd:=24*60*cMin;
              end;

          TempStart := startTypeGetStartTime(dbStart, dbTypeStart);
          dbEnd:=TempStart+cMin;
          yG:=AddGantt(TempStart,dbEnd,iX*3,Format(ProgMess[235],[iX]));
          ValueColor[yG]:=GetColorZone(nZone,1);
          end;
      end;
//---------------- end loop --------
//==================================
  with FSetGrid do
      begin
      ZName.Caption:='Прогноз по зонам';
      ZonesCB.Visible:=false;
      end;
  with FSetGrid.StatGrid do
      begin
      Rows:=SumZone;
      for iX:=1 to SumZone do
          begin
          Cell[1,iX]:='Зона'+IntToStr(iX)+' средняя Т';
          try
           Cell[2,iX]:=GetZ(StatZ,iX,ClimMaxGradient);//Format('%f C',[GetZ(StatZ,iX)])
          except Cell[2,iX]:='Error'; end;
          RowColor[iX]:=GetColorZone(iX,1);
          end;
      end;
  FSetGrid.StatGrid.Visible:=true;
//------------------------------------
  if (Series[0]as TGanttSeries).Count<1 then
      begin
      Result:=erNullProg;
      ActionMes:=ProgMess[212];     //'Нет заданий микроклимата!'
      Exit;
      end;
//счет среднего и проверка градиента температуры
   Midl:=0;
   LongMidl:=0;
   with (Series[ChartBl.Tag]as TFastLineSeries) do
    if Count >= 2 then
     begin
     if (XValues.Value[Count-1] > XValues.Value[0]) then
            begin
            dbDan:=YValues.Value[0]-XValues.Value[0]*(YValues.Value[Count-1]-YValues.Value[0])
              /(XValues.Value[Count-1]-24*60*cMin-XValues.Value[0]);
            AddXY(0,dbDan,'',clTeeColor);
            AddXY(24*60*cMin,dbDan,'',clTeeColor);
            end;
     for iX:=0 to count-2 do
        begin
        Midl:=Midl+(YValues.Value[iX]+YValues.Value[iX+1])*(XValues.Value[iX+1]-XValues.Value[iX]);
        LongMidl:=LongMidl+(XValues.Value[iX+1]-XValues.Value[iX]);
{        dbDan:=(YValues.Value[iX]-YValues.Value[iX+1])*cMin*60/((XValues.Value[iX]-XValues.Value[iX+1]));
        if (Row=4) and ((dbDan>ClimMaxGradient) or (dbDan<-ClimMaxGradient))  then
             begin
             Result:=erGradTemp;
             ActionMes:=Format(ProgMess[210],[ClimMaxGradient]);
             Exit;
             end; }
        end;
//     iY:=LastValue;
     end;
  end;
  if ActionMes<>'' then begin Result:=erTask; end;
  if (ActiveZone > 0) and (LongMidl > 0) and (ActionMes='') then
      begin
      LoadXY(cOutBlock,Col,1,st);
      ActionMes:=st+' '+StrBefoSpec('(',ConstNames[Row].Name)
        +Format(' Среднее=%.2f'+ConstNames[Row].Ed,[Midl/(2*LongMidl)]);  //ProgMess[211]+'= '
      end else FSetGrid.ZName.Caption:='';
end;


{***********************************************************
--------------------Инициализация блока задание-----------
************************************************************}
type r1Timer_DZ511=array[0..DZ511_sizeTimer-1] of Byte;
type rTimer_DZ511=array[1..DZ511_NumTimer] of r1Timer_DZ511;

procedure TTimer_DZ511.Init;//override;
begin
     CountX:=DZ511_NumTimer;
     CountY:=DZ511_SumTimer;
     SizeCol:=SizeOf(r1Timer_DZ511);
     FullSize:=SizeOf(rTimer_DZ511);
     SendByte:=FullSize;
     Pref:=ProgMess[224];      //'Задание';
     NameBlock:=ProgMess[225];  //  'Задание микроклимата';
     FixRow:=1;
     ConstNames:=Addr(DZ511_NameTimer[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
end;
{***********************************************************
--------------------Загрузка значений блока таймер-------------
************************************************************}
function TTimer_DZ511.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  pTimer:^rTimer_DZ;
     tIn:integer;
     NewRH:integer;
begin
  pTimer:=Adr;
  if ValY=0 then
    begin
    if ValX=0 then Txt:=ParentCtr.CtrName
    else  Txt:=ProgMess[224]+' '+IntToStr(ValX);
    Exit;
    end;
  if ValX > 0 then
     begin
     ConfigExist:=GetRowExist(Self,ValY);//+GetExist(pTimer^[ValX][DZ_iTimerZone],ValY);
     GridCellColor:=GetZoneColor(pTimer^[ValX][DZ511_iTimerZone],ValY);
     end;
  case ConstNames[ValY].TipSens of
    DDWP:
        begin
          tIn:=GetDDWP(pTimer^[ValX][DZ511_iTaskTemper+1]*256+pTimer^[ValX][DZ511_iTaskTemper],
                  pTimer^[ValX][DZ511_iTaskHumin]*100);
//                  pTimer^[ValX][DZ511_iTaskHumin]*256+pTimer^[ValX][DZ511_iTaskHumin+1]));
        Result:=Convers(ConstNames[ValY].Name,
         Addr(tIn),SSpS0,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
        if(ValX>0) and (vInBlock=cInBlock) then
             begin
             NewRH:=GetRH_DDWP(pTimer^[ValX][DZ511_iTaskTemper+1]*256+pTimer^[ValX][DZ511_iTaskTemper],
                          tIn) div 100;
             if (NewRH > 0) and (NewRH <> pTimer^[ValX][DZ511_iTaskHumin]) then
                pTimer^[ValX][DZ511_iTaskHumin]:=NewRH;

{             SetInInt(tInInt,
               GetRH_DDWP(pTimer^[ValX][DZ511_iTaskTemper]*256+pTimer^[ValX][DZ511_iTaskTemper+1],
                          GetInInt(tInInt)));
             if (tInInt[0]>0) and (tInInt[0]<>pTimer^[ValX][DZ511_iTaskHumin]) then
                begin
                pTimer^[ValX][DZ511_iTaskHumin]:=tInInt[0];
                pTimer^[ValX][DZ511_iTaskHumin+1]:=tInInt[1];
                end;}
             end;
        end
    else
    Result:=Convers(ConstNames[ValY].Name,
      Addr(pTimer^[ValX][ConstNames[ValY].Index]),ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
    end;
end;

function TTimer_DZ511.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
var ChartBl:TChart;
    iX,iY,yG,nZone,SumZone,ActiveZone:integer;
    dbStart,dbEnd,dbDan,Midl,LongMidl{,tsTemper},dd:Double;
    pTimer:PByteArray;
    StatZ:TStatZ;  tsk:tsk1;
    st:string;
begin
 ChartBl:=Any.Ptr;
 SumZone:=ParentCtr.SumZone;
// for iX:=1 to SumZone do begin StatZ[iX,Sum]:=0; StatZ[iX,Lg]:=0; end;
 Result:=1;
 ActionMes:='';
 pTimer:=Adr;
 if (Col<1) or(Col > CountX) then Col:=1;
 if (Row<4) or(Row >=CountY) then Row:=4;
 with ChartBl do
  begin
  ActiveZone:=pTimer^[(Col-1)*SizeCol+DZ511_iTimerZone];
  if (ActiveZone < 1) or (ActiveZone > SumZone) then ActiveZone:=-1;
  iY:=0;
  for iX:=1 to CountX do
      begin
      nZone:=pTimer^[(iX-1)*SizeCol+DZ511_iTimerZone];
      if (nZone<=0) or (nZone > SumZone) then continue;
      dbStart:=(pTimer^[(iX-1)*SizeCol+DZ511_iTimeStart+1]*256+pTimer^[(iX-1)*SizeCol+DZ511_iTimeStart])*cMin;
      dbEnd:=dbStart+cMin;
      dbDan:=LoadXY(cOutBlock,iX,Row,st);
      tsk.valDt:=(pTimer^[(iX-1)*SizeCol+DZ511_iTaskTemper+1]*256+pTimer^[(iX-1)*SizeCol+DZ511_iTaskTemper])/100;
      if (dbStart=dbEnd) or (tsk.valDt=0) then continue;
      if dbEnd=0 then dbEnd:=24*60*cMin;
//--------------------------------------------
      tsk.tmSt:=dbStart;
      tsk.tmEnd:=dbEnd;
      if dbEnd<dbStart then
          begin
          tsk.tmEnd:=24*60*cMin;
          InsZ(StatZ,nZone,tsk);
          tsk.tmSt:=0;
          tsk.tmEnd:=dbEnd;
          end;
      InsZ(StatZ,nZone,tsk);
//--------------------------------------------

      if nZone = ActiveZone then
        with (Series[ChartBl.Tag]as TFastLineSeries) do
           begin
           AddXY(dbStart,dbDan,'',clTeeColor);
           AddXY(dbEnd,dbDan,'',clTeeColor);
           if dbStart>dbEnd then
              begin
              AddXY(0,dbDan,'',clTeeColor);
              AddXY(24*60*cMin,dbDan,'',clTeeColor);
              end;
           end;

      with (Series[0]as TGanttSeries) do
          begin
          if dbStart>dbEnd then
              begin
              yG:=AddGantt(0,dbEnd,iX*3,Format(ProgMess[235],[iX]));
              ValueColor[yG]:=GetColorZone(nZone,1);
              dbEnd:=24*60*cMin;
              end;
          yG:=AddGantt(dbStart,dbEnd,iX*3,Format(ProgMess[235],[iX]));
          ValueColor[yG]:=GetColorZone(nZone,1);
          end;
      end;
//---------------- end loop --------
//==================================
  with FSetGrid do
      begin
      ZName.Caption:='Прогноз по зонам';
      ZonesCB.Visible:=false;
      end;
  with FSetGrid.StatGrid do
      begin
      Rows:=SumZone;
      for iX:=1 to SumZone do
          begin
          Cell[1,iX]:='Зона'+IntToStr(iX)+' средняя Т';
          try
           Cell[2,iX]:=GetZ(StatZ,iX,ClimMaxGradient);//Format('%f C',[GetZ(StatZ,iX)])
          except Cell[2,iX]:='Error'; end;
          RowColor[iX]:=GetColorZone(iX,1);
          end;
      end;
  FSetGrid.StatGrid.Visible:=true;
//------------------------------------
  if (Series[0]as TGanttSeries).Count<1 then
      begin
      Result:=erNullProg;
      ActionMes:=ProgMess[212];     //'Нет заданий микроклимата!'
      Exit;
      end;
//счет среднего и проверка градиента температуры
   Midl:=0;
   LongMidl:=0;
   with (Series[ChartBl.Tag]as TFastLineSeries) do
    if Count >= 2 then
     begin
     if (XValues.Value[Count-1] > XValues.Value[0]) then
            begin
            dbDan:=YValues.Value[0]-XValues.Value[0]*(YValues.Value[Count-1]-YValues.Value[0])
              /(XValues.Value[Count-1]-24*60*cMin-XValues.Value[0]);
            AddXY(0,dbDan,'',clTeeColor);
            AddXY(24*60*cMin,dbDan,'',clTeeColor);
            end;
     for iX:=0 to count-2 do
        begin
        Midl:=Midl+(YValues.Value[iX]+YValues.Value[iX+1])*(XValues.Value[iX+1]-XValues.Value[iX]);
        LongMidl:=LongMidl+(XValues.Value[iX+1]-XValues.Value[iX]);
{        dbDan:=(YValues.Value[iX]-YValues.Value[iX+1])*cMin*60/((XValues.Value[iX]-XValues.Value[iX+1]));
        if (Row=4) and ((dbDan>ClimMaxGradient) or (dbDan<-ClimMaxGradient))  then
             begin
             Result:=erGradTemp;
             ActionMes:=Format(ProgMess[210],[ClimMaxGradient]);
             Exit;
             end; }
        end;
//     iY:=LastValue;
     end;
  end;
  if ActionMes<>'' then begin Result:=erTask; end;
  if (ActiveZone > 0) and (LongMidl > 0) and (ActionMes='') then
      begin
      LoadXY(cOutBlock,Col,1,st);
      ActionMes:=st+' '+StrBefoSpec('(',ConstNames[Row].Name)
        +Format(' Среднее=%.2f'+ConstNames[Row].Ed,[Midl/(2*LongMidl)]);  //ProgMess[211]+'= '
      end else FSetGrid.ZName.Caption:='';
end;


//***************************************************************
//begin =============== Блок метеоданных по сети-----------------
//***************************************************************

const  mStartNum: array [0..DZ_SUM_REGUL-1] of Byte=(21,22,26,27,31,57);
var RealPozY:word;

type ConfVal=record
     NumInHot:Byte;
     Task:InInt;
     Kof:array [0..SUM_KOF-1] of double;
     end;
   TConfMeteo=array [0..DZ_SUM_REGUL-1] of ConfVal;

{procedure TNetMeteo_DZ.StartNum;
var i:integer;
    pConfMeteo:^TConfMeteo;
begin
  pConfMeteo:=Adr;
  for i:=0 to DZ_SUM_REGUL-1 do
   pConfMeteo^[i].NumInHot:=mStartNum[i];
end; }

procedure TNetMeteo_DZ.Init;//override;
begin
     CountY:=DZ_COUNT_Y_NET;  //CountYNetMeteo;
     CountX:=X_KOF+3;
     SizeCol:=SizeOf(TConfMeteo);
     FullSize:=SizeOf(TConfMeteo);
     SendByte:=0;
     Pref:=ProgMess[282];   //'Сеть';
     NameBlock:=ProgMess[283];   //'Данные по сети';
     FixRow:=1;
     ConstNames:=ParentCtr.Block[0].ConstNames; //Addr(DZ_cDefineHot[1]);
//     CountConstNames:=CountY-1; //DZ_SUM_METEO+1;
     EnableXML:=False;
     Translator:=CountY;
end;

function TNetMeteo_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pHot:PByteArray;
    pConfMeteo:^TConfMeteo;
begin
     Result:=0;
     imNum:=imNoConnect;
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
     if (ValY>=DZ_Y_START_REGUL) and (pConfMeteo^[ValY-DZ_Y_START_REGUL].NumInHot > 0 )
        then RealPozY:=pConfMeteo^[ValY-DZ_Y_START_REGUL].NumInHot
        else RealPozY:=ValY;
     try
     case ValX of
       X_NAME: begin
            Result:=0;
            Txt:=ConstNames[RealPozY].Name;
            AccessR:=ConstNames[RealPozY].AccessR;
            end;
       X_MAX: begin
            pHot:=Addr(pHot^[ConstNames[ValY].Index]);
            Result:=Convers(ConstNames[RealPozY].Name,
              pHot,ConstNames[RealPozY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[RealPozY].Ed);
            if (ConstNames[RealPozY].TipSens = TipSensor) or (ConstNames[RealPozY].TipSens = SensorRCS)
            then
               ImNum:=RCSBitToImage(pHot^[2]);
            AccessW:=RW_NOEDIT;
            if Result=0 then imColor:=clRed else imColor:=clGreen;
            if ConstNames[RealPozY].Ed = '°' then
                Txt:=Txt+' '+GetWindDirect(Result,PByteArray(ParentCtr.Block[0].Adr)^[DZ511_iSensOut+6]
                + PByteArray(ParentCtr.Block[0].Adr)^[DZ511_iSensOut+7]); //[pHot^[-3]+pHot^[-2]);
            end;
        X_POZ_Y: if (ValY>=DZ_Y_START_REGUL) then
            begin
            Result:=Convers('',
            Addr(pConfMeteo^[ValY-DZ_Y_START_REGUL].NumInHot),SS,vInBlock,ValX,ValY,Txt,'');
            if round(Result) > ParentCtr.Block[0].CountY then
              begin Result:=0; Txt:='0'; end;
            imNum:=imNoConnect;
            end;
        X_SOURCE:  begin
            Txt:=Source[ValY];
            AccessW:=RW_NOEDIT;
            end;
        X_TASK: if (ValY >= DZ_Y_START_REGUL) then
            Result:=Convers('',
            Addr(pConfMeteo^[ValY-DZ_Y_START_REGUL].Task),ConstNames[RealPozY].Frm
            ,vInBlock,ValX,ValY,Txt,ConstNames[RealPozY].Ed);
        X_STATE_REG:  if (ValY>=DZ_Y_START_REGUL) then
                  begin
                  Result:=Convers('',
                    Addr(pHot^[DZ511_iPulRegul+ValY-DZ_Y_START_REGUL]),SS,vInBlock,ValX,ValY,Txt,'%');
                  AccessW:=RW_NOEDIT;
                  end;
        X_N_REGUL:  if (ValY>=DZ_Y_START_REGUL) then
                  begin
                  Result:=0;
                  Txt:=ProgMess[290]+' '+IntToStr(ValY-DZ_Y_START_REGUL+1);  //'Регулятор '
                  AccessW:=RW_NOEDIT;
                  end;
        X_KOF..X_KOF+3:  if (ValY >= DZ_Y_START_REGUL) then
                  begin
                  if vInBlock=cInBlock then
                    pConfMeteo^[ValY-DZ_Y_START_REGUL].Kof[ValX-X_KOF]:=StrToFloat(Txt);
                  Result:=pConfMeteo^[ValY-DZ_Y_START_REGUL].Kof[ValX-X_KOF];
                  Txt:=FloatToStr(Result);
                  end;
        end;
        except
          Txt:='?';
          Result:=0;
          imNum:=imNoConnect;
        end;
      if (ValY < DZ_Y_START_REGUL) and ((ValX = X_POZ_Y) or (ValX  > X_SOURCE))
           then begin Txt:=''; imNum:=imNoConnect; end;
end;

function TNetMeteo_DZ.DoOper(nRegul:Byte;Mes,Task:Double):string;
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

procedure TNetMeteo_DZ.SetRegul;
var y:word;
    vSt:string;
begin
    for y:=DZ_Y_START_REGUL to CountY do
      begin
      vSt:=DoOper(y-DZ_Y_START_REGUL
               ,LoadXY(cOutBlock,X_MAX,y,vSt)
               ,LoadXY(cOutBlock,X_TASK,y,vSt));
      LoadXY(cInBlock,X_STATE_REG,y,vSt);
      end;
end;

procedure TNetMeteo_DZ.CalcNetRegul;
begin
//      SetEndRecord;
      CalcMax;
      UpdateGridBlock(Self);
end;

procedure TNetMeteo_DZ.CalcMax;
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
  iMax:=0;
  TxtMax:='0';
  for x:=1 to SumClimatClients do
      begin
      with ClimatClient[x] do
      vData:=Ctr.Block[0].LoadXY(cOutBlock,Zone,DZ511_posZoneMaxWater,Txt);
      if vData > MaxData then
                begin
                MaxData:=vData;
                iMax:=x;
                TxtMax:=Txt;
                end;
      end;
  ParentCtr.Block[0].LoadXY(cInBlock,1,DZ511_posAbsMaxWater,TxtMax);
//=============== end поиск максимума воды ==========

  for y:=1 to CountY do
    begin
    ClientsY:=y;
    if (y>=DZ_Y_START_REGUL) then ClientsY:=pConfMeteo^[y-DZ_Y_START_REGUL].NumInHot;
    if ClientsY=0 then ClientsY:=y;
    MaxData:=-22222222;
    iMax:=0;
    for x:=1 to SumClimatClients do
      begin
      RealPozY:=ClientsY;       //Если блок подставит датчик, то изменит RealPozY
      with ClimatClient[x] do
      vData:=Ctr.Block[0].LoadXY(cOutBlock,Zone,ClientsY,Txt);
      if (RealPozY = ClientsY)  //Если блок не подставил другой датчик, то
          and RealSensor(imNum)
          and (Txt <> '')
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
        TxtMax:='~';
        Source[y]:='~'; //ProgMess[52];    //'~';   нет дн
        end
    else
        begin
        with ClimatClient[iMax] do
          begin
// записывать можно либо только при найденных данных, либо всегда
//          LoadXY(cInBlock,X_MAX,y,TxtMax);     // запись максимума в Нот если нашли данные
          Source[y]:=Ctr.CtrName+' '+Ctr.GetTextZona(Zone,ClientsY);
          end;
        end;
// записывать можно либо только при найденных данных, либо всегда
    LoadXY(cInBlock,X_MAX,y,TxtMax);   // запись максимума в Нот всегда
    end;
  SetRegul;
end;

//---------- END СОСТОЯНИЕ C-403 ------------------
//---------------------------- ГРАНИЦЫ C-403 ------------------

type eALev=array[0..3] of InInt;

type mLev=array[0..0] of eALev;

procedure TLev_DZ.Init;
begin
  CountX := ParentCtr.SumZone;
  CountY := DZ511_SumVisibleInSens*DZ_SumParsLevs;
  SizeCol := 8*DZ511_SumInSens;//sizeFullCalibr;  //eMAX_SUM_SENS * sizeCalibrSensor;
  FullSize := SizeCol*DZ_MAX_SUM_ZONE;
  SendByte := FullSize;
  Pref:=ProgMess[275];   //'Допуски';
  NameBlock:=ProgMess[276];   //'Контрольные допуски';
  EnableXML:=False;
  ConstNames:=Addr(NameInSensorsLevsC511[1]);
  if (CountX>1) then
  begin
   XNames:=Addr(XNamesLevsC511[1]);
   XNamesCount:=1;
  end;
  Translator:=CountY;
end;



procedure TCalInSens_DZ.Init;//override;
begin
  CountX := ParentCtr.SumZone;
  CountY := DZ511_SumVisibleInSens*DZ511_SumParsSens;
  SizeCol := 12*DZ511_SumInSens;//sizeFullCalibr;  //eMAX_SUM_SENS * sizeCalibrSensor;
  FullSize := SizeCol*DZ_MAX_SUM_ZONE;
  SendByte := FullSize;
  Pref :=ProgMess[610];   // 'Калибровки тепл';
  NameBlock :=ProgMess[609];   // 'Калибровка тепличных датчиков';
  ConstNames:=Addr(NameInSensorsC510[1]);
  if (CountX>1) then
  begin
    XNames:=Addr(XNamesSensC510[1]);
    XNamesCount:=1;
  end;
  Translator:=CountY;
end;

procedure TCalInSens_DZ511.Init;//override;
begin
  CountX := ParentCtr.SumZone;
  CountY := DZ511_SumInSens*DZ511_SumParsSens;
  SizeCol := 12*DZ511_SumInSens;//sizeFullCalibr;  //eMAX_SUM_SENS * sizeCalibrSensor;
  FullSize := SizeCol*DZ_MAX_SUM_ZONE;
  SendByte := FullSize;
  Pref :=ProgMess[610];   // 'Калибровки тепл';
  NameBlock :=ProgMess[609];   // 'Калибровка тепличных датчиков';
  ConstNames:=Addr(NameInSensorsC511[1]);
  if (CountX>1) then
  begin
    XNames:=Addr(XNamesSensC511[1]);
    XNamesCount:=1;
  end;
  Translator:=CountY;
end;

procedure TCalOutSens_DZ.Init;//override;
begin
  CountX := 1;
  CountY := DZ511_SumOutSens*DZ511_SumParsSens;
  SizeCol := 12*DZ511_SumOutSens;//sizeFullCalibr;  //eMAX_SUM_SENS * sizeCalibrSensor;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref :=ProgMess[607];   //  'Калибровки метео';
  NameBlock :=ProgMess[608];   //  'Калибровка метео датчиков';
  ConstNames:=Addr(NameOutSensorsC510[1]);
  XNames:=Addr(XNamesOutSensC510[1]);
  XNamesCount:=1;
  Translator:=CountY;
end;


//*********************************************************************
//************** END ДАТЧИКИ  ************************
//*********************************************************************

//--------- START ARXIV PC ---------------
const
    cSumListVal=7;
    cSumListVal511=9;

    ListValues:array[1..cSumListVal] of word= (1,13,21,22,39,41,46);

    ListValues511:array[1..cSumListVal511] of word= (1,13,31,36,58,27,60,66,67);

    cSumStat=11;
    cCountNameAchivePC=cSumStat+4+2;
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
  SumTrans:Double;
  SumCO2:Double;

//  StatVal:array[0..1] of Double; //TStatVal;
  StatValues:array[1..4,1..cSumListVal511,1..cSumStat] of Double; //TStatVal;
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
    (Name:'Суммарная интенсивность транспирации';Frm:SSSS;Ed:'г/ч/м2';TipSens:TipCalc;Min:0;Max:0;
      Index:8;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Суммарное потребление CO2';Frm:SSSS;Ed:'м3/ч/м2';TipSens:TipCalc;Min:0;Max:0;
      Index:10;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),

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

procedure TBlArxPC_DZ.Init;//override;
begin
     CountX:=ParentCtr.SumZone;
//     SumListVal:=cSumListVal;
//     CountComY:=SumStat+4;        //Сколько строк не выводить в зоне Б
     CountY:=cSumListVal511*cSumStat+4;
     SizeCol:=CountY*SizeOf(Double);
     FullSize:=SizeOf(TPCArx);  //SizeCol*CountX;
     SendByte:=0;
     FixRow:=1;
     Pref:=ProgMess[262];  //'Архив ПК';
     NameBlock:=ProgMess[263];  //'Архивные данные в ПК';
     ConstNames:=Addr(NameAchivePC[1]);
     CountConstNames:=cCountNameAchivePC;
     Translator:=CountY; //CountConstNames;
end;

function TBlArxPC_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pPCArx:^TPCArx;
    nVal,nStat:word;
//    vDate:TDateTime;
begin
  pPCArx:=Adr;
  Result:=ValX;
  if (ValY=0) and (ValX=0) then CalcAllArxPC(Now);
{  if (ValY<=CountComY)and(ValY>3) and (ValX>1) then
  begin
    Txt:='';
    Exit;
  end; }
  case ValY of
    0:  begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        end;
    1:  begin
        Result:=BlDate;
        if ValX=0 then Txt:=ConstNames[ValY].Name //'Дата'
         else Txt:=FormatDateTime(ShortDateFormat,BlDate);
        end;
    2:  begin
        Result:=pPCArx^.Tic;
        if ValX=0 then  Txt:=ConstNames[ValY].Name //Txt:='Длительность регистрации (мин)'
        else Txt:=FormatDateTime('hh:mm',Result*cMin)+ConstNames[ValY].Ed;
        end;
    3:  begin
        Result:=pPCArx^.TicDay;
        if ValX=0 then  Txt:=ConstNames[ValY].Name //Txt:='Днем регистрации (мин)'
        else Txt:=FormatDateTime('hh:mm',Result*cMin)+ConstNames[ValY].Ed;
//        else Txt:=IntToStr(pPCArx^.TicDay);
        end;
    4:  begin
        if ValX=0 then  Txt:=ConstNames[ValY].Name //Txt:='Накопленное солнце'
        else Txt:=IntToStr(pPCArx^.SumSun)+ConstNames[ValY].Ed;
        Result:=pPCArx^.SumSun;
        end;
    5:  begin
        if ValX=0 then  Txt:=ConstNames[ValY].Name // Транспирация
        else Txt:=FloatToStr(pPCArx^.SumTrans)+ConstNames[ValY].Ed;
        Result:=pPCArx^.SumTrans;
        end;
    6:  begin
        if ValX=0 then  Txt:=ConstNames[ValY].Name // Потребление СО2
        else Txt:=FloatToStr(pPCArx^.SumCO2)+ConstNames[ValY].Ed;
        Result:=pPCArx^.SumCO2;
        end
  else
  begin
  ValY:=ValY-7;  //5
  nVal:=ValY div cSumStat+1;
  nStat:=ValY mod cSumStat+1;
  if ValX=0 then
        begin
        if ((ParentCtr as TFClimat501U).FansHot<>nil) then
          Result:=ParentCtr.Block[0].LoadXY(cOutBlock,0,ListValues511[nVal],Txt)
        else
          Result:=ParentCtr.Block[0].LoadXY(cOutBlock,0,ListValues[nVal],Txt);
        Txt:=Txt+' '+ConstNames[nStat+6].Name; //4
        end
  else
        begin
        Result:=pPCArx^.StatValues[ValX][nVal][nStat];
        if Result = 0 then Txt:='' else
          begin
          case ConstNames[nStat+6].Frm of   // 4
            SSpS0: Txt:=Format('%3.1f',[Result]);
            SShSSm:
              begin
              Txt:=FormatDateTime('hh:mm',Result);
              Result:=Frac(Result)*24;
              end;
            end;
          end;
        end;
  end;
  end;
  if ValX>0 then
  begin
    AccessR:=RW_USER;
    AccessW:=RW_NOEDIT;
  end;
end;

const ClimSelParSum=14;
ClimSelPar:array[1..ClimSelParSum] of word=
(4,5,6,7,16,17,18,27,38,49,61,62,72,73);

{procedure TBlArxPC_DZ.ArchivToWeb;
var WebStr:TWebStr;
    tx:string;
    x,y,yn,zone:integer; Res:double;
begin
  if Not Ready or Not FMain.mnArchServerAPL.Checked then Exit;
  LoadXY(cOutBlock,0,0,tx);
  WebStr:='';
  for x:=1 to CountX do
    for yn:=1 to ClimSelParSum do
     begin
     y:=ClimSelPar[yn];
     Res:=LoadXY(cOutBlock,x,y,tx);
     if (Res<>0) and (tx<>'') and (ConfigExist<>cfExistFalse) then       //cfExistTrue
        WebStr:=WebStr+Format(WebSep+'%2.2d%3.3d%3.3d',[ParentCtr.CtrTip,x,y])+WebSep+FloatToStr(Res)+WebSep;
     end;
  SaveWebStr(ParentCtr.CtrName,WebStr,BlDate);
end;
}
function TBlArxPC_DZ.CalcAllArxPC(StartDate:TDateTime):Boolean;
var  Save_Cursor:TCursor;
begin
 if (Int(WriteArchivDate) = Int(Now)) { or (ParentCtr.DataPath<>'')} then  Exit;
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

function TBlArxPC_DZ.CalcDayArxPC(ArxDate:TDateTime):Boolean;
var
 pPCArx:^TPCArx;
 nVal,nZone:integer;  //,iStatVal
 vVal:Double;
 st:string;
 NowDay:Boolean;
 tempTrans:Double;
 tempCO2:Double;
begin
pPCArx:=Adr;
Result:=False;
with ParentCtr do
  begin
  if not Block[0].LoadFileCycle(ArxDate) then Exit;       // есть файл данных на на заданный день ArxDate
  Result:=True;
  Ready:=True;
  ClearData;
  BlDate:=int(ArxDate)+1-cMin;
  for nZone:=1 to CountX do
  for nVal:=1 to cSumListVal511 do
      begin
//      iStatVal:=i*SumStat;
      pPCArx^.StatValues[nZone][nVal][iMaxDay]:=-1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMaxDay]:=0;
      pPCArx^.StatValues[nZone][nVal][iMaxNight]:=-1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMaxNight]:=0;
      pPCArx^.StatValues[nZone][nVal][iMinDay]:=1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMinDay]:=0;
      pPCArx^.StatValues[nZone][nVal][iMinNight]:=1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMinNight]:=0;
      pPCArx^.SumTrans := 0;
      pPCArx^.SumCO2  := 0;
      end;
  repeat
    if (Block[0] is THot_DZ) then
        NowDay:=(Block[0] as THot_DZ).DayTime;
    if (Block[0] is THot_511) then
        NowDay:=(Block[0] as THot_511).DayTime;
    if NowDay then pPCArx^.TicDay:=pPCArx^.TicDay+1;
    if NowDay and (HourOf(Block[0].BlDate) > 12) then
        begin
          vVal:=Block[0].LoadXY(cOutBlock,1,DZ511_SSumSun,st);
          if round(vVal) > pPCArx^.SumSun then pPCArx^.SumSun:=round(vVal);
        end;
    pPCArx^.Tic:=pPCArx^.Tic+1;
    for nZone:=1 to CountX do
    for nVal:=1 to cSumListVal511 do
      begin
      if Block[0].LoadXY(cOutBlock,1,DZ511_CO2task,st) > 0 then
        NowDay := true;

//      iStatVal:=i*SumStat;
      if ((ParentCtr as TFClimat501U).FansHot<>nil) then
      begin
        vVal:=Block[0].LoadXY(cOutBlock,nZone,ListValues511[nVal],st);
        tempTrans :=Block[0].LoadXY(cOutBlock,1,DZ511_SumTrans,st);
        tempCO2 :=Block[0].LoadXY(cOutBlock,1,DZ511_SumCO2,st);
      end
      else
        vVal:=Block[0].LoadXY(cOutBlock,nZone,ListValues[nVal],st);
      pPCArx^.StatValues[nZone][nVal][iMidl]:=pPCArx^.StatValues[nZone][nVal][iMidl]+vVal;
      pPCArx^.SumTrans := pPCArx^.SumTrans + tempTrans;
      pPCArx^.SumCO2 := pPCArx^.SumCO2 + tempCO2;
      if NowDay then
          begin
          pPCArx^.StatValues[nZone][nVal][iMidlDay]:=pPCArx^.StatValues[nZone][nVal][iMidlDay]+vVal;
          if (vVal <> 0) and (vVal>pPCArx^.StatValues[nZone][nVal][iMaxDay]) then
              begin
              pPCArx^.StatValues[nZone][nVal][iMaxDay]:=vVal;
              pPCArx^.StatValues[nZone][nVal][iTimeMaxDay]:=Block[0].BlDate;
              end;
          if (vVal <> 0) and (vVal<pPCArx^.StatValues[nZone][nVal][iMinDay]) then
              begin
              pPCArx^.StatValues[nZone][nVal][iMinDay]:=vVal;
              pPCArx^.StatValues[nZone][nVal][iTimeMinDay]:=Block[0].BlDate;
              end;
          end
      else begin
          pPCArx^.StatValues[nZone][nVal][iMidlNight]:=pPCArx^.StatValues[nZone][nVal][iMidlNight]+vVal;
          if (vVal <> 0) and (vVal>pPCArx^.StatValues[nZone][nVal][iMaxNight]) then
              begin
              pPCArx^.StatValues[nZone][nVal][iMaxNight]:=vVal;
              pPCArx^.StatValues[nZone][nVal][iTimeMaxNight]:=Block[0].BlDate;
              end;
          if (vVal <> 0) and (vVal<pPCArx^.StatValues[nZone][nVal][iMinNight]) then
              begin
              pPCArx^.StatValues[nZone][nVal][iMinNight]:=vVal;
              pPCArx^.StatValues[nZone][nVal][iTimeMinNight]:=Block[0].BlDate;
              end;

          end;
      end;
  until Not Block[0].LoadFileCycle(ArxDate);
  for nZone:=1 to CountX do
  for nVal:=1 to cSumListVal511 do
    begin
    //      iStatVal:=i*SumStat;
    if(pPCArx^.StatValues[nZone][nVal][iMaxDay]=-1000) then pPCArx^.StatValues[nZone][nVal][iMaxDay]:=0;
    if(pPCArx^.StatValues[nZone][nVal][iMaxNight]=-1000) then pPCArx^.StatValues[nZone][nVal][iMaxNight]:=0;
    if(pPCArx^.StatValues[nZone][nVal][iMinDay]=1000) then  pPCArx^.StatValues[nZone][nVal][iMinDay]:=0;
    if(pPCArx^.StatValues[nZone][nVal][iMinNight]=1000) then  pPCArx^.StatValues[nZone][nVal][iMinNight]:=0;

    if pPCArx^.Tic>0 then
    begin
        pPCArx^.StatValues[nZone][nVal][iMidl]:=pPCArx^.StatValues[nZone][nVal][iMidl]/pPCArx^.Tic;
        pPCArx^.SumTrans := pPCArx^.SumTrans * pPCArx^.Tic;
        pPCArx^.SumCO2 := pPCArx^.SumCO2 * pPCArx^.Tic;
    end;
    if pPCArx^.TicDay>0 then
        pPCArx^.StatValues[nZone][nVal][iMidlDay]:=pPCArx^.StatValues[nZone][nVal][iMidlDay]/pPCArx^.TicDay;
    if (pPCArx^.Tic-pPCArx^.TicDay)>0 then
        pPCArx^.StatValues[nZone][nVal][iMidlNight]:=pPCArx^.StatValues[nZone][nVal][iMidlNight]/(pPCArx^.Tic-pPCArx^.TicDay);
    end;
  end;
end;

//--------- END ARXIV PC ---------------



//--------- START NEW ARXIV PC ---------------
type
TNewArxValues=record
    Num:word;
    Tip:word;
end;

const
    cSumListValNewArx=20;
    iNMidl=1;
    iNMidlDay=2;   iNMidlNight=3;
    iNMaxDay=4;    iNTimeMaxDay=5;
    iNMinDay=6;    iNTimeMinDay=7;
    iNMaxNight=8;  iNTimeMaxNight=9;
    iNMinNight=10; iNTimeMinNight=11;
    iNMax=12;      iNMin=13;
    iNMaxTime=14;  iNMinTime=15;
    iNSummary=16;  iNRandom=17;

    ListVal:array[1..cSumListValNewArx] of TNewArxValues= (

    (Num:1;Tip:iNMidl),
    (Num:2;Tip:iNMidl),
//6
    (Num:12;Tip:iNMax),
    (Num:21;Tip:iNMidl),
    (Num:22;Tip:iNMidl),
    (Num:27;Tip:iNMidl),
    (Num:39;Tip:iNMidl),
//11
    (Num:41;Tip:iNMidl),
    (Num:44;Tip:iNMidl),
    (Num:21;Tip:iNMidlDay),
    (Num:21;Tip:iNMidlNight),
    (Num:57;Tip:iNMin),
//16
    (Num:57;Tip:iNMax),
    (Num:49;Tip:iNMax),
    (Num:131;Tip:iNMax),
    (Num:186;Tip:iNSummary),
    (Num:162;Tip:iNSummary),
    (Num:131;Tip:iNSummary),
    (Num:131;Tip:iNSummary),
    (Num:132;Tip:iNSummary)
    );

    cCountNameNewAchivePC=29;

    arx_CommStart=1;
    ARX_MidlOut=4;
    ARX_MidlSun=5;
    ARX_SumSun =6;
    arx_CommEnd=6;
    ARX_MidlT=7;
    ARX_MidlHum=8;
    ARX_MidlCO2=9;
    ARX_MidlTaskTemp=10;
    ARX_MidlTaskHum=11;
    ARX_MidlTaskCO2=12;

    ARX_MidlTDay=13;
    ARX_MidlTNight=14;
    ARX_MinDelta=15;
    ARX_MaxDelta=16;
    ARX_MaxPipe=17;
    ARX_MaxPower=18;
    ARX_Light=19;
    ARX_Screen=20;
    ARX_CountHeat=21;
    ARX_CalcHeat=22;
    ARX_OutHeat=23;
    ARX_SunHeat=24;
    ARX_LightHeat=25;
    ARX_ScreenHeat=26;
    ARX_CalcTotal=27;
    ARX_K=28;
    ARX_PAY=29;
type
TPCNewArx=record
  Tic:word;
  TicDay:word;
  SumSun:word;
//  StatVal:array[0..1] of Double; //TStatVal;
  StatVal:array[1..9,1..cSumListValNewArx] of Double; //TStatVal;
  CountVal:array[1..9,1..cSumListValNewArx] of Double; //TStatVal;
  end;

var NameNewAchivePC:array [1..cCountNameNewAchivePC] of TNameConst=(
//1
    (Name:'Дата';Frm:SSsSS;Ed:'';TipSens:TipText;Min:0;Max:0;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Длительность регистрации ';Frm:SShSSm_12;Ed:'ч:м';TipSens:TipText;Min:0;Max:0;
      Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Днем регистрации ';Frm:SSpSS;Ed:'ч:м';TipSens:TipText;Min:0;Max:0;
      Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя наружняя температура';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:8;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя интенсивность';Frm:ffff;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:0;
      Index:16;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//6
    (Name:'Накопленное солнце';Frm:ffff;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:0;
      Index:24;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя температура воздуха';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:32;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя влажность';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;
      Index:40;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя концентрация СО2';Frm:ffff;Ed:'ppm/10';TipSens:TipCalc;Min:0;Max:0;
      Index:48;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя заданная температура';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:56;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//11
    (Name:'Средняя заданная влажность';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;
      Index:64;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя заданная концентрация СО2';Frm:ffff;Ed:'ppm/10';TipSens:TipCalc;Min:0;Max:0;
      Index:72;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя температура воздуха днем';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:80;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя температура воздуха ночью';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:88;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Минимум рассогласования температуры';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:96;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//16
    (Name:'Максимум рассогласования температуры';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:104;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Максимум теплоносителя';Frm:ffff;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
      Index:112;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Максимум потребления';Frm:ffff;Ed:'МВт';TipSens:TipCalc;Min:0;Max:0;
      Index:120;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Включено освещение';Frm:ffff;Ed:'мин';TipSens:TipCalc;Min:0;Max:0;
      Index:128;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Закрыт экран';Frm:ffff;Ed:'мин';TipSens:TipCalc;Min:0;Max:0;
      Index:136;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Потребленная энергия (по счетчику)';Frm:ffff;Ed:'ГКал';TipSens:TipCalc;Min:0;Max:0;
      Index:144;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//22
    (Name:'Потребленная энергия (по контурам)';Frm:ffff;Ed:'ГКал';TipSens:TipCalc;Min:0;Max:0;
      Index:152;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Итого расчетное потребление';Frm:ffff;Ed:'ГКал';TipSens:TipCalc;Min:0;Max:0;
      Index:160;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Приход энергии от солнца';Frm:ffff;Ed:'ГКал';TipSens:TipCalc;Min:0;Max:0;
      Index:168;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Приход энергии от света';Frm:ffff;Ed:'ГКал';TipSens:TipCalc;Min:0;Max:0;
      Index:176;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Экономия энергии экраном';Frm:ffff;Ed:'ГКал';TipSens:TipCalc;Min:0;Max:0;
      Index:184;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//27
    (Name:'Итого потребление с экраном';Frm:ffff;Ed:'ГКал';TipSens:TipCalc;Min:0;Max:0;
      Index:192;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'КПД отопления';Frm:ffff;Ed:'%';TipSens:TipCalc;Min:0;Max:0;
      Index:200;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Итого затрат на обогрев';Frm:ffff;Ed:'руб';TipSens:TipCalc;Min:0;Max:0;
      Index:208;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)


    );



procedure TNewArxPC_DZ.Init;//override;
begin
     CountX:=ParentCtr.SumZone+1;
//     SumListVal:=cSumListVal;
//     CountComY:=SumStat+4;        //Сколько строк не выводить в зоне Б
     CountY:=cCountNameNewAchivePC;
     SizeCol:=CountY*SizeOf(Double);
     FullSize:=SizeOf(TPCNewArx);  //SizeCol*CountX;
     SendByte:=0;
     FixRow:=1;
     //Pref:='Энергетика';  //'Архив ПК';
     //NameBlock:='Архив энергетики';  //'Архивные данные в ПК';
     Pref:=ProgMess[619];
     NameBlock:=ProgMess[620];
     ConstNames:=Addr(NameNewAchivePC[1]);
     CountConstNames:=cCountNameNewAchivePC;
     //Translator:=CountConstNames;
     Translator:=CountY;
     
end;

function TNewArxPC_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pPCArx:^TPCNewArx;
    nVal,nStat:word;
//    vDate:TDateTime;
    vTxt:string;
begin
  pPCArx:=Adr;
  Result:=ValX;
  if (ValY=0) and (ValX=0) then CalcAllArxPC(Now);
{  if (ValY<=CountComY)and(ValY>3) and (ValX>1) then
  begin
    Txt:='';
    Exit;
  end; }
  if ValX=0 then
  begin
    Txt:=ConstNames[ValY].Name;
    exit;
  end;
  case ValY of
    0:  begin
        if (ValX=CountX) then
          Txt:='Сумма'
        else
          Txt:=ParentCtr.GetTextZona(ValX,ValY);

        end;
    1:  begin
        Result:=BlDate;
        Txt:=FormatDateTime(ShortDateFormat,BlDate);
        end;
    2:  begin
        Result:=pPCArx^.Tic;
        Txt:=FormatDateTime('hh:mm',Result*cMin)+ConstNames[ValY].Ed;
        end;
    3:  begin
        Result:=pPCArx^.TicDay;
        Txt:=FormatDateTime('hh:mm',Result*cMin)+ConstNames[ValY].Ed;
        end;
    ARX_Light,ARX_Screen:
        begin
        Result:=pPCArx^.StatVal[ValX][ValY-3]/100;
        Txt:=Format('%4.0f',[Result]);
        Txt:=Txt+ConstNames[ValY].Ed;
        if (ValX=CountX) then
          Txt:='';

        end;
    ARX_CountHeat,ARX_OutHeat,ARX_CalcHeat:
        begin
        Result:=pPCArx^.StatVal[ValX][ValY-3]/69.76744;
        Txt:=Format('%3.3f',[Result]);
        Txt:=Txt+ConstNames[ValY].Ed;
        end;
    ARX_SunHeat:  begin
        if (ValX=CountX) then
        begin
           Result:=0;
           for nVal:=1 to ParentCtr.SumZone do
             Result:=Result+LoadXYvirt(cOutBlock,nVal,ARX_SunHeat,Txt);
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end
        else
        with (ParentCtr as TFClimat501U) do begin
          Result:=LoadXYvirt(cOutBlock,1,ARX_SumSun,Txt)*Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSSRoof,Txt)*
            Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSKSun,Txt)/41868000;
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end;
        end;
    ARX_ScreenHeat:  begin
        if (ValX=CountX) then
        begin
           Result:=0;
           for nVal:=1 to ParentCtr.SumZone do
             Result:=Result+LoadXYvirt(cOutBlock,nVal,ARX_ScreenHeat,Txt);
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end
        else
        with (ParentCtr as TFClimat501U) do begin
          if (Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSSRoof,Txt)+
            Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSSWall,Txt)>0) then
          Result:=LoadXYvirt(cOutBlock,ValX,ARX_Screen,Txt)*Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSSqScreen,Txt)*
            Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSScreen,Txt)*LoadXYvirt(cOutBlock,1,ARX_OutHeat,Txt)/(144000*(Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSSRoof,Txt)+
            Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSSWall,Txt)));
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end;
        end;
    ARX_LightHeat:  begin
        if (ValX=CountX) then
        begin
           Result:=0;
           for nVal:=1 to ParentCtr.SumZone do
             Result:=Result+LoadXYvirt(cOutBlock,nVal,ARX_LightHeat,Txt);
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end
        else
        with (ParentCtr as TFClimat501U) do begin
          Result:=LoadXYvirt(cOutBlock,ValX,ARX_Light,Txt)*Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSPLight,Txt)*
            (100-Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSKLight,Txt))*0.86;
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end;
        end;
    ARX_CalcTotal:  begin
        with (ParentCtr as TFClimat501U) do begin
          Result:=LoadXYvirt(cOutBlock,ValX,ARX_OutHeat,Txt)-LoadXYvirt(cOutBlock,ValX,ARX_LightHeat,Txt)-LoadXYvirt(cOutBlock,ValX,ARX_ScreenHeat,Txt);
          if Result<0 then Result:=0;
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end;
        end;
    ARX_K:  begin
        with (ParentCtr as TFClimat501U) do begin
          if LoadXYvirt(cOutBlock,ValX,ARX_CountHeat,Txt)>0 then
          Result:=LoadXYvirt(cOutBlock,ValX,ARX_CalcTotal,Txt)*100/LoadXYvirt(cOutBlock,ValX,ARX_CountHeat,Txt);
          if Result<0 then Result:=0;
          Txt:=Format('%3.1f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end;
        end;
    ARX_PAY:  begin
        if (ValX=CountX) then
        begin
           Result:=0;
           for nVal:=1 to ParentCtr.SumZone do
             Result:=Result+LoadXYvirt(cOutBlock,nVal,ARX_PAY,Txt);
        end else
        with (ParentCtr as TFClimat501U) do begin
          Result:=LoadXYvirt(cOutBlock,ValX,ARX_CountHeat,Txt)*Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSPay,Txt);
        end;
          Txt:=Format('%3.0f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end

  else
  begin
    nVal:=ValY-3;
    Result:=pPCArx^.StatVal[ValX][nVal];
    if (ValY>=arx_CommStart) and (ValY<=arx_CommEnd) and (ValX=CountX) then
       Result:=0;
    if Result = 0 then Txt:='' else
    begin
      Txt:=Format('%3.2f',[Result]);
      Txt:=Txt+ConstNames[ValY].Ed;
    end;
  end;
  end;
  if ValX>0 then AccessW:=RW_NOEDIT;
end;



const NewArxSelParSum=18;
NewArxSelPar:array[1..NewArxSelParSum] of word=
(ARX_MidlOut,ARX_MidlSun,ARX_SumSun,ARX_MidlT,ARX_MidlHum,ARX_MidlCO2,ARX_MidlTaskTemp,ARX_MidlTaskHum,ARX_MidlTaskCO2,
ARX_MaxPipe,ARX_MaxPower,ARX_Light,ARX_Screen,ARX_CountHeat,ARX_CalcHeat,ARX_CalcTotal,ARX_K,ARX_PAY);

procedure TNewArxPC_DZ.ArchivToWeb;
var WebStr:TWebStr;
    tx:string;
    x,y,yn,zone:integer; Res:double;
begin
 // if Not Ready or Not FMain.mnArchServerAPL.Checked then Exit;
  LoadXY(cOutBlock,0,0,tx);
  WebStr:='';
  for x:=1 to CountX-1 do
    for yn:=1 to NewArxSelParSum do
     begin
     y:=NewArxSelPar[yn];
     Res:=LoadXY(cOutBlock,x,y,tx);
     if (Res<>0) and (tx<>'') and (ConfigExist<>cfExistFalse) then       //cfExistTrue
        WebStr:=WebStr+Format(WebSep+'%2.2d%3.3d%3.3d',[ParentCtr.CtrTip,x+10,y])+WebSep+FloatToStr(Res)+WebSep;
     end;
  ParentCtr.SaveWebStr(WebStr,BlDate);
end;

function TNewArxPC_DZ.CalcAllArxPC(StartDate:TDateTime):Boolean;
var  Save_Cursor:TCursor;
begin
 if (Int(WriteArchivDate) = Int(Now))  or (ParentCtr.DataPath<>'') then  Exit;
 WriteArchivDate:=Now;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 TopMesForm.ShowTop(NameBlock); //ProgMess[506]);//'Идет расчет архива в ПК');
 try
 if LoadFileByDate(Now,dEnd) then StartDate:=int(BlDate)+1
  else  begin
        StartDate:=EncodeDate(YearOf(Now),1,1);  // Now-ClimLongArx; //
        end;
 while Int(StartDate) < Int(Now) do  // DayOf()
    begin
    if CalcDayArxPC(StartDate) then begin SaveToFile; {####if ParentCtr.DataPath='' then ArchivToWeb;} end;
    StartDate:=StartDate+1;
    TopMesForm.vLabel.Caption:=DateTimeToStr(StartDate);
//###    Application.ProcessMessages;
//    TopMesForm.vLabel.Caption:=DateTimeToStr(StartDate);
    TopMesForm.Update;
    if TopMesForm.IsCancel then break;
    end;
 finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    TopMesForm.HideTop;
  end;
end;

function TNewArxPC_DZ.CalcDayArxPC(ArxDate:TDateTime):Boolean;
var
 pPCArx:^TPCNewArx;
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
  for nVal:=1 to cSumListValNewArx do
      begin
//      iStatVal:=i*SumStat;
      pPCArx^.StatVal[nZone][nVal]:=0;
      pPCArx^.CountVal[nZone][nVal]:=0;
      end;
  repeat
     NowDay:=(Block[0] as THot_DZ).DayTime;
    if NowDay then pPCArx^.TicDay:=pPCArx^.TicDay+1;
    pPCArx^.Tic:=pPCArx^.Tic+1;
    for nZone:=1 to ParentCtr.SumZone do
    for nVal:=1 to cSumListValNewArx do
    begin
      vVal:=Block[0].LoadXY(cOutBlock,nZone,ListVal[nVal].Num,st);
      case ListVal[nVal].Tip of
//      iStatVal:=i*SumStat;
      iNMidl,iNSummary:
        if (vVal<>0) then
        begin
          pPCArx^.StatVal[nZone][nVal]:=pPCArx^.StatVal[nZone][nVal]+vVal;
          pPCArx^.CountVal[nZone][nVal]:=pPCArx^.CountVal[nZone][nVal]+1;
        end;
      iNMax:
          if (vVal <> 0) and (vVal>pPCArx^.StatVal[nZone][nVal]) then
              pPCArx^.StatVal[nZone][nVal]:=vVal;
      iNMin:
          if (vVal <> 0) and ((vVal<pPCArx^.StatVal[nZone][nVal])or(pPCArx^.StatVal[nZone][nVal]=0)) then
              pPCArx^.StatVal[nZone][nVal]:=vVal;
      iNMidlDay:
          if NowDay then
          begin
            pPCArx^.StatVal[nZone][nVal]:=pPCArx^.StatVal[nZone][nVal]+vVal;
            if (vVal<>0) then
              pPCArx^.CountVal[nZone][nVal]:=pPCArx^.CountVal[nZone][nVal]+1;
          end;
      iNMidlNight:
          if (not NowDay) then
          begin
            pPCArx^.StatVal[nZone][nVal]:=pPCArx^.StatVal[nZone][nVal]+vVal;
            if (vVal<>0) then
              pPCArx^.CountVal[nZone][nVal]:=pPCArx^.CountVal[nZone][nVal]+1;
          end;
      end;
    end;
  until Not Block[0].LoadFileCycle(ArxDate);
  for nZone:=1 to ParentCtr.SumZone do
  for nVal:=1 to cSumListValNewArx do
      case ListVal[nVal].Tip of
      iNMidl:
        if pPCArx^.CountVal[nZone][nVal]>0 then
        begin
            pPCArx^.StatVal[nZone][nVal]:=pPCArx^.StatVal[nZone][nVal]/pPCArx^.CountVal[nZone][nVal];
            pPCArx^.StatVal[CountX][nVal]:=pPCArx^.StatVal[CountX][nVal]+pPCArx^.StatVal[nZone][nVal];
            pPCArx^.CountVal[CountX][nVal]:=pPCArx^.CountVal[CountX][nVal]+1;
        end;
      iNMidlDay:
        if pPCArx^.CountVal[nZone][nVal]>0 then
        begin
          pPCArx^.StatVal[nZone][nVal]:=pPCArx^.StatVal[nZone][nVal]/pPCArx^.CountVal[nZone][nVal];
          pPCArx^.StatVal[CountX][nVal]:=pPCArx^.StatVal[CountX][nVal]+pPCArx^.StatVal[nZone][nVal];
          pPCArx^.CountVal[CountX][nVal]:=pPCArx^.CountVal[CountX][nVal]+1;
        end;
      iNMidlNight:
        if pPCArx^.CountVal[nZone][nVal]>0 then
        begin
          pPCArx^.StatVal[nZone][nVal]:=pPCArx^.StatVal[nZone][nVal]/pPCArx^.CountVal[nZone][nVal];
          pPCArx^.StatVal[CountX][nVal]:=pPCArx^.StatVal[CountX][nVal]+pPCArx^.StatVal[nZone][nVal];
          pPCArx^.CountVal[CountX][nVal]:=pPCArx^.CountVal[CountX][nVal]+1;
        end;
      iNSummary:
        if pPCArx^.Tic>0 then
        begin
          pPCArx^.StatVal[nZone][nVal]:=pPCArx^.StatVal[nZone][nVal]*1440/pPCArx^.Tic;
          pPCArx^.StatVal[CountX][nVal]:=pPCArx^.StatVal[CountX][nVal]+pPCArx^.StatVal[nZone][nVal];
          pPCArx^.CountVal[CountX][nVal]:=pPCArx^.CountVal[CountX][nVal]+1;
        end;
      iNMin:
        if (pPCArx^.StatVal[CountX][nVal]>pPCArx^.StatVal[nZone][nVal]) or (pPCArx^.StatVal[CountX][nVal]=0) then
           pPCArx^.StatVal[CountX][nVal]:=pPCArx^.StatVal[nZone][nVal];
      iNMax:
        if (pPCArx^.StatVal[CountX][nVal]<pPCArx^.StatVal[nZone][nVal]) then
           pPCArx^.StatVal[CountX][nVal]:=pPCArx^.StatVal[nZone][nVal];
      end;
  for nVal:=1 to cSumListValNewArx do
      case ListVal[nVal].Tip of
      iNMidl,iNMidlDay,iNMidlNight:
         if (pPCArx^.CountVal[CountX][nVal]>0) then
          pPCArx^.StatVal[CountX][nVal]:=pPCArx^.StatVal[CountX][nVal]/pPCArx^.CountVal[CountX][nVal];
      end;
  end;
end;

//--------- END ARXIV PC ---------------



procedure TStrategy_DZ.Init;//override;
begin
     CountY:=DZ511_SumKStrategy*DZ511_SupParStrategy;
     CountX:=ParentCtr.SumZone; //SNameStrategy;
     SizeCol:=DZ511_SizeStrateg*DZ511_SumFullStrategy;
     FullSize:=SizeCol*DZ_MAX_SUM_ZONE;
     SendByte:=FullSize;
     Pref:=ProgMess[233];   //'Стратегия';
     NameBlock:=ProgMess[234];   //'Стратегия управления';
     FixRow:=1;
     ConstNames:=Addr(NameStrategy[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
     if (CountX>1) then
     begin
       XNames:=Addr(XNamesStrategyC510[1]);
       XNamesCount:=1;
     end;

end;

procedure TStrategy_DZ511.Init;//override;
begin
     CountY:=DZ511_SumKStrategy*DZ511_SupParStrategy;
     CountX:=ParentCtr.SumZone; //SNameStrategy;
     SizeCol:=DZ511_SizeStrateg*DZ511_SumFullStrategy;
     FullSize:=SizeCol*DZ_MAX_SUM_ZONE;
     SendByte:=FullSize;
     Pref:=ProgMess[233];   //'Стратегия';
     NameBlock:=ProgMess[234];   //'Стратегия управления';
     FixRow:=1;
     ConstNames:=Addr(NameStrategy511[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
     if (CountX>1) then
     begin
       XNames:=Addr(XNamesStrategyC511[1]);
       XNamesCount:=1;
     end;
end;

{function TStrategy_DZ511.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var
    pModeOutputs:PByteArray;
    Mode1_Hand0, nZone:Byte;
begin
//     pModeOutputs:=Adr;
     //if (ActHandZone <> (ValX div 2)) then
     //  SendToPort(nil);
       //MessageDlg("Запишите блок данных в контроллер перед переходом в другую зону",
     ActHandZone := ValX div 2;
     Mode1_Hand0:=ValX mod 2;
     nZone:=(ValX+1) div 2;
     if (ValX=0) and (ValY=0) then
       begin
         if (ActHandZone > ParentCtr.SumZone) or (ActHandZone < 1)
         then ActHandZone:=1;
         //StartSend:=DZ511_iTepl+DZ511_iMechanic+DZ511_sizeTepl*(ActHandZone-1);
         //CopyMemory(Addr(DZ511_CopyHand),Addr(PByteArray(Adr)^[StartSend]),SendByte);
       end;


//     StartSend:=DZ511_iTepl+DZ511_iMechanic+DZ511_sizeTepl*(ActHandZone-1);
     //CopyMemory(Addr(DZ511_CopyHand),Addr(PByteArray(Adr)^[StartSend]),SendByte);   // remove
//     Result:=0;
      //     Mode1_Hand0:=ValX mod 2;
    //     nZone:=(ValX+1) div 2;
     if ValY=0 then
        begin
          Txt:=ParentCtr.GetTextZona(nZone,ValY);
          if ValX > 0 then
          //if Mode1_Hand0=1 then Txt:=Txt+' '+ProgMess[250]  //'Состояние'
          if Mode1_Hand0 = 0 then Txt:=Txt+' '+ProgMess[250]  //'Состояние'
            else Txt:=Txt+' '+ProgMess[249];   //'Установить';
          Exit;
        end;
      pModeOutputs:=Addr(pModeOutputs^[DZ511_iTepl+DZ511_sizeTepl*(nZone-1)+ConstNames[ValY].Index]);
      //if (Mode1_Hand0 = 0) and (ActHandZone=nZone)                                          remove
      //  then pModeOutputs:=Addr(DZ511_CopyHand[ConstNames[ValY].Index - DZ511_iMechanic]);
      GetExist(nZone,ValY);
      Result:=Convers(ConstNames[ValY].Name,
            pModeOutputs,ConstNames[ValY].Frm,vInBlock,nZone,ValY,Txt,ConstNames[ValY].Ed);
      if nZone > 0 then if Result>0 then imColor:=clRed else imColor:=clGreen;
      if Mode1_Hand0 = 0 then AccessW:=RW_NOEDIT;

end; }

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


function TFClimat510.PaintTree:integer;

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
      //TreeView1.Canvas.Font.Color:=GetImColor(imNum);
      //TreeView1.Canvas.Brush.Color:=TreeView1.Color;
      //TreeView1.Canvas.TextOut(NodeRect.Left, NodeRect.Top,vNode.Text+' ='+St);
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


procedure THotFans.Init;
begin
     CountX := ParentCtr.SumZone*2; //sumGroups;
     CountY := DZ511_SumFanPars*DZ511_SumFans;
     SizeCol := DZ511_SumFullFans;
     FullSize := ParentCtr.Block[0].FullSize;//DZ_iTepl+DZ_sizeTepl*DZ_MAX_SUM_ZONE+20+(DZ_SumFullFans)*2*DZ_MAX_SUM_ZONE;
     SendByte := 1;
     Pref := 'AHU';
     NameBlock := 'AHU';
     ConstNames:=Addr(NameFans[1]);
     Sort := srHowHot;
     if (CountX>1) then
     begin
      XNames:=Addr(XNamesFansC511[1]);
      XNamesCount:=1;
     end;
     EnableXML:=False;
     Translator:=CountY;
end;

function THotFans.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var    temp:double;
      pFanHot: PByteArray;
begin
    if (ValX=0) then
    begin
      if (ValY=0) then exit;
      Txt:=IntToStr(((ValY-1) div DZ511_SumFanPars)+1)+' '+ ConstNames[((ValY-1) mod DZ511_SumFanPars)+1].Name;
      Result:=0;
      exit;
    end;
    if (ValY=0) then
    begin
      Txt:=XNames[1].Name+IntToStr(((ValX-1) div 2)+1)+'-'+IntToStr(((ValX-1) mod 2)+1);
      Result:=0;
      exit;
    end;
      //      Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
    if ((ValX=0)or(ValY=0)) then exit;
    pFanHot:=ParentCtr.Block[0].Adr;
      Result:=Convers(ConstNames[((ValY-1) mod DZ511_SumFanPars)+1].Name,
         Addr(pFanHot^[DZ511_iTepl+DZ511_sizeTepl*DZ_MAX_SUM_ZONE+20+3+(ValX-1)*DZ511_SumFullFans+(((ValY-1) div DZ511_SumFanPars))*DZ511_SizeFan+ConstNames[((ValY-1) mod DZ511_SumFanPars)+1].Index]),
         ConstNames[((ValY-1) mod DZ511_SumFanPars)+1].Frm,vInBlock,1,((ValY-1) mod DZ511_SumFanPars)+1,Txt,' ');//NameStrategy[ValY].Ed);

end;


procedure THotFans.FanSaveAsXML(ValX,ValY: integer; BlockNode:IXMLNode);
var vNode:IXMLNode;
    i:integer;
    Txt: string;
begin
  //BlockNode.Text:='Fan '+IntToStr(ValY);
  BlockNode.SetAttribute('fan_id','Fan '+IntToStr(((ValX-1) div 2)+1)+IntToStr(((ValX-1) mod 2) +1)+IntToStr(ValY));
  BlockNode.SetAttribute('speed_rpm',Round(LoadXY(cOutBlock,ValX,(ValY-1)*DZ511_SumFanPars+DZ511_iFanSpeed,Txt)));
  BlockNode.SetAttribute('speed_percentage',Round(LoadXY(cOutBlock,ValX,(ValY-1)*DZ511_SumFanPars+DZ511_iFanLoad,Txt)));
  BlockNode.SetAttribute('power_usage',Round(LoadXY(cOutBlock,ValX,(ValY-1)*DZ511_SumFanPars+DZ511_iFanPower,Txt)));
  BlockNode.SetAttribute('warning',0);
  BlockNode.SetAttribute('error',0);
end;

procedure THotFans.BlockSaveAsXML(const DomFileName:string);
var i,j:integer;
  vNode:IXMLNode;
  UTC: TSystemTime;
  NormTime: TDateTime;
  XMLDoc:IXMLDocument;

begin
  XMLDoc:=NewXMLDocument();//: IXMLDocument;
  XMLDoc.Active:=True;
  XMLDoc.DocumentElement:=XMLDoc.CreateNode(ParentCtr.CtrName);
  GetSystemTime(UTC);
  NormTime:=SystemTimeToDateTime(UTC);
  XMLDoc.DocumentElement.SetAttribute('Time',NormTime);
  XMLDoc.DocumentElement.AddChild('Zones');
  with ParentCtr do
  begin
    for i:=1 to ParentCtr.SumZone*2 do
    begin
      vNode:=XMLDoc.DocumentElement.AddChild('Zone');
      vNode.SetAttribute('zone_id','Zone'+IntToStr(((i-1) div 2)+1)+IntToStr(((i-1) mod 2) +1));
      for j:=1 to 64 do
      begin
        FanSaveAsXML(i,j,vNode.AddChild('Fan'));
      end;
      if DomFileName<>'' then XMLDoc.XML.SaveToFile(DomFileName);
    end;
  end;
end;

function THotFans.GetExist(x,y:integer):TConfigExist;
begin
  Result:=cfExistTrue;//inherited GetExist(x,y);
//  if Not (ParentCtr.Block[DZ_BLOCK_CALIB] as TCalSens_DZ).GetExistSens(x,y)
//    then Result:=cfExistFalse;
end;

procedure THotAlarm.Init;
begin
     CountX := ParentCtr.SumZone; //sumGroups;
     CountY := SumValYAlarmHot;
     SizeCol := DZ511_sizeTepl;
     FullSize := ParentCtr.Block[0].FullSize;//DZ_iTepl+SizeCol*DZ_MAX_SUM_ZONE;
     SendByte := 1;
//     Pref := 'Alarm';
//     NameBlock := 'Alarms';
     Pref :=ProgMess[617];   // Alarms
     NameBlock :=ProgMess[617];
     ConstNames:=Addr(AlarmHotName[1]);
     Sort := srHowHot;
     if (CountX>1) then
     begin
      XNames:=Addr(XNamesAlarmC510[1]);
      XNamesCount:=1;
     end;
     Translator:=CountY;
end;

function THotAlarm.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var    temp:double;
begin
    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
    if ((ValX=0)or(ValY=0)) then exit;

    GridCellColor:=GetColorAlrStatus(round(Result));
end;


procedure THotAlarm511.Init;
begin
     CountX := ParentCtr.SumZone; //sumGroups;
     CountY := SumValYAlarmHot511;
     SizeCol := DZ511_sizeTepl;
     FullSize := ParentCtr.Block[0].FullSize;//DZ_iTepl+SizeCol*DZ_MAX_SUM_ZONE;
     SendByte := 1;
     Pref := 'Alarm';
     NameBlock := 'Alarms';
     ConstNames:=Addr(AlarmHotName511[1]);
     Sort := srHowHot;
     if (CountX>1) then
     begin
      XNames:=Addr(XNamesAlarmC511[1]);
      XNamesCount:=1;
     end;
     Translator:=CountY;
end;

function THotAlarm511.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var    temp:double;
begin
    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
    if ((ValX=0)or(ValY=0)) then exit;
    GridCellColor:=GetColorAlrStatus(round(Result));
end;

const
//    pascalWeaterClimate = 5;
    pascalCMPclimate = 6;
    pascalListVal = 13;
    pascalListValues:array[1..pascalListVal] of word= (1,2,12,3,4,31,27,36,130,88,104,181,183);

var pascalName:array [1..pascalListVal] of TNameConst=(
    // Weather
    (Name:'"Outside temp"';Frm:ffff;Ed:'°C';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Radiation"';Frm:ffff;Ed:'W/m2';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Radiation sum"';Frm:ffff;Ed:'J/cm2';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Wind speed"';Frm:ffff;Ed:'m/s';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Wind direction"';Frm:ffff;Ed:'';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    //  CMP climate
    (Name:'"Temp greenhouse"';Frm:ffff;Ed:'°C';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"RH greenhouse"';Frm:ffff;Ed:'%';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//    (Name:'"Vapour deficit"';Frm:ffff;Ed:'g/m3';
//    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"CO2"';Frm:ffff;Ed:'ppm/10';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Vent lee"';Frm:ffff;Ed:'%';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Lower circuit"';Frm:ffff;Ed:'°C';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Growth circuit"';Frm:ffff;Ed:'°C';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Energy curtain"';Frm:ffff;Ed:'%';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'"Shading curtain"';Frm:ffff;Ed:'%';
    TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX; Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
);

procedure DeleteLineFromFile(FileName:string);
var F:TStringList;
begin
 F:=TStringList.Create;
 F.LoadFromFile(FileName);
 F.Delete(F.Count-1);
 F.Delete(F.Count-1);
 F.Add( '},');
 F.SaveToFile(FileName);
 F.Free;
end;

procedure TFClimat501U.SetPicCtr;
var
  ZoneLevAlarm,MaxLevAlarm,iY,iX,vLevel,PozY:integer;
  Color:TColor;
  st,stName,stZone:string;

  res:Double;
  file_txt: TextFile;
  file_txt_name:string;
  dir_name:string;
  tempDT:TDateTime;
  count:integer;
  countZone:integer;
begin
//  inherited;
  //ListView1.Clear;
  if Not Block[0].Ready  then Exit;
  if (Block[0] is THot_DZ) then
    (Block[0] as THot_DZ).TestAlarmSens;
  if (Block[0] is THot_511) then
    (Block[0] as THot_511).TestAlarmSens;
  //PaintTree;
  //ListView1.Items.BeginUpdate;
  MaxLevAlarm:=0;
{  STZone1.Visible:=False;
  STZone2.Visible:=False;
  STZone3.Visible:=False;
  STZone4.Visible:=False;  }
  BlockToGrid(AlarmHot,StringGridAlarm);

// ---------------------------------------------------------------- NEW
{  for countZone:=1 to (Block[0] as THot_511).CountX do
  begin
    stZone:=GetTextZona(countZone,0);
  tempDT := Now;
  file_txt_name :=   (Block[0] as THot_511).ParentCtr.CtrName +' '+stZone+' '+DateToStr(tempDT)+'.json';
  dir_name := 'Exports';
  file_txt_name := dir_name +'\'+ file_txt_name;
  if not DirectoryExists(dir_name)
  then CreateDir(dir_name);
  if FileExists(file_txt_name) then
    DeleteLineFromFile(file_txt_name);
  AssignFile(file_txt, file_txt_name);
  {$IoChecks Off}
{    Append(file_txt);
  {$IoChecks On}
{  if IOResult <> 0 then
  begin
    Rewrite(file_txt);
    writeln(file_txt, '{');
  end;
  writeln(file_txt, '"'+DateToStr(tempDT)+' '+TimeToStr(tempDT)+'":{');
  for count:=1 to pascalListVal do
  begin
    if count = 1 then
      writeln(file_txt, '"Weather":{');
    if count = pascalCMPclimate then
    begin
//      writeln(file_txt, '}//,');
{      writeln(file_txt, '"CMP climate":{');
    end;
    //Block[0].LoadXY(cOutBlock,1, pascalListValues[count],stName);
    res := (Block[0] as THot_511).LoadXYvirt(cOutBlock,countZone,pascalListValues[count],stName);
    if (count = pascalCMPclimate-1) or (count = pascalListVal) then
      writeln(file_txt, ''+pascalName[count].Name+': "'+ FloatToStr(res)+' '+pascalName[count].Ed+'"')
    else
      writeln(file_txt, ''+pascalName[count].Name+': "'+ FloatToStr(res)+' '+pascalName[count].Ed+'",');
  end;
//  writeln(file_txt, '//}//');
//  writeln(file_txt, '//}//');
//  writeln(file_txt, '//}//');   // завершающие скобки всего файла
//  CloseFile(file_txt);
//  end;
// }
// ---------------------------------------------------------------- NEW

  with Block[0] do
  for iX:=1 to CountX do
  begin
    AlarmHot.LoadXYvirt(cOutBlock,iX,0,stZone);
    ZoneLevAlarm:=0;
{    for iY:=1 to CountDiagnosis do
          begin
          if Not GetDiagnosis(iX,iY,vLevel,PozY,Color,st)
                or (vLevel <= 0 )
                or (PozY =0 )  then continue;
          if vLevel > ZoneLevAlarm then ZoneLevAlarm:=vLevel;
          HotMessage(CtrName,st,clNone,Color);
          end;}



    for iY:=1 to AlarmHot.CountY do
    begin
      AlarmHot.LoadXYvirt(cOutBlock,0,iY,stName);
      vLevel:=Round(AlarmHot.LoadXYvirt(cOutBlock,iX,iY,st));
      if (AlarmHot.GetExist(iX,iY)=cfExistFalse) then continue;
      if (vLevel>=HOT_ALARM_WAR) then
      begin
        if (vLevel>ZoneLevAlarm) then
          ZoneLevAlarm:=vLevel;
        HotMessage(CtrName,stZone+' '+stName+' - '+st,clNone,GetColorAlrStatus(vLevel));
      end;
    end;

    vLevel:=ZoneLevAlarm;
    ZoneLevAlarm:=0;
    if (vLevel>=HOT_ALARM_WAR) then ZoneLevAlarm:=alAttention;
    if (vLevel>=HOT_ALARM_ALR) then ZoneLevAlarm:=alFatal;
    alarmMessage:=ZoneLevAlarm;
  end;


    {if ZoneLevAlarm  > alarmMessage then alarmMessage:=ZoneLevAlarm;
    case iX of
      1: begin
         //STZone1.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone1.Font.Color:=Color;
         //if CountX> 1 then STZone1.Visible:=True;
         end;
      2: begin
         //STZone2.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone2.Font.Color:=Color;
         //STZone2.Visible:=True;
         end;
      3: begin
         //STZone3.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone3.Font.Color:=Color;
         //STZone3.Visible:=True;
         end;
      4: begin
         //STZone4.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone4.Font.Color:=Color;
         //STZone4.Visible:=True;
         end;
      5: begin
         //STZone5.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone5.Font.Color:=Color;
         //STZone5.Visible:=True;
         end;
      6: begin
         //STZone6.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone6.Font.Color:=Color;
         //STZone6.Visible:=True;
         end;
      7: begin
         //STZone7.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone7.Font.Color:=Color;
         //STZone7.Visible:=True;
         end;
      8: begin
         //STZone8.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         //STZone8.Font.Color:=Color;
         //STZone8.Visible:=True;
         end;
      end;
    end;                                      }
{  with ListView1 do
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
   ListView1.Items.EndUpdate;     }
//##   BlockArxPC.CalcAllArxPC(Now);
//##   (blPCArchive as TNewArxPC_DZ).CalcAllArxPC(Now);
   PSost.Caption:=GetTextFromAlarm(alarmMessage,Color);
   PSost.Color:=Color;
end;

procedure TFClimat501U.TreeView1Edited(Sender: TObject; Node: TTreeNode;
  var S: String);
var xy:Txy;
begin
 if Node.HasChildren then Exit;
 xy.Ptr:=Node.Data;
 with Block[0] do
  if (xy.Y>0) and (xy.Y <= CountY) then
   ConstNames[xy.Y].Name:=S;
end;
{
procedure TFClimat510.TreeView1Change(Sender: TObject; Node: TTreeNode);
var  Par:Txy;
begin
     if Node.HasChildren then Exit;
     Par.Ptr:=Node.Data;
     if (Par.X = 0)or(Par.Y <= 0)or (Par.Y > Block[0].CountY)then Exit;
     NowSens:=Par.Y;
     NowTepl:=Par.X;
//     inherited SetPicCtr;
// вывести график
     SetChar;
end;

procedure TFClimat510.SetChar;
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
     with Chart1.Series[NowSeries] do
      begin
      Clear;
      LoadXY(cOutBlock,0,NowSens,st);
      Title:=GetTextZona(NowTepl,NowSens)+st;
      end;
    while LoadFileCycle(DateChar.DateTime) do begin
      tVal:=LoadXY(cOutBlock,NowTepl,NowSens,st);
      vTime:=BlDate;//frac(BlDate)+int(Now);
      Chart1.Series[NowSeries].AddXY(vTime,tVal,'',clTeeColor); //AddSer(Chart1.Series[NowSeries],tVal,vTime);
      end;
    SetView;
    Chart1.LeftAxis.Automatic:=True;
    finally HideProgress; end;
  end;
end;                         }

function TFClimat501U.BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer;
begin
  Result:=inherited BeforeCellSelect(Grid,ComboBox);
  if GetGridBlock(Grid)=HandMode then  FHandClim.Exec(Self);
end;
{
procedure TFClimat510._TBClearClick(Sender: TObject);
var t:word;
begin
for t:=0 to Chart1.SeriesCount-1 do
 with Chart1.Series[t] do begin
// Synchronize(Clear);
 Clear;
 Title:=' ';
 end;
NowSeries:=0;
Chart1.BottomAxis.Automatic:=True;
//SetVew;
end;

procedure TFClimat510.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var Par:Txy;st:string;
  NodeRect: TRect;
begin
  if cdsHot in State  then begin
     Par.Ptr:=Node.Data;
     if (Par.Y=0) or Node.HasChildren then Exit;
     NodeRect := Node.DisplayRect(True);
     Block[0].LoadXY(cOutBlock,Par.X,Par.Y,st);
     Node.StateIndex:=imNum;
     TreeView1.Canvas.Font.Color:=GetImColor(imNum);
     TreeView1.Canvas.Brush.Color:=clWhite;  //clYellow;
     TreeView1.Canvas.TextOut(NodeRect.Left, NodeRect.Top,Node.Text+' ='+st);
     DefaultDraw := False;
  end;
end;

procedure TFClimat510.SetView;
begin
 with Chart1.BottomAxis do
   begin
   Automatic:=True;
   end;
end;

procedure TFClimat510.SELongChange(Sender: TObject);
begin
  inherited;
  SetView;
end;

procedure TFClimat510.DateCharChange(Sender: TObject);
begin
  inherited;
  if Not FileExists(Block[0].FileNameFromDate(DateChar.DateTime)) then
    begin
     MessageDlg(FormatDateTime(ProgMess[16]+' '+LongDateFormat,DateChar.DateTime)   //'Нет данных за dd.mm.yyyy'
     ,mtWarning,[mbYes],0);
     DateChar.DateTime:=Now;
   end;
end;}

procedure TFClimat501U.InfoLabelClick(Sender: TObject);
begin
  inherited;
     NowSens:=TagToSens((Sender as TComponent).Tag);
     NowTepl:=TagToZone((Sender as TComponent).Tag);
// вывести график
     //SetChar;
     if Width<700 then WindowState:=wsMaximized;
end;
{
procedure TFClimat510.Chart1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if (OldX<>-1) then begin
    DrawCross(Chart1,OldX,OldY);
    OldX:=-1;
    end;
  if PtInRect( Chart1.ChartRect, Point(X-Chart1.Width3D,Y+Chart1.Height3D)  ) then
   begin
   DrawCross(Chart1,X,Y);
   OldX:=X;
   OldY:=Y;
   LTimeChart.Caption:=FormatDateTime(ShortDateFormat+' '+ShortTimeFormat,Chart1.Series[0].XScreenToValue(X)); //'dd/mm в hh:nn'
   LTimeChart.Left:=X-20;
   end;
end;

procedure TFClimat510.Chart1AfterDraw(Sender: TObject);
begin
  inherited;
  OldX:=-1;  // Reset old mouse position
end;

procedure TFClimat510._TBPrintClick(Sender: TObject);
begin
  inherited;
  if FMain.PrinterSetupDialog1.Execute then FMain.PrintChart(Self.CtrName,Chart1);
end;
}
procedure TFClimat501U.ListView1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
 // ListView1.Canvas.Font.Color:=TColor(Item.Data);
end;

{function TFClimat510.CtrFromFile(const NameFile:string):Boolean;
begin
result:=inherited CtrFromFile(NameFile);
Block[0].SetTree(TreeView1);
_TBClearClick(Self);
LCtr.Caption:=CtrName;
DateChar.DateTime:=Now;
end;
}
procedure TFClimat501U.SpeedButton14Click(Sender: TObject);
begin
  FHandClim.Exec(Self);
end;

{function TFClimat510.GetTemp(fTask:integer;fDo:integer;ValX:integer;inDate:TDateTime):integer;
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

end; }

procedure TFClimat501U.TBZone1Click(Sender: TObject);
begin
  inherited;
  ActivZone:=TagToZone((Sender as TToolButton).Tag);
  LNZone.Caption:=ZoneBar.Buttons[ActivZone-1].Caption;
  SetHints;
  SetPicValue;
end;

procedure TFClimat501U.ToolButton1Click(Sender: TObject);
begin
  inherited;
  ActivZone:=TagToZone((Sender as TToolButton).Tag);
//  LNZone.Caption:=ZoneBar511.Buttons[ActivZone-1].Caption;
  LNZone.Caption:=ZoneBar.Buttons[ActivZone-1].Caption;
  SetHints;
  SetPicValue;

end;

procedure TFClimat501U.SpeedButton1Click(Sender: TObject);
begin
//  FStrategy501U.Exec(Self);
//  (Block[0] as THot_511).P
  try
    FStrategy501U.Exec((Block[0] as THot_511).ParentCtr);
  except
  end;

end;

end.
