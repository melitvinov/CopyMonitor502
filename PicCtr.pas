unit PicCtr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs,
  StdCtrls,ExtCtrls, Buttons, Gauges, ToolWin, inifiles, ComCtrls,
  ImgList,Forms,DateUtils, Menus, ActnList,TSGrid,//Grids_ts,
  FConstType, FController, FBox, FPanel, FPicLabel, FPicPanel,GIFComponent,Subr;

const
        cMaxSensor=1000;
//Значения 4000-4999 метки TLabel
        cLMin=4000;
        cLMax=4999;
//Значения 5000-5999 индикаторы TGauge
        cGMin=5000;
        cGMax=5999;
//Значения 6000-6999 контейнеры TPanel содержащие метки TLabel
        cContMin=6000;
        cContMax=6999;
        SumFColor=8;//5;
        SumGrafColor=10;
clFColor:array [0..SumGrafColor-1] of TColor=(
        $9797FF,  //clLime,
        $00FFFF,  //clYellow,
        $FFFF00,  //clAqua,
        $97FF97,  //RGB(151,255,151),
        $B2BD03,//FF97FF,  //RGB(255,151,255),
        $F9AB5B,  //0000FF,  //clRed,
        $03B2BD,  //FF00FF,  // clWhite,
        $95FB43, //00FF00   //Green 125{r} or (255{g} shl 8) or (2{b} shl 16)
        $FCDA36,
        $36FC90
        );
//        SumZoneColors=8;
{ZoneColors:array [0..SumZoneColors-1] of TColor=(
        clLime,
        clYellow,
        clAqua,
        $97FF97,  //RGB(151,255,151),
        $FF97FF,  //RGB(255,151,255),
        clRed,
        clWhite,
        125or (255 shl 8) or (2 shl 16)
        );}
type
TDefLabel=record
    Name:string[22];//30];
    BkColor:TColor;
    Visible:Boolean;
    Tag1,Top,Left:Integer;
    FontSize_H,FontStyle_W:Integer;
    FontColor:TColor;
    FontName:string[30];
    end;

type
  TFPicCtr = class(TFController)
    TBPoliv: TToolBar;
    PSostP: TPanel;
    TBSetGrid: TToolButton;
    TBSetTime: TToolButton;
    btArViewer: TToolButton;
    ValueTimer: TTimer;
    PicTimer: TTimer;
    TBHoum: TToolButton;
    PMSetLabels: TPopupMenu;
    pmChColor: TMenuItem;
    pmChFont: TMenuItem;
    pmChangeName: TMenuItem;
    pmHide: TMenuItem;
    pmBlank: TMenuItem;
    pmOpenAll: TMenuItem;
    pmAutoLoadView: TMenuItem;
    N4: TMenuItem;
    pmSaveView: TMenuItem;
    pmLoadView: TMenuItem;
    PSost: TLabel;
    pmOutName: TMenuItem;
    SeekTB: TToolBar;
    ArViewDatePicker: TDateTimePicker;
    ArViewPosTrack: TTrackBar;
    ArViewTime: TEdit;
    UpDown1: TUpDown;
    IL1: TImageList;
    pmTransp: TMenuItem;
    pmChart: TMenuItem;
    N1: TMenuItem;
    procedure TBSetGridClick(Sender: TObject);
    procedure ValueTimerTimer(Sender: TObject);
    procedure PicTimerTimer(Sender: TObject);
    procedure btArViewerClick(Sender: TObject);
    procedure FormDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TBHoumClick(Sender: TObject);
    procedure TBSetTimeClick(Sender: TObject);
    procedure pmChColorClick(Sender: TObject);
    procedure pmChFontClick(Sender: TObject);
    procedure PMSetLabelsPopup(Sender: TObject);
    procedure pmChangeNameClick(Sender: TObject);
    procedure pmHideClick(Sender: TObject);
    procedure pmOpenAllClick(Sender: TObject);
    procedure pmAutoLoadViewClick(Sender: TObject);
    procedure pmSaveViewClick(Sender: TObject);
    procedure pmLoadViewClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pmOutNameClick(Sender: TObject);
    procedure ArViewDatePickerChange(Sender: TObject);
    procedure ArViewPosTrackChange(Sender: TObject);
    procedure UpDown1ChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: Smallint; Direction: TUpDownDirection);
    procedure pmTranspClick(Sender: TObject);
    procedure pmChartClick(Sender: TObject);
  private
    { Private declarations }
    LastPicTime:TDateTime;
    SelfX,SelfY:integer;//                   a,b:integer;
    ArCount:integer;
    CtrLastMes:string;
    SettingLog:Boolean;
    procedure Pic;//override;
    function FindComponentOnName(f_Name:string):TComponent;
    procedure SaveViewToFile(const NameFile:string);
    procedure LoadViewFromFile(const NameFile:string);
    function ReportName: string;
    procedure AfterReadHotBlock;
    procedure CreateLabel(const ColX,RowY,ptX,ptY:integer);
    function GetHotReader(var Res:string; var vColor:TColor):Boolean;

  public
    { Public declarations }
    ReportOpen:Boolean;
    AuditBlock:TBlock;  //TAudit;
    blPCArchive:TBlock;
    function CtrToFile:string;virtual;
    function CtrFromFile(CtrNameFile:string):Boolean; virtual;//(const CtrNameFile,ImageName:string;Image:TImage):Boolean;//virtual;
    procedure SetPicCtr; virtual;//override;
    procedure SetPicValue;
    procedure SetPeriod;//override;
    function GetColorCtr:TColor;//override;
    function GetImageCtr(nImage:integer):TBitmap;//override;
    function GetTxtCtr:string;//override;
    function GetViewNameFile(vName:string):string;
//    procedure ViewFromExist;
    procedure SetHints;
    function TagToZone(vTag:Longint):Integer;virtual;
//    function ReportInFile(Lev:word;const vMes:string): boolean;
    function BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer; virtual;
    procedure SetNewPos(x,y:integer);
    procedure RestorePos;
    function TagToSens(vTag:Longint):Integer; virtual;
    function TagToDirect(vTag:Longint):Integer; virtual;
    function SaveExtView(IniFile:TIniFile):Boolean; virtual;
    function LoadExtView(IniFile:TIniFile):Boolean; virtual;
    procedure InitBlocksLng;
    procedure SetLog(const st:string;vColor:TColor);

//    procedure PrintHotMsg; virtual;

//    procedure InitXml; virtual;
  end;

procedure LoadImageSkin(Image:TImage; const NameImage:string);
//function TagToSens(vTag:Longint):Integer;
//function TagToDirect(vTag:Longint):Integer;
function ZoneToTag(vZone:Integer):Longint;
function TagToZone1(vTag:Longint):Integer;
function TagToSaveName(vTag:Longint):Integer;
function GetImColor(v_imNum:Byte):TColor;
function GetFColor(n:integer):TColor;
function GetZoneColor(nZone,y:integer):TColor;
const ctStartZone=       100000;

implementation

uses  NewCtr, MessageU, Translate502, FCDP, audit, FormulEdit,FHotGraf, SetGrid,GGraf,
  Port,FBlockAccessDlg,ClimCalc,Stg;    //Audit, Port  DBSetup, SetGrid,

{$R *.DFM}

//========= Структура Tag ==================
//=== N.ZZ.DD.SSS
//-- SSS - номер сенсора
//-- DD - направление движения в эмуляции труб
//-- ZZ - номер зоны
//-- N - признак сохранения имени для переводчика
const
        ctPicX=       100000;
        ctPicName=    10000000;
        ctPicNoTrans= 100000000;
//      ctPicDirect=  100000;
        ctPicNumPar=  1000;

function TFPicCtr.TagToSens(vTag:Longint):Integer;
begin
  Result:=vTag mod ctPicNumPar;
end;

function TFPicCtr.TagToDirect(vTag:Longint):Integer;  //mod cPicDirect) div cPicNumPar;
begin
  Result:=(vTag div ctPicNumPar) mod 100; //ctPicDirect) div ctPicNumPar;
end;

function TagToZone1(vTag:Longint):Integer;
begin
  Result:=(vTag div ctPicX) mod 10;
  if Result=0 then Result:=1;
end;

function TFPicCtr.TagToZone(vTag:Longint):Integer;   //Tag div cPicX   ,mod cPicName) div cPicX+1;
begin
  Result:=(vTag div ctPicX) mod 10;
  if Result=0 then Result:=1;
end;

function TagToSaveName(vTag:Longint):Integer;
begin
  Result:=(vTag div ctPicName) mod 10;
end;

function ZoneToTag(vZone:Integer):Longint;
begin
  Result:=(vZone mod 10) * ctPicX;
end;

function TFPicCtr.GetColorCtr:TColor;
begin
  Result:=PSost.Color;
end;
//!!!
function TFPicCtr.GetImageCtr(nImage:integer):TBitmap;
begin
  FMain.IL3.GetBitmap(0,Result);
end;

function GetFColor(n:integer):TColor;
begin
  Result:=clFColor[n mod SumFColor];
end;

function GetZoneColor(nZone,y:integer):TColor;
var bc,dc:integer;
begin
  if nZone<=0 then begin Result:=clNone; Exit; end;
  Result:=clFColor[nZone mod SumFColor];//ZoneColors[nZone mod SumZoneColors];
  bc:=120+y*4 mod 200;if bc > 220 then bc:=440-bc; dc:=255-bc;//  if bc<1
  Result:=RGB(GetRValue(Result)*dc div 255 +bc,
      GetGValue(Result)*dc div 255 +bc,
      GetBValue(Result)*dc div 255 +bc);
end;

function TFPicCtr.GetTxtCtr:string;
begin
if (Pos(']',FDatPath) <= 0) then
  Result:=CtrName+' '+PSost.Caption
  else Result:=CtrName; //GetMailName(DataPath)+'-'+CtrName;
end;

function TFPicCtr.CtrToFile:string;
var NF:file;
    SettingFile:string;
begin
   PicTimer.Enabled:=False;
   ValueTimer.Enabled:=False;
   Result:=GetDefaultDataPath+FCtrName+'.ctr';
   if IsXml then
      begin
      FNewCtr.CtrToDom2(Self,Result);
      SettingFile:=Result+'.bin';
      end else SettingFile:=Result;
 try
   AssignFile(NF,SettingFile);
   Rewrite(NF,1);
   BlockWrite(NF,IdentCtr,SizeOf(TIdentCtr));
   BlockWrite(NF,CtrAlias,SizeOf(TCtrName));
//@@   BlockWrite(NF,FCtrName,SizeOf(TCtrName));
   BlockWrite(NF,UnitNum,SizeOf(UnitNum));
   BlockWrite(NF,PortName,SizeOf(PortName));
   BlockWrite(NF,BaudRate,SizeOf(BaudRate));
   BlockWrite(NF,MaskaErr,SizeOf(MaskaErr));
   BlockWrite(NF,Fantom,SizeOf(Fantom));
   BlockWrite(NF,Graf3D,SizeOf(Graf3D));
   BlockWrite(NF,Period,SizeOf(Period));
   BlockWrite(NF,TimeView,SizeOf(TimeView));
   BlockWrite(NF,ViewDate,SizeOf(ViewDate));
   BlockWrite(NF,TablView,SizeOf(TablView));
   BlockWrite(NF,rBitView[0],SizeOf(rBitView));
   BlockWrite(NF,ResChecked,SizeOf(ResChecked));
   BlockWrite(NF,AuditKind,SizeOf(AuditKind));
   BlockWrite(NF,Secr,SizeOf(Secr));
   PrintMemo(ProgMess[77]+' '+Result,mlInform);
  finally
   CloseFile(NF);
  end;
  SaveViewToFile(GetViewNameFile(FCtrName));
  if DataPath='' then SaveWebStr(cLevOff,Now);  //'Выключение;82;82;'

end;

function TFPicCtr.CtrFromFile(CtrNameFile:string):Boolean;  //,ImageName:string;Image:TImage
var i:word; fName:string; //NF:file;
    FileStream:TFileStream;
begin
 Result:=False;
// ReportInFile(0,ProgMess[78]);
// ReportInFile(0,'');
 if ExtractFileExt(CtrNameFile) <> '.ctr' then CtrNameFile:='';
 LoadFormLanguage(self,'FPicCtr');
 if IsXml then CtrNameFile:=CtrNameFile+'.bin';
 if FileExists(CtrNameFile) then
 begin
 try
          FileStream:=TFileStream.Create(CtrNameFile,fmOpenRead);
//          if FileStream.Size > 500 then isDom:=True
//          else FileStream.Read(vCtrIdent,SizeOf(TIdentCtr));
   FileStream.Read(IdentCtr,SizeOf(TIdentCtr));
   FileStream.Read(CtrAlias,SizeOf(TCtrName));
//@@   BlockRead(NF,TablView,SizeOf(TCtrName));   //CtrName
   FileStream.Read(UnitNum,SizeOf(UnitNum));
   FileStream.Read(PortName,SizeOf(PortName));
   FileStream.Read(BaudRate,SizeOf(BaudRate));
   FileStream.Read(MaskaErr,SizeOf(MaskaErr));
   FileStream.Read(Fantom,SizeOf(Fantom));
//   BlockRead(NF,MyRez,SizeOf(MyRez));
   FileStream.Read(Graf3D,SizeOf(Graf3D));
   FileStream.Read(Period,SizeOf(Period));
   FileStream.Read(TimeView,SizeOf(TimeView));
   FileStream.Read(ViewDate,SizeOf(ViewDate));
   ViewDate:=Now; // перебивает чтение из файла
   FileStream.Read(TablView,SizeOf(TablView));
   FileStream.Read(rBitView[0],SizeOf(rBitView));
   FileStream.Read(ResChecked,SizeOf(ResChecked));
   FileStream.Read(AuditKind,SizeOf(AuditKind));
//   BitChecked:=True; // перебивает чтение из файла
//   BlockRead(NF,Secr,SizeOf(Secr));
//   PrintMemo(ProgMess[79]+' '+CtrNameFile,mlInform);
   Result:=True;
  finally
   FileStream.Free;
{   AssignFile(NF,CtrNameFile);
   Reset(NF,1);
   BlockRead(NF,IdentCtr,SizeOf(TIdentCtr));
   BlockRead(NF,CtrAlias,SizeOf(TCtrName));
//@@   BlockRead(NF,TablView,SizeOf(TCtrName));   //CtrName
   BlockRead(NF,UnitNum,SizeOf(UnitNum));
   BlockRead(NF,PortName,SizeOf(PortName));
   BlockRead(NF,BaudRate,SizeOf(BaudRate));
   BlockRead(NF,MaskaErr,SizeOf(MaskaErr));
   BlockRead(NF,Fantom,SizeOf(Fantom));
//   BlockRead(NF,MyRez,SizeOf(MyRez));
   BlockRead(NF,Graf3D,SizeOf(Graf3D));
   BlockRead(NF,Period,SizeOf(Period));
   BlockRead(NF,TimeView,SizeOf(TimeView));
   BlockRead(NF,ViewDate,SizeOf(ViewDate));
   ViewDate:=Now; // перебивает чтение из файла
   BlockRead(NF,TablView,SizeOf(TablView));
   BlockRead(NF,rBitView[0],SizeOf(rBitView));
   BlockRead(NF,ResChecked,SizeOf(ResChecked));
   BlockRead(NF,AuditKind,SizeOf(AuditKind));
//   BitChecked:=True; // перебивает чтение из файла
//   BlockRead(NF,Secr,SizeOf(Secr));
//   PrintMemo(ProgMess[79]+' '+CtrNameFile,mlInform);
   Result:=True;
  finally
   CloseFile(NF); }
  end;
  end;
if AuditBlock<> nil then
    begin
    fName:=AuditBlock.FileNameFromDate(Now);
    if Not FileExists(fName) and FileExists(IntToStr(CtrTip)+'.aud') then
       FileFromToCopy(IntToStr(CtrTip)+'.aud',fName);
    end;
LoadViewFromFile(GetViewNameFile(FCtrName));
for i:=0 to CountBlock-1 do Block[i].SetEndRecord;
SetPicValue;  //ViewFromExist;
SetHints;
if DataPath='' then SaveWebStr(cLevStart,Now); //'Старт;81;81;'
end;

procedure  TFPicCtr.SetLog(const st:string;vColor:TColor);
begin
    if Not SettingLog and (st<>CtrLastMes) then
       begin CtrLastMes:=st; vColor:=clLog; end;
    HotMessage(CtrName,st,vColor);
    SettingLog:=true;
end;

procedure  TFPicCtr.AfterReadHotBlock;
var x,y:Integer;
//    pByte:PByteArray;
    vColor:TColor;
    st,ce:string;
begin
    if Block[0].FatalSend then Exit;
    ce:=ExceptMsg;
    ExceptMsg:=CtrName+'-'+Block[0].NameBlock;//@@Pref;
    Caption:=CtrName+' <'+FormatDateTime(LongTimeFormat,Block[0].BlDate)+'> '+DataPath;
    Hint:=Caption;
//####    with Block[0] do Ready:=TestEquDate(BlDate,Now,3);
    GetHotReader(st,vColor);
    PSost.Caption:='';
//    try
    SetPicCtr;
    if PSost.Caption <> '' then begin st:=PSost.Caption; end
    else
          begin
          PSost.Caption:=StringReplace(st,DFonem,' ',[rfReplaceAll]);
          PSost.Color:=vColor;
          end;
    if (AuditBlock <> nil) and Block[0].Ready then (AuditBlock as TAudit).GetRuleFromHot(Self);
//###    if btArViewer.Down then begin ArCount:=ArCount+1; if ArCount>10 then btArViewer.Down:=false; btArViewerClick(Self); end
//      else
    if DataPath<>'' then  PSost.Caption:=FormatDateTime(ProgMess[85],Block[0].BlDate)+' '+PSost.Caption;
    SetPicValue;
    FMain.NewData(Self);
    if Not Block[0].Ready and (DataPath = '') then SetVoice('NoCommunication',alFatal);
    ExceptMsg:=ce;
    SetLog(PSost.Caption,PSost.Color);
    SettingLog:=false;
end;

function  TFPicCtr.GetHotReader(var Res:string; var vColor:TColor):Boolean;
var st:string;
begin
 Result:=false;
 vColor:=clRed;
 CtrImage:=0;
 if DataPath<>'' then
        begin
        CtrImage:=imArchiv; //imBook;
        vColor:=clGreen;
        if DataPath[1]='\' then Res:=ProgMess[83]
        else Res:=ProgMess[84];
{        if Block[0].Ready then
          begin Res:=Res+' '+FormatDateTime(ProgMess[85],Block[0].BlDate); vColor:=clFuchsia; end; //' '+ProgMess[66]; }
        Result:=Block[0].Ready;
        Exit;
        end;
  if (CtrNum=0) and (IPAddress='') then
        begin
        Res:=ProgMess[511];//'Демо режим';
        vColor:=clOlive;
        CtrImage:=imCross;
        Result:=Block[0].Ready;
        Exit;
        end;
  if PortResult=0 then
            begin
            Res:=ProgMess[81];     //'Ошибка связи'
            CtrImage:=imFatal;
            Block[0].Ready:=false;
            SayLevel:=5;
//            vColor:=clMaroon;
            OutConnectSum:= OutConnectSum+1; if OutConnectSum > 300 then OutConnectSum:=61;
            if (OutConnectSum=5) and (DataPath='')  then SaveWebStr(cLevConnectOff,Now); //'Нет связи;86;86;'
//### множит сообщения            Res:=Res+DFonem+IntToStr(OutConnectSum)+DFonem+ProgMess[149];//513'мин'
//            if OutConnectSum >= 60 then Res:=Res+' '+ProgMess[512] //более часа'
//            else if OutConnectSum < 10 then Res:=Res+DFonem+IntToStr(OutConnectSum)+DFonem+ProgMess[513]//'мин'
//              else Res:=Res+' '+ProgMess[514]{более}+' '+IntToStr((OutConnectSum div 10)*10)+ProgMess[513];//'мин';
            Exit;
            end;
  Result:=true;
  CtrImage:=imWrite;
  Res:=ProgMess[80]; //'Принимает'
  vColor:=clGreen;


  if (OutConnectSum >=5) then SaveWebStr(cLevConnectOn,Now); //'На связи;85;85;'
          OutConnectSum:=0;
          FatalStatus:=FatalAlarm(st);
          if LastFatalStatus<>FatalStatus then
              begin
              if(FatalStatus=0) then st:='Rerun';//+st;
              SaveWebStr(st+WebSep+cLevFatal+WebSep+cLevFatal+WebSep,Now); //'95'
              end;
          LastFatalStatus:=FatalStatus;
          if (WebTime+1) < Now then
              begin
              SaveWebStr('OK'+WebSep+cLevFatal+WebSep+cLevFatal+WebSep,Now);
              WebTime:=Now;
              end;
end;

procedure  TFPicCtr.SetPicCtr;
begin
//    if PSost.Caption <> ProgMess[80] then PSost.Caption:=ProgMess[80];
//    PSost.Color:=clGreen;
end;
{
var st:string;
    vColor:TColor;
begin
 vColor:=clRed;
 CtrImage:=0;
 if Block[0].Ready then
      begin
      st:=ProgMess[80];      //'Принимает'
      vColor:=clGreen;
      if (DataPath='') then
          begin
          CtrImage:=imWrite;
          if (OutConnectSum >=5) then SaveWebStr(cLevConnectOn,Now); //'На связи;85;85;'
          OutConnectSum:=0;
          FatalStatus:=FatalAlarm(st);
          if LastFatalStatus<>FatalStatus then
              begin
              if(FatalStatus=0) then st:='Перезапуск';//+st;
              SaveWebStr(st+WebSep+cLevFatal+WebSep+cLevFatal+WebSep,Now); //'95'
              end;
          LastFatalStatus:=FatalStatus;
          if (WebTime+1) < Now then
              begin
              SaveWebStr('OK'+WebSep+cLevFatal+WebSep+cLevFatal+WebSep,Now);
              WebTime:=Now;
              end;
          end;
      end
 else
      begin
      if CtrNum=0 then
        begin
        st:='Демо режим';
        vColor:=clAqua;
        CtrImage:=imCross;
//        Block[0].Ready:=True;
        end
      else if ArtefactName<>'' then begin st:=ArtefactName; if DataPath='' then SaveWebStr(ArtefactName+';78;78;',Now); end
          else if DataPath='' then
            begin
            st:=ProgMess[81];     //'Ошибка связи'
            CtrImage:=imFatal;
            OutConnectSum:= OutConnectSum+1; if OutConnectSum > 300 then OutConnectSum:=0;
            if (OutConnectSum=5) and (DataPath='')  then SaveWebStr(cLevConnectOff,Now); //'Нет связи;86;86;'
            if OutConnectSum>60 then Block[0].Bl!Speak('нет обмена более часа',OutConnectSum,0)
            else Block[0].Bl!Speak('нет обмена более'+#13#10+IntToStr(OutConnectSum)+' минут',OutConnectSum,0);
            end;
      end;
 if DataPath<>'' then
      begin
      CtrImage:=imArchiv;//imBook;
      if DataPath[1]='\' then begin st:=ProgMess[83]; vColor:=clGreen; end
      else if Not Block[0].Ready then begin st:=ProgMess[84]; vColor:=clFuchsia; end;
      end;
 if PSost.Caption <> st then PSost.Caption:=st;
 PSost.Color:=vColor;
 st:=CtrName+FormatDateTime(' '+LongTimeFormat+' ',Block[0].BlDate)+'   '+DataPath;
 Caption:=st;
 Hint:=st;
 SetPicValue;
end; }
procedure  TFPicCtr.SetPicValue;
var i,nSens,nZone,Pers:Integer;
    st,nm:string;
begin
 for i:=0 to ComponentCount-1 do
   begin
   nSens:=TagToSens(Components[i].Tag);
   nZone:=TagToZone(Components[i].Tag);
   if  (nSens <= 0) or (TagToDirect(Components[i].Tag)> 9) then continue;
   with Components[i] as TControl do
      begin
      Visible := Block[0].GetExist(nZone,nSens) <> cfExistFalse;
      if Not Visible then continue;
      end;
   if Components[i] is TStaticText then
     with Components[i] as TStaticText do begin
        if Block[0].CountX <=1 then
           begin Visible := False;
           continue; end;
        Block[0].LoadXY(cOutBlock,nZone,nSens,st);
        if Caption <> st then Caption:=st;
        continue;
        end;
{   if Components[i] is TSpeedButton then
     with Components[i] as TSpeedButton do begin
        Enabled:=Block[0].LoadXY(cOutBlock,nTepl,tg,st)=0; }
   if Components[i] is TFPicLabel then
     with Components[i] as TFPicLabel do
      begin
      if HotImageIndex > 0 then
        if Block[0].LoadXY(cOutBlock,nZone,nSens,st) > 0 then
          ImageIndex:=HotImageIndex else ImageIndex:=HotImageIndex-1;
      continue;
      end;
    if Components[i] is TLabel then
      with Components[i] as TLabel do
        begin
        Block[0].LoadXY(cOutBlock,nZone,nSens,st);
//##        Block[0].LoadXY(cOutBlock,1,17,st);
        if (Name<> '') and (Name[1]='x') then
            begin
            Block[0].LoadXY(cOutBlock,0,nSens,nm);
            st:=nm+'='+st;
            end;
        if Caption<>st then Caption:=st;
{        if (imNum >=  imAlarmLow) and (imNum <=  imAlarmHi)
          then
            begin
            st:='   '+st;
            if Caption<>st then Caption:=st;
            FMain.IL3.Draw(Canvas,0,0,imNum);
            end
        else if Caption<>st then Caption:=st; }
        continue;
        end;
    if Components[i] is TGauge then
     with Components[i] as TGauge do begin
        Pers:=Trunc(Block[0].LoadXY(cOutBlock,nZone,nSens,st));
        ForeColor:=TColor(RGB(GetRValue(ForeColor),255*(100-Pers) div 100,GetBValue(ForeColor)));
        Progress:=Pers;
        continue;
        end;
    if Components[i] is TGIFSShow then
     with Components[i] as TGIFSShow do
        begin
        Animate:=Block[0].LoadXY(cOutBlock,nZone,nSens,st)>0;
        if Not Animate then FrameIndex:=0;
        continue;
        end;
    end;
end;

procedure TFPicCtr.SetHints;
var nSens,i,nTepl:integer;
    st:string;
//    DoHint,DoDrag:Boolean;
begin
 for i:=0 to ComponentCount-1 do begin
       nSens:=Components[i].Tag;
       if (nSens=0) or (TagToDirect(nSens) > 0) then continue;
       nTepl:=TagToZone(nSens);
       nSens:=TagToSens(nSens);
       if nSens > 0 then
                begin
                Block[0].LoadXY(cOutBlock,0,nSens,st);
                TControl(Components[i]).Hint:=GetTextZona(nTepl,nSens)+' '+st;
                TControl(Components[i]).ShowHint:=True;
//                FrCellChart1.IsMove(WindowFromPoint(Mouse.CursorPos), Block[0],nTepl,nSens,Block[0].BlDate);

//                (Components[i] as TControl).OnMouseDown:=FormMouseDown;
                end;

       if (Components[i] is TToolButton) then
        with Components[i] as TToolButton do
              begin
              PopupMenu:=PMSetLabels;
              continue;
              end;
       if (Components[i] is TStaticText) then
        with Components[i] as TStaticText do
              begin
              PopupMenu:=PMSetLabels;
              OnMouseDown:=FormMouseDown;//DragMode:=dmAutomatic;
              continue;
              end;
       if (Components[i] is TFPanel) then
        with Components[i] as TFPanel do
              begin
              PopupMenu:=PMSetLabels;
              OnMouseDown:=FormMouseDown;//DragMode:=dmAutomatic;
              continue;
              end;

       if (Components[i] is TLabel) then
        with Components[i] as TLabel do
              begin
              PopupMenu:=PMSetLabels;
              OnMouseDown:=FormMouseDown;//DragMode:=dmAutomatic;
              OnDblClick:=FormDblClick;
              end;
       if (Components[i] is TFPicLabel) then
        with Components[i] as TFPicLabel do
              begin
              PopupMenu:=PMSetLabels;
              OnDblClick:=OnClick;
              OnClick:=nil;
              OnMouseDown:=FormMouseDown;//DragMode:=dmAutomatic;
//              OnDblClick:=FormDblClick;
              end;

       if (Components[i] is TGauge) then
        with Components[i] as TGauge do
              begin
              PopupMenu:=PMSetLabels;
              OnMouseDown:=FormMouseDown;
              end;

       if (Components[i] is TSpeedButton) then
        with Components[i] as TSpeedButton do
              begin
              PopupMenu:=PMSetLabels;
              OnMouseDown:=FormMouseDown;
              end;

       if (Components[i] is TGIFSShow) then
        with Components[i] as TGIFSShow do
              begin
              PopupMenu:=PMSetLabels;
              OnMouseDown:=FormMouseDown;//DragMode:=dmAutomatic;
              end;

   end;
end;

function  TFPicCtr.FindComponentOnName(f_Name:string):TComponent;
var
  i: word;
begin
if f_Name<>'' then
  for i:=0 to ComponentCount-1 do
    begin
    if Components[i].Name=f_Name then
      begin
      result:=Components[i];
      exit;
      end;
    end;
result:=nil;
end;

function TFPicCtr.GetViewNameFile(vName:string):string;
begin
  Result:=ExtractFilePath(Application.ExeName)+ProgMess[7]+'\'+vName+'.T'+Format('%2.2d',[CtrTip]);
end;

procedure TFPicCtr.LoadViewFromFile(const NameFile:string);
var
//  vFileName:string;
  DefLabel:TDefLabel;
  vComponent: TComponent;
  vFile:file of TDefLabel;
begin
if FMain.mnSaveView.Checked and FileExists(NameFile) then
  begin
  AssignFile(vFile,NameFile);
  try
    Reset(vFile);
    Read(vFile,DefLabel);
    Top:=DefLabel.Top;
    Left:=DefLabel.Left;
    Height:=DefLabel.FontSize_H;
    Width:=DefLabel.FontStyle_W;
    VertScrollBar.Position:=DefLabel.Tag1 mod ctPicNoTrans;
    HorzScrollBar.Position:=DefLabel.FontColor;
    while not Eof(vFile) do
      begin
      Read(vFile,DefLabel);
      vComponent:=FindComponentOnName(DefLabel.Name);
      if vComponent=nil then
        begin
        if Not DefLabel.Visible then continue;
        vComponent:=TLabel.Create(Self);
        (vComponent as TLabel).Parent:=Self;
         with vComponent as TLabel do
          begin
          Name:=DefLabel.Name;
          Width:= 21;
          Height:= 13;
          Caption:='new';
          Transparent:=True;
          OnMouseDown:=FormMouseDown;//DragMode:=dmAutomatic;
          end;
        end;

      with vComponent as TControl do
          begin
          Visible:=DefLabel.Visible;
          Tag:=DefLabel.Tag1 mod ctPicNoTrans;
          Top:=DefLabel.Top;
          Left:=DefLabel.Left;
          end;
      if vComponent is TToolButton then
       with vComponent as TToolButton do
          begin
          Caption:=DefLabel.FontName;
          continue;
          end;
      if vComponent is TFPanel then
      with vComponent as TFPanel do
          begin
          Color:=DefLabel.BkColor;
          Height:=DefLabel.FontSize_H;
          Width:=DefLabel.FontStyle_W;
          end;

      if vComponent is TBevel then
      with vComponent as TBevel do
          begin
//          Height:=DefLabel.FontSize_H;
          Width:=DefLabel.FontStyle_W;
          end;

      if (vComponent is TLabel) then  //or (vComponent is TFPicLabel)
      with vComponent as TLabel do
          begin
          Font.Size:=DefLabel.FontSize_H;
          if (DefLabel.Tag1 mod 1000)=0 then Caption:=DefLabel.FontName
             else Font.Name:=DefLabel.FontName;
          Font.Color:=DefLabel.FontColor;
          if DefLabel.Tag1>=ctPicNoTrans then begin Transparent:=False; Color:=DefLabel.BkColor; end;
          if ((DefLabel.FontStyle_W and 1)>0) then Font.Style:=Font.Style+[fsBold];
          if ((DefLabel.FontStyle_W and 2)>0) then Font.Style:=Font.Style+[fsItalic];
          if ((DefLabel.FontStyle_W and 4)>0) then Font.Style:=Font.Style+[fsUnderline];
          if ((DefLabel.FontStyle_W and 8)>0) then Font.Style:=Font.Style+[fsStrikeOut];
          end;
      end;
  finally
    CloseFile(vFile);
  end;
  end;
//  ViewFromExist;
end;

procedure TFPicCtr.SaveViewToFile(const NameFile:string);
var
  DefLabel:TDefLabel;
  vFile:file of TDefLabel;
  i:integer;
//  DoWrite:Boolean;
begin
if Not FMain.mnSaveView.Checked then Exit;
AssignFile(vFile,NameFile);
try
Rewrite(vFile);
DefLabel.Top:=Top;
DefLabel.Left:=Left;
DefLabel.FontSize_H:=Height;
DefLabel.FontStyle_W:=Width;
DefLabel.Tag1:=VertScrollBar.Position;
DefLabel.FontColor:=HorzScrollBar.Position;
Write(vFile,DefLabel);
for i:=0 to ComponentCount-1 do
  begin
  if (Components[i].Tag=0) or (TagToDirect(Components[i].Tag) > 0) then continue;
//  DoWrite:=False;
  if (Components[i] is TLabel)
     or(Components[i] is TFPanel) //Gauge)
     or(Components[i] is TFPicLabel)
     or(Components[i] is TGauge)
     or(Components[i] is TSpeedButton) //then
     or(Components[i] is TGIFSShow)
     or(Components[i] is TBevel)
     or((Components[i] is TToolButton) and ((Components[i].Tag div ctPicX mod 10) > 0))
    then
    begin
        with Components[i] as TControl do
          begin
          DefLabel.Name:=Name;
          DefLabel.Tag1:=Tag;
          DefLabel.Top:=Top;
          DefLabel.Left:=Left;
          DefLabel.Visible:=Visible;
          end;

        if Components[i] is TToolButton then
          with Components[i] as TToolButton do
          begin
          DefLabel.Name:=Name;
          DefLabel.FontName:=Caption;
//          DoWrite:=True;
          end;
        if Components[i] is TFPanel then
        with Components[i] as TFPanel do
          begin
          DefLabel.BkColor:=Color;
          DefLabel.FontSize_H:=Height;
          DefLabel.FontStyle_W:=Width;
//          DoWrite:=True;
          end;
        if Components[i] is TBevel then
        with Components[i] as TBevel do
          begin
          DefLabel.FontSize_H:=Height;
          DefLabel.FontStyle_W:=Width;
//          DoWrite:=True;
          end;

        if (Components[i] is TLabel)  then  //or (Components[i] is TFPicLabel)
        with Components[i] as TLabel do
          begin
          DefLabel.FontSize_H:=Font.Size;
          if TagToSens(Tag)=0 then DefLabel.FontName:=Caption
              else DefLabel.FontName:=Font.Name;
          DefLabel.FontColor:=Font.Color;
          DefLabel.BkColor:=Color;
          DefLabel.FontStyle_W:=0;
          if (fsBold      in Font.Style) then DefLabel.FontStyle_W:=DefLabel.FontStyle_W or 1;
          if (fsItalic    in Font.Style) then DefLabel.FontStyle_W:=DefLabel.FontStyle_W or 2;
          if (fsUnderline in Font.Style) then DefLabel.FontStyle_W:=DefLabel.FontStyle_W or 4;
          if (fsStrikeOut in Font.Style) then DefLabel.FontStyle_W:=DefLabel.FontStyle_W or 8;
//          DoWrite:=True;
          if Not Transparent then DefLabel.Tag1:=DefLabel.Tag1+ctPicNoTrans;
          end;
    Write(vFile,DefLabel);
    end;
  end;
finally
    CloseFile(vFile);
end;
end;

function GetCos(n,Num:integer;SourColor:TColor):TColor;
var  fs:Double;
begin
    fs:=cos(3.1415/3*(2*n/Num-1));
//                fs:=cos(3.1415/3*(2*x/(Width-1)-1)) * (0.9+   (MilliSecondOfTheSecond(Now)/9700 ));
    Result:=TColor(RGB(
                  round(fs*GetRValue(SourColor)),
                  round(fs*GetGValue(SourColor)),
                  round(fs*GetBValue(SourColor))));
end;

procedure LoadImageSkin(Image:TImage; const NameImage:string);
var nF:string;
begin
  nF:=ExtractFilePath(Application.ExeName)+'Skins\'+NameImage;
  if FileExists(nF) then Image.Picture.LoadFromFile(nF)
  else if ExtractFileExt(nF) <> '.bmp' then
    begin
    nF:=ChangeFileExt(nF,'.bmp');
    if FileExists(nF) then Image.Picture.LoadFromFile(nF);
    end;
end;

procedure TFPicCtr.Pic;
var
  Tip,ActComp: Integer;
begin
if Not Visible then Exit;
for ActComp:=0 to ComponentCount-1 do
  begin
  Tip:=TagToDirect(Components[ActComp].Tag); // mod cPicDirect) div cPicNumPar;
  if (Tip<10) or (Tip>13) or Not (Components[ActComp] as TControl).Visible then continue;
  if Components[ActComp] is TFBox then
    with (Components[ActComp] as TControl) do
       if Visible then Repaint;
  end;
//  Update;
end;

procedure TFPicCtr.TBHoumClick(Sender: TObject);
begin
  FMain.DoActiveCtr(Self);
end;

procedure TFPicCtr.TBSetGridClick(Sender: TObject);
begin
//  FMain.ShowGrid(Self,1);
//  FSetGrid.
  FSetGrid.SetNewGridBlock(Self{!!!ActiveCtr}.Block[1]);
end;

procedure TFPicCtr.TBSetTimeClick(Sender: TObject);
begin
  FSetGrid.SetNewGridBlock(Self{!!!ActiveCtr}.Block[3]);
end;

procedure TFPicCtr.ValueTimerTimer(Sender: TObject);
var nb:integer;
begin
  if StartNewDay then
       begin
       SunRaiseSet502;
       StartNewDay:=False;
       for nb:=1 to CountBlock-1 do Block[nb].SendFromPort(nil);
       ViewDate:=Now;
       end;
  Block[0].SendFromPort(AfterReadHotBlock);
  if ValueTimer.Interval=5000 then ValueTimer.Interval:=Period*1000;
end;

procedure TFPicCtr.SetPeriod;
begin
 ValueTimer.Interval:=Period*1000;
end;

procedure TFPicCtr.PicTimerTimer(Sender: TObject);
begin
 Pic;
end;

procedure TFPicCtr.btArViewerClick(Sender: TObject);
//var na:integer;
begin
  SeekTB.Visible:=btArViewer.Down;
  if (ArViewDatePicker.Tag=0) and SeekTB.Visible then begin ArViewDatePicker.Tag:=1; ArViewDatePicker.DateTime:=Now; end;
{   na:=NowAccess+1000;
   if IsXML then na:=na+1000;
      if BlockAccessDlgExec(CtrName,Block[0].ConstNames,
        Block[0].CountConstNames, 1, na)
          then begin
              NowAccess:=na mod 1000;
              if na>=1000 then IsXML:= na >=2000;
              SetPicCtr;
              end; }
end;
{var HandDll:THandle;  na:integer;
    BlockAccessDlgExec: function(vApplication:TApplication; vNameConst: PTArrayNameConst;vCount,vIndex:word;
          var vNowAccess:integer):Boolean; stdcall;
begin
   BlockAccessDlgExec:=GetFromLibrary(DLG_DLL,'BlockAccessDlgExec',HandDll);
   na:=NowAccess+1000;
   if IsXML then na:=na+1000;
   if @BlockAccessDlgExec <> nil then
      if BlockAccessDlgExec(Application,Block[0].ConstNames,
        Block[0].CountConstNames, 1, na)
          then begin
              NowAccess:=na mod 1000;
              if na>=1000 then IsXML:= na >=2000;
              SetPicCtr;
              end;
   if HandDll <> 0 then FreeLibrary(HandDll); }
{  with FMain.OpenDialog1 do
  begin
    InitialDir:=ExePath+ProgMess[5];
    //FileName:=ExePath+ProgMess[5]+'/Monitor*';
//    Filter:=ProgMess[5]+'  (*'+ExtractFileExt(GetViewNameFile(''))+')|*'+ExtractFileExt(GetViewNameFile(''));
    if Execute then ExeDocument(FileName);
  end;
end;  }

var sx,sy:integer;

procedure TFPicCtr.FormDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  Rect:TRect;
begin
//  inherited;
  Accept := (Source is TLabel) or (Source is TTreeView)
    or (Source is TFPanel)or (Source is TGIFSShow)   or(Source is TFPicPanel)
    or (Source is TtsGrid) or (Source is TFPicLabel);
  if (not Accept) then exit;
  HotGraf.Hide;
  if (isDraw) then self.Canvas.DrawFocusRect(LastRect)
  else  with Source as TControl do
        begin
        sx:=Left-X;
        sy:=Top-Y;
        end;
  //-VertScrollBar.Position;;
  with (Source as TControl) do
    if (Source is TTreeView) or (Source is TtsGrid) then
      begin
      Rect.Left:=X; sx:=0;
      Rect.Top:=Y+16; sy:=0;
      Rect.Right:=Rect.Left+50;
      Rect.Bottom:=Rect.Top+13;
      end
    else
      begin
      Rect.Left:=X+sx;
      Rect.Top:=Y+sy;
      Rect.Right:=Rect.Left+Width;
      Rect.Bottom:=Rect.Top+Height;
      end;
  isDraw:=true;
  LastRect:=Rect;
  self.Canvas.DrawFocusRect(Rect);

end;

procedure TFPicCtr.FormDragDrop(Sender, Source: TObject; X, Y: Integer);
var Param:Txy;
//    ColX:integer;     //,RowY
begin
if (isDraw) then self.Canvas.DrawFocusRect(LastRect);
isDraw:=False;
Y:=LastRect.Top;//+sy;
X:=LastRect.Left;//+sx;
if (Source is TFPanel)
  or(Source is TLabel)
  or(Source is TFPicLabel)
  or(Source is TFPicPanel)
  or(Source is TGIFSShow) then
    begin
    with (Source as TControl)  do
      begin
      Left:=X;
      Top:=Y;
      end;
    end;
if (Source is TtsGrid) then
   with Source as TtsGrid do CreateLabel(CurrentDataCol-1,CurrentDataRow-1,X,Y);
if (Source is TTreeView) then
   begin
   Param.Ptr:=(Source as TTreeView).Selected.Data;
   if Param.Y>=1 then CreateLabel(Param.X,Param.Y,X,Y);
   end;
SetPicValue;
end;

procedure TFPicCtr.CreateLabel(const ColX,RowY,ptX,ptY:integer);
//var st,nm:string;
begin
   with TLabel.Create(Self)do
    begin
    Parent:=Self;
    Name:='L'+IntToStr(ColX)+IntToStr(RowY);
    Left:=ptX;
    Top:=ptY;
    Width:= 21;
    Height:= 13;
    Tag:=RowY+ZoneToTag(ColX);

{    Block[0].LoadXY(cOutBlock,ColX,RowY,st);
    if (Name<> '') and (Name[1]='x') then
            begin
            Block[0].LoadXY(cOutBlock,0,RowY,nm);
            st:=nm+'='+st;
            end;
    Caption:=st;
    Block[0].LoadXY(cOutBlock,0,RowY,st);
    Hint:=GetTextZona(ColX,RowY)+' '+st; }
    ShowHint:=True;
    Transparent:=True;
    Visible:=True;
    OnMouseDown:=FormMouseDown;
//    DragMode:=dmAutomatic;
    PopupMenu:=PMSetLabels;
//    OnDblClick:=FormDblClick;
    end;
end;


procedure TFPicCtr.PMSetLabelsPopup(Sender: TObject);
begin
//  pmSetChart.Enabled:= (PopupMenuClimat.PopupComponent.Tag mod 100)>0;
pmHide.Enabled:=(TagToSens(PMSetLabels.PopupComponent.Tag) > 0)
   and Not ((PMSetLabels.PopupComponent as TControl).Parent is TFPanel) ;
pmChFont.Enabled:=((PMSetLabels.PopupComponent.Tag > 0)
               and (PMSetLabels.PopupComponent is TLabel))
        or (PMSetLabels.PopupComponent is TStaticText);
pmChColor.Enabled:=(PMSetLabels.PopupComponent.Tag > 0)
        or (PMSetLabels.PopupComponent is TStaticText);
pmChangeName.Enabled:=((PMSetLabels.PopupComponent is TLabel)
                  and  (TagToSens(PMSetLabels.PopupComponent.Tag)=0))
   or (PMSetLabels.PopupComponent is TToolButton);
pmOutName.Enabled:=(PMSetLabels.PopupComponent is TLabel);
pmTransp.Enabled:=(PMSetLabels.PopupComponent is TLabel);
pmTransp.Checked:=(PMSetLabels.PopupComponent is TLabel) and (PMSetLabels.PopupComponent as TLabel).Transparent;
pmChart.Enabled:=(PMSetLabels.PopupComponent.Tag > 0);
end;

procedure TFPicCtr.pmChartClick(Sender: TObject);
begin
       HotGraf.DrawFloat(Block[0],TagToZone(PMSetLabels.PopupComponent.Tag),TagToSens(PMSetLabels.PopupComponent.Tag),Block[0].BlDate);
end;

procedure TFPicCtr.pmChColorClick(Sender: TObject);
var NewColor:TColor;
begin
if FMain.ColorDialog1.Execute then
   begin
   NewColor:=FMain.ColorDialog1.Color;
   if PMSetLabels.PopupComponent is TGauge then
     (PMSetLabels.PopupComponent as TGauge).ForeColor:=NewColor;
   if PMSetLabels.PopupComponent is TLabel then
     (PMSetLabels.PopupComponent as TLabel).Color:=NewColor;
   if PMSetLabels.PopupComponent is TFPanel then
     (PMSetLabels.PopupComponent as TFPanel).Color:=NewColor;
   if PMSetLabels.PopupComponent is TStaticText then
     (PMSetLabels.PopupComponent as TStaticText).Color:=NewColor;
   end;
end;

procedure TFPicCtr.pmChFontClick(Sender: TObject);
begin
  if (PMSetLabels.PopupComponent is TLabel) then
    with (PMSetLabels.PopupComponent as TLabel) do
     begin
     FMain.FontDialog1.Font := Font;
     if FMain.FontDialog1.Execute then
        Font :=FMain.FontDialog1.Font;
     end;
  if (PMSetLabels.PopupComponent is TStaticText) then
    with (PMSetLabels.PopupComponent as TStaticText) do
     begin
     FMain.FontDialog1.Font := Font;
     if FMain.FontDialog1.Execute then
        Font :=FMain.FontDialog1.Font;
     end;
end;

procedure TFPicCtr.pmChangeNameClick(Sender: TObject);
var st:string;
begin
    if (PMSetLabels.PopupComponent is TLabel) then
    with (PMSetLabels.PopupComponent as TLabel) do
     begin
     st:=Caption;
     if InputQuery (ProgMess[87],ProgMess[88],st) then
        begin
        Caption:=st;
        end;
     end;
    if (PMSetLabels.PopupComponent is TToolButton) then
    with (PMSetLabels.PopupComponent as TToolButton) do
     begin
     st:=Caption;
     if InputQuery (ProgMess[87],ProgMess[88],st) then
        begin
        Caption:=st;
        end;
     end;
end;

procedure TFPicCtr.pmHideClick(Sender: TObject);
begin
  with (PMSetLabels.PopupComponent as TControl) do
     begin
     Free;
//     Visible:=False;
     end;
end;

procedure TFPicCtr.pmOpenAllClick(Sender: TObject);
var i:Integer;
begin
 with Screen.ActiveForm  do
 for i:=0 to ComponentCount-1 do
   if (Components[i].Tag mod 1000) >0 then
   with Components[i] as TControl do
    if  Not Visible then
       begin
       Visible:=True;
       end;
end;

procedure TFPicCtr.pmSaveViewClick(Sender: TObject);
begin
  with FMain.SaveDialog1,Screen.ActiveForm as TFPicCtr do
  begin
    FileName:=GetViewNameFile(FCtrName);
    Filter:=ProgMess[7]+'  (*'+ExtractFileExt(GetViewNameFile(''))+')|*'+ExtractFileExt(GetViewNameFile(''));
    if Execute then SaveViewToFile(FileName);
  end;
end;

procedure TFPicCtr.pmLoadViewClick(Sender: TObject);
begin
  with FMain.OpenDialog1 do
  begin
    Filter:=ProgMess[7]+'  (*'+ExtractFileExt(GetViewNameFile(''))+')|*'+ExtractFileExt(GetViewNameFile(''));
    if Execute then LoadViewFromFile(FileName);
  end;
end;

procedure TFPicCtr.pmAutoLoadViewClick(Sender: TObject);
begin
  SetPicValue;  //ViewFromExist;
end;

// Автоматическая настройка вида

{procedure TFPicCtr.ViewFromExist;
var i,Y,X:Integer;
begin
   for i:=0 to ComponentCount-1 do
    begin
    Y := TagToSens(Components[i].Tag);
    if  (Y <= 0) or (TagToDirect(Components[i].Tag)> 0) then continue;
    with Components[i] as TControl do
        begin
        X := TagToZone(Tag);    // mod cPicName) div cPicX)+1;
        with  Block[0] do
        Visible := (GetExist(X,Y) <> cfExistFalse) and (GetReadAccess(X,Y) <= NowAccess);
//         if (GetExist(X,Y) = cfExistFalse) or (GetReadAccess(X,Y) > NowAccess)
//          then Visible := False;
        end;
    end;
end; }

procedure TFPicCtr.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TGIFSShow) then
      (Components[i] as TGIFSShow).Animate:=false;
  end;
end;

function TFPicCtr.ReportName: string;
begin
  Result:=ExtractFilePath(Application.ExeName)+ProgMess[5]+'\'+CtrName+'_'+ProgMess[48]+' '+FormatDateTime('dd-mm-yy',Now)+'.txt';
end;

{function TFPicCtr.ReportInFile(Lev:word;const vMes:string): boolean;
var i:word;
begin
Result:=False;  Exit;
if Not FMain.mnKeepJournal.Checked then Exit;
if DataPath <> '' then Exit;
if vMes='' then
    begin
    if ReportOpen then
        begin
        ReportOpen:=False;
        CloseFile(ReportFile);
        end;
    end
else
begin
 if Not ReportOpen then
    try
      if FileExists(ReportName) then
        begin  // если файл есть
        AssignFile(ReportFile,ReportName);
        Append(ReportFile);  // открыть для добавления
        ReportOpen:=True;
        end
      else
        begin   // если файла нет
        AssignFile(ReportFile,ReportName);
        Rewrite(ReportFile);
        ReportOpen:=True;
        end;
      Write(ReportFile, (FormatDateTime('> hh:nn ',Now)));
    except
      CloseFile(ReportFile);
      ReportOpen:=False;
      end;
 if ReportOpen then
     begin
     for i:=1 to Lev do write(ReportFile,' ');
     Writeln(ReportFile,vMes);
     end;
end;
Result:=ReportOpen;
end; }

function GetImColor(v_imNum:Byte):TColor;
begin
  Result:=clBlack;
  case v_imNum of
      imNorm: Result:=clGreen;
      imSigLow..imSigHi: Result:=clBlue;
      imNoReal..imAlarmHi: Result:=clRed //imAlarmHi=7;imNoReal=8;
      else  Result:=clBlue; //imRasch:
      end;
end;

function TFPicCtr.BeforeCellSelect(Grid:TtsGrid; ComboBox:TObject):integer;  // GetForComboBox
var
  i,vX,vY: integer;
  aStr:string;
  pStr:PChar;
  vBlock:TBlock;
//  Frm:TSFormat;XYMin,XYMax:double;
begin
Result:=csNone;
with Grid do
  begin
  vX:=CurrentDataCol-1;
  vY:=CurrentDataRow-1;
  vBlock:=CellData[1,2];
  end;
with vBlock do
  begin
  if not GetFormat(vX,vY) then Exit;  //;//,Frm,aStr,XYMin,XYMax)
  if (XYFrm=SFStr) and (XYMin<0) then
   with ComboBox as TComboBox do
    begin
    if StgList=nil then InitStgXML;
    Items:=StgList; Tag:=1;
    Result:= csComboBox;
    end;
  if((XYFrm = ComboSS) or (XYFrm = ComboBit) or (XYFrm = ComboSSSS))
//    or((XNamesCount = CountX) and (XNames[vX].Frm = ComboSS)))
   then
   with ComboBox as TComboBox do
    begin
    Items.Clear;
    for i:=round(XYMin) to round(XYMax) do
      Items.Add(ProgMess[i]);
    Result:= csComboBox
    end;
  if XYFrm = SColor then
    with FMain.ColorDialog1 do
     if Execute then
      begin
      aStr:=IntToStr(integer(Color));
      LoadXYvirt(cInBlock,vX,vY,aStr);
      Result:= csApdateCell;
      end;

//   Grid.CellData[1,1]:=Block.ParentCtr;
//   Grid.CellData[1,2]:=Block;

  if (vBlock = AuditBlock) and (vX > 0) and ((vY = pozAuditIF) or (vY = pozAuditName ))then
    begin
    if FormulForm.Execute(vX,pozAuditIF{vY},Self) then
        begin
        pStr:=@PByteArray(Adr)[ConstNames[pozAuditIF].Index+cSizeColAudit*(vX-1)];
        for i:=1 to Length(FormulForm.WorkStr) do pStr[i-1]:=FormulForm.WorkStr[i];
        pStr[i-1]:=#0;
        Result:= csApdateCell;
        end;
     end;
  end;
end;

{procedure TFPicCtr.InitXml;
begin
  IsXml:=True;
end; }

procedure TFPicCtr.InitBlocksLng;
var x,y:integer;
  IniFile: TIniFile;
begin
    if (Current_Lang <= NO_LANG) then Exit;
    IniFile := TIniFile.Create(GetNameLangFile);//      IniFile.DeleteKey();
    try
    for x:=0 to CountBlock-1 do
        with  Block[x] do
        begin
        if (Translator < 1) or (ConstNames = nil) or (ConstNames[1].Name[length(ConstNames[1].Name)]=ADD_SUMBOL) then continue;
        for y:=1 to CountConstNames do  //CountY do
            begin
//-----------------------------------------------------------------------------------------

{  str:=IniFile.ReadString(Section,Name,'Empty');
  if str<>'Empty' then
    begin
    if str<> '' then
      begin
      IniFile.WriteString(Section,Name,Value);
      end;
    end  }


//--------------------------------------------------------------------------------------------
            ConstNames[y].Name:=ReadStringFromIni(IniFile,MESS_SECTION,ConstNames[y].Name);
            ConstNames[y].Ed:=ReadStringFromIni(IniFile,MESS_SECTION,ConstNames[y].Ed);
            end;
        ConstNames[1].Name:=ConstNames[1].Name+ADD_SUMBOL;
        if XNames <> nil then
            for y:=1 to XNamesCount do
              XNames[y].Name:=ReadStringFromIni(IniFile,MESS_SECTION,XNames[y].Name);
        if (Diagnosis = nil) or (Diagnosis[1].Name[length(Diagnosis[1].Name)]=ADD_SUMBOL) then continue;
        for y:=1 to CountDiagnosis do Diagnosis[y].Name:=ReadStringFromIni(IniFile,MESS_SECTION,Diagnosis[y].Name);
        Diagnosis[1].Name:=Diagnosis[1].Name+ADD_SUMBOL;
        end;
    finally IniFile.Free; end;
end;

procedure TFPicCtr.FormCreate(Sender: TObject);
begin
     Period:=60;
     TimeView:=6;
     ViewDate:=Now;
     CountBlock:=0;
     NameIdent:=0;
     StartNewDay:=False;
     ConfigBlock:=nil;
     AuditBlock:=nil;
     HandMode:=nil;
     NetMeteo:=nil;
     Design:='';
     IsXML:=False;
     LastPicTime:=0;
end;

procedure TFPicCtr.SetNewPos(x,y:integer);
var i:integer;
begin
//              Parent:=FMain;
              SelfX:=Left;
              SelfY:=Top;
//              Left:=x;
              Top:=y;
              Left:=x;//-width;;
//              BringToFront;//FormStyle:=fsStayOnTop;
              AlphaBlendValue:=10;
              AlphaBlend:=True;
//              if Not Visible Then Visible:=true;
              Show; Update;
              for i:=8 to 125 do  AlphaBlendValue:=i*2;
              AlphaBlend:=False;
//      for i:=0 to x do  Left:=i;
{//              Parent:=FMain;
              SelfX:=Left;
              SelfY:=Top;
//              Left:=x;
              Top:=y;
//              BringToFront;//FormStyle:=fsStayOnTop;
              AlphaBlend:=True;
              AlphaBlendValue:=190;
//              if Not Visible Then Visible:=true;
              Left:=0;//-width;;
              Show; Update;
      for i:=0 to x do  Left:=i;  }
end;

procedure TFPicCtr.RestorePos;
var i:integer;
              begin
//              for i:=Left to SelfX do  Left:=i;
              Left:=SelfX;
              Top:=SelfY;
//              Hide;
//              Update;
//              SendToBack;
//              AlphaBlend:=False;
//              AlphaBlendValue:=255;
//                FormStyle:=fsNormal;
//                Hide;
//                Parent:=nil;
                end;

procedure TFPicCtr.FormDblClick(Sender: TObject);
begin
  with (Sender as TControl) do
    begin
    if TagToSens(Tag)=0 then Exit;
    HotGraf.DrawFloat(Block[0],TagToZone(Tag),TagToSens(Tag),ViewDate);
    end;
end;

procedure TFPicCtr.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  with (Sender as TControl) do
    if (TagToSens(Tag) > 0) and (Button=mbLeft) then
        begin
//        HotGraf.DrawFloat(Block[0],TagToZone(Tag),TagToSens(Tag),ViewDate);
        BeginDrag(false);   //{if (Button=mbLeft) then}
        end;
end;

procedure TFPicCtr.pmOutNameClick(Sender: TObject);
begin
    if (PMSetLabels.PopupComponent is TLabel) then
      begin
      with (PMSetLabels.PopupComponent as TLabel) do
         if (Name<> '') then
          if (Name[1]='x') then  Name:=Copy(Name,2,Length(Name)-1) else Name:='x'+Name;
      SetPicValue;
      end;
end;

procedure TFPicCtr.pmTranspClick(Sender: TObject);
begin
    with (PMSetLabels.PopupComponent as TLabel) do Transparent:=pmTransp.Checked;
end;

function TFPicCtr.SaveExtView(IniFile:TIniFile):Boolean;
begin
  Result:=true;
end;

function TFPicCtr.LoadExtView(IniFile:TIniFile):Boolean;
begin
  Result:=true;
end;

procedure TFPicCtr.ArViewDatePickerChange(Sender: TObject);
begin
  with Block[0] do
    begin
    ArViewDate:=ArViewDatePicker.DateTime;
    ArViewPosTrack.Max:=RecordSum;
    ArViewPosTrack.Position:=RecordPos;
    end;
end;

procedure TFPicCtr.ArViewPosTrackChange(Sender: TObject);
begin
  with Block[0] do
  begin
  ArViewRecordPos:= ArViewPosTrack.Position;
  ArViewTime.Text:=TimeToStr(BlDate);
  SetPicValue;
  end;
  ArCount:=0;
end;

procedure TFPicCtr.UpDown1ChangingEx(Sender: TObject;
  var AllowChange: Boolean; NewValue: Smallint;
  Direction: TUpDownDirection);
begin
  if Direction=updDown then ArViewPosTrack.Position:=ArViewPosTrack.Position-1;
  if Direction=updUp then ArViewPosTrack.Position:=ArViewPosTrack.Position+1;
//  UpDown1.Position:=ArViewPosTrack.Position;
end;

end.
