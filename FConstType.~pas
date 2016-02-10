unit FConstType;
{$DEFINE VOICESERVIS}
interface

uses  Graphics,Subr;

const
  INI_FILE_NAME='Monitor.ini';
  VOICE_DIR='VoiceMessages';
  DefChangeDir    ='Change';
//  INI_FILE_VIEW_NAME__='ViewMonitor.ini';           
//  VIEWER_NAME='FMain2';
  PORT_FORM_TITLE='RS485 - Ethernet';//ProgMess[515]; //'Обмен данными';//Port RS485';
  HELP_FILE_NAME='Monitor.hlp';
//  DLG_DLL='FitoDlg10.dll';
  DFonem=#13;//#13#10;//#13;//'#';//#13;  '|';//

  idSizeBlHi=7;
  idSizeBlLow=6;
  WebSep=';';
  
     cOutBlock=0;
     cInBlock=1;
     cOutBlockNum=2;
     cOutTxtBlock=4;

     cHour=1/24;
     cMin=1/1440;
     cSec=1/86400;
     cFantom=254;
     cErSend=253;
     cErWater=252;
     cHand=251;
     mlAlarm=1;
     mlInform=2;
     mlSend=4;
     mlFile=8;
     mlCreate=16;
//========= Block Sort =======
     srAudit        = 1;
     srConfig       = 2;
// модификатор блока Sort (bProperty)
     srHowHot=           4;
     srDoubleBlock=      8;
     srNoGridGraf=       16;
     srNoTestExist=      32;
     srSingleSave=       64;//1;
     srPCArchive=        128;
     srCfg1Col=          256;
     srPortOut=          512;
     srPortIn=           1024;

     bStairs=            1;
     bRightAxis=              2;// bAxis2;
     MSC_LINE=3; MSC_MOD=15; MSC_IO=31;
//----------------------------

     RW_GUEST       = 4;
     RW_GUESTI      = 5;
     RW_USER        = 9;
     RW_USERI       = 10;
     RW_SUPERVISOR  = 15;
     RW_NOEDIT      = 50;
     RW_INVISIBLE   = 50;
     RW_HARD        = 10;
     RW_SYS         = RW_SUPERVISOR+5;
     START_ACCESS   = RW_SUPERVISOR;//RW_USER;
     R_CONFIG       = RW_GUEST;
     W_CONFIG       = RW_SUPERVISOR+1;
     
     HIDE_MIN_MAX=-1000;
     NO_MIN_MAX=-1001;
     FATAL_MIN_MAX=-1002;

     cLevStart='Старт;81;81;';
     cLevOff='Выключение;82;82;';
     cLevConnectOn='На связи;85;85;';
     cLevConnectOff='Нет связи;86;86;';
     cLevFatal='95';

     tgNoTree=202;
     clFatal=clRed;
     clNews=$00208701;
     clLog=$00ff6060;
     clSay=$00a0a0ff;
     clInfoLog=clLog; //$00ffffa0;
     clmYel=$DEE0C0;{ $D0FFFF;} clmRed=$D0C8FF; clmGreen=$D0FFDF; clmSil=$DDDDDD;

     linkHotInvisible=10000;
     linkPape=linkHotInvisible+1;
     linkGorScreen=linkHotInvisible+2;
     linkVerScreen=linkHotInvisible+4;
//====================================================================
     kdSensor=1; kdReg=2; kdPump=4; kdSubSys=1 shl 3; kdEffect=1 shl 4;
     kdTask=1 shl 5; kdProgTask=1 shl 6; kdDelta=1 shl 7;
     kdConst=1 shl 8; kdCalced=1 shl 9; kdUltraClimFan=1 shl 10; kdNewTree=1 shl 11;
     kdConstTask=1 shl 12;

     resPWM=1 shl 1; resNoSend=1 shl 3; resUndef=1 shl 4;
     GxmV=5;
     opPlus=1; opMinus=2; opDDWP=4; opAbsRH=8;
//Hot mess
  colDate=1;
  colCtr=2;
//  colMsg=3;


type
  Int16=SmallInt;
  TWebStr=WideString;//Wide
  TPortName=string[5];
  TUnitNum=Byte;
  TBaudRate=Word;
  TIdentCtr=array[1..7] of Byte;
  // ( MESI
  TSFormat=(None,OnOff,YesNo,mSS,SS,mSdS,SdS,SdSdS,SdSdSdS,SSpSS,SpS
   ,SSpS0,SSSpS,SSSS,SSsSS,SShSSm,SSmSSs,SShSSm_12,SSpSSS,pSS,ComboSS
   ,ComboBit,SSS0,SFStr,SColor,ffff,S_S_S_S,CpMpN,Float32,ComboSSSS,S_SS,LpMpIO,pSSpSSS,CalcT);
  // MESI )
  TDir=(dBegin,dPrev,dNext,dEnd,dSeek);
  TSizeBl=Word;
  TBitView=record
        nSensY:Byte;
        YPoz:Byte;
        Color:TColor;
        end;
  TPref=String[20];   //12];
  TNameBlock=string[30];
  TCtrName=string[30];
  TCtrNameExt=string[87];
  TTipSens=(TipBit,AbsRH,DDWP,DDWPS,TR,PrognT,TipTime,TipZDT,TipSR,TipInp,TipControl,
      TipCalc,TipProg,TipTimer,TipSun,TipDo,TipAdd,TipNoCalibr,TipCalibr,TipIzm,
      TipSensor{TipAnal},TipText,TipCombo,TipGoTask,SensorRCS);

  TOper=(BGE,BGT,BLE,BLT,lOR,lAND);

  FormulResult= (fmNone ,fmFalse ,fmTrue);
  TConfigExist= (cfExistNone,cfExistTrue,cfExistFalse);
  OutSer=record
      Time:TDateTime;
      Ser:Longint;
      Rep:word;
      end;
  TMonitorState=(msStart,msWork,msTerminate,msAbout);

  TDiagnos=record
        Name:string[60];
        ShowPozition:Integer;
        LevelAlarm:Byte;
        PosInHot:integer;
        Frm:TSFormat;
        Oper:TOper;
        OperValue:Double;
        Color:TColor;
        Voice:string[20];
        Mech:Byte;
        end;
//     TPtDiagnos=^TDiagnos;
  TArrayDiagnosis=array [1..2] of TDiagnos;
  PTArrayDiagnosis=^TArrayDiagnosis;

  TTablView=record
        nCtr:Word;
        nSensX:Word;
        nSensY:Word;
        Checked:Boolean;
        Color:TColor;
        Width:Byte;
        bModif: Byte;//Boolean;
        end;
  TNameConst=record
        Name:string[80];
        Frm:TSFormat;
        Ed:string[12];
        TipSens:TTipSens;
        Min,Max,Def:double;
        Link:integer;
        Index:Smallint;//	word;
        GridColor:TColor;
        Mech:Smallint;//Shortint;
        Tag:integer;
        AccessR:Shortint;
        AccessW:Shortint;
        Kind:integer;
        o1:Smallint; op:Byte; o2:Smallint;
        end;
  TXNames=record
        Name:string[40];
        Frm:TSFormat;
        Ed:string[12];
        Index:Smallint;
        Cfg:Smallint;
        Kind:Shortint;
        Min,Max:double;
        end;
//Min - минимально допустимое значение
//Max - максимально допустимое значение
//Def - типовое значение
//----------------------------------------------
  pTNameConst=^TNameConst;
  TArrayNameConst=array [1..1000] of TNameConst;
  PTArrayNameConst=^TArrayNameConst;
  TArrayXNames=array [1..2] of TXNames;
  PTArrayXNames =^TArrayXNames;
  TEndPortMethod = procedure of object;
  InInt=array[0..1] of Byte;
  MCInt=SmallInt;
  PCInt=record
        case Tip:SmallInt of
        0:(HowInt:Smallint);
        1:(mb:Byte;
           sb:Byte);
        end;
//  pPCInt=^PCInt;
  TAny=record
  case Tip:LongInt of
        0:(Ptr:Pointer);
        1:(Long:LongInt);
        2:(b1:byte;
           b2:byte;
           b3:byte;
           b4:byte);
        3:(Dble:Double);
        end;

var GridCellColor:TColor;
    NowAccess, AccessR, AccessW:integer;
    FanHandle:Cardinal=0;
  RowMes:Word;
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
  PosFileLog:integer=0;

function MinInt(v1,v2:Integer):Integer;
function TestEquDate(vDate1,vDate2:TDateTime;Minute:integer):Boolean;
function StrBefoSpec(Spec:char; const st:string):string;
function AbsD(d:Double):Double;

implementation

function MinInt(v1,v2:Integer):Integer;
begin
 if v1 < v2 then Result:=v1 else Result:=v2;
end;

function AbsD(d:Double):Double;
begin
if d>=0 then Result:=d else Result:=-d;
end;

function TestEquDate(vDate1,vDate2:TDateTime;Minute:integer):Boolean;
begin
  Result:= (vDate1 > (vDate2-Minute*cMin)) and (vDate1 < (vDate2+Minute*cMin));
end;

function StrBefoSpec(Spec:char; const st:string):string;
var  i:integer;
begin
  i:=Pos(Spec,st);
  if i<1 then Result:=st else Result:=Copy(st,1,i-1);
end;


end.
