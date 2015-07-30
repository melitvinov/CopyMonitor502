unit Climat403;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls,DateUtils, PicCtr, Menus, ImgList, ComCtrls,
  Spin, ToolWin, TeEngine, Series, TeeProcs, Chart,GanttCh, Gauges,GGraf,
  FConstType, FController, MPlayer, ClimCalc,
  FBox, FPanel,SetGrid, MessageU,DefineClim403,    //, FPicPanel, FPicLabel
  GIFDef, GIFComponent, FPicLabel, FPicPanel,TSGrid;   //,Grids_ts
//---------------------------------------------------
//       Определения входов
//S-сумма,T-тепличный,С-общий,
//A-аналоговый,D-дискретный,Sens-сенсор
//---------------------------------------------------
const
  DZ_SUM_METEO      =	DZ_SumSensMeteo;  //11; // Количество датчиков метеостанции
  DZ_SUM_COMMON     = 20;
  DZ_MAX_SUM_ZONE   = 4;
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

type TWarmGroupConfig=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     procedure GetProperGrid( x, y:integer);override;
//      procedure CalcMax(var MaxGroup:array of double);
      procedure FindWarmMax(vZone,vGroup:word; var MaxGroup:double; var vTxt:string);
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

type  TFClimat403 = class(TFPicCtr)
    Panel1: TPanel;
    PanelChart: TPanel;
    Chart1: TChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    Series6: TFastLineSeries;
    Series7: TFastLineSeries;
    Series8: TFastLineSeries;
    ToolBar1: TToolBar;
    _TBClear: TToolButton;
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
    Label5: TLabel;
    Label4: TLabel;
    Label37: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Splitter1: TSplitter;
    Label25: TLabel;
    Label26: TLabel;
    Gauge2: TGauge;
    Gauge8: TGauge;
    DateChar: TDateTimePicker;
    Label66: TLabel;
    Label67: TLabel;
    Gauge14: TGauge;
    Image1: TImage;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    LCtr: TLabel;
    Label79: TLabel;
    _TBPrint: TToolButton;
    LTimeChart: TLabel;
    LNZone: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    ListView1: TListView;
    FPanel8: TFPanel;
    Label92: TLabel;
    FPanel9: TFPanel;
    Label107: TLabel;
    FPanel10: TFPanel;
    Label16: TLabel;
    Gauge26: TGauge;
    Label50: TLabel;
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
    FPTree: TFPanel;
    TreeView1: TTreeView;
    SpeedButton14: TSpeedButton;
    FPanel4: TFPanel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Gauge17: TGauge;
    Label86: TLabel;
    Label90: TLabel;
    GIFSShow2: TGIFSShow;
    GIFSShow6: TGIFSShow;
    GIFSShow1: TGIFSShow;
    GIFSShow3: TGIFSShow;
    GIFSShow8: TGIFSShow;
    GIFSShow10: TGIFSShow;
    Label134: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Image2: TImage;
    FPBarZone: TFPanel;
    ILZone: TImageList;
    ZoneBar: TToolBar;
    TBZone1: TToolButton;
    TBZone2: TToolButton;
    TBZone3: TToolButton;
    StaticText1: TStaticText;
    ILZoneHot: TImageList;
    StaticText2: TStaticText;
    TBZone4: TToolButton;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    STZone1: TStaticText;
    STZone2: TStaticText;
    STZone3: TStaticText;
    STZone4: TStaticText;
    Label7: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label31: TLabel;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    Gauge3: TGauge;
    Gauge11: TGauge;
    FPicLabel1: TFPicLabel;
    FPicLabel2: TFPicLabel;
    FPicLabel3: TFPicLabel;
    FPicLabel4: TFPicLabel;
    FPicLabel5: TFPicLabel;
    Label32: TLabel;
    Label36: TLabel;
    procedure TreeView1Edited(Sender: TObject; Node: TTreeNode;
      var S: String);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure _TBClearClick(Sender: TObject);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure SELongChange(Sender: TObject);
    procedure DateCharChange(Sender: TObject);
    procedure InfoLabelClick(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart1AfterDraw(Sender: TObject);
    procedure _TBPrintClick(Sender: TObject);
    procedure ListView1CustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure SpeedButton14Click(Sender: TObject);
    procedure TBZone1Click(Sender: TObject);
  private
    { Private declarations }
    NowSens,NowTepl,NowSeries:integer;
    OldX,OldY:Longint;
//    BlockNewArxPC:TNewArxPC_DZ;//TBlock;
    BlockArxPC:TBlArxPC_DZ;//TBlock;
  public
    WarmGroupConfig:TWarmGroupConfig;
    Settings_DZ:TSettings_DZ;
    ZonePower:array[1..4] of double;
    ActivZone:integer;
    function PaintTree:integer;
    procedure SetChar;
    procedure SetView;
    function GetTextZona(x,y:integer):string; override;
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
//    function CtrFromFile(const NameFile:string):Boolean;override;
    function TagToZone(vTag:Longint):Integer;override;
    function BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer; override;
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
--------------------Описание блока парамтры-----------------
************************************************************}
type TControl_DZ=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
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
--------------------Описание блока механизмы----------------
************************************************************}
type TParMec_DZ=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
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
type TLev_DZ=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TCalSens_DZ=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function GetExistSens(nZone,nSens:integer):Boolean;
end;

type TStrategy_DZ=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     procedure GetProperGrid( x, y:integer);override;
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
uses Port, HandClim, audit, WindSon, FTopMes, BoilerIPC;
{$R *.DFM}

var gRCS:Byte;
function TFClimat403.TagToZone(vTag:Longint):Integer;
begin
  Result:=(vTag div ctStartZone) mod 10;   //PicX
  if Result=0 then Result:=ActivZone;
end;

function TFClimat403.GetTextZona(x,y:integer):string;
begin
  if (x=0) and (y=0) then begin Result:=CtrName; Exit; end;
  if (SumZone > 1) and (x > 0) and ((y=0) or (y > DZ_SUM_COMMON)) then
      Result:=ZoneBar.Buttons[x-1].Caption else Result:='';   //'Зона %d '
end;

//---------------------------- СОСТОЯНИЕ C-403 ------------------
{***********************************************************
--------------------Инициализация контроллера---------------
************************************************************}

procedure TFClimat403.InitCtr(vIdentCtr:TIdentCtr);
var i,nZone:integer;
begin
     inherited;
     Design:='Climat';
     NameIdent:=cNameIdent403;
     SumZone:=IdentCtr[idSubTip];
     if (vIdentCtr[idModific]=16) then IsIPC:=true;
     if (SumZone<1) or (SumZone> DZ_MAX_SUM_ZONE) then SumZone:=1;
     ActivZone:=1;
     THot_DZ.Create(Self);
     TControl_DZ.Create(Self);
     TCalSens_DZ.Create(Self);
     TTimer_DZ.Create(Self);
     TStrategy_DZ.Create(Self);
     TParMec_DZ.Create(Self);
     ConfigBlock:=TConfig_DZ.Create(Self);
     TTune_DZ.Create(Self);
     TLev_DZ.Create(Self);
     HandMode:=THandMode_DZ.Create(Self);
     NetMeteo:=TNetMeteo_DZ.Create(Self);
     BlockArxPC:=TBlArxPC_DZ.Create(Self);
     blPCArchive{BlockNewArxPC}:=TNewArxPC_DZ.Create(Self);
     WarmGroupConfig:=TWarmGroupConfig.Create(Self);
     Settings_DZ:=TSettings_DZ.Create(Self);
     AuditBlock:=TAudit.Create(Self);
//     WarmGroupBlock:=TWarmGroup.Create(Self);
     if SumZone=1 then
        FPBarZone.Visible:=False;
     for i:=0 to ComponentCount-1 do
        begin
        nZone:=TagToZone(Components[i].Tag);
        if nZone > 1 then
          TControl(Components[i]).Visible := nZone <= SumZone;
        if (Components[i] is TStaticText) and (nZone > 0) and (SumZone=1) then
          TStaticText(Components[i]).Visible :=False;
        end;
     LoadImageSkin(Image1,'Climat65_1.jpg');
     Block[0].SetTree(TreeView1);
     _TBClearClick(Self);
//LCtr.Caption:=CtrName;
     DateChar.DateTime:=Now;
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
     CountY:=DZ_SumMesHot;  //SumMesTepl+DZ_SUM_COMMON;  SumCommon;
  // Устанавливаем размер блока, новая модификация
     SizeCol:=DZ_iTepl+DZ_sizeTepl*DZ_MAX_SUM_ZONE;
     FullSize:=SizeCol;
     SendByte:=DZ_sizePCSend403;//DZ_cSendTime;
     Pref:=ProgMess[231];    //'Состояние';
     NameBlock:=ProgMess[232];    //'Состояние климата';
     ConstNames:=Addr(DZ_cDefineHot[1]);
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
    tInInt:InInt;
    pt:Pointer;
    tIndex,i:word;
    tTask,tDelt:Double;

begin
with ParentCtr as TFClimat403 do
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
 if ValY = DZ_posZonePower then
        begin
        if ValX=0 then begin Txt:=ConstNames[ValY].Name; Exit; end;
        if Not Ready then Exit;
        for i:=0 to 4 do
          if LoadXY(cOutBlock,ValX,140+i*4,Txt)>0 then
          Result:=Result+GetPowerContur(LoadXY(cOutBlock,ValX,31+i,Txt)-LoadXY(cOutBlock,ValX,21,Txt),
            (ParentCtr as TFClimat403).WarmGroupConfig.GetLengthPipe(ValX,i+1),
            (ParentCtr as TFClimat403).WarmGroupConfig.GetDiamPipe(ValX,i+1));
        Txt:=FloatToStr(Result)+' '+ConstNames[ValY].Ed;
        Exit;
        end;
 if ValY = DZ_posCalcPower then
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
 if ValY >= DZ_StTeplSens then
   tIndex:=DZ_iTepl
   else if ValX > 1 then
    begin Txt:=''; Exit; end;;
 tIndex:=tIndex+(ValX-1)*DZ_sizeTepl;
 pt:=Addr(tInInt);
 pHot:=Adr;
 case ConstNames[ValY].TipSens of
 TipSensor,TipGoTask,SensorRCS:
     begin
     gRCS:=pHot^[ConstNames[ValY].Index+tIndex+2];
     imNum:=RCSBitToImage(pHot^[ConstNames[ValY].Index+tIndex+2]);
     pt:=Addr(pHot^[ConstNames[ValY].Index+tIndex]);
     end;
  prognT:SetInInt(tInInt,GetProgn(GetInt51(Addr(pHot^[DZ_itTAir+tIndex]))));
  AbsRH: SetInInt(tInInt,
           GetAbsH(GetInt51(Addr(pHot^[DZ_itTAir+tIndex])),
                  GetInt51(Addr(pHot^[DZ_itRH+tIndex]))));
  DDWP:SetInInt(tInInt,
           GetDDWP(GetInt51(Addr(pHot^[DZ_itTAir+tIndex])),
                  GetInt51(Addr(pHot^[DZ_itRH+tIndex]))));
  DDWPS: SetInInt(tInInt,
           GetDDWP(GetInt51(Addr(pHot^[DZ_itTSheet+tIndex])),
                  GetInt51(Addr(pHot^[DZ_itRH+tIndex]))));
  TR: SetInInt(tInInt,
           GetTR(GetInt51(Addr(pHot^[DZ_itTAir+tIndex])),
                  GetInt51(Addr(pHot^[DZ_itRH+tIndex]))));
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
     tTask:=0.01*GetInt51(Addr(pHot^[DZ_itDoT+tIndex]));
     tDelt:=(tTask-Result)*(tTask-Result);
     if tDelt>1 then Exit;
     if Result<tTask then tDelt:=-tDelt;
     Result:=tTask+tDelt;
     end;
  if (ValY>=DZ_StTeplMecan) then
    if (Result>0) then
      imColor := clRed
      else imColor := clGreen;
 end;
end;

function THot_DZ.TestAlarmSens:Boolean;
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
end;

function THot_DZ.GetExist(x,y:integer):TConfigExist;
begin
  Result:=inherited GetExist(x,y);
  if Not (ParentCtr.Block[DZ_BLOCK_CALIB] as TCalSens_DZ).GetExistSens(x,y)
    then Result:=cfExistFalse;
end;

procedure THot_DZ.PostPortRead;
var pHot:PByteArray;
    i,Minut,tmpCo2:integer;
//    SRaise,SSet:TDateTime;
    st,st1:string;
begin
 if Not Ready then Exit;
 with ParentCtr as TFClimat403 do
    for i:=1 to 4 do ZonePower[i]:=LoadXY(cOutBlock,1,DZ_posZonePower,st);;
 with ((ParentCtr as TFClimat403).NetMeteo) as TNetMeteo_DZ do
    CalcNetRegul;

 pHot:=Adr;
 for i:=0 to DZ_SumOutMeteo-1 do
   begin
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
   if ((pHot^[DZ_iSensOut+i*3+2] and (1+16)) = 0)
      then
// если датчик подсоединен и измеряет, то его в общие данные
//--------------------------------------------
      begin
      bNeedMeteo:=true;
      mMeteo[i].UpdateTime:=BlDate;
      mMeteo[i].Val51[0]:=pHot^[DZ_iSensOut+i*3];
      mMeteo[i].Val51[1]:=pHot^[DZ_iSensOut+i*3+1];
      if (ParentCtr.IsIPC) then
      begin
        mMeteo[i].Val51[1]:=pHot^[DZ_iSensOut+i*3];
        mMeteo[i].Val51[0]:=pHot^[DZ_iSensOut+i*3+1];
      end;
      mMeteo[i].Source:=ParentCtr.CtrName;
      if i=comSun then
          begin
          mMeteo[comSumSun].Val51[0]:=pHot^[DZ_iSumSun];
          mMeteo[comSumSun].Val51[1]:=pHot^[DZ_iSumSun+1];
          if (ParentCtr.IsIPC) then
          begin
            mMeteo[comSumSun].Val51[1]:=pHot^[DZ_iSumSun];
            mMeteo[comSumSun].Val51[0]:=pHot^[DZ_iSumSun+1];
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
            pHot^[DZ_iSensOut+i*3]:=mMeteo[i].Val51[0];
            pHot^[DZ_iSensOut+i*3+1]:=mMeteo[i].Val51[1];
            if (ParentCtr.IsIPC) then
            begin
              pHot^[DZ_iSensOut+i*3]:=mMeteo[i].Val51[1];
              pHot^[DZ_iSensOut+i*3+1]:=mMeteo[i].Val51[0];
            end;
//            pHot^[DZ_iSensOut+i*3+2]:=mMeteo[i].RCS;
            if i=comSun then
                begin
                pHot^[DZ_iSumSun]:=mMeteo[comSumSun].Val51[0];
                pHot^[DZ_iSumSun+1]:=mMeteo[comSumSun].Val51[1];
                if (ParentCtr.IsIPC) then
                  begin
                  pHot^[DZ_iSumSun]:=mMeteo[comSumSun].Val51[1];
                  pHot^[DZ_iSumSun+1]:=mMeteo[comSumSun].Val51[0];
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
      pHot^[DZ_iWind+2]:=0;
      pHot^[DZ_iDirWind+2]:=0;
      pHot^[DZ_iWind]:=round(WindPortThread.Wind*100) div 256;
      pHot^[DZ_iWind+1]:=round(WindPortThread.Wind*100) mod 256;
      pHot^[DZ_iDirWind]:=round(WindPortThread.Direct) div 256;
      pHot^[DZ_iDirWind+1]:=round(WindPortThread.Direct) mod 256;
      if (ParentCtr.IsIPC) then
        begin
          pHot^[DZ_iWind]:=round(WindPortThread.Wind*100) mod 256;
          pHot^[DZ_iWind+1]:=round(WindPortThread.Wind*100) div 256;
          pHot^[DZ_iDirWind]:=round(WindPortThread.Direct) mod 256;
          pHot^[DZ_iDirWind+1]:=round(WindPortThread.Direct) div 256;
        end;
      end;
//==================================================
 if (ParentCtr.DataPath <> '') then Exit;

 // рассчет восхода и захода
// SunRaiseSet(Now,MeteoLong,MeteoWidth,MeteoZone,SRaise,SSet);
 Minut:=MinuteOfTheDay(GlobSunRaise);
 pHot^[DZ_iVosx]:=Minut div 256;
 pHot^[DZ_iVosx+1]:=Minut mod 256;
 if (ParentCtr.IsIPC) then
 begin
   pHot^[DZ_iVosx+1]:=Minut div 256;
   pHot^[DZ_iVosx]:=Minut mod 256;
 end;
 Minut:=MinuteOfTheDay(GlobSunSet);
 pHot^[DZ_iVosx+2]:=Minut div 256;
 pHot^[DZ_iVosx+3]:=Minut mod 256;
 if (ParentCtr.IsIPC) then
 begin
   pHot^[DZ_iVosx+3]:=Minut div 256;
   pHot^[DZ_iVosx+2]:=Minut mod 256;
 end;
 pHot^[DZ_iFeedBack+1]:=0;
 pHot^[DZ_iFeedBack+2]:=0;
 with FMain.ListCtr do for i:=0 to Tabs.Count-1 do
   if (Tabs.Objects[i] is TFBoilerIPC) then
   begin
     if (Tabs.Objects[i] as TFBoilerIPC).HotPanels.LoadXY(cOutBlock,round((ParentCtr as TFClimat403).WarmGroupConfig.LoadXY(cOutBlock,1,posLightSource,st1)),1,st)>0 then
       pHot^[DZ_iFeedBack+1]:=1;
     tmpCo2:=round((ParentCtr as TFClimat403).WarmGroupConfig.LoadXY(cOutBlock,1,posCO2Src,st1));
     if (tmpCo2>0) then
      if (Tabs.Objects[i] as TFBoilerIPC).HotMech.LoadXY(cOutBlock,1,216+(tmpCo2-1)*2,st)>0 then
        pHot^[DZ_iFeedBack+2]:=1;

     break;
  end;

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
 i:=pHot^[DZ_iTime]*256+pHot^[DZ_iTime+1];
 if (i> ((pHot^[DZ_iVosx]*256+pHot^[DZ_iVosx+1])+1))and (i<(pHot^[DZ_iVosx+2]*256+pHot^[DZ_iVosx+3]))
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
 CtrlTime:=pHot^[DZ_iTime]*256+pHot^[DZ_iTime+1];
 if (ParentCtr.IsIPC) then
  CtrlTime:=pHot^[DZ_iTime+1]*256+pHot^[DZ_iTime];
 if (ParentCtr.DataPath <> '')
     or (PCTime<15)
     or (PCTime>(24*60-15))
     or (((CtrlTime+10)>PCTime) and((CtrlTime-10)< PCTime)) then Exit;
 FormFalseTime:=True;
 //'Внимание! Время контроллера "%s" отличается от ПК. Синхронизировать?'
 if FMain.mnAutoSynxTime.Checked or (MessageDlg(Format(ProgMess[iAtten]+ProgMess[321]+ProgMess[322],[ParentCtr.CtrName]),mtWarning,[mbYes, mbNo],0)= mrYes) then
     begin
     pHot^[0]:=$80;
     pHot^[DZ_iTime+4]:=YearOf(Now)-2000;

     pHot^[DZ_iTime]:=PCTime div 256;
     pHot^[DZ_iTime+1]:=PCTime mod 256;
     pHot^[DZ_iTime+2]:=MonthOfTheYear(Now);
     pHot^[DZ_iTime+3]:=DayOfTheMonth(Now);
     if (ParentCtr.IsIPC) then
     begin
       pHot^[DZ_iTime]:=PCTime mod 256;
       pHot^[DZ_iTime+1]:=PCTime div 256;
       pHot^[DZ_iTime+2]:=DayOfTheMonth(Now);
       pHot^[DZ_iTime+3]:=MonthOfTheYear(Now);
     end;

     SendByte:=DZ_SizeSendTime;
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
   with ParentCtr as TFClimat403,Tree do begin
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
      for nSens:=DZ_StCommon to DZ_EndCommon do begin
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
      for nSens:=DZ_StTeplSens to DZ_EndTeplSens do begin
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
      for nSens:=DZ_StTeplCalc to DZ_EndTeplCalc do begin
             Param.Y:=nSens;
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex
                :=TipSensToNumImage(ConstNames[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;

      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[239]+' '+GetTextZona(i,0),Param.Ptr); //'Обогрев '
      Param.X:=i;
      for nSens:=DZ_StTeplWarm to DZ_EndTeplWarm do begin
             if (GetExist(i,nSens) = cfExistFalse) or (GetReadAccess(i,nSens)>=NowAccess) then continue;
             Param.Y:=nSens;
             nTemp:=TipSensToNumImage(ConstNames[nSens].TipSens);
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=//StateIndex:=
                nTemp;   //GetState(DefineHot[nSens].TipSens);
             end;
      if Not Node1.HasChildren  then Node1.Delete;

      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,ProgMess[240]+' '+GetTextZona(i,0),Param.Ptr);  //'Вентиляция '
      Param.X:=i;
      for nSens:=DZ_StTeplVent to DZ_EndTeplVent do begin
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
      for nSens:=DZ_StTeplScreen to DZ_EndTeplScreen do begin
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
      for nSens:=DZ_StTeplOther to DZ_EndTeplOther do begin
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
      for nSens:=DZ_StTeplMecan to DZ_EndTeplMecan do begin
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
    SetupCountY=10;
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
      Index:72;Mech:1;AccessR:RW_GUEST;AccessW:RW_USER)
    );
procedure TSettings_DZ.Init; //override;
begin
     CountX:=DZ_MAX_SUM_ZONE; //ParentCtr.SumZone;
     CountY:=SetupCountY;  //sumWarmCO2Source;
     SizeCol:=SizeOf(Double)*CountY;//
     FullSize:=SizeCol*CountX;
     SendByte:=0; //FullSize;
     ReceiveByte:=0;
     Pref:='Расчеты';  //ProgMess[198];
     NameBlock:='Уставки расчетов';  //ProgMess[198];
     FixRow:=1;
     ConstNames:=Addr(NameSettings[1]);
     XNames:=Addr(XNamesSettings[1]);
     XNamesCount:=1;
//     SavingConstNames:=True;
//     Translator:=CountY;
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
  WarmGroupSource:array[1..sumWarmCO2Source] of word=
        (70,78,86,94,102,130);  //44
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

procedure TWarmGroupConfig.FindWarmMax(vZone,vGroup:word; var MaxGroup:double; var vTxt:string);
var Contur,PosY:integer;   //x,,nGroup
    res:double;
    st:string;
begin
  for Contur:=1 to sumWarmContur do
    begin
    PosY:=(vZone-1)*sumWarmContur+Contur;
    if vGroup <> round(LoadXYvirt(cOutBlock,1,PosY,st)) then continue;
    res:=ParentCtr.Block[0].LoadXYvirt(cOutBlock,vZone,WarmGroupSource[Contur],st);
    if res > MaxGroup then begin MaxGroup:=res; vTxt:=st; end;
    end;
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
//--------------------Инициализация блока параметры-----------
//************************************************************

procedure TControl_DZ.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
//     if (CountX<1) or (CountX>5) then CountX:=1;
     CountY:=DZ_SumParUpr;
     SizeCol:=DZ_EndParUpr;
     FullSize:=SizeCol*CountX+5;
     SendByte:=FullSize;
     Pref:=ProgMess[198];    //'Параметры';
     NameBlock:=ProgMess[199];    //'Параметры управления';
     FixRow:=1;
     ConstNames:=Addr(DZ_NameParUpr[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
end;

{***********************************************************
--------------------Загрузка значений блока параметры-------
************************************************************}
function TControl_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pContr:pByteArray;
begin
     pContr:=Adr;
     Result:=ValX;
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        Exit;
        end;
     Result:=Convers(ConstNames[ValY].Name
            ,Addr(pContr^[ConstNames[ValY].Index+SizeCol*(ValX-1)+5]),ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
end;
{***********************************************************
--------------------Инициализация блока конфигурация-----------
************************************************************}
//begin-----------Блок конфигурация оборудования-----------------

const DZ_SumConfig=34;
      DZ_SizeConfig=36;
      MAX_NUM_RELAY_DZ=88;
var NameConfigOutputs:array [1..DZ_SumConfig] of TNameConst=(
(Name:'Смесительный клапан 1';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:0;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 1';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:16;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:1;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:17;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 3';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:2;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 3';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:18;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 4';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:3;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 4';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:19;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 5';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:4;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 5';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:20;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//11
(Name:'Фрамуги Север';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:5;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Фрамуги Юг';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:6;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Экран горизонт термический';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:7;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Экран горизонт затеняющий';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:8;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Экран вертик термический сторона 1';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:9;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Экран вертик термический сторона 2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:10;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Экран вертик термический сторона 3';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:11;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Экран вертик термический сторона 4';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:12;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//(Name:'Количество вертик экранов';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:4;
//    Index:32;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Дозатор СО2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:13;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//20
(Name:'Исполнитель дозации СО2 (0-задвижка, 1-клапан)';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:1;
    Def:HIDE_MIN_MAX;Index:33;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Вентиляторы';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:21;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//22
(Name:'Воздушный обогрев';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:22;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'СИО Насос';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:23;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'CИО клапаны';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:24;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Количество клапанов CИО';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:8;
    Index:34;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор давления';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:14;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Досвет';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:25;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Кол-во градаций досветки';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:10;
    Index:35;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:26;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//(Name:'Авария';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
//    Index:32;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//30
(Name:'Регулятор1';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:27;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:28;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор3';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:29;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор4';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:30;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор5';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY_DZ;
    Index:31;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG)
);

procedure TConfig_DZ.Init;//override;
begin
     CountY:=DZ_SumConfig;
     CountX:=ParentCtr.SumZone;
     SizeCol:=DZ_SizeConfig;
     FullSize:=SizeCol*DZ_MAX_SUM_ZONE;
     if (ParentCtr.IsIPC=true) then
       FullSize:=SizeCol*2*DZ_MAX_SUM_ZONE;
     SendByte:=FullSize;
     Pref:=ProgMess[193];       //'Конфигурация';
     NameBlock:=ProgMess[194];  //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(NameConfigOutputs[1]);
     Translator:=CountY;
//     SavingConstNames:=True;
end;
{***********************************************************
--------------------Инициализация блока настройка-----------
************************************************************}

procedure TTune_DZ.Init; //override;
begin
     CountX:=1;
     CountY:=DZ_SumParTune;
     SizeCol:=DZ_EndTune;
     FullSize:=SizeCol*CountX+5;
     SendByte:=FullSize;
     Pref:=ProgMess[229];   //'Настройка';
     NameBlock:=ProgMess[230];   //'Точная настройка';
     FixRow:=1;
     ConstNames:=Addr(DZ_NameTuneClimate[1]);
//     SavingConstNames:=True;
     Translator:=CountY;
end;
{***********************************************************
--------------------Инициализация блока механизмы-----------
************************************************************}
procedure TParMec_DZ.Init; //override;
begin
     CountX:=ParentCtr.SumZone;
     CountY:=DZ_SumParMec;
     SizeCol:=DZ_sizeParMec;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:=ProgMess[227];         //'Механизмы';
     NameBlock:=ProgMess[228];    //'Параметры механизмов';
     FixRow:=1;
     ConstNames:=Addr(DZ_NameParMec[1]);
     Translator:=CountY;
end;

{***********************************************************
--------------------Загрузка значений блока механизмы-------
************************************************************}
function TParMec_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:pByteArray;
begin
     ADat:=Adr;
     Result:=ValX;
     if ValY=0 then
       begin
       if ValX=0 then begin Txt:=ParentCtr.CtrName;Exit;end;
       Txt:=ParentCtr.GetTextZona(ValX,ValY);
//       if Txt='' then Txt:='Значение';
       Exit;
       end;
           begin
           Result:=Convers(ConstNames[ValY].Name
             ,Addr(ADat^[ConstNames[ValY].Index+SizeCol*(ValX-1)])
             ,ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
           end;
end;
{***********************************************************
--------------------Инициализация блока ручное--------------
************************************************************}

procedure THandMode_DZ.Init;//override;
begin
     CountY:=DZ_SumTeplMecan;
     CountX:=ParentCtr.SumZone*2;
     SizeCol:=DZ_sizeHand;
     FullSize:=ParentCtr.Block[0].FullSize;
     StartSend:=DZ_iMechanic;
     SendByte:=DZ_sizeHand;       //*DZ_MAX_SUM_ZONE;
     Pref:=ProgMess[226];         //'Ручное';
     NameBlock:=ProgMess[213];    //'Ручное управление';
     FixRow:=1;
     ConstNames:=Addr(DZ_cDefineHot[DZ_StTeplMecan]); //Addr(NameConfigOutputs[1]);
     Sort := srHowHot;
     EnableXML:=False;
     ActHandZone:=0;
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
        StartSend:=DZ_iTepl+DZ_iMechanic+DZ_sizeTepl*(ActHandZone-1);    //DZ_iTepl+
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
      pModeOutputs:=Addr(pModeOutputs^[DZ_iTepl+DZ_sizeTepl*(nZone-1)+ConstNames[ValY].Index]);
      if (Mode1_Hand0=0) and (ActHandZone=nZone)
        then pModeOutputs:=Addr(DZ_CopyHand[ConstNames[ValY].Index - DZ_iMechanic]);
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
end;
{***********************************************************
--------------------Загрузка значений блока таймер-------------
************************************************************}
function TTimer_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  pTimer:^rTimer_DZ;
     tInInt:InInt;
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
     GridCellColor:=GetZoneColor(pTimer^[ValX][DZ_iTimerZone],ValY);
     end;
  case ConstNames[ValY].TipSens of
    DDWP:
        begin
        SetInInt(tInInt,
          GetDDWP(pTimer^[ValX][DZ_iTaskTemper]*256+pTimer^[ValX][DZ_iTaskTemper+1],
                  pTimer^[ValX][DZ_iTaskHumin]*100));
//                  pTimer^[ValX][DZ_iTaskHumin]*256+pTimer^[ValX][DZ_iTaskHumin+1]));
        Result:=Convers(ConstNames[ValY].Name,
         Addr(tInInt),SSpS0,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
        if(ValX>0) and (vInBlock=cInBlock) then
             begin
             NewRH:=GetRH_DDWP(pTimer^[ValX][DZ_iTaskTemper]*256+pTimer^[ValX][DZ_iTaskTemper+1],
                          GetInInt(tInInt)) div 100;
             if (NewRH > 0) and (NewRH <> pTimer^[ValX][DZ_iTaskHumin]) then
                pTimer^[ValX][DZ_iTaskHumin]:=NewRH;

{             SetInInt(tInInt,
               GetRH_DDWP(pTimer^[ValX][DZ_iTaskTemper]*256+pTimer^[ValX][DZ_iTaskTemper+1],
                          GetInInt(tInInt)));
             if (tInInt[0]>0) and (tInInt[0]<>pTimer^[ValX][DZ_iTaskHumin]) then
                begin
                pTimer^[ValX][DZ_iTaskHumin]:=tInInt[0];
                pTimer^[ValX][DZ_iTaskHumin+1]:=tInInt[1];
                end;}
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

function TTimer_DZ.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
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
  ActiveZone:=pTimer^[(Col-1)*SizeCol+DZ_iTimerZone];
  if (ActiveZone < 1) or (ActiveZone > SumZone) then ActiveZone:=-1;
  iY:=0;
  for iX:=1 to CountX do
      begin
      nZone:=pTimer^[(iX-1)*SizeCol+DZ_iTimerZone];
      if (nZone<=0) or (nZone > SumZone) then continue;
      dbStart:=(pTimer^[(iX-1)*SizeCol+DZ_iTimeStart]*256+pTimer^[(iX-1)*SizeCol+DZ_iTimeStart+1])*cMin;
      dbEnd:=(pTimer^[(iX-1)*SizeCol+DZ_iTimeEnd]*256+pTimer^[(iX-1)*SizeCol+DZ_iTimeEnd+1])*cMin;
      dbDan:=LoadXY(cOutBlock,iX,Row,st);
      tsk.valDt:=(pTimer^[(iX-1)*SizeCol+DZ_iTaskTemper]*256+pTimer^[(iX-1)*SizeCol+DZ_iTaskTemper+1])/100;
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
                Txt:=Txt+' '+GetWindDirect(Result,PByteArray(ParentCtr.Block[0].Adr)^[DZ_iSensOut+6]
                + PByteArray(ParentCtr.Block[0].Adr)^[DZ_iSensOut+7]); //[pHot^[-3]+pHot^[-2]);
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
                    Addr(pHot^[DZ_iPulRegul+ValY-DZ_Y_START_REGUL]),SS,vInBlock,ValX,ValY,Txt,'%');
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
      vData:=Ctr.Block[0].LoadXY(cOutBlock,Zone,DZ_posZoneMaxWater,Txt);
      if vData > MaxData then
                begin
                MaxData:=vData;
                iMax:=x;
                TxtMax:=Txt;
                end;
      end;
  ParentCtr.Block[0].LoadXY(cInBlock,1,DZ_posAbsMaxWater,TxtMax);
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
     CountX:=4;
     CountY:=DZ_SUM_METEO+DZ_SumTeplSens*ParentCtr.SumZone;
     SizeCol:=SizeOf(InInt)*CountY;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:=ProgMess[275];   //'Допуски';
     NameBlock:=ProgMess[276];   //'Контрольные допуски';
     EnableXML:=False;
end;

function TLev_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pLev:^mLev;
    lTepl,iLev,nSens,nLev:word;
begin
with ParentCtr as TFClimat403 do
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
  if ValY > DZ_SUM_METEO then
       begin
       nSens:=DZ_StTeplSens+((ValY-1-DZ_SUM_METEO) div SumZone);
       lTepl:=(ValY-1-DZ_SUM_METEO) mod  SumZone;
       iLev:=DZ_SUM_METEO+lTepl*DZ_SumTeplSens+((ValY-1-DZ_SUM_METEO) div SumZone);//StTeplSens+lTepl*SumTeplASens;
       end
   else
       begin
       nSens:=ValY;
       iLev:=nSens-1;
       end;
  Result:=Convers(GetTextZona(lTepl+1,nSens{ValY})+' '+Block[0].ConstNames[nSens].Name,
          Addr(pLev^[iLev][nLev]),Block[0].ConstNames[nSens].Frm,vInBlock,ValX,ValY,Txt,Block[0].ConstNames[nSens].Ed);
  end;
end;


//----------КАНАЛЫ ДАТЧИКОВ C-403 ------------------
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

procedure TCalSens_DZ.Init;//override;
begin
     CountX:=8; //6;
     CountY:=DZ_SUM_METEO+DZ_SumTeplSens*ParentCtr.SumZone+1;
     SizeCol:=2+10*(CountY-1);
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[203];  //'Калибровки';
     NameBlock:=ProgMess[204];  //'Калибровка датчиков';
end;

const CommonZone=100;
//             DZ_TestExistSens=   DZ_SumCommon+DZ_SumTeplSens;

function TCalSens_DZ.GetExistSens(nZone,nSens:integer):Boolean;
var pCal:^rCalSens;
    vNumRecord:integer;
begin
  pCal:=Adr;
  Result:=True;
  if  (nZone <= 0)
    or (nSens <= 0)
    or ( Not Ready)
    then Exit;
  vNumRecord:=-ParentCtr.Block[0].ConstNames[nSens].Mech;
  if vNumRecord <=0 then Exit;
  if nSens <= DZ_SUM_METEO then Result:=pCal^.CalSens[vNumRecord].NPort > 0 else
  Result:=pCal^.CalSens[DZ_SUM_METEO+vNumRecord+(nZone-1)*DZ_SumTeplSens].NPort > 0;

{  if nSens <= DZ_SUM_METEO then
    begin
    Result:=pCal^.CalSens[nSens].NPort > 0;
    Exit;
    end;

  if  (nSens >= DZ_StTeplSens) and (nSens < (DZ_StTeplSens+DZ_SumTeplSens))
    then
      begin
      nSens:=nSens-DZ_StTeplSens+1+DZ_SUM_METEO+nZone*DZ_SumTeplSens;
      Result:=pCal^.CalSens[nSens].NPort > 0;
      end }
end;

function TCalSens_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pCal:^rCalSens;
    nSens,nParCal,RecordNum,nZone,vSumZone,PortNum:word;
    pSensNum:PByteArray;
begin
 vSumZone:=ParentCtr.SumZone;
 pCal:=Adr;
 nZone:=CommonZone;         //vTepl
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
             7:Txt:='Номер';  //ProgMess[269];
             8:Txt:='Поправка';  //ProgMess[269];
             end;
        Exit;
        end;
  if ValY=CountY then
       begin
       if (ValX>1) then begin Result:=0; Txt:='';Exit; end;
       nSens:=1;
       Result:=Convers(Format(ProgMess[270],[nSens]),   //'Для Порта N%d частота на 1000 мВ'
       Addr(pCal^.CalPort{[nSens]}),SSSS,vInBlock,ValX,ValY,Txt,ProgMess[272]);    //'Гц');
       Exit;
       end;
  if ValY > DZ_SUM_METEO then
       begin
       nSens:=(ValY-1-DZ_SUM_METEO) div vSumZone;
       nZone:=(ValY-1-DZ_SUM_METEO) mod  vSumZone;
       RecordNum:=nSens+1+DZ_SUM_METEO+nZone*DZ_SumTeplSens;
       nSens:=nSens+DZ_StTeplSens;
       end
   else
       begin
       nSens:=ValY;
       RecordNum:=nSens;
       end;
    PortNum:=pCal^.CalSens[RecordNum].NPort;
    if vInBlock <> cInBlock then Txt:='';
    with ParentCtr as TFClimat403 do
    case nParCal of
      0: if nZone=CommonZone then Txt:=Block[0].ConstNames[nSens].Name
        else Txt:=GetTextZona(nZone+1,nSens)+' '+Block[0].ConstNames[nSens].Name;
      1: Result:=Convers('',
       Addr(pCal^.CalSens[RecordNum].NPort),SS,vInBlock,ValX,ValY,Txt,'');
      2: if PortNum < 10 then Result:=Convers('',
       Addr(pCal^.CalSens[RecordNum].NInput),SS,vInBlock,ValX,ValY,Txt,'');
      3: if PortNum < 10 then Result:=Convers('',
       Addr(pCal^.CalSens[RecordNum].kk[1]),Block[0].ConstNames[nSens].Frm,vInBlock,ValX,ValY,Txt,Block[0].ConstNames[nSens].Ed);
      4: if PortNum < 10 then Result:=Convers('',
       Addr(pCal^.CalSens[RecordNum].fk[1]),SSSS,vInBlock,ValX,ValY,Txt,ProgMess[271]);    //'мВ'
      5: if PortNum < 10 then Result:=Convers('',
       Addr(pCal^.CalSens[RecordNum].kk[2]),Block[0].ConstNames[nSens].Frm,vInBlock,ValX,ValY,Txt,Block[0].ConstNames[nSens].Ed);
      6: if PortNum < 10 then Result:=Convers('',
       Addr(pCal^.CalSens[RecordNum].fk[2]),SSSS,vInBlock,ValX,ValY,Txt,ProgMess[271]);    //'мВ'
      7: if PortNum >= 10 then
        begin
        pSensNum:=Addr(pCal^.CalSens[RecordNum].fk[1]);
        if Txt <> '' then
            for PortNum:=0 to 7 do
              pSensNum^[PortNum]:= StrToInt(copy(Txt,4*PortNum+1,3));
//        Txt:=copy(Txt,1,Length(Txt)-1);    // удалить тире
        Txt:='';
        for PortNum:=0 to 7 do
          Txt:=Txt+Format('%3.3d-',[pSensNum^[PortNum]]);
        Txt:=copy(Txt,1,Length(Txt)-1);    // удалить тире
        end;
      8:  if PortNum >= 10 then
        begin
        if Txt <> '' then
          begin
          Result:=StrToFloat(txt);
          pCal^.CalSens[RecordNum].NInput:=round(Result*10);
          end;
       Result:=pCal^.CalSens[RecordNum].NInput;
       Result:=Result/10;
       Txt:=Format('%3.1f',[Result]);
       end;
      end;   //end case
end;

//--------- END ДАТЧИКИ C-403      ------------------

//--------- START ARXIV PC ---------------
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

procedure TBlArxPC_DZ.Init;//override;
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
     Translator:=CountConstNames;
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
        end
  else
  begin
  ValY:=ValY-5;
  nVal:=ValY div cSumStat+1;
  nStat:=ValY mod cSumStat+1;
  if ValX=0 then
        begin
        Result:=ParentCtr.Block[0].LoadXY(cOutBlock,0,ListValues[nVal],Txt);
        Txt:=Txt+' '+ConstNames[nStat+4].Name;
        end
  else
        begin
        Result:=pPCArx^.StatValues[ValX][nVal][nStat];
        if Result = 0 then Txt:='' else
          begin
          case ConstNames[nStat+4].Frm of
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
  if ValX>0 then AccessW:=RW_NOEDIT;
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

function TBlArxPC_DZ.CalcDayArxPC(ArxDate:TDateTime):Boolean;
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
      pPCArx^.StatValues[nZone][nVal][iMaxDay]:=-1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMaxDay]:=0;
      pPCArx^.StatValues[nZone][nVal][iMaxNight]:=-1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMaxNight]:=0;
      pPCArx^.StatValues[nZone][nVal][iMinDay]:=1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMinDay]:=0;
      pPCArx^.StatValues[nZone][nVal][iMinNight]:=1000;
      pPCArx^.StatValues[nZone][nVal][iTimeMinNight]:=0;
      end;
  repeat
     NowDay:=(Block[0] as THot_DZ).DayTime;
    if NowDay then pPCArx^.TicDay:=pPCArx^.TicDay+1;
    if NowDay and (HourOf(Block[0].BlDate) > 12) then
        begin
        vVal:=Block[0].LoadXY(cOutBlock,1,DZ_SSumSun,st);
        if round(vVal) > pPCArx^.SumSun then pPCArx^.SumSun:=round(vVal);
        end;
    pPCArx^.Tic:=pPCArx^.Tic+1;
    for nZone:=1 to CountX do
    for nVal:=1 to cSumListVal do
      begin
//      iStatVal:=i*SumStat;
      vVal:=Block[0].LoadXY(cOutBlock,nZone,ListValues[nVal],st);
      pPCArx^.StatValues[nZone][nVal][iMidl]:=pPCArx^.StatValues[nZone][nVal][iMidl]+vVal;
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
  for nVal:=1 to cSumListVal do
    begin
//      iStatVal:=i*SumStat;
    if(pPCArx^.StatValues[nZone][nVal][iMaxDay]=-1000) then pPCArx^.StatValues[nZone][nVal][iMaxDay]:=0;
    if(pPCArx^.StatValues[nZone][nVal][iMaxNight]=-1000) then pPCArx^.StatValues[nZone][nVal][iMaxNight]:=0;
    if(pPCArx^.StatValues[nZone][nVal][iMinDay]=1000) then  pPCArx^.StatValues[nZone][nVal][iMinDay]:=0;
    if(pPCArx^.StatValues[nZone][nVal][iMinNight]=1000) then  pPCArx^.StatValues[nZone][nVal][iMinNight]:=0;

    if pPCArx^.Tic>0 then
        pPCArx^.StatValues[nZone][nVal][iMidl]:=pPCArx^.StatValues[nZone][nVal][iMidl]/pPCArx^.Tic;
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
     Pref:='Энергетика';  //'Архив ПК';
     NameBlock:='Архив энергетики';  //'Архивные данные в ПК';
     ConstNames:=Addr(NameNewAchivePC[1]);
     CountConstNames:=cCountNameNewAchivePC;
     Translator:=CountConstNames;
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
        with (ParentCtr as TFClimat403) do begin
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
        with (ParentCtr as TFClimat403) do begin
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
        with (ParentCtr as TFClimat403) do begin
          Result:=LoadXYvirt(cOutBlock,ValX,ARX_Light,Txt)*Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSPLight,Txt)*
            (100-Settings_DZ.LoadXYvirt(cOutBlock,ValX,cSKLight,Txt))*0.86;
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end;
        end;
    ARX_CalcTotal:  begin
        with (ParentCtr as TFClimat403) do begin
          Result:=LoadXYvirt(cOutBlock,ValX,ARX_OutHeat,Txt)-LoadXYvirt(cOutBlock,ValX,ARX_LightHeat,Txt)-LoadXYvirt(cOutBlock,ValX,ARX_ScreenHeat,Txt);
          if Result<0 then Result:=0;
          Txt:=Format('%3.3f',[Result]);
          Txt:=Txt+ConstNames[ValY].Ed;
        end;
        end;
    ARX_K:  begin
        with (ParentCtr as TFClimat403) do begin
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
        with (ParentCtr as TFClimat403) do begin
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
    if CalcDayArxPC(StartDate) then begin SaveToFile; if ParentCtr.DataPath='' then ArchivToWeb; end;
    StartDate:=StartDate+1;
    Application.ProcessMessages;
   // TopMesForm.vLabel.Caption:=DateTimeToStr(StartDate);
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

//--------- START STRATEGY С-403------------------
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

//--------------------------------------------------- start variant 326

const SNameStrategy=4;
      sizeYStrategy=SumConturStrategy;
      sizeXStrategy=7;
      iConfKont=5;
var NameAction:array [1..SumConturStrategy] of TNameConst=(
 (Name:'Нагрев контура 1';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_PUMP1;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 2';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_PUMP2;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 3';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_PUMP3;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 4';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_PUMP4;
    AccessR:RW_GUEST;AccessW:RW_USER),
 (Name:'Нагрев контура 5';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_PUMP5;
    AccessR:RW_INVISIBLE;AccessW:RW_USER),
 (Name:'Закрытие фрамуг ';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_FRAM_SOUTH;
    AccessR:RW_INVISIBLE;AccessW:RW_USER),
 (Name:'Включение СИОД ';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_SIO_PUMP;
    AccessR:RW_INVISIBLE;AccessW:RW_USER),
 (Name:'Закрытие экрана ';Frm:SS;Ed:'';TipSens:TipControl;
    Min:-100;Max:100;Def:HIDE_MIN_MAX;
    Index:1;GridColor:$0030df;Mech:DZM_SCREEN_TG;
    AccessR:RW_INVISIBLE;AccessW:RW_USER)
        );

LevStrategy:array[1..sizeYStrategy,1..sizeXStrategy,1..2] of Shortint=(
//температур,влажности,оптимальн, эконом , мощность, разделение, помошник
     ((1,100),(-50,50),(0,50),(20,100),(40,60),(0,4),(0,8)),      //1
     ((1,100),(-50,50),(0,50),(20,100),(30,80),(0,4),(0,8)),         //2
     ((1,100),(-50,50),(0,50),(20,100),(20,80),(0,4),(0,8)),       //3
     ((1,100),(-50,50),(0,50),(20,100),(20,80),(0,4),(0,8)),       //4
     ((1,100),(-50,50),(0,50),(40,100),(20,60),(0,4),(0,8)),      //5
     ((1,100),(-50,50),(0,50),(50,100),(20,80),(0,4),(0,8)),      //Фрам
     ((1,100),(-50,50),(0,50),(0,100),(0,40),(0,4),(0,8)),       //Экран
     ((1,100),(-50,50),(0,50),(0,100),(0,40),(0,4),(0,8))       //СИО
     );
type mStrategy=array[1..sizeYStrategy,1..sizeXStrategy] of Byte;
procedure TStrategy_DZ.Init;//override;
begin
//     Num:=blStrategy;
     CountY:=SumConturStrategy;
     CountX:=3; //SNameStrategy;
     SizeCol:=SizeOf(mStrategy);
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[233];   //'Стратегия';
     NameBlock:=ProgMess[234];   //'Стратегия управления';
     FixRow:=1;
     ConstNames:=Addr(NameAction[1]);
//     CountConstNames:=CountY-1;
//     SavingConstNames:=True;
     Translator:=CountY;
end;

function TStrategy_DZ.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
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

function TFClimat403.PaintTree:integer;

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
end;
//---------------------------------------

procedure TFClimat403.SetPicCtr;
var
  ZoneLevAlarm,MaxLevAlarm,iY,iX,vLevel,PozY:integer;
  Color:TColor;
  st:string;
begin
//  inherited;
  ListView1.Clear;
  if Not Block[0].Ready  then Exit;
  (Block[0] as THot_DZ).TestAlarmSens;
  PaintTree;
  ListView1.Items.BeginUpdate;
  MaxLevAlarm:=0;
{  STZone1.Visible:=False;
  STZone2.Visible:=False;
  STZone3.Visible:=False;
  STZone4.Visible:=False;  }
  with Block[0] do
  for iX:=1 to CountX do
    begin
    ZoneLevAlarm:=0;
    for iY:=1 to CountDiagnosis do
          begin
          if Not GetDiagnosis(iX,iY,vLevel,PozY,Color,st)
                or (vLevel <= 0 )
                or (PozY =0 )  then continue;
          if vLevel > ZoneLevAlarm then ZoneLevAlarm:=vLevel;
          HotMessage(CtrName,st,clNone,Color);
          with ListView1.Items.Add do
            begin
            Caption:=st;
            Data:=Pointer(Color);
            if vLevel = alFatal then ImageIndex:=imNoReal
            else ImageIndex:=imNoRealPC;
            end;
          end;
    if ZoneLevAlarm  > MaxLevAlarm then MaxLevAlarm:=ZoneLevAlarm;
    case iX of
      1: begin
         STZone1.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         STZone1.Font.Color:=Color;
         if CountX> 1 then STZone1.Visible:=True;
         end;
      2: begin
         STZone2.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         STZone2.Font.Color:=Color;
         STZone2.Visible:=True;
         end;
      3: begin
         STZone3.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         STZone3.Font.Color:=Color;
         STZone3.Visible:=True;
         end;
      4: begin
         STZone4.Caption:=GetTextFromAlarm(ZoneLevAlarm,Color);
         STZone4.Font.Color:=Color;
         STZone4.Visible:=True;
         end;
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
//##   BlockArxPC.CalcAllArxPC(Now);
//##   (blPCArchive as TNewArxPC_DZ).CalcAllArxPC(Now);
   PSost.Caption:=GetTextFromAlarm(MaxLevAlarm,Color);
   PSost.Color:=Color;
end;

procedure TFClimat403.TreeView1Edited(Sender: TObject; Node: TTreeNode;
  var S: String);
var xy:Txy;
begin
 if Node.HasChildren then Exit;
 xy.Ptr:=Node.Data;
 with Block[0] do
  if (xy.Y>0) and (xy.Y <= CountY) then
   ConstNames[xy.Y].Name:=S;
end;

procedure TFClimat403.TreeView1Change(Sender: TObject; Node: TTreeNode);
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

procedure TFClimat403.SetChar;
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
end;

function TFClimat403.BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer;
begin
  Result:=inherited BeforeCellSelect(Grid,ComboBox);
  if GetGridBlock(Grid)=HandMode then  FHandClim.Exec(Self);
end;

procedure TFClimat403._TBClearClick(Sender: TObject);
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

procedure TFClimat403.TreeView1CustomDrawItem(Sender: TCustomTreeView;
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

procedure TFClimat403.SetView;
begin
 with Chart1.BottomAxis do
   begin
   Automatic:=True;
   end;
end;

procedure TFClimat403.SELongChange(Sender: TObject);
begin
  inherited;
  SetView;
end;

procedure TFClimat403.DateCharChange(Sender: TObject);
begin
  inherited;
  if Not FileExists(Block[0].FileNameFromDate(DateChar.DateTime)) then
    begin
     MessageDlg(FormatDateTime(ProgMess[16]+' '+LongDateFormat,DateChar.DateTime)   //'Нет данных за dd.mm.yyyy'
     ,mtWarning,[mbYes],0);
     DateChar.DateTime:=Now;
   end;
end;

procedure TFClimat403.InfoLabelClick(Sender: TObject);
begin
  inherited;
     NowSens:=TagToSens((Sender as TComponent).Tag);
     NowTepl:=TagToZone((Sender as TComponent).Tag);
// вывести график
     SetChar;
     if Width<700 then WindowState:=wsMaximized;
end;

procedure TFClimat403.Chart1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if (OldX<>-1) then begin
    DrawCross(Chart1,OldX,OldY);  { draw old crosshair }
    OldX:=-1;
    end;
  if PtInRect( Chart1.ChartRect, Point(X-Chart1.Width3D,Y+Chart1.Height3D)  ) then
   begin
   DrawCross(Chart1,X,Y);  { draw crosshair at current position }
    { store old position }
   OldX:=X;
   OldY:=Y;
   LTimeChart.Caption:=FormatDateTime(ShortDateFormat+' '+ShortTimeFormat,Chart1.Series[0].XScreenToValue(X)); //'dd/mm в hh:nn'
   LTimeChart.Left:=X-20;
   end;
end;

procedure TFClimat403.Chart1AfterDraw(Sender: TObject);
begin
  inherited;
  OldX:=-1;  // Reset old mouse position
end;

procedure TFClimat403._TBPrintClick(Sender: TObject);
begin
  inherited;
  if FMain.PrinterSetupDialog1.Execute then FMain.PrintChart(Self.CtrName,Chart1);
end;

procedure TFClimat403.ListView1CustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  ListView1.Canvas.Font.Color:=TColor(Item.Data);
end;

{function TFClimat403.CtrFromFile(const NameFile:string):Boolean;
begin
result:=inherited CtrFromFile(NameFile);
Block[0].SetTree(TreeView1);
_TBClearClick(Self);
LCtr.Caption:=CtrName;
DateChar.DateTime:=Now;
end;
}
procedure TFClimat403.SpeedButton14Click(Sender: TObject);
begin
 FHandClim.Exec(Self);
end;

{function TFClimat403.GetTemp(fTask:integer;fDo:integer;ValX:integer;inDate:TDateTime):integer;
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

procedure TFClimat403.TBZone1Click(Sender: TObject);
begin
  inherited;
  ActivZone:=TagToZone((Sender as TToolButton).Tag);
  LNZone.Caption:=ZoneBar.Buttons[ActivZone-1].Caption;
  SetHints;
  SetPicValue;
end;

end.
