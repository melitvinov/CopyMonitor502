unit GGraf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, TeEngine, Series, StdCtrls, TeeProcs, Chart, ExtCtrls, ToolWin,
  inifiles,Buttons, GanttCh, Menus,FileCtrl,Printers,ActnList,Gauges,
  FConstType, FController, PicCtr, Spin, ImgList, Grids, MPlayer, //SelBit,
  FPanel,Translate502,MessageU, UnitPasw, FPicPanel,DateUtils, Grids_ts,
  TSGrid, BubbleCh, AppEvnts, GIFDef, GIFComponent,PaswordDlg, FPicLabel;    //Port,SetGrid,

const MesTest='M 1.00.15';  // 14 - co2 теперь можно поставить 2
                            // 15 - новая стратегия и выгрузка данным ряд правок с названиями величин

type
  TFMain = class(TForm)
    MM1: TMainMenu;
    MenuFile: TMenuItem;
    MenuView: TMenuItem;
    Sost: TMenuItem;
    DayZD: TMenuItem;
    Doz: TMenuItem;
    Arx: TMenuItem;
    Par: TMenuItem;
    mHelp: TMenuItem;
    FileNew: TMenuItem;
    OpenDialog1: TOpenDialog;
    PMSetNameX: TPopupMenu;
    PMPar: TMenuItem;
    PMColor: TMenuItem;
    PMWidth: TMenuItem;
    N1: TMenuItem;
    IL2: TImageList;
    FileClose: TMenuItem;
    N2: TMenuItem;
    FilePrint: TMenuItem;
    N3: TMenuItem;
    FileExit: TMenuItem;
    Edit: TMenuItem;
    FilePrintSetup: TMenuItem;
    mPDFMon: TMenuItem;
    mAbout: TMenuItem;
    ListCtr: TTabControl;
    MPwav: TMediaPlayer;
    mContex: TMenuItem;
    ChVoice: TMenuItem;
    YesName: TMenuItem;
    SostTxt: TMenuItem;
    CtrOpen: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    IL3: TImageList;
    PrinterSetupDialog1: TPrinterSetupDialog;
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    SaveDialog1: TSaveDialog;
    mnWidth: TMenuItem;
    mnLong: TMenuItem;                      
    mnMeteoTime: TMenuItem;
    mnColorGrid: TMenuItem;
    maExportData: TMenuItem;
    N5: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    mnLanguage: TMenuItem;
    mClimateHelp: TMenuItem;
    TimerNet: TTimer;
    mnNetManagement: TMenuItem;
    mnSaveName: TMenuItem;
    mnSaveView: TMenuItem;
    mnTransferSun: TMenuItem;
    N15: TMenuItem;
    mnKeepJournal: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    ILTank: TImageList;
    ILIrrigPump: TImageList;
    ILTools: TImageList;
    mnRusLng: TMenuItem;
    mTranslator: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    mnInternet: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    mnViewEarlyDay: TMenuItem;
    N21: TMenuItem;
    XML1: TMenuItem;
    mnOnTestArtefact: TMenuItem;
    mnArchServerAPL: TMenuItem;
    mnAudServerAPL: TMenuItem;
    pmSt: TMenuItem;
    mnTS: TMenuItem;
    mnActiveTree: TMenuItem;
    MainStatus: TStatusBar;
    N22: TMenuItem;
    Bevel1: TBevel;
    P1: TPanel;
    VSplitter: TSplitter;
    P2: TPanel;
    GChart: TChart;
    LTime: TLabel;
    LAxisR: TLabel;
    LAxisL: TLabel;
    Series9: TGanttSeries;
    ASer1: TLineSeries;
    ASer2: TLineSeries;
    ASer3: TLineSeries;
    ASer4: TLineSeries;
    ASer5: TLineSeries;
    ASer6: TLineSeries;
    ASer7: TLineSeries;
    ASer8: TLineSeries;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    BottomPanel: TPanel;
    mnView: TMenuItem;
    mnViewTab: TMenuItem;
    Track: TTrackBar;
    ApplicationEvents1: TApplicationEvents;
    HotMesPanel: TPanel;
    RightPanEx: TPanel;
    HSplitter: TSplitter;
    SignalPanel: TPanel;
    SignalGrid: TtsGrid;
    CrossPanel: TPanel;
    FuncChart: TChart;
    Series11: TPointSeries;
    Series10: TFastLineSeries;
    Series12: TFastLineSeries;
    BlocksTreePanel: TPanel;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    TreePanel: TFPanel;
    TreeViewGraf: TTreeView;
    LeftPanEx: TPanel;
    HotGrafPanel: TPanel;
    FloatChart: TChart;
    LVal: TLabel;
    GName: TLabel;
    Series13: TLineSeries;
    N29: TMenuItem;
    HotMesGrid: TtsGrid;
//    Panel1: TPanel;
//    AutoHotCheck: TCheckBox;
//    AllVisCheck: TCheckBox;
    Panel1: TPanel;
    AutoHotCheck: TCheckBox;
    AllVisCheck: TCheckBox;
    mnAutoSynxTime: TMenuItem;
    N30: TMenuItem;
    ilGrBtn: TImageList;
    GridPM: TPopupMenu;
    N31: TMenuItem;
    N32: TMenuItem;
    N34: TMenuItem;
    N33: TMenuItem;
    N35: TMenuItem;
    mnHotArchive: TMenuItem;
    Series14: TLineSeries;
    ToolBar2: TToolBar;
    BOpenArxiv: TToolButton;
    OpenNow: TToolButton;
    ShowLegend: TToolButton;
    BPlay: TToolButton;
    BPause: TToolButton;
    TB1: TToolButton;
    TB2: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolBar1: TToolBar;
    TB9: TToolButton;
    ViewSost: TToolButton;
    TB23: TToolButton;
    TB15: TToolButton;
    TB14: TToolButton;
    TB6: TToolButton;
    TB19: TToolButton;
    TB10: TToolButton;
    TB13: TToolButton;
    TB11: TToolButton;
    TB22: TToolButton;
    BEditBit: TToolButton;
    TB5: TToolButton;
    ToolButton1: TToolButton;
    TB8: TToolButton;
    TB20: TToolButton;
    TB17: TToolButton;
    AVIVoice: TToolButton;
    TB4: TToolButton;
    ToolButton10: TToolButton;
    IL1: TImageList;
    ActionsMain: TActionList;
    aShowSost: TAction;
    aAnalGraf: TAction;
    aBitGraf: TAction;
    aCtrTip: TAction;
    aBlControl: TAction;
    aBlTimer: TAction;
    aBlArxiv: TAction;
    aBase: TAction;
    aPrintScreen: TAction;
    aBigGraf: TAction;
    aSmolGraf: TAction;
    aShowVoice: TAction;
    aOnOffPort: TAction;
    aShowHandControl: TAction;
    aNewCtr: TAction;
    aOpenCtr: TAction;
    aCloseCtr: TAction;
    aCloseMon: TAction;
    aActionsDlg: TAction;
    aShowAnaliz: TAction;
    aShowAudit: TAction;
    aShowWind: TAction;
    aOpenInter: TAction;
    aExportXml: TAction;
    aShowArchGraf: TAction;
    aAVIVoice: TAction;
    aChartColor: TAction;
    aJurnal: TAction;
    aVideo: TAction;
    aOpenFile: TAction;
    aCalibr: TAction;
    N36: TMenuItem;
    mFastCOM: TMenuItem;
    Series15: TLineSeries;
    mBreakCheckSum: TMenuItem;
    aPortStatus: TAction;
    N37: TMenuItem;
    aPasw: TAction;
    ToolButton2: TToolButton;
    ToolBar3: TToolBar;
    CtrCB: TComboBox;
    ArchiveB: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    CBShowAudit: TComboBox;
    FPPLong: TFPicPanel;
    LHeadHour: TLabel;
    SETimeView: TSpinEdit;
    FPPFreq: TFPicPanel;
    LHeadSec: TLabel;
    SETimer1: TSpinEdit;
    ToolButton3: TToolButton;
    aForecast: TAction;
    Label1: TLabel;
    ToolButton4: TToolButton;
    LActYSer: TLabel;
    Track3D: TTrackBar;
    Ver: TShape;
    Gor: TShape;
    procedure Track3DChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SETimeViewChange(Sender: TObject);
    procedure GChartAfterDraw(Sender: TObject);
    procedure BPlayClick(Sender: TObject);
    procedure GChartZoom(Sender: TObject);
    procedure FileSaveClick(Sender: TObject);
    procedure FilePrintSetupClick(Sender: TObject);
    procedure GChartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SelectPClick(Sender: TObject);
    procedure mAboutClick(Sender: TObject);
    procedure BSetGridClick(Sender: TObject);
    procedure ListCtrChange(Sender: TObject);
    procedure OpenNowClick(Sender: TObject);
//    procedure CheckGrafClick(Sender: TObject);
    procedure SETimer1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mContexClick(Sender: TObject);
    procedure mPDF(Sender: TObject);
    procedure SostTxtClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure aShowSostExecute(Sender: TObject);
    procedure aAnalGrafExecute(Sender: TObject);
    procedure aCtrTipExecute(Sender: TObject);
    procedure aBaseExecute(Sender: TObject);
    procedure aPrintScreenExecute(Sender: TObject);
    procedure aBigGrafExecute(Sender: TObject);
    procedure aSmolGrafExecute(Sender: TObject);
//    procedure aOnOffPortExecute(Sender: TObject);
    procedure aShowVoiceExecute(Sender: TObject);
    procedure TreeViewGrafCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure ListCtrDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
//    procedure pmChColorClick(Sender: TObject);
//    procedure pmChFontClick(Sender: TObject);
//    procedure pmHideClick(Sender: TObject);
//    procedure pmOpenAllClick(Sender: TObject);
//    procedure PMSetLabelsPopup(Sender: TObject);
//    procedure pmSaveViewClick(Sender: TObject);
//    procedure pmLoadViewClick(Sender: TObject);
//    procedure pmChangeNameClick(Sender: TObject);
//    procedure pmAutoLoadViewClick(Sender: TObject);
    procedure mnWidthClick(Sender: TObject);
    procedure mnLongClick(Sender: TObject);
    procedure mnMeteoTimeClick(Sender: TObject);
    procedure aBitGrafExecute(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure ShowLegendClick(Sender: TObject);
    procedure ChangeLangClick(Sender: TObject);
    procedure mClimateHelpClick(Sender: TObject);
    procedure TimerNetTimer(Sender: TObject);
    procedure aNewCtrExecute(Sender: TObject);
    procedure aOpenCtrExecute(Sender: TObject);
    procedure aCloseCtrExecute(Sender: TObject);
    procedure aCloseMonExecute(Sender: TObject);
    procedure aActionsDlgExecute(Sender: TObject);
    procedure mTranslatorClick(Sender: TObject);
    procedure aShowAnalizExecute(Sender: TObject);
    procedure CBShowAuditChange(Sender: TObject);
    procedure mnNetManagementClick(Sender: TObject);
    procedure aShowWindExecute(Sender: TObject);
    procedure mnInternetClick(Sender: TObject);
    procedure aOpenInterExecute(Sender: TObject);
    procedure aExportXmlExecute(Sender: TObject);
    procedure aShowArchGrafExecute(Sender: TObject);
    procedure TreeViewGrafChange(Sender: TObject; Node: TTreeNode);
    procedure pmStClick(Sender: TObject);
    procedure mnTSClick(Sender: TObject);
    procedure SignalGridDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure SignalGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SignalGridCellEdit(Sender: TObject; DataCol,
      DataRow: Integer; ByUser: Boolean);
    procedure SignalGridClickCell(Sender: TObject; DataColDown,
      DataRowDown, DataColUp, DataRowUp: Integer; DownPos,
      UpPos: TtsClickPosition);
    procedure aAVIVoiceExecute(Sender: TObject);
    procedure FuncChartDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FuncChartDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SignalGridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure mnViewTabClick(Sender: TObject);
    procedure TrackChange(Sender: TObject);
    procedure SignalGridColResized(Sender: TObject; RowColnr: Integer);
    procedure TreeViewGrafMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeViewGrafStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure SignalGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ApplicationEvents1ShowHint(var HintStr: String;
      var CanShow: Boolean; var HintInfo: THintInfo);
    procedure RightPanExUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure RightPanExDockDrop(Sender: TObject; Source: TDragDockObject;
      X, Y: Integer);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure GIFSShow1Stop(Sender: TObject);
    procedure FloatChartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FloatChartAfterDraw(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure CtrCBChange(Sender: TObject);
    procedure TreeViewGrafDblClick(Sender: TObject);
    procedure HotMesPanelResize(Sender: TObject);
    procedure HotMesGridClickCell(Sender: TObject; DataColDown,
      DataRowDown, DataColUp, DataRowUp: Integer; DownPos,
      UpPos: TtsClickPosition);
    procedure AllVisCheckClick(Sender: TObject);
    procedure mnAudServerAPLClick(Sender: TObject);
    procedure aChartColorExecute(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure aJurnalExecute(Sender: TObject);
    procedure aVideoExecute(Sender: TObject);
    procedure HotMesGridDblClick(Sender: TObject);
    procedure aPortStatusExecute(Sender: TObject);
    procedure aPaswExecute(Sender: TObject);
    procedure aCalibrExecute(Sender: TObject);
    procedure aBlTimerExecute(Sender: TObject);
    procedure aBlControlExecute(Sender: TObject);
    procedure aForecastExecute(Sender: TObject);
    procedure GorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure VerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    OldX,OldY:Longint;
//    RightSer:Integer;
    ChangingSer:Boolean;
//    ChangingCheck:Boolean;
    ChahgingSCount:word;
    SelSeries:integer;
    RightPanExWidth,BottomPanelHeight,LeftPanExWidth:integer;
    VisForm:TFPicCtr;
    boolChangingActive:Boolean;
    ActHotMesCtr:string[80];
    procedure AddChartFromHot;//(SelfCtr:TFPicCtr;nCtr:Byte);
//    procedure AddChartFromFile(SelfCtr:TFPicCtr;nCtr:Byte);
//    procedure SetNameGraf;
    procedure SetGridValueFromActiveCtr;
    function SetGridValueFromSer(var vDate:TDateTime; var vPosY:integer):integer;
    procedure TestReceiveFromNet;
    procedure InternetReady(var Msg:TMessage);message WM_CTLCOLORMSGBOX;
//    procedure SetGGrafFromActiveCtr;
    procedure BuildSeriesFromGrid(iSeries,iListCtr:integer;vActive:Boolean);
    procedure BuildAllGridGrafs(vActiveCtr:TFPicCtr);
    procedure SetAllBitSeries(vCtr:TFPicCtr;BitSer:TGanttSeries);
    procedure SetBitSeries(vCtr:TFPicCtr;BitSer:TGanttSeries);
    procedure BuildFuncChart;
    procedure SetViewTab;
    procedure ExInitForm;
    procedure ShowDockPanel(APanel: TPanel; MakeVisible: Boolean; Client: TControl);
    procedure DefInitDocks;
//    procedure SaveDocks;
    procedure InitHotMesGrid;
    procedure LoadWebServis;
    procedure BuildCalcSeries(iSeries,iListCtr:integer;vActive:Boolean);
    procedure SaveHotMesGrid;
    procedure MarkSeries(vSer,vCol:integer);
    //    procedure NextCtr(vDir:char;var vCtr:TFPicCtr);

  public
    { Public declarations }
    procedure SetButtonArxiv;
    procedure SetMaxMin;
    function AddCtr(const FileNameCtr,DirNameData:string):TFPicCtr;
//    procedure BuildSeriesI(iSeries,iListCtr,ValXSens,ValYSens:integer);
//    procedure FBuildChart;
    procedure NewData(ReadyCtr:TFPicCtr);
    procedure SetActiveCtr(vCtr:TFPicCtr);
    procedure DoActiveCtr(aCtr:TFPicCtr);
    procedure Init(vCopyNum:integer);
    procedure PrintChart(const Title:string;vChart:TChart);
    function GetCtrFromListCtr(const vCtrName:string; vCtrNum:Byte):TFController;
//    procedure ShowGrid(vCtr:TFPicCtr;vNumBlock:word);
    function DrawHotGraf(Block:TBlock; X,Y:integer; ActDate:TDateTime):Boolean;

//    procedure DoShowHint(var HintStr: {Wide}String; var CanShow: Boolean; var HintInfo: THintInfo);

end;

const
  SumBitSer=80;

var
  FMain: TFMain;
  ActiveCtr:TFPicCtr;
  ProperGrid:TProperGrid;
  LastRect:TRect;
{  RowMes:Word;
  ActiveCtr:TFPicCtr;
  ActionMes:string;//[150];
  MesColor:TColor;
//  MeteoLong,MeteoWidth:Double;
//  MeteoZone:Integer;
  CrossHairColor:TColor;
  CrossHairStyle:TPenStyle;
  ClimMaxGradient:word;
  ClimGoTask:Double;
  ClimLongArx:word;
  IsDraw:Boolean;
  LastRect:TRect;
  YesExpData:boolean;
  ChangingBars:Boolean;
  MaxNumCtr:Byte;
  PortVersion:Byte;
  MonitorState:TMonitorState;
// ---- для TFControllera
//    OpenBlockFile:Boolean=False;
    FormFalseTime:Boolean=False;
//    glBlockFile: file of Byte;
    ReportFile:TextFile;
    ProperGrid:TProperGrid;
    gvTime:integer;
//    NowAccess, AccessR, AccessW:integer;
    g_pasw:string[30];
    ConfigExist:TConfigExist;
    imNum:integer;//Byte;
    imColor:TColor;
//    GridCellColor:TColor;
    IsArtefact:Boolean;
    IsFatalValue:Boolean;
//    OnTestArtefact:Boolean;
//  MailHandle:THandle;
  MonitorName:string[50];
  ChangeCtrList:Boolean;
  bCtrTree:Boolean=false;
  ExePath,sHint:string[120];
  CtrImage:integer;
  bNeedMeteo:Boolean=false;
  bActiveMeteo:Boolean=false;
  VisibleBlocks:Boolean=true;
  WebHandle:THandle;
  ArcViewFile:string;
  SayLevel:integer;
  MonCopyNumber:integer;
  ExceptMsg:string;
  LastCtrName:string;
  ForecastAdr:string[80];
}
//  MeteoTipM127_0:integer;
//  ExtBlockFile:TExtBlockFile;

//  NetSend, SaveName, SaveView:Boolean;

procedure HotMessage(const CtrName,Msg:string;vCtrColor:TColor=clBlack{None};vMsgColor:TColor=clBlack{None};vRowColor:TColor=clNone);
//HotMessage(const CtrName,Msg:string;vCtrColor:TColor=clNone;vMsgColor:TColor=clNone;vRowColor:TColor=clNone);
procedure SetVoice(FName:string;status:Byte);
//function ExeDocument(const DocName{,DefaultDir}: string): THandle;
procedure DrawCross(vChart:TChart;AX,AY:Integer);
//procedure SaveWindow(Save:Boolean;Frm:TForm;const NameFrm:string);
//procedure AddSer(Ser:TChartSeries;Val:Double;DatTim:TDateTime);
//procedure ScrollChange(vScroll:TScrollBar;vChart:TChart);
//procedure CalcScrollBarPos(vScroll:TScrollBar;vChart:TChart);
procedure CalcTrackBarPos(vScroll:TTrackBar;vChart:TChart);
//function GetDefaultDataPath: string;
//function GetDefaultDataDir: string;
//procedure DelInTree(TreeView:TTreeView; vCtr:TFPicCtr);
//function AbsD(d:Double):Double;
function IsPasw(vAccess:integer):Boolean;

//procedure SetBitSeries(vCtr:TFPicCtr;BitSer:TGanttSeries);
//function GetStatSeries(Series:TChartSeries;tmAct:double;tmFrm:string):string;  //Grid:TtsGrid;

implementation

{$R *.DFM}

uses NewCtr, About,Report, Voice,ShellAPI,{DBSetup,} //SelPar, DefineBoil,
      DefineClim65, FGrafGrid, HandClim, Port, SetGrid, audit, WindSon,Subr,
      FSetInter, FHotGraf,FSetChart, ClimCalc, EAbout,FDiagnosDlg,FActionsDlg,PortStatus, Strategy501U;

const
  clnCheck=1;
  clnColor=2;
  clnWidth=3;
  clnStairs=4;
  clnAxis=6;
  clnName=5;
  clnValue=7;
  clnMax=8;
  clnMaxTime=9;
  clnMin=10;
  clnMinTime=11;
  clnMidl=12;
  clnPeriod=13;
  clnMult=15;//14;
  clnDif=16;
  clnAver=17;
  clnMinus=14;//17;
  clnSum=17;

var DoOpenNow:Boolean=False;

function IsPasw(vAccess:integer):Boolean;
begin
  Result:=True;
  if NowAccess >= vAccess then Exit;
  NowAccess:=PasswordDlgExec(NowAccess,6);
  if NowAccess < vAccess then Result:=False;
end;


procedure SetSizeGrid(Grid:TtsGrid);
var i,sz:integer;
begin
  with Grid do
      begin
      for i:=1 to Cols do sz:=sz+Col[i].Width;
      Width:=sz+12;
      end;
end;

procedure DelInComboBox(cBox:TComboBox; vCtr:TFPicCtr);
var i:integer;
begin
  with cBox do
    for i:=0 to Items.Count-1 do
      if Items.Objects[i] = vCtr then
        begin
        Items.Delete(i);
        break;
        end;
end;

procedure DelInTree(TreeView:TTreeView; vCtr:TFPicCtr);
var i:integer;
begin
  with TreeView do
    for i:=0 to Items.Count-1 do
      if (Items[i].Level=1) and (Items[i].Data = vCtr.Block[0]) then
        begin
        Items[i].Delete;
        break;
        end;
end;

{function GetDefaultDataDir: string;
begin
  Result:=ExtractFilePath(ParamStr(0))+ProgMess[1];
end;  }

{procedure AddSer(Ser:TChartSeries;Val:Double;DatTim:TDateTime);
  begin
  with Ser do
  if (Count>1 )
    and (YValues[Count-1]=Val)
    and (YValues[Count-2]=Val)
    then XValue[Count-1]:=DatTim
    else
  Ser.AddXY(DatTim,Val,'',clTeeColor);
  end;  }

procedure SetVoice(FName:string;status:Byte);
var s:string;
begin
  if (Not FVoice.OnAVIVoice.Checked) then Exit; //FMain.aCheckVoice.Checkedand (status < alFatal) then Exit;
  if FMain.MPwav.Mode=mpPlaying then Exit;
  s:=ExtractFilePath(ParamStr(0))+VOICE_DIR+'\'+FName+'.wav';    //DIR_VOICE='VMessage\'
  if Not FileExists(s) then Exit;
  with FMain.MPwav do begin
  try
   FileName:=s;
   Open;
   Play;
  except
  end;
  end;
end;

procedure LogToFile(Grid:TtsGrid);
var f:TextFile; i,j:integer; FileName,st:string;
begin
//  if Not FMain.mnKeepJournal.Checked then Exit;
  FileName:=GetNameLogFile;
  if FileExists(FileName) then begin AssignFile(f,FileName); Append(f); end
        else begin AssignFile(f,FileName); Rewrite(f); end;
//  for i:=1 to nstr do
  for i:=PosFileLog+1 to Grid.Rows do
    begin
    if Grid.CellTag[colCtr,i]<0 then continue;
    if (Grid.CellTag[colCtr,i] <> 1) and  Not FMain.mnKeepJournal.Checked then continue;
    st:=Grid.Cell[1,i]+' | '+Grid.Cell[colCtr,i]+' | '+Grid.Cell[colCtr,i+1];
//    for j:=2 to Grid.Cols do
//      st:=st + ' | '+Grid.Cell[j,i];//+'|'+IntToStr(Grid.CellFont[j,i].Color);
    writeln(f,st);
    end;
  PosFileLog:=Grid.Rows;
  CloseFile(f);
end;

procedure HotMessage(const CtrName,Msg:string;vCtrColor:TColor=clBlack{None};vMsgColor:TColor=clBlack{None};vRowColor:TColor=clNone);
var vMsg:string;
begin
 if Msg = '' then Exit;
 with FMain do begin
 with HotMesGrid do
    begin
    if SayLevel > 0 then vMsg:=RenameMsg(Msg) else vMsg:=Msg;
    if Rows > 200 then begin LogToFile(HotMesGrid); DeleteRows(1,50);  PosFileLog:=PosFileLog-50; end;
    BeginUpdate;
    Rows:=Rows+1;
    Cell[colDate,Rows]:=TimeToStr(Now);//DateTimeToStr(Now);
    Cell[colCtr,Rows]:=CtrName;
//    if vCtrColor <> clNone then
        begin
        CellParentFont[colCtr,Rows]:=false;
        CellFont[colCtr,Rows].Color:=vCtrColor;
        if (vCtrColor=clSay) or (vCtrColor=clFatal) then SayLevel:=2;
        if (vCtrColor=clLog) or (vCtrColor=clFatal) then begin CellTag[colCtr,Rows]:=1; end;
        end;
    if vRowColor <> clNone then RowColor[Rows]:=vRowColor
      else if (vCtrColor=clLog) then RowColor[Rows]:=$F0E0FF;
//    if vMsgColor <> clNone then
{        begin
        CellParentFont[colMsg,Rows]:=false;
        CellFont[colMsg,Rows].Color:=vMsgColor;
        end; }
    Rows:=Rows+1;
    CellTag[colCtr,Rows]:=-1;
    Cell[colCtr,Rows]:=vMsg;//Cell[colMsg,Rows]:=vMsg;  //StringReplace(Msg,DFonem,' ',[rfReplaceAll]);
    if Not AllVisCheck.Checked and (CtrName <> ActHotMesCtr) then
        begin RowVisible[Rows-1]:=false; RowVisible[Rows]:=false; end
        else if AutoHotCheck.Checked then PutCellInView(colDate, Rows);
//    RowFont[Rows].Color:=MesColor;
    EndUpdate;
    end;
 if SayLevel > 0 then
      begin
      if CtrName <> LastCtrName then
              begin
              SpeakTxt(RenameMsg(CtrName)+' '+vMsg,SayLevel,0);
              LastCtrName:=CtrName;
              end
        else SpeakTxt(vMsg,SayLevel,0);
      SayLevel:=0;
      end;
 end;
end;

procedure TFMain.HotMesPanelResize(Sender: TObject);
begin
 with HotMesGrid do
    begin
    //Col[colMsg].Width:=HotMesPanel.ClientWidth-Col[colDate].Width-Col[colCtr].Width-32;
    Col[colCtr].Width:=HotMesPanel.ClientWidth-Col[colDate].Width-24;
    end;
end;

procedure TFMain.HotMesGridClickCell(Sender: TObject; DataColDown,
  DataRowDown, DataColUp, DataRowUp: Integer; DownPos,
  UpPos: TtsClickPosition);
begin
  if DataColUp <> colCtr then Exit;
  AllVisCheck.Checked:=false;
  with HotMesGrid do
    if (CellTag[colCtr,DataRowUp] >=0) and (ActHotMesCtr <> Cell[colCtr,DataRowUp]) then
        begin
        ActHotMesCtr:=Cell[colCtr,DataRowUp];
        SetVisibleHotMes(Cell[colCtr,DataRowUp],HotMesGrid,AllVisCheck.Checked);
        end;
{ with FMain.ListCtr do for n:=0 to Tabs.Count-1 do
   if TFPicCtr(Tabs.Objects[n]).CtrName=HotMesGrid.Cell[colCtr,DataRowUp] then
     begin TFPicCtr(Tabs.Objects[n]).Show; break; end; }
end;

procedure TFMain.AllVisCheckClick(Sender: TObject);
begin
  if HotMesGrid.CurrentDataRow<1 then Exit;
  if HotMesGrid.CellTag[colCtr,HotMesGrid.CurrentDataRow] <0 then Exit;
  with HotMesGrid do SetVisibleHotMes(Cell[colCtr,CurrentDataRow],HotMesGrid,AllVisCheck.Checked);
end;

var SzCol: array[2..13] of integer=(30,40,25,374,25,72,60,68,54,64,60,125);

procedure TFMain.SaveHotMesGrid;
var i,sz:integer;
    IniFile:TIniFile;
begin
    IniFile:=TIniFile.Create(ExePath+'Screen.ini');  //'Monitor.ini');
        IniFile.WriteBool('Screen','Maximized',WindowState=wsMaximized);
        IniFile.WriteInteger('Screen','Height',Height);
        IniFile.WriteInteger('Screen','Width',Width);
        IniFile.WriteInteger('Screen','Top',Top);
        IniFile.WriteInteger('Screen','Left',Left);
        IniFile.WriteInteger('Screen','HeightGraf',ListCtr.Height);
        IniFile.WriteInteger('Screen','RightPanExWidth',RightPanEx.Width);
        IniFile.WriteInteger('Screen','BottomPanelHeight',BottomPanel.Height);
//        IniFile.WriteInteger('Screen','LeftPanExWidth',LeftPanEx.Width);
    with HotMesGrid do
      begin
      IniFile.WriteInteger('HotMesGrid','Col1Size',Col[1].Width);
      IniFile.WriteInteger('HotMesGrid','Col2Size',Col[2].Width);
//      IniFile.WriteInteger('HotMesGrid','Col3Size',Col[3].Width);
      end;
    with SignalGrid do
      begin
      for i:=2 to 13 do
        begin
        IniFile.WriteInteger('SignalGrid','Col'+IntToStr(i),Col[i].Width);
        end;
      IniFile.WriteInteger('SignalGrid','Color',SignalGrid.Color);
      end;
//    IniFile.WriteInteger('SignalGrid','Width',SignalPanel.Width);
//    IniFile.WriteInteger('HotMesGrid','Width',HotMesPanel.Width);
    IniFile.Free;
end;

procedure TFMain.InitHotMesGrid;
var i,sz:integer;
    IniFile:TIniFile;
begin
    IniFile:=TIniFile.Create(ExePath+'Screen.ini');  //'Monitor.ini');
    Height:=IniFile.ReadInteger('Screen','Height',900);
    Width:=IniFile.ReadInteger('Screen','Width',1276);
    Top:=IniFile.ReadInteger('Screen','Top',40);
    Left:=IniFile.ReadInteger('Screen','Left',2);
    if IniFile.ReadBool('Screen','Maximized',False) then WindowState:=wsMaximized;
  //  ListCtr.Height:=IniFile.ReadInteger('Screen','HeightGraf',365);
    RightPanExWidth:=IniFile.ReadInteger('Screen','RightPanExWidth',270);
    BottomPanelHeight:=IniFile.ReadInteger('Screen','BottomPanelHeight',SignalPanel.Height);
//    LeftPanExWidth:=IniFile.ReadInteger('Screen','LeftPanExWidth',270);
    if RightPanExWidth<20 then RightPanExWidth:=200;   //%%%
//  if LeftPanExWidth<20 then LeftPanExWidth:=400;
    with HotMesGrid do
      begin
      Cols:=2;
      Rows:=0;
      Col[1].Heading:=ProgMess[311];//дата
      Col[2].Heading:=ProgMess[2];//контроллер
//      Col[3].Heading:=ProgMess[2]; //сообщения
      sz:=IniFile.ReadInteger('HotMesGrid','Col1Size',0);
      if sz<>0 then Col[1].Width:=sz;
      sz:=IniFile.ReadInteger('HotMesGrid','Col2Size',0);
      if sz<>0 then Col[2].Width:=sz;
//      sz:=IniFile.ReadInteger('HotMesGrid','Col3Size',0);
//      if sz<>0 then Col[3].Width:=sz;
      end;
    with SignalGrid do
      begin
      Cols:=clnSum;//13;
      Rows:=16;
      for i:=2 to 13 do
        begin
        Col[i].Heading:=ProgMess[515+i];
        sz:=IniFile.ReadInteger('SignalGrid','Col'+IntToStr(i),0);
        if sz=0 then sz:=SzCol[i];
        Col[i].Width:=sz;
        end;
      SignalGrid.Color:=IniFile.ReadInteger('SignalGrid','Color',SignalGrid.Color);
      Col[clnAxis].ControlType:=ctCheck;
//      HotMesPanel.Width:=IniFile.ReadInteger('HotMesGrid','Width',HotMesPanel.Width);
//      SignalPanel.Width:=IniFile.ReadInteger('SignalGrid','Width',SignalPanel.Width);
      end;
    IniFile.Free;
end;
var vFormatSettings: TFormatSettings;

procedure TFMain.Init(vCopyNum:integer);
var
    i,ac,cc:integer;
    Section,DataDir,CtrDataDir:string; //,ViewMonitorName
    IniFile:TIniFile;
//    StrList:TStringList;
begin
  if XYMin <> -333 then FMain.Close;
  MonitorState:=msStart;
  if Current_Lang=0 then GetLocaleFormatSettings($0419, vFormatSettings)
      else GetLocaleFormatSettings($0409, vFormatSettings); //LCID=DefaultLocale
  MainStatus.Panels[0].Text:=ProgMess[485]{'Время старта}+': '+FormatDateTime(LongDateFormat+' '+LongTimeFormat,Now,vFormatSettings);
  ActiveCtr:=nil;
  ExePath:=ExtractFilePath(ParamStr(0));
  DataDir:=ExePath+ProgMess[1];
//  MainStatus.Panels[4].Text:=ProgMess[1]{'Папка данных}+': '+DataDir;
  Application.HelpFile:=ExePath+HELP_FILE_NAME;  //'Monitor.hlp';
  if not DirectoryExists(DataDir) then CreateDir(DataDir);
  if not DirectoryExists(DataDir+'\'+DefChangeDir) then
       CreateDir(DataDir+'\'+DefChangeDir);
  if not DirectoryExists(ExePath+ProgMess[4]) then CreateDir(ExePath+ProgMess[4]);
  if not DirectoryExists(ExePath+ProgMess[5]) then CreateDir(ExePath+ProgMess[5]);
  if not DirectoryExists(ExePath+ProgMess[6]) then CreateDir(ExePath+ProgMess[6]);
  if not DirectoryExists(ExePath+ProgMess[7]) then CreateDir(ExePath+ProgMess[7]);
  if not DirectoryExists(ExePath+'web') then CreateDir(ExePath+'web');
//  if FileExists(ExePath+'fiito.avi') then Animate2.FileName:=ExePath+'fiito.avi';

  InitHotMesGrid;
  IniFile:=TIniFile.Create(ExePath+INI_FILE_NAME);  //'Monitor.ini');
//======= start .ini =======
//========================= TEST VIEWER ==========================================
  MonitorName:=IniFile.ReadString('Servis','MonitorName','');
  if MonitorName='' then MonitorName:=GetCompName;  // MonitorName:=ProgMess[8]+IntToStr(round(Now*1000));  //'Monitor';
  if IniFile.ReadBool('Servis','ReRun',False) then begin MonCopyNumber:=0; IniFile.WriteBool('Servis','ReRun',False); end;
  if MonCopyNumber = 0 then
      begin
      FPort.Caption:= PORT_FORM_TITLE;
      FWindSonic.Init(IniFile.ReadString('Meteo','WindSensor',''));
      IniFile.WriteInteger('Servis','MonCopyNumber',0);
      end
  else begin
//      MonCopyNumber:=1;
      FPort.Caption:= PORT_FORM_TITLE+'-2';
      MonCopyNumber:=IniFile.ReadInteger('Servis','MonCopyNumber',0);
      MonCopyNumber:=MonCopyNumber+1;
      IniFile.WriteInteger('Servis','MonCopyNumber',MonCopyNumber);
      MonitorName:=ProgMess[17]+' '+MonitorName+'('+IntToStr(MonCopyNumber)+')';
      aNewCtr.Enabled:=False;
      aShowWind.Enabled:=False;
      FPort.TimerSend.Enabled:=False;
      MonitorState:=msTerminate;
//      if FileExists(ExePath+INI_FILE_VIEW_NAME) then      //'ViewMonitor.ini'
          begin
          IniFile.Free;
          IniFile:=TIniFile.Create(ExePath+'('+IntToStr(MonCopyNumber)+')'+INI_FILE_NAME);
          end;
      end;
//========================= TEST VIEWER ==========================================
  Application.Title:=MonitorName;
//###  try SignalGrid.LoadFromFile(ExePath+MonitorName+'.tbl',cmaNone);  except end;   //SignalGrid1
  ArcViewFile:=IniFile.ReadString('Servis','ArcViewFile',ProgMess[530]+'1.prf');
  PortVersion:=IniFile.ReadInteger('Servis','PortVersion',3);
//  OnTestArtefact:=IniFile.ReadBool('Servis','ControlArtefact',True);
  mnOnTestArtefact.Checked:=IniFile.ReadBool('Servis','ControlArtefact',mnOnTestArtefact.Checked); //True;//
  mnNetManagement.Checked:=IniFile.ReadBool('Servis','NetManagement',mnNetManagement.Checked);
  mnInternet.Checked:=IniFile.ReadBool('Servis','Internet',mnInternet.Checked);
  mnArchServerAPL.Checked:=IniFile.ReadBool('Servis','ServerAPL',mnArchServerAPL.Checked);
  mnAudServerAPL.Checked:=IniFile.ReadBool('Servis','AuditServerAPL',mnAudServerAPL.Checked);
  mnSaveName.Checked:= IniFile.ReadBool('Servis','SaveNames',mnSaveName.Checked);
  mnSaveView.Checked:= IniFile.ReadBool('Servis','SaveViews',mnSaveView.Checked);
  //mnKeepJournal.Checked:= IniFile.ReadBool('Servis','KeepJournal',mnKeepJournal.Checked);
  mnViewEarlyDay.Checked:=IniFile.ReadBool('Servis','ViewLastDay',mnViewEarlyDay.Checked);
  mnActiveTree.Checked:=IniFile.ReadBool('Servis','ActiveTree',mnActiveTree.Checked);
  mFastCOM.Checked:=IniFile.ReadBool('Servis','FastCOM',mFastCOM.Checked);
  MaxNumCtr:=IniFile.ReadInteger('Servis','Maximum controllers',10);
  GlobMeteoWidth:=IniFile.ReadFloat('Meteo','Breadth',57);
  GlobMeteoLong:=IniFile.ReadFloat('Meteo','Longitude',37);
  GlobMeteoZone:=IniFile.ReadInteger('Meteo','Time_zone',3);
  SunRaiseSet502;
  ForecastAdr:=IniFile.ReadString('Meteo','Forecast','http://rp5.ru');

  ClimMaxGradient:=IniFile.ReadInteger('Climate','Change temperature in hour',2);
  ClimGoTask:=IniFile.ReadFloat('Climate','Smooth',0.9);
  if ClimGoTask > 0.9 then ClimGoTask:=0.9;
  ClimLongArx:=IniFile.ReadInteger('Climate','Long Archive',365);
  mnTransferSun.Checked:=IniFile.ReadBool('Watering','TransferSun',mnTransferSun.Checked);
  mnHotArchive.Checked:=IniFile.ReadBool('Watering','HotArchive',mnHotArchive.Checked);
  mnAutoSynxTime.Checked:=IniFile.ReadBool('Servis','AutoSynxTime',mnAutoSynxTime.Checked);

//  NowAccess:=IniFile.ReadInteger('Servis','LastOutput',START_ACCESS) mod 49;
  NowAccess:=RW_SYS;//RW_SUPERVISOR;
//  GetPasw(IniFile.ReadString('Servis','LastOut',''),True,Now, NowAccess);
//  if NowAccess > RW_SYS then NowAccess:=RW_SYS;
  FVoice.OnSAPIVoice.Checked:=IniFile.ReadBool('Servis','OnSAPIVoice',false);
  FVoice.OnAVIVoice.Checked:=IniFile.ReadBool('Servis','OnAVIVoice',True);
//  aCheckVoice.Checked:=IniFile.ReadBool('Servis','VoiceInfo',True);
//  aCheckVoiceExecute(Self);
  YesName.Checked:=IniFile.ReadBool('Servis','NameSign',True);
  mnColorGrid.Checked:=IniFile.ReadBool('Servis','ColorGrid',True);
// --- инициация контроллеров --------
  TreeViewGraf.Items.AddChildObject(nil,MonitorName+'-'+ProgMess[8],nil).ImageIndex:=imPC;   //ProgMess[8]
//  Section:='CtrList';
//  ac:=IniFile.ReadInteger(Section,'ActiveCtr',-1);
//  if ac=-1 then
//      begin


// --- инициация контроллеров --------
  Section:='Controllers';
//@@@  i:=GetCurrentLang;
//@@  if i > 1 then  Section:= Section+ IntToStr(i);
      //if IniFile.SectionExists(Section+ IntToStr(i)) then            else Section:= Section+'2';
  ac:=IniFile.ReadInteger(Section,'Active Ctr',0);
  cc:=IniFile.ReadInteger(Section,'CountCtr',0);
//  TreeViewGraf.Items.AddChildObject(nil,MonitorName,nil);   //ProgMess[8]
  if cc > 0 then
    for i:=0 to cc-1 do
      begin
      CtrDataDir:=IniFile.ReadString(Section,'DataCtr'+IntToStr(i),'');
      if (MonCopyNumber <> 0) and (CtrDataDir='') then CtrDataDir:=DataDir;
      if AddCtr(GetDefaultDataPath+IniFile.ReadString(Section,'Ctr'+IntToStr(i),''),CtrDataDir)<> nil then
          with ActiveCtr do
          begin
          LoadExtView(IniFile);
          IPAddress:=IniFile.ReadString(Section,'Ctr'+IntToStr(i)+'IP','');
          CtrAlias:=IniFile.ReadString(Section,'Ctr'+IntToStr(i)+'Alias','');
//          if IPAddress<>'' then begin IsIPC:=True;  PortName:=''; end else IsIPC:=False; //UnitNum:=0;
          end;
      end;
  IniFile.Free;
  if ac < ListCtr.Tabs.Count then  ListCtr.TabIndex:=ac;
{
      Section:='Controllers';
      i:=GetCurrentLang;
      if i > 1 then  Section:= Section+ IntToStr(i);
      ac:=IniFile.ReadInteger(Section,'Active Ctr',0);
      cc:=IniFile.ReadInteger(Section,'CountCtr',0);
      for i:=0 to cc-1 do
          begin
          CtrDataDir:=IniFile.ReadString(Section,'DataCtr'+IntToStr(i),'');
          if (CopyNum <> 0) and (CtrDataDir='') then CtrDataDir:=DataDir;
          AddCtr(GetDefaultDataPath+IniFile.ReadString(Section,'Ctr'+IntToStr(i),''),CtrDataDir);
          end;
      end
  else
      begin
      StrList:=TStringList.Create;
//      StrList.NameValueSeparator:='=';
      IniFile.ReadSection(Section,StrList);
      for i:=1 to StrList.Count-1 do
          begin
          CtrDataDir:=IniFile.ReadString(Section,StrList[i],'');//StrList.ValueFromIndex[i];
          if (CopyNum <> 0) and (CtrDataDir='') then CtrDataDir:=DataDir;
          AddCtr(GetDefaultDataPath+StrList[i],CtrDataDir);
          end;
      StrList.Free;
      end;
  IniFile.Free; }
//-----------------------------------------------------
  if ExtractFileExt(ParamStr(1)) = '.dcf' then AddCtr(ParamStr(1),ExtractFilePath(ParamStr(1)));
  if ListCtr.Tabs.Count < 1 then
      begin
      MonitorState:=msWork;
      if MonCopyNumber=0 then begin
              if AddCtr('','') = nil then FMain.Close //CloseQuery//Halt
              else SetActiveCtr(ActiveCtr);
              end
      else with OpenDialog1 do
            begin
	          FileName:='';
            Filter:=ProgMess[13]+' (*.ctr)|*.ctr|'+ProgMess[196]+'(*.dcf;*.txt)|*.dcf;*.txt|AllFiles (*.*)|*.*';
            if Execute then
                if AddCtr(FileName,ExtractFilePath(FileName)) <> nil then SetActiveCtr(ActiveCtr) else Close;//Halt;
            end;
      end;
  if ListCtr.Tabs.Count>0 then  ListCtrChange(Self);
  TreeViewGraf.Items[0].Expand(False);
  with FSetGrid.BlockTreeView do if Items.Count>0  then Items[0].Expand(False);    //
  TimerNet.Enabled:=mnNetManagement.Checked;
  LoadActionList(cOutBlock,NowAccess,ActionsMain,FSetGrid.ActionsGrid);
//    then SetActionList(ActionsMain, NowAccess);
//  LoadActionList(cOutBlock,NowAccess,FSetGrid.ActionsGrid);
//    then SetActionList(FSetGrid.ActionsGrid, NowAccess);
  if FindWindow('TFMonGuard',nil) = 0 then
    if WinExec(PChar('MonGuard.exe'+' "'+ParamStr(0)+'"'),SW_SHOWNORMAL)>32
      then MainStatus.Panels[1].Text:=ProgMess[486] //'Охрана включена'
      else MainStatus.Panels[1].Text:=ProgMess[487] //'Охрана выключена'
    else MainStatus.Panels[1].Text:=ProgMess[486];//'Охрана включена';
  FSetInternet.InitInternet(mnInternet.Checked);
  LoadWebServis;
  GChart.Tag:=MonCopyNumber;
  GetChartColor(GChart,LTime,LAxisL);
  ExInitForm;
  DefInitDocks;
  MonitorState:=msWork;
  SayLevel:=1;
//  InitPortThread;
  HotMessage(MonitorName,ProgMess[490],clInfoLog);//'Стартовал');     %%%%
//  if ListCtr.Tabs.Count < 1 then if AddCtr('','') <> nil then SetActiveCtr(ActiveCtr) else Halt;
  if MesTest<>'' then mHelp.Caption:=MesTest;//'Only test 502';
end;

procedure TFMain.LoadWebServis;
begin
  if (mnArchServerAPL.Checked or mnAudServerAPL.Checked) then
      begin
      WebHandle:=FindWindow(nil,'Web клиент');
      if WebHandle = 0 then WebHandle:=WinExec(PChar('WebClient.exe'),SW_SHOWNORMAL);     //'WebSend',
      if WebHandle < 32 then WebHandle:= 0;
      end
  else begin
      if WebHandle <> 0 then PostMessage(WebHandle,WM_DESTROY,0,0);
      WebHandle:= 0;
      end;
  if WebHandle = 0  then MainStatus.Panels[3].Text:=ProgMess[488] //'Web сервис выключен'
      else MainStatus.Panels[3].Text:=ProgMess[489];//'Web сервис включен';
end;

procedure TFMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var i,cc:Integer;
    IniFile:TIniFile;
    Section: string;
    hwndWnd:HWND;
//    s:AnsiString;
begin
  CanClose:=true;
  if Not FSetGrid.CanChanging then begin CanClose:=False; Exit; end;
  if ListCtr.Tabs.Count < 1 then Exit;
  if MonCopyNumber=0 then
            begin
            hwndWnd:=FindWindow('TFPort',PORT_FORM_TITLE+'-2');
            if hwndWnd<>0 then //DestroyWindow(hwndWnd);
              begin
              ShowMessage(ProgMess[491]{'Следует закрыть}+' <'+ProgMess[17]+' '+MonitorName+'>');
              SetForegroundWindow(hwndWnd);
              CanClose:=False;
              Exit;
              end;
            MonitorState:=msTerminate;
//            WindPortThread.ClosePort;
            FSetInternet.DestroyInternet;
            if WebHandle <> 0 then PostMessage(WebHandle,WM_DESTROY,0,0);
            IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+INI_FILE_NAME); //'Monitor.ini'
            end
        else
            begin
            IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'('+IntToStr(MonCopyNumber)+')'+INI_FILE_NAME);  //'ViewMonitor.ini');
            end;
        MonitorState:=msTerminate;
        FPort.Stop;
        cc:=ListCtr.Tabs.Count;
        IniFile.WriteString('Servis','MonitorName',MonitorName);
        IniFile.WriteString('Servis','ArcViewFile',ArcViewFile);
        IniFile.WriteBool('Servis','OnSAPIVoice',FVoice.OnSAPIVoice.Checked);
        IniFile.WriteBool('Servis','OnAVIVoice',FVoice.OnAVIVoice.Checked);
//        IniFile.WriteBool('Servis','VoiceInfo',aCheckVoice.Checked);
        IniFile.WriteBool('Servis','NameSign',YesName.Checked);
        IniFile.WriteBool('Servis','ColorGrid',mnColorGrid.Checked);
        IniFile.WriteInteger('Servis','PortVersion',PortVersion);
//        IniFile.WriteBool('Servis','ControlArtefact',OnTestArtefact);
        IniFile.WriteBool('Servis','NetManagement',mnNetManagement.Checked);
        IniFile.WriteBool('Servis','Internet',mnInternet.Checked);
//!!!        IniFile.WriteBool('Servis','ServerAPL',mnArchServerAPL.Checked);  //!!! 24.1.11
        IniFile.WriteBool('Servis','AuditServerAPL',mnAudServerAPL.Checked);
        IniFile.WriteInteger('Servis','LastOutput',NowAccess+49*(Random(20)+3));
//        IniFile.WriteString('Servis','Level',g_pasw);
        IniFile.WriteBool('Servis','SaveNames',mnSaveName.Checked);
        IniFile.WriteBool('Servis','SaveViews',mnSaveView.Checked);
//        IniFile.WriteBool('Servis','KeepJournal',mnKeepJournal.Checked);
        IniFile.WriteBool('Servis','ControlArtefact',mnOnTestArtefact.Checked);
        IniFile.WriteBool('Servis','ViewLastDay',mnViewEarlyDay.Checked);
        IniFile.WriteInteger('Servis','Maximum controllers',MaxNumCtr);

        IniFile.WriteString('Meteo','WindSensor',FWindSonic.CBPortName.Text);
        IniFile.WriteFloat('Meteo','Breadth',GlobMeteoWidth);
        IniFile.WriteFloat('Meteo','Longitude',GlobMeteoLong);
        IniFile.WriteInteger('Meteo','Time_zone',GlobMeteoZone);
        IniFile.WriteInteger('Climate','Change temperature in hour',ClimMaxGradient);
        IniFile.WriteFloat('Climate','Smooth',ClimGoTask);
        IniFile.WriteInteger('Climate','Long Archive',ClimLongArx);
        IniFile.WriteBool('Watering','TransferSun',mnTransferSun.Checked);
        IniFile.WriteBool('Watering','HotArchive',mnHotArchive.Checked);
        IniFile.WriteBool('Servis','AutoSynxTime',mnAutoSynxTime.Checked);
        IniFile.WriteBool('Servis','FastCOM',mFastCOM.Checked);
        IniFile.WriteBool('Servis','ActiveTree',mnActiveTree.Checked);

// --- сохранение контроллеров --------
        Section:='Controllers';
//@@        i:=GetCurrentLang;
//@@        if i > 1 then  Section:= Section+ IntToStr(i);
        IniFile.WriteInteger(Section,'Active Ctr',ListCtr.TabIndex);
        IniFile.WriteInteger(Section,'CountCtr',cc);
//        IniFile.EraseSection('CtrList');    //16.11.07
//        IniFile.WriteInteger('CtrList','ActiveCtr',ListCtr.TabIndex);    //16.11.07
        for i:=0 to cc-1 do
          with ListCtr.Tabs.Objects[i] as TFPicCtr do
          begin
          IniFile.WriteString(Section,'Ctr'+IntToStr(i),
          ExtractFileName(CtrToFile));
          IniFile.WriteString(Section,'DataCtr'+IntToStr(i),DataPath);
          IniFile.WriteString(Section,'Ctr'+IntToStr(i)+'IP',IPAddress);   //if IPAddress<>'' then
          IniFile.WriteString(Section,'Ctr'+IntToStr(i)+'Alias',CtrAlias);
//          IniFile.WriteString('CtrList',CtrName,DataPath);    //16.11.07
          SaveExtView(IniFile);
          Release;     //          Free;
          end;
        IniFile.Free;
//        SaveDocks;
        SaveHotMesGrid;
        //SignalGrid.SaveToFile(ExePath+MonitorName+'.tbl',false);  //ExePath+'SignalGrid1.tbl'
        HotMessage(MonitorName,ProgMess[492],clInfoLog);//'Закрыт');
        LogToFile(HotMesGrid);
        CanClose:=true;
{// --- сохранение контроллеров --------
        IniFile.EraseSection('Controllers');    //16.11.07
//        Section:='Controllers';
//        i:=GetCurrentLang;
//        if i > 1 then  Section:= Section+ IntToStr(i);
//        IniFile.WriteInteger(Section,'Active Ctr',ListCtr.TabIndex);
//        IniFile.WriteInteger(Section,'CountCtr',cc);
        IniFile.EraseSection('CtrList');    //16.11.07
        IniFile.WriteInteger('CtrList','ActiveCtr',ListCtr.TabIndex);    //16.11.07
        for i:=0 to cc-1 do
          with ListCtr.Tabs.Objects[i] as TFPicCtr do begin
//          IniFile.WriteString(Section,'Ctr'+IntToStr(i),
//          ExtractFileName(CtrToFile));
//          IniFile.WriteString(Section,'DataCtr'+IntToStr(i),DataPath);
          IniFile.WriteString('CtrList',ExtractFileName(CtrToFile),DataPath);    //16.11.07
          Release;     //          Free;
          end;
        IniFile.Free; }
end;

procedure TFMain.DoActiveCtr(aCtr:TFPicCtr);
var i:Integer;
begin
if ActiveCtr<>aCtr then
 with ListCtr.Tabs do
  for i:=0 to Count-1 do
      begin
      if aCtr=Objects[i] then
          begin
          ListCtr.TabIndex:=i;
          ListCtrChange(Self);
          break;
          end;
      end;
Show;
end;

{procedure TFMain.SetGGrafFromActiveCtr;
//var NGraf:Integer;
begin
 with ActiveCtr do
    begin
    aShowAudit.Checked:=AuditChecked;
    if AuditBlock = nil then AnalizKind:=1;
    CBShowAudit.ItemIndex:=AnalizKind;
    for nGraf:=0 to SumAGraf-1 do
      begin
      (PanelCheck.Controls[nGraf] as TCheckBox).Checked:=TablView[nGraf].Checked;
      with GChart.Series[nGraf+1]as TLineSeries do
           begin
           SeriesColor:=TablView[nGraf].Color;
           LinePen.Color:=TablView[NGraf].Color-$020202;
           LinePen.Width:=TablView[NGraf].Width;
           Stairs:=(TablView[NGraf].bModif and bStairs) > 0;
           Active:=TablView[NGraf].Checked;
           if (TablView[NGraf].bModif and bAxis) > 0 then   // and 1
            VertAxis:=aRightAxis
            else VertAxis:=aLeftAxis;
           end;
      with PanelName.Controls[nGraf] as TPanel do
           begin
           Font.Color:=TablView[nGraf].Color;
           Color:=clBlack;
           end;
      with PanelValues.Controls[nGraf] as TPanel do
           if (TablView[nGraf].bModif and bAxis) = 0
            then Font.Color:=clLime else Font.Color:=clYellow;
      end;
    end; 
end;  }

procedure TFMain.SetActiveCtr(vCtr:TFPicCtr);
var i:integer;
begin
  // Установить вывод заголовков и состояния CheckBox,цветов и линий
 if boolChangingActive then Exit;
 boolChangingActive:=true;
 try
 if vCtr<>nil then ActiveCtr:=vCtr;
 Caption:=MonitorName+' : '+vCtr.DataPath+ActiveCtr.CtrName;//ProgMess[9]+' <'+ActiveCtr.CtrName+'>';
 with CtrCB do for i:=0 to Items.Count-1 do
   if Items.Objects[i]=ActiveCtr then begin ItemIndex:=i; break; end;
 with ListCtr do for i:=0 to Tabs.Count-1 do
   if Tabs.Objects[i]=ActiveCtr then begin TabIndex:=i; break; end;
 with TreeViewGraf do for i:=0 to Items.Count-1 do
   if (Items[i].Level=1) and (TBlock(Items[i].Data).ParentCtr = ActiveCtr) then
        begin
        FullCollapse;
        Select(Items[i]);
//###        Selected.Expand(False);
        break;
        end;
   //ListCtr.;
 BPlay.Down:=True;
 BPause.Down:=False;
 BuildAllGridGrafs(ActiveCtr);
 with ActiveCtr do
    begin
    SETimer1.Value:=Period;
    SETimeView.Value:=TimeView;
    Track3D.Position:=Graf3D;
    Track3DChange(Self);
//!!!    SetGGrafFromActiveCtr;
    end;
//!!!!    FBuildChart;
    SetMaxMin;
    SetButtonArxiv;
    CBShowAudit.ItemIndex:=ActiveCtr.AuditKind;
 finally boolChangingActive:=false; end;
end;

procedure TFMain.Track3DChange(Sender: TObject);
begin
 ActiveCtr.Graf3D:=Track3D.Position;
 if Track3D.Position=1 then GChart.View3d:=False
  else begin
   GChart.Chart3dPercent:=Track3D.Position;
   GChart.View3d:=True;
   end;
end;

procedure TFMain.BSetGridClick(Sender: TObject);
var i:integer;
begin
  i:=(Sender as TComponent).Tag mod 10;
  if i >= ActiveCtr.CountBlock then i:=ActiveCtr.CountBlock-1;
  FSetGrid.SetNewGridBlock(ActiveCtr.Block[i]);
end;

function TFMain.AddCtr(const FileNameCtr,DirNameData:string):TFPicCtr;
var i,last:integer;
begin
       Result:=nil;
       if ListCtr.Tabs.Count>MaxNumCtr then
        begin MessageDlg
           (Format(ProgMess[315]+ProgMess[316],[IntToStr(MaxNumCtr)]),mtWarning,[mbYes],0);
        Exit;
        end;
       boolChangingActive:=true;
       try
       try
       Result:=FNewCtr.CreateCtrFromFile2(FileNameCtr,DirNameData);
       if Result <> nil then
         begin
         ActiveCtr:=Result;
         with ActiveCtr do begin Visible:=True; Update; end;
         ListCtr.TabIndex:=ListCtr.Tabs.AddObject(ActiveCtr.CtrName,ActiveCtr);
         CtrCB.AddItem(ActiveCtr.CtrName,ActiveCtr);
         last:=TreeViewGraf.Items.Count;
         ActiveCtr.Block[0].SetTree(TreeViewGraf);
         with TreeViewGraf do
            for i:=last to Items.Count-1 do
              begin
              if (Items[i].ImageIndex>0) then continue;
              if (Items[i].Level = 1) then begin Items[i].ImageIndex:=imQuw; continue; end;
              if (Items[i].HasChildren) then Items[i].ImageIndex:=imBook
              else Items[i].ImageIndex:=imGraf;
              end;
         ChangeCtrList:=true;
         FSetGrid.AddInBlockTree(ActiveCtr);
         SetClimatClients;
         SetStrategyClients;
//###         ActiveCtr.SetPeriod;
         with (ActiveCtr as TFPicCtr) do
           begin
           if (MonitorState = msWork) and Not Block[0].Ready then ValueTimerTimer(Self);
           ValueTimer.Enabled:=True;
           PicTimer.Enabled:=True;
           end;
         end;
       finally boolChangingActive:=false; end;
       except MessageDlg(Format(Progmess[114],[FileNameCtr]),mtWarning,[mbOk],0); end;
end;

procedure TFMain.SetMaxMin;
var TView:TDateTime;
        mx:double;
begin
 TView:=cMin*(ActiveCtr.TimeView+1)*60;
 With GChart.BottomAxis do
  Begin
    mx:=GChart.MaxXValue(GChart.BottomAxis);
    if mx<=Minimum then
      begin
      Minimum:=mx-TView;
      Maximum:=mx+TView/20;
      end
      else
      begin
      Maximum:=mx+TView/20;
      Minimum:=mx-TView;
      end
  end;
// CalcScrollBarPos(ScrollBar1,GChart);
 CalcTrackBarPos(Track,GChart);

// LSeries.Visible:=False;
end;

procedure TFMain.SETimeViewChange(Sender: TObject);
begin
 ActiveCtr.TimeView:=SETimeView.Value;
 SetMaxMin;
end;

  { This procedure draws the crosshair lines }
Procedure DrawCross(vChart:TChart;AX,AY:Integer);
begin
    With vChart,vChart.Canvas do begin
      Pen.Color:=CrossHairColor;
      Pen.Style:=CrossHairStyle;
      Pen.Mode:=pmXor;
      Pen.Width:=1;
      MoveTo(ax,ChartRect.Top-Height3D);
      LineTo(ax,ChartRect.Bottom-Height3D);
      if ay<=0 then Exit;
      MoveTo(ChartRect.Left+Width3D,ay);
      LineTo(ChartRect.Right+Width3D,ay);
//      Refresh;
      end;
end;

procedure TFMain.GChartAfterDraw(Sender: TObject);
begin
  if ChangingSer then Exit;
  with GChart do
  begin
  Ver.Top:= ChartRect.Top-Height3D;
  Ver.Height:=ChartRect.Bottom-ChartRect.Top;
  Gor.Left:=ChartRect.Left+Width3D;
  Gor.Width:=ChartRect.Right-ChartRect.Left;
  end;
  if ChahgingSCount>0 then begin ChahgingSCount:=ChahgingSCount-1;Exit;end;
//  LSeries.Visible:=False;
  OldX:=-1;  // Reset old mouse position
//  CalcScrollBarPos(ScrollBar1,GChart);
  CalcTrackBarPos(Track,GChart);
end;

procedure TFMain.BPlayClick(Sender: TObject);
begin
  if BPlay.Down then begin
      GChart.UndoZoom;
      SetMaxMin;
      end;
  BPause.Down:=Not BPlay.Down;
end;

procedure TFMain.GChartZoom(Sender: TObject);
begin
 BPlay.Down:=False;
 BPause.Down:=True;
end;


procedure TFMain.FileSaveClick(Sender: TObject);
begin
   ActiveCtr.CtrToFile;
end;

{function GetStatSeries(Series:TChartSeries;tmAct:double;tmFrm:string):string;  //Grid:TtsGrid;
var vMin,vMax,vMid,vVal,tmMin,tmMax,tmVal:double;
  i:integer;
begin
with Series do
  begin
   vMin:=10000;vMax:=-10000;vMid:=0;vVal:=0;
   for i:=0 to Series.Count-1 do
    begin
    if (vVal=0) and (tmAct < XValue[i]) then begin vVal:=YValue[i];tmVal:=XValue[i];end;
    if YValue[i] > vMax then begin vMax:=YValue[i];tmMax:=XValue[i];end;
    if YValue[i] < vMin then begin vMin:=YValue[i];tmMin:=XValue[i];end;
    vMid:=vMid+YValue[i];
    end;
   Result:=Title+#13+'Просмотр -'+FormatDateTime(tmFrm,XValue[0])+' до '+FormatDateTime(tmFrm,XValue[Count-1]);
   Result:=Result+#13+Format('%10s%8.2f',['Значение',vVal]);
   if vVal<>0 then Result:=Result+' время '+FormatDateTime(tmFrm,tmVal);
   Result:=Result+#13+Format('%10s%8.2f',['Максимум',vMax]);
   if vMax<>0 then Result:=Result+' время '+FormatDateTime(tmFrm,tmMax);
   Result:=Result+#13+Format('%10s%8.2f',['Минимум',vMin]);
   if vMin<>0 then Result:=Result+' время '+FormatDateTime(tmFrm,tmMin);
   vMid:=vMid/Series.Count;
   Result:=Result+#13+Format('%10s%8.2f',['Среднее',vMid]);
//   Grid.Cell[1,1]:='Максимум=%f';
//   Grid.Cell[2,1]:=FloatToStr(vMax);
//   PSeries.Visible:=true;
  end;
end;  }

function GetGridFromSeries(Grid:TtsGrid; vRow:integer; Chart:TChart; tmFrm:string):string;  //Grid:TtsGrid;
var vMin,vMax,vMid,vVal,tmMin,tmMax,tmVal:double;
  i:integer;   //,vRow
begin
//for vRow:=1 to Chart.SeriesCount-1 do
with Chart.Series[vRow] do
  begin
   if Count<2 then
      begin
      for i:=clnMax to clnPeriod do Grid.Cell[i,vRow]:='';
      Exit;
      end;
   vMin:=10000;vMax:=-10000;vMid:=0;vVal:=0;
   for i:=0 to Count-1 do
    begin
//    if (vVal=0) and (tmAct < XValue[i]) then begin vVal:=YValue[i];tmVal:=XValue[i];end;
    if YValue[i] > vMax then begin vMax:=YValue[i];tmMax:=XValue[i];end;
    if YValue[i] < vMin then begin vMin:=YValue[i];tmMin:=XValue[i];end;
    vMid:=vMid+YValue[i];
    end;
   Grid.Cell[clnPeriod,vRow]:=FormatDateTime(tmFrm,XValue[0])+'-'+FormatDateTime(tmFrm,XValue[Count-1]);
//   Result:=Title+#13+'Просмотр -'+FormatDateTime(tmFrm,XValue[0])+' до '+FormatDateTime(tmFrm,XValue[Count-1]);
//   Result:=Result+#13+Format('%10s%8.2f',['Значение',vVal]);
//   if vVal<>0 then Result:=Result+' время '+FormatDateTime(tmFrm,tmVal);
   Grid.Cell[clnMax,vRow]:=FormatFloat('0.##',vMax);//Format('%8.2f',[vMax]);
   if vMax<>0 then Grid.Cell[clnMaxTime,vRow]:=FormatDateTime(tmFrm,tmMax); //'в '+
   Grid.Cell[clnMin,vRow]:=FormatFloat('0.##',vMin);//Format('%8.2f',[vMin]);
   if vMin<>0 then Grid.Cell[clnMinTime,vRow]:=FormatDateTime(tmFrm,tmMin); //'в '+
   vMid:=vMid/Count;
   Grid.Cell[clnMidl,vRow]:=FormatFloat('0.##',vMid);//Format('%8.2f',[vMid]);
  end;
end;

procedure TFMain.FilePrintSetupClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

//var temp:integer;
procedure TFMain.GChartMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var tmp,t:Longint;
    nLAxis,nRAxis:integer;
    mTime,LastTm:TDateTime;
//     LYTxt,RYTxt:string;
begin
//  temp:=temp+1;
  if (ssLeft in Shift)// or (ssRight in ch)
      then Exit;
  if ChangingSer then Exit;
  if ActiveCtr=nil then Exit;
  ChangingSer:=true;
{  if (OldX >= 0) then begin
    DrawCross(GChart,OldX,OldY);
    OldX:=-1;
    end; }
  if PtInRect( GChart.ChartRect, Point(X-GChart.Width3D,Y+GChart.Height3D)  ) then
      begin
      mTime:=GChart.Series[1].XScreenToValue(X);
      OldY:=Y;
      OldX:=SetGridValueFromSer(mTime,Y);
//##      if OldX<0 then begin ChangingSer:=false; Exit; end;
      Ver.Left:=OldX+1;
      Gor.Top:=OldY+1;
//Вывод имени графика
//=================================================
{      if YesName.Checked then
      for t:=1 to SumAGraf do //GChart.SeriesCount-1 do
            begin
//            if  GChart.Series[t].Count<3 then continue;
            tmp:=GChart.Series[t].Clicked(X,Y);
            if tmp<>-1 then
                  begin
                  SignalGrid.RowColor[t]:=clSilver;//Black;
                  ChangingSer:=false; Exit;
                  end else if SignalGrid.RowColor[t] = clSilver then SignalGrid.RowColor[t]:=SignalGrid.Color;//$00410010;//clBlack;
             end; }
//====================================================
//Выведено имя графика
      nLAxis:=0; nRAxis:=0;
      for t:=1 to SumAGraf do //GChart.SeriesCount-1 do
          if (ActiveCtr.TablView[t-1].bModif and bRightAxis) = 0 then nLAxis:=t else nRAxis:=t;
      LTime.Caption:=ActiveCtr.CtrName+' '+FormatDateTime('<dd mmmm> '+LongTimeFormat,mTime);  //'" в "hh:nn:ss'
      if (X+LTime.Width) < GChart.Width then LTime.Left:=X-20
      else LTime.Left:=GChart.Width - LTime.Width-20;
      LTime.Top:=GChart.Height*197 div 200-LTime.Height;
      LTime.Visible:=True;

      if nLAxis>  0 then begin
        LAxisL.Caption:=FormatFloat('0.##',GChart.Series[nLAxis].YScreenToValue(Y));
        LAxisL.Top:=Y-4;
        LAxisL.Left:=GChart.Width div 500;
        LAxisL.Visible:=True;
        end else LAxisL.Visible:=False;
      if nRAxis >  0 then begin
        LAxisR.Caption:=FormatFloat('0.##',GChart.Series[nRAxis].YScreenToValue(Y));
        LAxisR.Left:=GChart.Width*198 div 200 -LAxisR.Width;
        LAxisR.Top:=Y-4;
        LAxisR.Visible:=True;
        end else LAxisR.Visible:=False;
{      DrawCross(GChart,X,Y);  // draw crosshair at current position
      OldX:=X;
      OldY:=Y; }
      end
  else begin LTime.Visible:=False;LAxisL.Visible:=False;  LActYSer.Visible:=False;
      LAxisR.Visible:=False;end;   //LSeries.Visible:=False;
  ChangingSer:=false;
end;

procedure TFMain.SelectPClick(Sender: TObject);
begin
  with OpenDialog1 do
  begin
//    InitialDir:=ActiveCtr.DataPath;
    FileName:=ActiveCtr.GetDataPath+'*'+ActiveCtr.FCtrName+'*'+ActiveCtr.Block[0].Pref+'*.*';//ActiveCtr.Block[0].FileNameFromDate(Now);  //'';//
    Filter:=ActiveCtr.Block[0].NameBlock+'('+ActiveCtr.Block[0].FileNameFilter+')|'+ActiveCtr.Block[0].FileNameFilter;
    if Execute then
     if ActiveCtr.Block[0].LoadFileByName(FileName,dBegin) then
         begin
         ActiveCtr.ViewDate:=ActiveCtr.Block[0].BlDate;
         BuildAllGridGrafs(ActiveCtr);
//           FBuildChart;
         SetMaxMin;
         SetButtonArxiv;
         end
      else MessageDlg(ActionMes,mtWarning,[mbYes],0); 
  end;
end;


procedure TFMain.mAboutClick(Sender: TObject);
begin
 if Current_Lang > 1 then
    begin
    if FEAbout=nil then FEAbout:=TFEAbout.Create(Application);
    FEAbout.Visible:=true;
    Exit;
    end;
 if FAbout=nil then
    begin
    FAbout:=TFAbout.Create(Application);
    LoadFormLanguage(FAbout,FAbout.Name);
    end;
 AboutExec(0);
end;

procedure TFMain.ListCtrChange(Sender: TObject);
begin
  with ListCtr do SetActiveCtr(Tabs.Objects[TabIndex] as TFPicCtr);
end;

{procedure TFMain.NextCtr(vDir:char;var vCtr:TFPicCtr);
var i,ind:word;
begin
  with ListCtr do
    begin
    for i:=0 to Tabs.Count-1 do
      if Tabs.Objects[i]=vCtr then
        begin
        ind:=i;
        case vDir of
        '+': if ind= (Tabs.Count-1) then ind:=0
            else ind:=ind+1;
        '-': if ind=0 then ind:=(Tabs.Count-1)
            else ind:=ind-1;
        end;
        vCtr:=(Tabs.Objects[ind] as TFPicCtr);;
        Exit;
        end;
    end;
end; }

function TFMain.GetCtrFromListCtr(const vCtrName:string; vCtrNum:Byte):TFController;
var i:word;
begin
  Result:=nil;
  if (vCtrNum=0) and  (vCtrName='') then Exit;
  with ListCtr do
    begin
    for i:=0 to Tabs.Count-1 do
      if ((((Tabs.Objects[i] as TFController).CtrNum = vCtrNum) or (vCtrNum=0))
        and (((Tabs.Objects[i] as TFController).CtrName = vCtrName) or (vCtrName='')))then
        begin
        Result:=Tabs.Objects[i] as TFController;
        Exit;
        end;
    end;
end;

procedure TFMain.TestReceiveFromNet;
var SearchRec:TSearchRec;
    vBlockNum:integer;
    vCtr:TFController;
    sCtrName,sBlockNum, sChangeDir:string;
begin
  if Not mnNetManagement.Checked then Exit;
  sChangeDir:=GetDefaultDataPath+'Change';
  if DirectoryExists(sChangeDir) then
  try
    if FindFirst(sChangeDir+'\*.B*',faAnyFile,SearchRec) = 0 then
     try
      repeat
        sBlockNum:=Copy(ExtractFileExt(SearchRec.Name),3,4);
        vBlockNum:=StrToIntDef(sBlockNum,-1);
        if vBlockNum < 0 then  continue;
        sCtrName:=ChangeFileExt(ExtractFileName(SearchRec.Name),'');
        vCtr:=GetCtrFromListCtr(sCtrName,0);
        if vCtr <> nil then
          if vCtr.Block[vBlockNum].ReceiveFromNetFile(sChangeDir+'\'+SearchRec.Name)
           then FSetGrid.UpdateGridIfAct(vCtr.Block[vBlockNum])
          else vCtr.PrintMemo(SearchRec.Name+' - Error net receive',mlAlarm);
      until FindNext(SearchRec) <> 0;
     finally
      FindClose(SearchRec);
     end;
  except
  //MessageDlg(SearchRec.Name+' - Error net receive',mtWarning,[mbYes],0);
  end;
end;

procedure TFMain.SetButtonArxiv;
begin
 with ActiveCtr do begin
  DoOpenNow:=True;
  OpenNow.Down:=Trunc(ViewDate)=Trunc(Now);
  BOpenArxiv.Down:= Not OpenNow.Down;
  if OpenNow.Down then ArchiveB.Caption:=ProgMess[14]+' '
    else ArchiveB.Caption:=ProgMess[15]+' ';
  DateTimePicker1.DateTime:=ViewDate;
  DoOpenNow:=False;
  end;
end;

procedure TFMain.DateTimePicker1CloseUp(Sender: TObject);
begin
  if Not FileExists(ActiveCtr.Block[0].FileNameFromDate(DateTimePicker1.DateTime)) then
     begin
     if (Pos(']',ActiveCtr.DataPath) > 0) then
          begin
          FSetInternet.Exec(ActiveCtr.Block[0],tpGetBlock,DateTimePicker1.DateTime);
          Exit;
          end;
     MessageDlg(ProgMess[16]+' '+FormatDateTime(LongDateFormat,DateTimePicker1.DateTime)
     ,mtWarning,[mbYes],0);
     DateTimePicker1.DateTime:=ActiveCtr.ViewDate;
     Exit;
     end;
  ActiveCtr.ViewDate:=DateTimePicker1.DateTime;
  BuildAllGridGrafs(ActiveCtr);
//  FBuildChart;
//  SetMaxMin;
//  SetButtonArxiv;
  if (Pos(']',ActiveCtr.DataPath) > 0)
         and (ActiveCtr.Block[0].BlDate < (Now-cHour))
         and (Frac(ActiveCtr.Block[0].BlDate) < 23*cHour)
         and (MessageDlg('Уже получены данные до '+DateTimeToStr(ActiveCtr.Block[0].BlDate)+
         ' Запросить остаток из Internet?',
               mtConfirmation,[mbYes, mbNo],0) = mrYes)
          then FSetInternet.Exec(ActiveCtr.Block[0],tpGetBlock,ActiveCtr.Block[0].BlDate);
end;

var  mBitSeries:array [0..SumBitSer] of OutSer;

procedure TFMain.SetAllBitSeries(vCtr:TFPicCtr;BitSer:TGanttSeries);
var iSer:integer;
begin
  with vCtr do
    begin
//    aShowAudit.Checked:=AuditChecked;
//    if Not AuditChecked then AnalizKind:=-1
//    if AuditBlock = nil then AnalizKind:=1;
//????    CBShowAudit.ItemIndex:=AuditKind;
    GChart.Series[0].Active:=AuditKind>0;
//    CBShowAudit.Enabled:=AuditChecked;
    if AuditKind=0 then Exit;
    BitSer.Clear;
    ClearAuditSeries(0);
    for iSer:=0 to SumBitSer do
      begin
      mBitSeries[iSer].Time:=0;
      mBitSeries[iSer].Ser:=0;
      mBitSeries[iSer].Rep:=0;
      end;
//    ShowProgress;
    if mnViewEarlyDay.Checked then
      while Block[0].LoadFileCycle(ActiveCtr.ViewDate-1) do SetBitSeries(vCtr,BitSer);
    while Block[0].LoadFileCycle(ActiveCtr.ViewDate) do  SetBitSeries(vCtr,BitSer);
//    finally HideProgress; end;
    end;
end;

procedure TFMain.SetBitSeries(vCtr:TFPicCtr;BitSer:TGanttSeries);
Const Delay=1;
var i:Integer;
    vLevel,PozY:Integer;
    Color:TColor;
    st:string;
begin
if vCtr.AuditKind=0 then Exit;   //??? Not
if (vCtr.AuditBlock <> nil) and (vCtr.AuditKind=1)
then
    begin
    (vCtr.AuditBlock as TAudit).SetAuditSeries(vCtr, 0,BitSer);
    BitSer.Active:=True;
    Exit;
    end;
with vCtr.Block[0] do
   begin
   for i:=1 to SumBitSer do
          begin
          if Not GetDiagnosis(1+((i-1) mod CountX),1+((i-1) div CountX),vLevel,PozY,Color,st)
              then break;
          if (vLevel>0) and (PozY<>0) then
              begin
              if mBitSeries[i].Ser=0 then
                  begin
                  mBitSeries[i].Rep:=mBitSeries[i].Rep+1;
                  if mBitSeries[i].Rep < Delay then Exit;
                  if BlDate<(mBitSeries[i].Time+cHour) then st:=' ';
                  mBitSeries[i].Time:=BlDate;
                  mBitSeries[i].Ser:=BitSer.AddGanttColor(BlDate-cMin*Delay,
                    BlDate+cMin,PozY,st,Color);
                  end
              else
                  begin
                  BitSer.EndValues.Value[mBitSeries[i].Ser]:=BlDate;
                  mBitSeries[i].Time:=BlDate;
                  end;
              end
          else
              begin
              mBitSeries[i].Rep:=0;
              mBitSeries[i].Ser:=0;
              end;
          end;
   BitSer.Active:=True;
   end;
end;

{procedure TFMain.FBuildChart;
var iSer,iListCtr:integer;
    Save_Cursor:TCursor;
begin
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;
 try
 ChahgingSCount:=20;
 ChangingSer:=True;
 for iSer:=0 to GChart.SeriesCount-1 do GChart.Series[iSer].Clear;
   AddChartFromFile(ActiveCtr,0);
   for iListCtr:=1 to ListCtr.Tabs.Count do
     begin
     if (ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr)=ActiveCtr then continue;
     for iSer:=0 to szTablView-1 do
        begin
        if iListCtr=ActiveCtr.TablView[iSer].nCtr
          then begin AddChartFromFile((ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr),iListCtr); break; end;
        end;
     end;
//  SetNameGraf;
//  SetGridValue;
  ChangingSer:=False;
 finally
    Screen.Cursor := Save_Cursor;
 end;
end;

procedure TFMain.AddChartFromFile(SelfCtr:TFPicCtr;nCtr:Byte);
begin
   with SelfCtr.Block[0] do
    begin
    ShowProgress;
    try
    if mnViewEarlyDay.Checked then
      while LoadFileCycle(ActiveCtr.ViewDate-1) do
         begin
         FAddChart(SelfCtr,nCtr);
         end;
    while LoadFileCycle(ActiveCtr.ViewDate) do
         begin
         FAddChart(SelfCtr,nCtr);
         end;
    finally HideProgress; end;
    end;
end; }

procedure TFMain.AddChartFromHot;
var iSeries,iListCtr,vX:integer;
    st:string;
    res:double;
    tDate:TDateTime;
    aCtr:TFPicCtr;
begin
  if Not ActiveCtr.Block[0].Ready then Exit;
  tDate:=ActiveCtr.Block[0].BlDate;
  SignalGrid.Col[clnValue].Heading:=TimeToStr(tDate);//FormatDateTime('dd/mm  hh:nn',tDate);  !!!!
  for iSeries:=1 to SumAGraf do
      begin
      with SignalGrid do if Cell[clnName,iSeries]='' then
          begin Cell[clnValue,iSeries]:=''; continue; end;
      vX:=ActiveCtr.TablView[iSeries-1].nSensX;
      if vX=0 then vX:=1; //begin SignalGrid.Cell[clnValue,iSeries]:=''; continue; end; //vX:=1;
      iListCtr:=ActiveCtr.TablView[iSeries-1].nCtr;
      if (iListCtr>0) and (iListCtr <= ListCtr.Tabs.Count) then
        aCtr:=(ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr)
        else aCtr:=ActiveCtr;
      st:='';
      with GChart.Series[iSeries],aCtr.Block[0] do
        if ((tDate+5*CMin) > BlDate)
          and ((tDate-5*CMin) < BlDate) then
        begin
        res:=LoadXY(cOutBlock,vX,ActiveCtr.TablView[iSeries-1].nSensY,st);
        if Not IsArtefact then
            begin
            GChart.Series[iSeries].AddXY(BlDate,res,'',clTeeColor);
            GetGridFromSeries(SignalGrid,iSeries,GChart,'dd.mm hh:nn'); //!!!
            end;
        end;
      SignalGrid.Cell[clnValue,iSeries]:=st;
      end;
  SetBitSeries(ActiveCtr,GChart.Series[0] as TGanttSeries);
end;


{procedure TFMain.AddChartFromHot(SelfCtr:TFPicCtr;nCtr:Byte);
var iSer,vX:integer;
    st:string;
    res:double;
begin
for iSer:=1 to SumAGraf do
   begin
   vX:=ActiveCtr.TablView[iSer-1].nSensX;
   if vX=0 then vX:=1;
   if (ActiveCtr.TablView[iSer-1].nCtr=nCtr)
    or((SelfCtr=ActiveCtr) and (ActiveCtr.TablView[iSer-1].nCtr=0)) then   //corr
    with SelfCtr,SelfCtr.Block[0] do

      with GChart.Series[iSeries],aCtr do
        if ((tDate+5*CMin) > Block[0].BlDate)
          and ((tDate-5*CMin) < Block[0].BlDate) then


          begin
          res:=LoadXY(cOutBlock,vX,ActiveCtr.TablView[iSer-1].nSensY,st);
          if Not IsArtefact then GChart.Series[iSer].AddXY(BlDate,res,'',clTeeColor); //AddSer(GChart.Series[iSer],res,BlDate);
          end;
   end;
if SelfCtr=ActiveCtr then SetBitSeries(ActiveCtr,GChart.Series[0] as TGanttSeries);
end; }

{procedure TFMain.SetNameGraf;
var iSeries,iListCtr,vX:integer;
    st:string;
    aCtr:TFPicCtr;
//    OutDate:TDateTime;
begin
//  with ActiveCtr.Block[0] do
//    if Ready then OutDate:=BlDate else OutDate:=Now;
  for iSeries:=1 to SumAGraf do
      begin
      aCtr:=ActiveCtr;
      iListCtr:=ActiveCtr.TablView[iSeries-1].nCtr;
      if (iListCtr>0) and (iListCtr <= ListCtr.Tabs.Count) then
        aCtr:=(ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr);
      with GChart.Series[iSeries],aCtr do
        begin
        Block[0].LoadXY(cOutBlock,0,ActiveCtr.TablView[iSeries-1].nSensY,st);
        vX:=ActiveCtr.TablView[iSeries-1].nSensX;
        if vX=0 then vX:=1;
        st:=aCtr.CtrName+' '+GetTextZona(vX
          ,ActiveCtr.TablView[iSeries-1].nSensY)+st;
        if Title <> st then Title := st;
        end;
      end;
end; }

{procedure TFMain.BuildSeriesI(iSeries,iListCtr,ValXSens,ValYSens:integer);
var aCtr:TFPicCtr;
    st:string;
    res:double;
begin
   if iSeries>=SumAGraf then Exit;
   if ValXSens=0 then ValXSens:=1;
   if iListCtr>ListCtr.Tabs.Count then iListCtr:=0;
   if iListCtr=0 then aCtr:=ActiveCtr
   else aCtr:=ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr;
// номер графика
   with GChart.Series[iSeries+1],aCtr.Block[0] do
      begin
      LoadXY(cOutBlock,0,ValYSens,st);
      st:=aCtr.CtrName+' '+aCtr.GetTextZona(ValXSens,ValYSens)+st;
      GChart.Series[iSeries+1].Clear;
      GChart.Series[iSeries+1].Title:=st;
//      (PanelValues.Controls[iSeries] as TPanel).Hint:=st;
      st:=ProgMess[49]; //'нет данных';
      while LoadFileCycle(ActiveCtr.ViewDate) do
          begin
          res:=LoadXY(cOutBlock,ValXSens,ValYSens,st);
          if Not IsArtefact then AddXY(BlDate,res,'',clTeeColor);
          end;
//      (PanelValues.Controls[iSeries] as TPanel).Caption:=st;
//      Active:=(PanelCheck.Controls[iSeries] as TCheckBox).Checked;
      end; 
end;}

procedure TFMain.OpenNowClick(Sender: TObject);
begin
   if DoOpenNow then Exit;
   if Trunc(ActiveCtr.ViewDate)=Trunc(Now) then Exit;
   ActiveCtr.ViewDate:=Now;
   BuildAllGridGrafs(ActiveCtr);//FBuildChart;
   SetMaxMin;
   SetButtonArxiv;
end;

{procedure TFMain.CheckGrafClick(Sender: TObject);
begin
end;}
{procedure TFMain.CheckGrafClick(Sender: TObject);
begin
  GChart.LeftAxis.Automatic:=True;
  with Sender as TCheckBox do
    begin
    GChart.Series[Tag].Active:=Checked;
    ActiveCtr.TablView[Tag-1].Checked:=Checked;
    end;
end; }

procedure TFMain.SETimer1Change(Sender: TObject);
begin
  ActiveCtr.Period:=SETimer1.Value;
  ActiveCtr.SetPeriod;
  SetMaxMin;
end;

procedure TFMain.ShowDockPanel(APanel: TPanel; MakeVisible: Boolean; Client: TControl);
begin
  if not MakeVisible and (APanel.VisibleDockClientCount > 1) then Exit;

  if APanel = RightPanEx then VSplitter.Visible := MakeVisible
  else HSplitter.Visible := MakeVisible;

  if MakeVisible then
      begin
      if APanel = RightPanEx then
            begin
            APanel.Width := RightPanExWidth;//ClientWidth div 3;
            VSplitter.Left := APanel.Width + VSplitter.Width;
            end
      else  begin
            if APanel = BottomPanel then
                begin
                if BottomPanelHeight<5 then BottomPanelHeight:=266;//SignalPanel.Height+20;
                APanel.Height := BottomPanelHeight;
//                HSplitter.Top := ClientHeight - APanel.Height - HSplitter.Width;
                end
            else
                begin
                if LeftPanExWidth<5 then LeftPanExWidth:=266;
                APanel.Width := LeftPanExWidth;
                //VSplitter.Left := APanel.Width + VSplitter.Width;
                end;
            end;
      end
  else if APanel = BottomPanel then APanel.Height := 0 else APanel.Width := 0;
  if MakeVisible and (Client <> nil) then Client.Show;
end;

{procedure TFMain.SaveDocks;
var stream:TFileStream;
begin
  Exit;
  if Not mnSaveView.Checked then Exit;
  try
      try
      stream:=TFileStream.Create(ExePath+'Monitor.pnls',fmCreate);
//      RightPanEx.DockManager.SaveToStream(stream);
      BottomPanel.DockManager.ResetBounds (TRUE);
      BottomPanel.DockManager.SaveToStream(stream);
      finally  FreeAndNil(stream); end;
  except  end;
end; }

procedure TFMain.DefInitDocks;
begin
  TreePanel.ManualDock(RightPanEx,nil,alTop);  //Right %%%
  CrossPanel.ManualDock(RightPanEx,nil,alBottom);
  HotGrafPanel.ManualDock(RightPanEx,nil,alBottom);
  BlocksTreePanel.ManualDock(RightPanEx,nil,alBottom);
  ShowDockPanel(RightPanEx,true, nil);  //RightPanEx
  SignalPanel.ManualDock(BottomPanel,nil,alClient);//alTop);//
  HotMesPanel.ManualDock(RightPanEx,nil,alBottom);//BottomPanel,nil,alRight);//alBottom);
  ShowDockPanel(BottomPanel,true, nil);
  
  CrossPanel.Visible:=false;    //HotGrafPanel  %%%
  HotGrafPanel.Visible:=false;

{
  RightPanEx.DockManager.BeginUpdate;
  HotGrafPanel.Height:=30;
  CrossPanel.Height:=30;
//  RightPanEx.DockManager.ResetBounds (TRUE);
  RightPanEx.DockManager.EndUpdate;
//  HotGrafPanel.ManualFloat(Rect(10,10,300,200)); }
end;

procedure TFMain.ExInitForm;
var stream:TFileStream;
begin
  Track3D.Position:=1;
  OldX:=-1;
  SelSeries:=0;
  CrossHairColor:=clYellow;
  CrossHairStyle:=psSolid;
  CBShowAudit.AddItem(ProgMess[330],nil);
  CBShowAudit.AddItem(ProgMess[325],nil);
  CBShowAudit.AddItem(ProgMess[45],nil);      //Анализатор
{
  if mnSaveView.Checked then
    try
      stream:=TFileStream.Create(ExePath+'Monitor.pnls',fmOpenRead);
      try
//      RightPanEx.DockManager.LoadFromStream(stream);
      BottomPanel.DockManager.BeginUpdate;
      BottomPanel.DockManager.LoadFromStream(stream);


        //SignalPanel.Height:=30;
        //HotMesPanel.Height:=30;

      BottomPanel.DockManager.EndUpdate;
      BottomPanel.DockManager.ResetBounds (TRUE);
      finally  FreeAndNil(stream); end;
    except end; }
//  else  }
//   DefInitDocks;
//AnimPanel.ManualFloat(Rect(20,20,100,100));
end;

procedure TFMain.FormActivate(Sender: TObject);
begin
//!!!!--------------------------
  if bCtrTree then Exit;
  ExceptMsg:=ActiveCtr.CtrName; //+'-'+vBlock.NameBlock;
  bCtrTree:=true;
  BlocksTreePanel.Visible:=VisibleBlocks;
  if (FSetGrid<>nil) and BlocksTreePanel.Visible then
      begin
      FSetGrid.BlockTreeView.Parent:=FMain.BlocksTreePanel;
      FSetGrid.BlockTreePanel.Visible:=false;
      BlocksTreePanel.Update;
      end;
//  Show;
  bCtrTree:=false;
//!!!!--------------------------
  if not (ListCtr.Tabs.Count>0) then
    aNewCtrExecute(Self);
  if not (ListCtr.Tabs.Count>0) then
    aOpenCtrExecute(Self);
  if not (ListCtr.Tabs.Count>0) then
    Application.Terminate;
end;

procedure TFMain.mContexClick(Sender: TObject);
begin
Application.HelpContext(1);
end;

procedure TFMain.SostTxtClick(Sender: TObject);
var y,i:integer;
    FileName,st:string;
    OutFile:TextFile;
begin
with ActiveCtr.Block[0] do begin
  if LoadFileCycle(BlDate) then
     begin
     ShowProgress;
     try
     FileName:=FileNameBase(YearOf(ActiveCtr.ViewDate));
     AssignFile(OutFile,FileName);
     Rewrite(OutFile);
     Write(OutFile,ProgMess[20]);
     for y:=1 to CountY do
        begin
        LoadXY(cOutBlock,0,y,st);
        Write(OutFile,st+';');
        end;
     Writeln(OutFile,'');
     i:=0;
     while LoadFileCycle(BlDate) do
        begin
        i:=i+1;
        Write(OutFile,IntToStr(i)+';'+FormatDateTime('hh:nn;',BlDate));
        for y:=1 to CountY do
          begin
          LoadXY(cOutBlockNum,1,y,st);
          Write(OutFile,st+';');
          end;
        Writeln(OutFile,'');
        end;
     finally
     CloseFile(OutFile);
     HideProgress;
     end;
     end;
end;
FReport.Exec(FileName);
end;


procedure TFMain.aShowSostExecute(Sender: TObject);
var i:integer;
begin
//  with ActiveCtr do if Not Block[0].FatalSend then Show;//SetPicCtr;
  if mnActiveTree.Checked then  // and Active
  with ListCtr do for i:=0 to Tabs.Count-1 do
       (Tabs.Objects[i] as TFPicCtr).Show;
  ActiveCtr.Show;
//  Hide;
end;

procedure TFMain.aAnalGrafExecute(Sender: TObject);
begin
//  if FSelPar.Exec(ActiveCtr,Left+PanelName.Width+50,Top+PanelLeft.Top) then SetGGrafFromActiveCtr;//SetActiveCtr;
end;

procedure TFMain.aCtrTipExecute(Sender: TObject);
begin
 FNewCtr.ShowCtr2;//ViewCtrHard;
end;

procedure TFMain.aBaseExecute(Sender: TObject);
begin
   FReport.Exec(ActiveCtr.Block[1].BaseToFile(ActiveCtr.ViewDate));
end;

procedure TFMain.aPrintScreenExecute(Sender: TObject);
begin
if PrinterSetupDialog1.Execute then PrintChart(ActiveCtr.CtrName,GChart);
end;

procedure TFMain.PrintChart(const Title:string;vChart:TChart);
var bc,lc,cFn,lfc:TColor;
begin
with vChart,Printer do begin
 BeginDoc;
 Printer.Canvas.TextOut(0,5,ProgMess[8]+'  '+Title+
      FormatDateTime(' '+LongDateFormat,MaxXValue(BottomAxis)));
 Gradient.Visible := False;
 bc:=BackColor;
 BackColor:=clTeeColor;
 lc:=Legend.Color;
 lfc:=Legend.Font.Color;
 Legend.Color:=clWhite;
 Legend.Font.Color:=clBlack;
 cFn:=vChart.BottomAxis.LabelsFont.Color;
 vChart.BottomAxis.LabelsFont.Color:=clBlack;
 PrintPartial{PrintRect}(Rect(0,20,Printer.PageWidth-1,Printer.PageHeight-1));
 EndDoc;
 BackColor:=bc;
 Legend.Color:=lc;
 Legend.Font.Color:=lfc;
 vChart.BottomAxis.LabelsFont.Color:=cFn;
 Gradient.Visible := True ;
 end;
end;

procedure TFMain.aBigGrafExecute(Sender: TObject);
begin
GChart.ZoomPercent(120);
end;

procedure TFMain.aSmolGrafExecute(Sender: TObject);
begin
GChart.ZoomPercent(80);
end;

procedure TFMain.aShowVoiceExecute(Sender: TObject);
begin
  FVoice.Show;
end;

var Visi:Boolean=False;

procedure TFMain.TreeViewGrafCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var Par:Txy;st:string;
    NodeRect: TRect; pnt:TPoint;
    NodeParent: TTreeNode;
begin
  if cdsHot in State  then
     begin
     Par.Ptr:=Node.Data;
     NodeRect := Node.DisplayRect(True);
     if Node.HasChildren or (Par.Y=0) then
        begin
//---------------------------------------------------------------
        if (Node.Level=1) and mnActiveTree.Checked then  // and Active
            begin
            if Visi then Exit;
            if VisForm = ListCtr.Tabs.Objects[Node.Index] as TFPicCtr then Exit;
            Visi:=true;
            sleep(500);
            GetCursorPos(pnt);
            pnt.X:=pnt.X-Sender.ClientOrigin.X; pnt.Y:=pnt.Y-Sender.ClientOrigin.Y;
            if (pnt.X < NodeRect.Left) or (pnt.X > NodeRect.Right)
               or (pnt.Y< NodeRect.Top) or (pnt.Y > NodeRect.Bottom) then
                  begin Visi:=false; Exit; end;
            if VisForm<>nil then begin  VisForm.RestorePos; Show; Update; end;
//            BringToFront;
            VisForm:=ListCtr.Tabs.Objects[Node.Index] as TFPicCtr;
            VisForm.SetNewPos(GChart.ClientOrigin.X, GChart.ClientOrigin.Y);//+P2.Left+8,160+Top);
            end;
        Visi:=false;
//-----------------------------------------------------------------
//        if (Node.Level=2) and (Node.HasChildren) and (Node.ImageIndex=0) then Node.ImageIndex:=imBook;
        Exit;
        end;
     NodeParent:=Node;
     while NodeParent.Level>1 do NodeParent:=NodeParent.Parent;
     if NodeParent.Index > ListCtr.Tabs.Count then Exit;
     if Node.ImageIndex=0 then Node.ImageIndex:=imGraf;
     with (ListCtr.Tabs.Objects[NodeParent.Index] as TFPicCtr) do
       begin
       Block[0].LoadXY(cOutBlock,Par.X,Par.Y,st);
//       Node.StateIndex:=imNum;
       Sender.Canvas.Font.Color:=GetImColor(imNum);
       Sender.Canvas.Brush.Color:=$00FFFFDF ;//clYellow;     //clWhite;
       Sender.Canvas.TextOut(NodeRect.Left, NodeRect.Top,Node.Text+' ='+st); //(NodeRect.Left+NodeRect.Right, NodeRect.Top+1,{Node.Text+' ='+st);
       end;
     DefaultDraw := False;
  end;
end;

procedure TFMain.NewData(ReadyCtr: TFPicCtr);
var iCtr:Word;
    tx:string;
begin
  YesName.Checked:=False;
//  if (ReadyCtr=ActiveCtr) and (Animate2.Open ) then begin Animate2.Visible:=true; Animate2.StopFrame:=50;Animate2.Active:=True; end;
//  if (ReadyCtr=ActiveCtr) and (Animate1.Height>70) and (Animate1.Open {and YesAnim.Checked}) then Animate1.Active:=True;
  with ListCtr do
  for iCtr:=0 to Tabs.Count-1 do
     begin
     if (ReadyCtr<>Tabs.Objects[iCtr]) then continue;
     tx:=ReadyCtr.GetTxtCtr;
     if tx<>Tabs.Strings[iCtr] then
        begin
        Tabs.Strings[iCtr]:=tx;
        TreeViewGraf.Items[0].Item[iCtr].Text:=tx;
        end;
     TreeViewGraf.Items[0].Item[iCtr].ImageIndex:=CtrImage;
     end;

  if (ReadyCtr=ActiveCtr) and (OpenNow.Down) then
                  begin
//                  SetGridValueFromActiveCtr;
                  AddChartFromHot; //(ReadyCtr,iCtr+1);
                  if BPlay.Down then SetMaxMin;
                  OpenNowClick(Self);
//                  GIFSShow1.Visible:=True;
//                  GIFSShow1.Animate:=True;
                  end;
  if bNeedMeteo and Not bActiveMeteo and (MonitorState = msWork) and (ListCtr.Tabs.Count<10) then AddCtr(ProgMess[483]{'Метео}+'.ctr','');
end;

{procedure CalcScrollBarPos(vScroll:TScrollBar;vChart:TChart);
var Difer:Double;
begin
  ChangingBars:=True;
  with vChart do
  if vScroll.Kind=sbHorizontal then  //для горизонтального
    with vChart.BottomAxis do
      begin
      vScroll.Enabled:=True;
      Difer:=MaxXValue(BottomAxis)-MinXValue(BottomAxis);
      if Difer>0 then
      vScroll.Position:=Round( 100.0*
         ((Maximum+Minimum)*0.5-vChart.MinXValue(vChart.BottomAxis))/Difer);
      end
    else              //для вертикального
      with vChart.LeftAxis do
        begin
        vScroll.Enabled:=True;
        Difer:=MaxYValue(LeftAxis)-MinYValue(LeftAxis);
        if Difer>0 then
        vScroll.Position:=Round( 100.0*
         ((Maximum+Minimum)*0.5-vChart.MinYValue(vChart.LeftAxis))/Difer);
        end;
  ChangingBars:=False;
end; }

procedure CalcTrackBarPos(vScroll:TTrackBar;vChart:TChart);
var Difer:Double;
begin
  ChangingBars:=True;
  with vChart do
    with vChart.BottomAxis do
      begin
      vScroll.Enabled:=True;
      Difer:=MaxXValue(BottomAxis)-MinXValue(BottomAxis);
      if Difer>0 then
      vScroll.Position:=Round( 100.0*
         ((Maximum+Minimum)*0.5-vChart.MinXValue(vChart.BottomAxis))/Difer);
      end;
  ChangingBars:=False;
//  vScroll.SelStart:=1; vScroll.SelEnd:=90;
end;

procedure TFMain.ScrollBar1Change(Sender: TObject);
begin
end;
{
procedure ScrollChange(vScroll:TScrollBar;vChart:TChart);
var Difer,Mx:Double;
begin
  if ChangingBars then Exit;
  if vScroll.Kind=sbHorizontal then
  With vChart.BottomAxis do    //для горизонтального
  Begin
    if Automatic then Automatic:=False;
    Difer:=Maximum-Minimum;
    Mx:=vChart.MinXValue(vChart.BottomAxis)+Difer*0.5
     +(vChart.MaxXValue(vChart.BottomAxis)-vChart.MinXValue(vChart.BottomAxis))*vScroll.Position/100.0;
    if Mx<=Minimum then
       begin
       Minimum:=Mx-Difer;
       Maximum:=Mx;
       end
    else
       begin
       Maximum:=Mx;
       Minimum:=Mx-Difer;
       end;
  end
  else
  With vChart.LeftAxis do     //для вертикального
  Begin
    if Automatic then Automatic:=False;
    Difer:=Maximum-Minimum;
    Mx:=vChart.MinYValue(vChart.LeftAxis)+Difer*0.5
     +(vChart.MaxYValue(vChart.LeftAxis)-vChart.MinYValue(vChart.LeftAxis))*vScroll.Position/100.0;
    if Mx<=Minimum then
       begin
       Minimum:=Mx-Difer;
       Maximum:=Mx;
       end
    else
       begin
       Maximum:=Mx;
       Minimum:=Mx-Difer;
       end;
  end;
end;}

procedure TrackChanged(vScroll:TTrackBar;vChart:TChart);
var Difer,Mx:Double;
begin
  if ChangingBars then Exit;
  With vChart.BottomAxis do    //для горизонтального
  Begin
    if Automatic then Automatic:=False;
    Difer:=Maximum-Minimum;
    Mx:=vChart.MinXValue(vChart.BottomAxis)+Difer*0.5
     +(vChart.MaxXValue(vChart.BottomAxis)-vChart.MinXValue(vChart.BottomAxis))*vScroll.Position/100.0;
    if Mx<=Minimum then
       begin
       Minimum:=Mx-Difer;
       Maximum:=Mx;
       end
    else
       begin
       Maximum:=Mx;
       Minimum:=Mx-Difer;
       end;
  end
end;

procedure TFMain.SetViewTab;
begin
 if Not mnViewTab.Checked then
    begin
    P1.Parent:=FMain;
    ListCtr.Visible:=false;
    end
 else
    begin
    P1.Parent:=ListCtr;
    ListCtr.Visible:=true;
    end;
end;

procedure TFMain.ListCtrDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  if Active then
       begin
       ListCtr.Canvas.Font.Color:=clWhite;
//??       ListCtr.Canvas.Font.
       ListCtr.Canvas.Brush.Color:=(ListCtr.Tabs.Objects[TabIndex] as TFPicCtr).GetColorCtr;
       ListCtr.Canvas.FillRect(Rect);
       end
  else
       ListCtr.Canvas.Font.Color:=(ListCtr.Tabs.Objects[TabIndex] as TFPicCtr).GetColorCtr;

  ListCtr.Images.Draw(ListCtr.Canvas,Rect.Left+2,Rect.Top+3,0);//TabIndex);
  ListCtr.Canvas.TextOut(Rect.Left+20,Rect.Top+3,ListCtr.Tabs.Strings[TabIndex]);
end;


procedure TFMain.mnWidthClick(Sender: TObject);
begin
  GlobMeteoWidth:=StrToFloat(InputBox(ProgMess[108],ProgMess[109],
    FloatToStr(GlobMeteoWidth)));
end;

procedure TFMain.mnLongClick(Sender: TObject);
begin
    GlobMeteoLong:=StrToFloat(InputBox(ProgMess[108],ProgMess[110],
    FloatToStr(GlobMeteoLong)));
end;

procedure TFMain.mnMeteoTimeClick(Sender: TObject);
begin
//##    GlobMeteoZone:=-FindTimeZone;
    GlobMeteoZone:=StrToInt(InputBox(ProgMess[108],ProgMess[111],IntToStr(GlobMeteoZone)));
    SunRaiseSet502;
end;

procedure TFMain.aBitGrafExecute(Sender: TObject);
begin
    if DiagnosisDlgExec(ActiveCtr.CtrName,ActiveCtr.Block[0].Diagnosis,
            ActiveCtr.Block[0].CountDiagnosis, NowAccess) then
         begin
         ActiveCtr.Block[0].SaveDiagnosis;
         SetActiveCtr(ActiveCtr);
         end;
end;
{var HandDll:THandle;
    DiagnosisDlgExec: function(vApplication:TApplication; vDiagnosis:PTArrayDiagnosis;
          vCount:word; var vNowAccess:integer):Boolean; stdcall;
begin
   DiagnosisDlgExec:=GetFromLibrary(DLG_DLL,'DiagnosisDlgExec',HandDll);
   if @DiagnosisDlgExec <> nil then
         if DiagnosisDlgExec(Application,ActiveCtr.Block[0].Diagnosis,
            ActiveCtr.Block[0].CountDiagnosis, NowAccess) then
         begin
         ActiveCtr.Block[0].SaveDiagnosis;
         SetActiveCtr(ActiveCtr);
         end;
   if HandDll <> 0 then FreeLibrary(HandDll);
end;}

procedure TFMain.ShowLegendClick(Sender: TObject);
begin
 GChart.Legend.Visible:=ShowLegend.Down;
end;

procedure TFMain.ChangeLangClick(Sender: TObject);
begin
  if Sender is TMenuItem then
  begin
    if ( GetCurrentLang <> (Sender as TMenuItem).Tag)
     then
     begin
      SaveLanguage((Sender as TMenuItem).Tag);
      Close;
      ExecuteFile(Application.ExeName, '"'+GetNameLangFile+'"', '', SW_SHOWNORMAL);
     end;
  end;
end;

procedure TFMain.mPDF(Sender: TObject);
begin
with OpenDialog1 do
  begin
    Filter:=ProgMess[323]+'(*.pdf)|*.pdf|'+ProgMess[324]+'(*.*)|*.*';
    FileName:=ExtractFilePath(ParamStr(0))+ProgMess[19]+'\*.pdf';
    if Execute then ExeDocument(FileName);
  end;
end;

procedure TFMain.mClimateHelpClick(Sender: TObject);
begin
   ExeDocument(ExtractFilePath(ParamStr(0))+'Climate.hlp');
end;

procedure TFMain.InternetReady(var Msg:TMessage);//message WM_CTLCOLORMSGBOX;
begin
     TestReceiveFromNet;
end;

procedure TFMain.TimerNetTimer(Sender: TObject);
begin
     TestReceiveFromNet;
end;

procedure TFMain.aNewCtrExecute(Sender: TObject);
begin
  if Not IsPasw(aNewCtr.Tag) then Exit;
  if AddCtr('','') <> nil then SetActiveCtr(ActiveCtr);
end;

procedure TFMain.aOpenCtrExecute(Sender: TObject);
begin
if Not IsPasw(aOpenCtr.Tag) then Exit;
with OpenDialog1 do
  begin
	  FileName:='';
    Filter:=ProgMess[13]+' (*.ctr)|*.ctr|'+ProgMess[196]+'(*.dcf;*.txt)|*.dcf;*.txt|AllFiles (*.*)|*.*';
    if Execute then
     if AddCtr(FileName,ExtractFilePath(FileName)) <> nil then SetActiveCtr(ActiveCtr);
  end;
end;

procedure TFMain.aCloseCtrExecute(Sender: TObject);
var i:integer;
begin
if Not IsPasw(aCloseCtr.Tag) then Exit;
     if ListCtr.Tabs.Count<=1 then begin
        MessageDlg(ProgMess[18],
          mtWarning,[mbOk],0);
        Exit;
        end;
     if MessageDlg(aCloseCtr.Caption+' <'+ActiveCtr.CtrName+'> ?',mtConfirmation, [mbYes, mbNo], 0) <> mrYes
        then Exit;
     if boolChangingActive then Exit;
     boolChangingActive:=true;
     try
     VisForm:=nil;
     if FSetGrid.GridCtr=ActiveCtr then FSetGrid.GridCtr:=nil;
     DelInTree(TreeViewGraf,ActiveCtr);
     DelInTree(FSetGrid.BlockTreeView,ActiveCtr);
     DelInComboBox(CtrCB,ActiveCtr);
     FPort.DeleteCtr(ActiveCtr);
     if FSetGrid.GridCtr=ActiveCtr then FSetGrid.GridCtr:=nil;
//     FSetGrid.DelInTree(ActiveCtr,nil);
     with ListCtr do
        begin
        for i:=0 to Tabs.Count-1 do
          if Tabs.Objects[i] = ActiveCtr then
            begin
            Tabs.Delete(i);
            break;
            end;
        TabIndex:=0;
        end;
     ChangeCtrList:=true;
     ActiveCtr.Free;
     finally boolChangingActive:=false; end;
     SetActiveCtr(ListCtr.Tabs.Objects[0] as TFPicCtr);
     if FSetGrid.GridCtr = nil then FSetGrid.SetNewGridBlock(ActiveCtr.Block[1]);
     SetClimatClients;
end;

procedure TFMain.aCloseMonExecute(Sender: TObject);
begin
if Not IsPasw(aCloseMon.Tag) then Exit;
 Close;
end;


procedure TFMain.aActionsDlgExecute(Sender: TObject);
begin
    ActionsDlgExec(ActionsMain,FSetGrid.ActionsGrid,NowAccess);  //ActiveCtr.CtrName,
//          then  SetActionList(ActionsMain, NowAccess);
end;
{var HandDll:THandle;
    ActionsDlgExec: function(vApplication:TApplication; vActionList:TActionList;
          var vNowAccess:integer):Boolean; stdcall;
begin
   ActionsDlgExec:=GetFromLibrary(DLG_DLL,'ActionsDlgExec',HandDll);
   if @ActionsDlgExec <> nil then
         if ActionsDlgExec(Application,ActionsMain,NowAccess)
          then  SetActionList(ActionsMain, NowAccess);
   if HandDll <> 0 then FreeLibrary(HandDll);
end; }

procedure TFMain.mTranslatorClick(Sender: TObject);
var hwndPrev:HWND;
begin
  hwndPrev:=FindWindow('TTFTranslator',nil);
  if hwndPrev<>0 then  SetForegroundWindow(hwndPrev)
  else ExecuteFile(ExtractFilePath(ParamStr(0))+'LTranslator502.exe', '"'+GetNameLangFile+'"', '', SW_SHOWNORMAL);
end;

procedure TFMain.aShowAnalizExecute(Sender: TObject);
begin
//###  ActiveCtr.AuditChecked:=aShowAudit.Checked;
  ActiveCtr.AuditKind := CBShowAudit.ItemIndex;
  SetAllBitSeries(ActiveCtr,GChart.Series[0] as TGanttSeries);
  GChart.LeftAxis.Automatic:=True;
end;

procedure TFMain.CBShowAuditChange(Sender: TObject);
begin
  ActiveCtr.AuditKind := CBShowAudit.ItemIndex;
  SetAllBitSeries(ActiveCtr,GChart.Series[0] as TGanttSeries);
{  if ActiveCtr.AuditBlock = nil then CBShowAudit.ItemIndex:=1;
  if ActiveCtr.AnalizKind = CBShowAudit.ItemIndex then Exit;
  ActiveCtr.AnalizKind:=CBShowAudit.ItemIndex;
  if ActiveCtr.AuditChecked then SetActiveCtr;  }
end;

procedure TFMain.mnNetManagementClick(Sender: TObject);
begin
  TimerNet.Enabled:=mnNetManagement.Checked;
end;

procedure TFMain.aShowWindExecute(Sender: TObject);
begin
  FWindSonic.Show;
end;

procedure TFMain.mnInternetClick(Sender: TObject);
begin
   FSetInternet.InitInternet(mnInternet.Checked);
end;

procedure TFMain.aOpenInterExecute(Sender: TObject);
begin
  FSetInternet.Exec(nil,0,Now);
end;

procedure TFMain.aExportXmlExecute(Sender: TObject);
begin
  with SaveDialog1 do
  begin
    FileName:=GetDefaultDataPath+ActiveCtr.FCtrName+'.xml'; //'.ctr'
//    Filter:=ActiveCtr.Block[0].NameBlock+'|'+ActiveCtr.Block[0].FileNameFilter;
    if Execute then FNewCtr.CtrToDom2(ActiveCtr,FileName);
  end;
end;


var LastPosit:integer=0;

procedure TFMain.aShowArchGrafExecute(Sender: TObject);
begin
  FGridGraf.Exec(nil);
end;

procedure TFMain.pmStClick(Sender: TObject);
var zParams: array[0..79] of Char;
begin
   ShellExecute(Handle,'open',StrPCopy(zParams,ProgMess[21]),'','',sw_Show);
end;

procedure TFMain.mnTSClick(Sender: TObject);
var zParams: array[0..79] of Char;
begin
   ShellExecute(Handle,'open',StrPCopy(zParams,ProgMess[22]),'','',sw_Show);  //'http://alashin.ru'
end;

procedure TFMain.aForecastExecute(Sender: TObject);
var zParams: array[0..79] of Char;
begin
   ShellExecute(Handle,'open',StrPCopy(zParams,ForecastAdr),'','',sw_Show);  //'http://rp5.ru'
end;

{procedure TFMain.DoShowHint(var HintStr: String; var CanShow: Boolean; var HintInfo: THintInfo);
begin
  if HintInfo.HintControl is TTreeView then
  begin
    with HintInfo do
    begin
      HintColor := clAqua;// Changes only for this hint
      HintMaxWidth := 120;{//int text word wraps if width is greater than 120
//      Inc(HintPos.X, SpeedButton3.Width); // Move hint to right edge

    end;
  end;
end; }

//==============================================================================
//==============================================================================

procedure TFMain.SignalGridDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := Source is TTreeView;
end;

procedure TFMain.SignalGridDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var XY,CB:Txy;
    DisplCol,DisplRow,nSeries:integer;
    Node: TTreeNode;
begin
  inherited;
  if (Source is TTreeView) then
    begin
    Node:=(Source as TTreeView).Selected;
    if Node.HasChildren then Exit;
    XY.Ptr:=Node.Data;
    if (XY.X=0) or (XY.Y=0) then Exit;
    SignalGrid.CellFromXY(X,Y,DisplCol,DisplRow);
    SignalGrid.Cell[clnCheck,DisplRow]:=2;//true;
    SignalGrid.Cell[clnValue,DisplRow]:='';
    SignalGrid.CellData[clnCheck,DisplRow]:=XY.Ptr;
    nSeries:=DisplRow-1;
    while Node.Level>1 do Node:=Node.Parent;
    with ActiveCtr do
     begin
     TablView[nSeries].nSensX:=XY.X;
     TablView[nSeries].nSensY:=XY.Y;
     if ListCtr.TabIndex=Node.Index then TablView[nSeries].nCtr:=0
       else TablView[nSeries].nCtr:=Node.Index+1;
     TablView[nSeries].Checked:=True;
     BuildSeriesFromGrid(nSeries,TablView[nSeries].nCtr,True);
     end;
   GChart.LeftAxis.Automatic:=True;
   end;
end;

procedure TFMain.BuildCalcSeries(iSeries,iListCtr:integer;vActive:Boolean);
var Mult,temp,dif,z:double; i,j,avg:integer;
begin
  GChart.Series[17].Clear;
  BuildSeriesFromGrid(iSeries-1,ActiveCtr.TablView[iSeries-1].nCtr,True);//TablView[iSeries].Checked);
  try
  Mult:=StrToFloatDef(SignalGrid.Cell[clnMult,iSeries],0);
  if Mult=0 then Exit;
  except Exit; end;
  avg:=StrToIntDef(SignalGrid.Cell[clnAver,iSeries],0);
  dif:=StrToFloatDef(SignalGrid.Cell[clnDif,iSeries],0);
  if avg>0 then
    begin
      for i:=0 to GChart.Series[iSeries].Count-avg-1 do
          begin
          temp:=0;
          for j:=0 to avg-1 do temp:=temp+GChart.Series[iSeries].YValue[i+j];
          GChart.Series[17].AddXY(GChart.Series[iSeries].XValue[i+avg div 2],temp*Mult/avg,'',clTeeColor);
          end;
     GChart.Series[iSeries].Clear;
     for i:=0 to GChart.Series[17].Count-1 do GChart.Series[iSeries].AddXY(GChart.Series[17].XValue[i],GChart.Series[17].YValue[i],'',clTeeColor);
    end;
//  else begin
//          for i:=0 to GChart.Series[iSeries].Count-1 do
//          GChart.Series[17].AddXY(GChart.Series[iSeries].XValue[i],GChart.Series[iSeries].YValue[i]*Mult,'',clTeeColor);
//       end;
  if dif > 0 then
    with GChart.Series[iSeries] do
    begin
      for i:=1 to Count-1 do
       begin
       temp:=YValue[i]-YValue[i-1];
       if (temp<dif) and (temp>-dif) then
       YValue[i-1]:=temp  //AddXY(GChart.Series[iSeries].XValue[i],temp*Mult,'',clTeeColor);
       else YValue[i-1]:=0;
       YValue[Count-1]:=0;
       end;
    end;

  GChart.Series[17].Clear;
  for i:=1 to SumAGraf do
    begin
    if StrToFloatDef(SignalGrid.Cell[clnMult,i],0)=0 then continue;
    if SignalGrid.Cell[clnMinus,i]='-' then z:=-1 else z:=1;
    for j:=0 to GChart.Series[i].Count-1 do
          begin
          if GChart.Series[17].Count<=j then
          GChart.Series[17].AddXY(GChart.Series[i].XValue[j],GChart.Series[i].YValue[j]*z,'',clTeeColor)
          else GChart.Series[17].YValue[j]:=GChart.Series[17].YValue[j]+GChart.Series[i].YValue[j]*z;
          end;
    end;
end;

procedure TFMain.BuildSeriesFromGrid(iSeries,iListCtr:integer;vActive:Boolean);
var aCtr:TFPicCtr;
    st:string;
    res:double;  xy:Txy;
    ValXSens,ValYSens:integer;
begin
   if iSeries>=SumAGraf then Exit;
   GChart.Series[iSeries+1].Clear;
   ValXSens:=ActiveCtr.TablView[iSeries].nSensX;
   ValYSens:=ActiveCtr.TablView[iSeries].nSensY;
   if ValXSens=0 then
        begin
        for ValXSens:=clnName to SignalGrid.Cols do
            begin
            SignalGrid.Cell[ValXSens,iSeries+1]:='';
            SignalGrid.CellData[ValXSens,iSeries+1]:=nil;
            end;
        Exit;//ValXSens:=1;
        end;
   if iListCtr>ListCtr.Tabs.Count then iListCtr:=0;
   if iListCtr=0 then aCtr:=ActiveCtr
   else aCtr:=ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr;
//   TablView[iSeries].nSensY,
// номер графика
   with GChart.Series[iSeries+1],aCtr.Block[0] do
      begin
      st:=aCtr.CtrName+' '+GetFullName(ValXSens,ValYSens);
      GChart.Series[iSeries+1].Title:=st;
      SignalGrid.Cell[clnName,iSeries+1]:=st;
      SignalGrid.CellData[clnName,iSeries+1]:=aCtr.Block[0];
      xy.X:=ValXSens; xy.Y:=ValYSens;
      SignalGrid.CellData[clnValue,iSeries+1]:=xy.Ptr;
      if mnViewEarlyDay.Checked then
      while LoadFileCycle(ActiveCtr.ViewDate-1) do
          begin
          res:=LoadXY(cOutBlock,ValXSens,ValYSens,st);
          if Not IsArtefact then AddXY(BlDate,res,'',clTeeColor);
          end;
      while LoadFileCycle(ActiveCtr.ViewDate) do
          begin
          res:=LoadXY(cOutBlock,ValXSens,ValYSens,st);
          if Not IsArtefact then AddXY(BlDate,res,'',clTeeColor);
          end;
      Active:=vActive;
      if vActive then SignalGrid.Cell[clnCheck,iSeries+1]:=2
         else SignalGrid.Cell[clnCheck,iSeries+1]:=0;
//      vActive;
      GetGridFromSeries(SignalGrid,iSeries+1,GChart,'dd.mm hh:nn');
      end;
end;

procedure TFMain.BuildAllGridGrafs(vActiveCtr:TFPicCtr);
var iSeries:Integer;
begin
 ChangingSer:=false;
 with vActiveCtr do
 try
    Block[0].ShowProgress;
{    SignalGrid.Col[clnValue].ParentFont:=false;
    SignalGrid.Col[clnValue].Font.Color:=clLime;//TablView[iSeries].Color;
    with SignalGrid.Col[clnPeriod] do begin ParentFont:=false; Font.Color:=clOlive; end;
    with SignalGrid.Col[clnMaxTime] do begin ParentFont:=false; Font.Color:=clOlive; end;
    with SignalGrid.Col[clnMinTime] do begin ParentFont:=false; Font.Color:=clOlive; end;
}
    for iSeries:=0 to SumAGraf-1 do
      begin
      if TablView[iSeries].Color=0 then
        TablView[iSeries].Color:=SignalGrid.CellColor[clnColor,iSeries+1];
      SignalGrid.CellColor[clnColor,iSeries+1]:=TablView[iSeries].Color;
//      SignalGrid.Cell[clnColor,iSeries+1]:='___';//TablView[iSeries].Color;
      SignalGrid.Cell[clnWidth,iSeries+1]:=TablView[iSeries].Width;
      if (TablView[iSeries].bModif and bStairs) > 0 then SignalGrid.Cell[clnStairs,iSeries+1]:='L'
        else SignalGrid.Cell[clnStairs,iSeries+1]:='/';
      if TablView[iSeries].Checked then SignalGrid.Cell[clnCheck,iSeries+1]:=2
          else SignalGrid.Cell[clnCheck,iSeries+1]:=0;
      if (TablView[iSeries].bModif and bRightAxis) > 0 then SignalGrid.Cell[clnAxis,iSeries+1]:=2
          else SignalGrid.Cell[clnAxis,iSeries+1]:=0;
//      SignalGrid.Cell[clnCheck,iSeries+1]:=TablView[iSeries].Checked;
      SignalGrid.RowParentFont[iSeries+1]:= false;
      SignalGrid.RowFont[iSeries+1].Color:=TablView[iSeries].Color;
      with GChart.Series[iSeries+1] as TLineSeries do
           begin
//           YValues.Multiplier:=iSeries;
           SeriesColor:=TablView[iSeries].Color;
//           LinePen.Color:=TablView[iSeries].Color-$020202;
           LinePen.Width:=TablView[iSeries].Width;
           Stairs:=(TablView[iSeries].bModif and bStairs) > 0;
           Active:=TablView[iSeries].Checked;
           if (TablView[iSeries].bModif and bRightAxis) > 0 then VertAxis:=aRightAxis
            else VertAxis:=aLeftAxis;
           end;
      {if TablView[iSeries].nCtr>0 then} BuildSeriesFromGrid(iSeries,TablView[iSeries].nCtr,TablView[iSeries].Checked);
      end;
  SetGridValueFromActiveCtr;
  SetAllBitSeries(vActiveCtr,GChart.Series[0] as TGanttSeries);
  SetMaxMin;
  GChart.LeftAxis.Automatic:=True;
  SetButtonArxiv;
  BuildFuncChart;
//  with FMain do GetGridFromSeries(SignalGrid,7,GChart,1,'hh:nn');
  finally Block[0].HideProgress; end;
end;

procedure TFMain.SetGridValueFromActiveCtr;
var iSeries,iListCtr,vX:integer;
    st:string;
    aCtr:TFPicCtr;
    tDate:TDateTime;
begin
  if ActiveCtr.Block[0].Ready then tDate:=ActiveCtr.Block[0].BlDate
  else tDate:=Now;
  SignalGrid.Col[clnValue].Heading:=FormatDateTime('- hh:nn',tDate);
//  PDate.Caption:=FormatDateTime(LongTimeFormat,tDate);//LongDateFormat+'    '+//
  for iSeries:=1 to SumAGraf do
      begin
      vX:=ActiveCtr.TablView[iSeries-1].nSensX;
      if vX=0 then begin SignalGrid.Cell[clnValue,iSeries]:=''; continue; end; //vX:=1;
      iListCtr:=ActiveCtr.TablView[iSeries-1].nCtr;
      if (iListCtr>0) and (iListCtr <= ListCtr.Tabs.Count) then
        aCtr:=(ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr)
        else aCtr:=ActiveCtr;
      with GChart.Series[iSeries],aCtr do
        if ((tDate+5*CMin) > Block[0].BlDate)
          and ((tDate-5*CMin) < Block[0].BlDate) then
        begin
        Block[0].LoadXY(cOutBlock,vX,ActiveCtr.TablView[iSeries-1].nSensY,st);
        end else st:='-';
      SignalGrid.Cell[clnValue,iSeries]:=st;
      end;
end;

function TFMain.SetGridValueFromSer(var vDate:TDateTime;var vPosY:integer):integer;
var iSeries,iX,XNear,YDifr,AbsYDifr,FindYSer:integer;
    st:string;
    XNextNum:array[1..SumAGraf] of integer;
//    ValSer:array[1..SumAGraf] of double;
    absXDifr,XDifr:Double; xy:Txy;
begin
 with GChart,SignalGrid do
  begin
  absXDifr:=500000; XNear:=-1;
  for iSeries:=1 to SumAGraf do
      begin
      XNextNum[iSeries]:=0;//Series[iSeries].XValue[0];
      if Series[iSeries].Count<2 then continue;
      for iX:=0 to Series[iSeries].Count-1 do
            begin
            if Series[iSeries].XValue[iX] > vDate then
                begin
                XDifr:=Series[iSeries].XValue[iX]- vDate;
                if XDifr < (vDate - Series[iSeries].XValue[XNextNum[iSeries]]) then XNextNum[iSeries]:=iX;
                break;
                end;
            XNextNum[iSeries]:=iX;
            end;
      XDifr:=AbsD(vDate - Series[iSeries].XValue[XNextNum[iSeries]]);
      if XDifr < absXDifr then begin absXDifr:=XDifr; XNear:=iSeries; end;
      end;
  if XNear>0 then
      begin
      vDate:=Series[XNear].XValue[XNextNum[XNear]];
      Result:=Series[XNear].CalcXPos(XNextNum[XNear]);
      end else begin Result:=-1; Exit; end;

  SignalGrid.Col[clnValue].Heading:=FormatDateTime('dd/mm - hh:nn',vDate);  //TimeToStr(vDate);//
  FindYSer:=-1; AbsYDifr:=1111111;
  for iSeries:=1 to SumAGraf do
      begin
      if (Series[iSeries].Count > 0) and
      (AbsD(vDate - Series[iSeries].XValue[XNextNum[iSeries]]) < 5*cMin) and (Cell[clnName,iSeries]<>'') then
          begin
          try
          if Cell[clnCheck,iSeries] > 0 then
            begin
            YDifr:=vPosY-Series[iSeries].CalcYPos(XNextNum[iSeries]); if YDifr<0 then YDifr:=-YDifr;
            if YDifr < AbsYDifr then begin FindYSer:=iSeries; AbsYDifr:=YDifr; end;
            end;
//--------------------------------------------------
          st:=FloatToStr(Series[iSeries].YValue[XNextNum[iSeries]]);
          xy.Ptr:=CellData[clnValue,iSeries];
          TBlock(CellData[clnName,iSeries]).LoadXY(cOutTxtBlock,xy.X,xy.Y,st);
{          st:=FormatFloat('0.#',Series[iSeries].YValue[XNextNum[iSeries]]);//##
          xy.Ptr:=CellData[clnValue,iSeries];
           if CellData[clnName,iSeries]<>nil then
            st:=st+TBlock(CellData[clnName,iSeries]).ConstNames[xy.Y].Ed; }
//--------------------------------------------------
          except  end; //st:='$';
          Cell[clnValue,iSeries]:=st;
          end
        else begin Cell[clnValue,iSeries]:='~'; end;
//      MarkSeries(ActSer,22);
      end;
      if FindYSer > 0 then
          begin
          st:=Cell[clnName,FindYSer]+'='+Cell[clnValue,FindYSer];//+IntToStr(temp);//;//+'='+;  //
          LActYSer.Caption:=st;
          iX:=Result+20;
          if iX+LActYSer.Width > GChart.Width then iX:=iX-40-LActYSer.Width;
          LActYSer.Left:=iX;
          LActYSer.Top:=Series[FindYSer].CalcYPos(XNextNum[FindYSer])-6;//vPosY+10;
          LActYSer.Font.Color:=Series[FindYSer].SeriesColor;//ColCell[clnName,ActSer].Font;
//          if (OldY>(LActYSer.Top-22)) and (OldY< (LActYSer.Top+LActYSer.Height+22)) then OldY:=-1;
          LActYSer.Visible:=true;  //LActYSer.Canvas.
 //         LActYSer.ControlStyle:=[csOpaque];
 //         LActYSer.Repaint;//.Invalidate;
//          sleep(200);
          //SignalGrid.RowColor[ActSer]:=clSilver;
          end else LActYSer.Visible:=False; //.Caption:='';
  end;
end;

{--procedure TFMain.SetGridValueFromSer(vDate:TDateTime);
var iSeries,iX:integer;
    st:string;
begin
  SignalGrid.Col[clnValue].Heading:=FormatDateTime('в hh:nn',vDate);
  with GChart,SignalGrid do
  for iSeries:=1 to SumAGraf do
      begin
      st:='~';
      for iX:=0 to Series[iSeries].Count-1 do
        if Series[iSeries].XValue[iX] > vDate then
          begin
          if iX=0 then  break;
          st:=FormatFloat('0.##',Series[iSeries].YValue[iX-1]);//FloatToStr(Series[iSeries].YValue[iX-1]);
          break;
          end;
      Cell[clnValue,iSeries]:=st;
      end;--}

{      vX:=ActiveCtr.TablView[iSeries-1].nSensX;
      if vX=0 then begin SignalGrid.Cell[clnValue,iSeries]:=''; continue; end; //vX:=1;
      iListCtr:=ActiveCtr.TablView[iSeries-1].nCtr;
      if (iListCtr>0) and (iListCtr <= ListCtr.Tabs.Count) then
        aCtr:=(ListCtr.Tabs.Objects[iListCtr-1] as TFPicCtr)
        else aCtr:=ActiveCtr;
      with GChart.Series[iSeries],aCtr do
        if ((tDate+5*CMin) > Block[0].BlDate)
          and ((tDate-5*CMin) < Block[0].BlDate) then
        begin
        Block[0].LoadXY(cOutBlock,vX,ActiveCtr.TablView[iSeries-1].nSensY,st);
        end else st:='-';
      SignalGrid.Cell[clnValue,iSeries]:=st;
      end;
end;}

procedure TFMain.SignalGridCellEdit(Sender: TObject; DataCol,
  DataRow: Integer; ByUser: Boolean);
begin
   if DataCol=clnCheck then
      begin
      ActiveCtr.TablView[DataRow-1].Checked:=SignalGrid.Cell[clnCheck,DataRow]>0;
      GChart.Series[DataRow].Active:=ActiveCtr.TablView[DataRow-1].Checked;
      GChart.LeftAxis.Automatic:=true;
      end;
   if DataCol=clnWidth then
      begin
      ActiveCtr.TablView[DataRow-1].Width:=SignalGrid.Cell[clnWidth,DataRow];
      (GChart.Series[DataRow] as TLineSeries).LinePen.Width:=SignalGrid.Cell[clnWidth,DataRow];
      end;
   if DataCol>=clnMult then
      begin
      BuildCalcSeries(DataRow,1,True);
      end;
   if DataCol=clnAxis then
      begin
      if SignalGrid.Cell[clnAxis,DataRow] = 0 then
         begin
         ActiveCtr.TablView[DataRow-1].bModif:=ActiveCtr.TablView[DataRow-1].bModif xor bRightAxis;
         (GChart.Series[DataRow] as TLineSeries).VertAxis:=aLeftAxis;
         end
      else begin
        ActiveCtr.TablView[DataRow-1].bModif:=ActiveCtr.TablView[DataRow-1].bModif or bRightAxis;
        (GChart.Series[DataRow] as TLineSeries).VertAxis:=aRightAxis
        end;
      GChart.RightAxis.Automatic:=true;
      GChart.LeftAxis.Automatic:=true;
      end;
end;

//var HideDrag:Boolean;
procedure TFMain.SignalGridClickCell(Sender: TObject; DataColDown,
  DataRowDown, DataColUp, DataRowUp: Integer; DownPos,
  UpPos: TtsClickPosition);
begin
  if DataRowUp < 1 then
    begin
    if ColorDialog1.Execute then SignalGrid.Color:=ColorDialog1.Color;
    Exit;
    end;
{  if DataColUp=clnCheck then
      begin
//      if SignalGrid.Cell[clnCheck,DataRowUp]=0 then SignalGrid.Cell[clnCheck,DataRowUp]:=1
//          else SignalGrid.Cell[clnCheck,DataRowUp]:=0;
      ActiveCtr.TablView[DataRowUp-1].Checked:=SignalGrid.Cell[clnCheck,DataRowUp]>0;
      GChart.Series[DataRowUp].Active:=ActiveCtr.TablView[DataRowUp-1].Checked;
      GChart.LeftAxis.Automatic:=true;
      Exit;
      end;}
    if (DataColUp = clnStairs) then
        begin
//        if MessageDlg(ProgMess[493], mtCustom,[mbYES,mbNO],0)<>mrYES
       if (ActiveCtr.TablView[DataRowUp-1].bModif and bStairs) > 0 then
                begin
                ActiveCtr.TablView[DataRowUp-1].bModif:=ActiveCtr.TablView[DataRowUp-1].bModif xor bStairs;
                SignalGrid.Cell[clnStairs,DataRowUp]:='/';
                end
          else  begin
                ActiveCtr.TablView[DataRowUp-1].bModif:=ActiveCtr.TablView[DataRowUp-1].bModif or bStairs;
                SignalGrid.Cell[clnStairs,DataRowUp]:='L';
                end;
        (GChart.Series[DataRowUp] as TLineSeries).Stairs:=(ActiveCtr.TablView[DataRowUp-1].bModif and bStairs) > 0;
//        HideDrag:=true;
        Exit;
        end;
    if (DataColUp = clnColor) and ColorDialog1.Execute then
        begin
        SignalGrid.RowParentFont[DataRowUp]:= false;
        SignalGrid.RowFont[DataRowUp].Color:=ColorDialog1.Color;
        SignalGrid.CellColor[clnColor,DataRowUp]:=ColorDialog1.Color;
//      Font.Color:=ColorDialog1.Color;
        ActiveCtr.TablView[DataRowUp-1].Color:=ColorDialog1.Color;
      ( GChart.Series[DataRowUp] as TLineSeries).SeriesColor:=ColorDialog1.Color;
//      IsMod:=True;
//      HideDrag:=true;
        Exit;
        end;
  if SelSeries > 0 then
    with GChart.Series[SelSeries] as TLineSeries do
        begin
        LinePen.Width:=ActiveCtr.TablView[SelSeries-1].Width;
        Active:=ActiveCtr.TablView[SelSeries-1].Checked;
        end;
  with GChart.Series[DataRowUp] as TLineSeries do
      begin
      SelSeries:=DataRowUp;
      LinePen.Width:=5;
      if Not Active then Active:=true;
      end;
//    SignalGrid.BeginDrag(false); //if Button=mbLeft then
end;

procedure TFMain.aAVIVoiceExecute(Sender: TObject);
begin
  FVoice.Show;
end;

procedure TFMain.FuncChartDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//  inherited;
//  Accept := Source is TtsGrid;//TreeView;
  Accept := (Source is TtsGrid) and (FuncChart.LeftAxis.Clicked(X,Y) or FuncChart.BottomAxis.Clicked(X,Y));
end;

//var LeftRow,BottomRow:integer;

procedure TFMain.BuildFuncChart;
var iSer:integer; dX,dY:double;
begin
with ActiveCtr do
  begin
  if (BottomRow>0) then FuncChart.BottomAxis.Title.Caption:=SignalGrid.Cell[clnName,BottomRow];
  if (LeftRow > 0) then FuncChart.LeftAxis.Title.Caption:=SignalGrid.Cell[clnName,LeftRow];
  FuncChart.Series[0].Clear;
  if (BottomRow = 0) or (LeftRow = 0) then Exit;
  for iSer:=0 to GChart.Series[LeftRow].Count-1 do
    begin
    if iSer >= GChart.Series[BottomRow].Count then break;
    dX:=GChart.Series[BottomRow].YValue[iSer];
    dY:=GChart.Series[LeftRow].YValue[iSer];
    if(dX <> 0) and (dY <> 0) then FuncChart.Series[0].AddXY(dX,dY);
    end;
  end;
end;

procedure TFMain.FuncChartDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if (Source is TtsGrid) then
    with Source as TtsGrid,FuncChart,ActiveCtr do
      begin
      if LeftAxis.Clicked(X,Y) then LeftRow:=CurrentDataRow;
      if BottomAxis.Clicked(X,Y) then BottomRow:=CurrentDataRow;
      BuildFuncChart;
      end;
end;

procedure TFMain.mnViewTabClick(Sender: TObject);
begin
   SetViewTab;
end;

procedure TFMain.TrackChange(Sender: TObject);
begin
  TrackChanged(Track,GChart);
end;

procedure TFMain.SignalGridColResized(Sender: TObject; RowColnr: Integer);
begin
  SetSizeGrid(SignalGrid);
end;

var bChange:Boolean;
procedure TFMain.TreeViewGrafChange(Sender: TObject; Node: TTreeNode);
var vNode:TTreeNode;
begin
  bChange:=true;
  vNode:= Node;
  while vNode.Level>1 do vNode:=vNode.Parent;
  if vNode.Level=1 then TreePanel.Caption:=TBlock(vNode.Data).ParentCtr.CtrName
  else TreePanel.Caption:=Node.Text;
  if (TreeViewGraf.Selected.Level = 1) then
      begin
      SetActiveCtr(TBlock(TreeViewGraf.Selected.Data).ParentCtr as TFPicCtr);
      end;


//!!!!
{  if Not(TreeViewGraf.Selected.HasChildren) then
      begin
      xy.Ptr:=Node.Data;
      HotGraf.Start(Node.Parent.Data,xy.X,xy.Y);
      end else HotGraf.Hide;  }
end;

procedure TFMain.TreeViewGrafDblClick(Sender: TObject);
var xy:Txy;
begin
   with TreeViewGraf do
    if Not(Selected.HasChildren) then // bChange and  and (Button=mbLeft)
      begin
      xy.Ptr:=Selected.Data;
      if HotGrafPanel.Visible then
        DrawHotGraf(Selected.Parent.Data,xy.X,xy.Y,TBlock(Selected.Parent.Data).ParentCtr.ViewDate)
      else HotGraf.DrawFloat(Selected.Parent.Data,xy.X,xy.Y,TBlock(Selected.Parent.Data).ParentCtr.ViewDate);
      end;// else HotGraf.Hide;
end;

procedure TFMain.TreeViewGrafMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var  Node:TTreeNode;xy:Txy;
begin
  with TreeViewGraf do
   begin
   if Button=mbRight then
//      try
   with TreeViewGraf do
    if Not(Selected.HasChildren) then // bChange and  and (Button=mbLeft)
      begin
      xy.Ptr:=Selected.Data;
//      if HotGrafPanel.Visible then
//        DrawHotGraf(Selected.Parent.Data,xy.X,xy.Y,TBlock(Selected.Parent.Data).ParentCtr.ViewDate)
//      else
       HotGraf.DrawFloat(Selected.Parent.Data,xy.X,xy.Y,TBlock(Selected.Parent.Data).ParentCtr.ViewDate);
      end;// else HotGraf.Hide;
{  with GridData do
    if (CurrentDataCol > 1) and (CurrentDataRow > 1) then
      HotGraf.DrawFloat(CellData[1,2],CurrentDataCol-1,CurrentDataRow-1,GridCtr.Block[GridBlock].BlDate);   //Grid.CellData[1,2]:=Block;
}
//      except end;
   end;
  bChange:=false;
end;

procedure TFMain.TreeViewGrafStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
   if HotGrafPanel.Floating then HotGrafPanel.Visible:=false;
end;

procedure TFMain.SignalGridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
{  if  (SignalGrid.CurrentDataCol<> clnColor) and
      (SignalGrid.CurrentDataCol<> clnStairs) and
      (SignalGrid.CurrentDataCol <> clnCheck)}
  if  (SignalGrid.CurrentDataCol= clnName)  and (Button=mbLeft) then SignalGrid.BeginDrag(false);
//  HideDrag:=false;
end;

procedure TFMain.SignalGridMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var DisplCol,DisplRow,nSeries:integer;
begin
  SignalGrid.CellFromXY(X,Y,DisplCol,DisplRow);
  MarkSeries(DisplRow,DisplCol);
end;

procedure TFMain.MarkSeries(vSer,vCol:integer);
begin
  if vSer = SelSeries then Exit;
  if SelSeries > 0 then
    with GChart.Series[SelSeries] as TLineSeries do
        begin
        LinePen.Width:=ActiveCtr.TablView[SelSeries-1].Width;
        Active:=ActiveCtr.TablView[SelSeries-1].Checked;
        SignalGrid.RowColor[SelSeries]:=clNone;
        end;
  SelSeries:=-1;
  if (vSer>0) then //and (DisplCol>=clnName) then
      begin
      SelSeries:=vSer;
      with GChart.Series[SelSeries] as TLineSeries do
            begin
            LinePen.Width:=5;
            if Not Active then Active:=true;
            SignalGrid.RowColor[SelSeries]:=SignalGrid.Color xor $303030;// and $303030;//SignalGrid.RowColor[SelSeries] or $F0F0F0;//-50;// and $808080;//clSilver;//Black;
            end;
      end;
end;

var rep:Boolean=false; LastTime:TDateTime;
procedure TFMain.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  if Now > LastTime+cHour then begin LastTime:=Now; Exit; end;
  LastTime:=Now;
  if Not rep then
    begin
    rep:=true;      //Application.ExeName+
    HotMessage(ExceptMsg,E.Message,clLog,clNone);  //ActiveCtr.CtrName
//    MessageDlg(ProgMess[494]+#10#13+E.Message, mtError,[mbOK],0);//<>mrYES
    rep:=false;
    end;
end;

procedure TFMain.ApplicationEvents1ShowHint(var HintStr: String;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
   if sHint<>'' then begin HintInfo.HintColor:=clYellow; HintStr:=sHint; sHint:=''; end;
   CanShow:=true;
end;

procedure TFMain.RightPanExUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
  if (Sender as TPanel).DockClientCount = 1 then
    ShowDockPanel(Sender as TPanel, False, nil);
end;

procedure TFMain.RightPanExDockDrop(Sender: TObject;
  Source: TDragDockObject; X, Y: Integer);
begin
  if (Sender as TPanel).DockClientCount = 1 then
    ShowDockPanel(Sender as TPanel, True, nil);
  (Sender as TPanel).DockManager.ResetBounds(True);
end;

procedure TFMain.N24Click(Sender: TObject);
begin
  SignalPanel.Visible:=N24.Checked;
end;

procedure TFMain.N25Click(Sender: TObject);
begin
  HotMesPanel.Visible:=N25.Checked;
end;

procedure TFMain.N26Click(Sender: TObject);
begin
  TreePanel.Visible:=N26.Checked;
end;

procedure TFMain.N27Click(Sender: TObject);
begin
  CrossPanel.Visible:=N27.Checked;
end;

procedure TFMain.N28Click(Sender: TObject);
begin
  VisibleBlocks:=N28.Checked;;
//  BlocksTreePanel.Visible:=true;
  FormActivate(Self);
end;

procedure TFMain.GIFSShow1Stop(Sender: TObject);
begin
//   GIFSShow1.Visible:=false;
end;

procedure TFMain.N29Click(Sender: TObject);
begin
   HotGrafPanel.Visible:=N29.Checked;
end;

var ns:integer;

var xLVal,LastPos:integer;  gEd:string[12];
procedure TFMain.FloatChartMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var mTime:TDateTime;
    tval:string;
    i,f:integer;  //,xp
begin
  xLVal:=FloatChart.Width div 2;
  if (OldX<>-1) then begin
    DrawCross(FloatChart,OldX,-1);
    OldX:=-1;
    end;
  if PtInRect( FloatChart.ChartRect, Point(X-FloatChart.Width3D,Y+FloatChart.Height3D)  ) then
      with FloatChart.Series[ns] do
      begin
      if Count<2 then Exit;
      mTime:=XScreenToValue(X);
      f:=0;
      for i:=0 to Count-1 do
        begin
        if XValue[i] > mTime then
            begin
            if (XValue[i]-mTime) < (mTime-XValue[f]) then f:=i;
            break;
            end;
        f:=i;
        end;
      X:=CalcXPos(f);
      if f <> LastPos then
          begin
          LastPos:=f;
          mTime:=XValue[f];
          LVal.Caption:=FormatDateTime('dd mmmm yyyyг.  hh:nn = ',mTime) + FormatFloat('0.##',YValue[f])+' '+gEd;
          LVal.Font.Color:=SeriesColor;
          if X < xLVal then  LVal.Left:=X //xLVal
            else  if (X+LVal.Width) > FloatChart.Width then LVal.Left:=X-LVal.Width
                else LVal.Left:=X;
          LVal.Visible:=True; GName.Visible:=False;
          end;
//-------------------------------------------------------------------
      DrawCross(FloatChart,X,-1);
      OldX:=X;
      OldY:=Y;
      end
      else  begin
            LVal.Visible:=False;
            GName.Visible:=true;
            LastPos:=-1;
            end;
end;

procedure TFMain.FloatChartAfterDraw(Sender: TObject);
begin
  OldX:=-1;
end;

function TFMain.DrawHotGraf(Block:TBlock; X,Y:integer; ActDate:TDateTime):Boolean;
var res:double; st:string;
begin
  try
   with FloatChart,Block do
      begin
      if (X<1) or (Y<1) or (X>CountX) then Exit;
      if (Block.Sort and srNoGridGraf)>0 then begin sHint:=ProgMess[90]; Exit; end;
      if Not LoadFileCycle(ActDate) then
        begin Result:=False; sHint:=ProgMess[495]{'Нет данных для построения графика'}; Exit; end;
      ns:=(ns+1) mod 2;
      Series[ns].Clear;
      repeat
                res:=LoadXY(cOutBlock,X,Y,st);
                if Not IsArtefact then Series[ns].AddXY(BlDate,res,'',clTeeColor);
      until Not LoadFileCycle(ActDate);
      HotGrafPanel.Caption:=ParentCtr.CtrName;
      case ns of
          0: LeftAxis.Title.Caption:=GetFullName(X,Y);
          1: RightAxis.Title.Caption:=GetFullName(X,Y);
          end;
      if (Series[ns].XValue[Series[ns].Count-1]-Series[ns].XValue[0]) < 1.5 then
          BottomAxis.DateTimeFormat:='hh:nn'
          else BottomAxis.DateTimeFormat:='dd.MM.yy';
      if (XNames<>nil) and (XNamesCount=CountX) and (XNames[X].Ed<>'') then
          gEd:=XNames[X].Ed
          else if (ConstNames <> nil) and (CountY=CountConstNames) then gEd:=ConstNames[Y].Ed
            else gEd:='';
//      xLVal:=GName.Left+GName.Width+12;
      if Not LeftAxis.Automatic then
            begin
            LeftAxis.Automatic:=true;
            BottomAxis.Automatic:=true;
            end;
      end;
     if HotGrafPanel.Floating then
        begin
        if (Mouse.CursorPos.X > Screen.Width div 2) then
          HotGrafPanel.Left:=Mouse.CursorPos.X-Width
          else HotGrafPanel.Left:=Mouse.CursorPos.X;
        if (Mouse.CursorPos.Y > Screen.Height div 2) then
          HotGrafPanel.Top:=Mouse.CursorPos.Y-Height-8
          else HotGrafPanel.Top:=Mouse.CursorPos.Y+8;
        HotGrafPanel.Visible:=true;
        end;
    Result:=true;
  except end;
end;

procedure TFMain.FormDeactivate(Sender: TObject);
begin
  VisibleBlocks:=BlocksTreePanel.Visible;
end;

procedure TFMain.CtrCBChange(Sender: TObject);
begin
  with CtrCB do SetActiveCtr(Items.Objects[ItemIndex] as TFPicCtr);
end;

procedure TFMain.mnAudServerAPLClick(Sender: TObject);
begin
  LoadWebServis;
end;

procedure TFMain.aChartColorExecute(Sender: TObject);
begin
    SetChartF.Exec(GChart,LTime,LAxisL);
end;

procedure TFMain.N31Click(Sender: TObject);
begin
     if ColorDialog1.Execute then SignalGrid.Color:=ColorDialog1.Color;
end;

procedure TFMain.N32Click(Sender: TObject);
begin
     if ColorDialog1.Execute then
          begin
          SignalGrid.Col[clnValue].ParentFont:=false;
          SignalGrid.Col[clnValue].Font.Color:=ColorDialog1.Color;//clLime;//TablView[iSeries].Color;
          end;
end;
procedure TFMain.N34Click(Sender: TObject);
begin
     if ColorDialog1.Execute then
          begin
          with SignalGrid.Col[clnPeriod] do begin ParentFont:=false; Font.Color:=ColorDialog1.Color; end;
          with SignalGrid.Col[clnMaxTime] do begin ParentFont:=false; Font.Color:=ColorDialog1.Color; end;
          with SignalGrid.Col[clnMinTime] do begin ParentFont:=false; Font.Color:=ColorDialog1.Color; end;
          end;
end;

procedure TFMain.aJurnalExecute(Sender: TObject);
begin
   LogToFile(HotMesGrid);
   FReport.GetLog(GetNameLogFile);
end;

procedure TFMain.aVideoExecute(Sender: TObject);
begin
  if WinExec(PChar('FVideo.exe'+' "'+ParamStr(0)+'"'),SW_SHOWNORMAL)<=32
    then ShowMessage('Need programm FVideo.exe');//('Требуется установить программу FVideo.exe');
end;

procedure TFMain.HotMesGridDblClick(Sender: TObject);
begin
  with HotMesGrid do
        SpeakHelp(Cell[CurrentDataCol,CurrentDataRow],1,1);
end;

procedure TFMain.aPortStatusExecute(Sender: TObject);
begin
  if FPortStatus <> nil then FPortStatus.Visible:=true;// InitPortStatus;
end;

procedure TFMain.aPaswExecute(Sender: TObject);
begin
  NowAccess:=PasswordDlgExec(NowAccess,6);
end;

procedure TFMain.aCalibrExecute(Sender: TObject);
begin
  FSetGrid.SetNewGridBlock(ActiveCtr.Block[2]);
end;

procedure TFMain.aBlTimerExecute(Sender: TObject);
begin
  FSetGrid.SetNewGridBlock(ActiveCtr.Block[3]);
end;

procedure TFMain.aBlControlExecute(Sender: TObject);
begin
  FSetGrid.SetNewGridBlock(ActiveCtr.Block[1]);
end;

procedure TFMain.GorMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    X:=X+Gor.Left;
    Y:=Gor.Top;
    GChartMouseMove(Sender,Shift,X,Y);
end;

procedure TFMain.VerMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    X:=Ver.Left;
    Y:=Y+Ver.Top;
    GChartMouseMove(Sender,Shift,X,Y);
end;

end.
