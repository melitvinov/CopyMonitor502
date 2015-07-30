unit PortStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids_ts, TSGrid, ExtCtrls, StdCtrls, XPMan, ToolWin, ComCtrls;

type
//ms=array [1..10] of string;
  TFPortStatus = class(TForm)
    PortsGrid: TtsGrid;
    StatusGrid: TtsGrid;
    TimerView: TTimer;
    ToolBar1: TToolBar;
    XPManifest1: TXPManifest;
    ViewTimeL: TLabel;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Splitter1: TSplitter;
    procedure TimerViewTimer(Sender: TObject);
    procedure PortsGridCellEdit(Sender: TObject; DataCol, DataRow: Integer;
      ByUser: Boolean);
  private
    { Private declarations }
      procedure SetPortsGrid;
      procedure SetStatusGrid;
  public
    { Public declarations }
//    procedure Init;
  end;

var
  FPortStatus: TFPortStatus;
  IsInit:Boolean;
  procedure InitPortStatus;

implementation

{$R *.dfm}
uses Port502;
const COL_SUM=6;
COL_MOD_SUM=4;
var
   sReadOnly:array [1..COL_SUM] of Boolean=(True,False,True,True,True,True);
   colHe:array[1..COL_SUM] of string[12]=(
    'Линия RS485',
    'COM порт',
    'COM Status',
    'Модулей',
    'Обменов',
    'Ошибок');

   colModStatus:array[1..COL_MOD_SUM] of string[12]=(
    'Линия RS485',
    'Модуль',
    'Тип',
    'Статус');

procedure InitPortStatus;
var i:integer;
begin
  if Not IsInit then
    begin
    Application.CreateForm(TFPortStatus, FPortStatus);
    with FPortStatus do
      begin
      PortsGrid.Rows:=PORT_THREAD_SUM;
      PortsGrid.Cols:=COL_SUM;
      for i:=1 to COL_SUM do
          with PortsGrid.Col[i] do
            begin Heading:=colHe[i]; ReadOnly:=sReadOnly[i]; end;
      StatusGrid.Cols:=COL_MOD_SUM;
      for i:=1 to COL_MOD_SUM do
          with StatusGrid.Col[i] do
            begin Heading:=colModStatus[i]; ReadOnly:=True; end;
      FormStyle:=fsStayOnTop;
      end;
    IsInit:=True;
    end;
  FPortStatus.SetPortsGrid;
  FPortStatus.SetStatusGrid;
  FPortStatus.Visible:=true;//.Show;
//  FPortStatus.FormStyle:=fsStayOnTop;//	.BringToFront;  //.Update;//
end;

procedure TFPortStatus.SetPortsGrid;
var i,x,y:integer;
begin
  with PortsGrid do
  for y:=1 to Rows do
    with Ext[y-1] do
      begin
//      Suspend;
      Cell[1,y]:=y-1;
      Cell[2,y]:=FComPort;
      Cell[3,y]:=ComResStr;
      Cell[4,y]:=FModulCount;
      Cell[5,y]:=FChangeCount;
      Cell[6,y]:=FErrCount; //FIsError;
      if FModulCount=0 then RowColor[y]:=$D0FFFF
      else if FIsError>0 then RowColor[y]:=$E0D0FF else RowColor[y]:=$D0FFDF;
//      Resume;
      end;
  ViewTimeL.Caption:=TimeToStr(Now);
end;

procedure TFPortStatus.SetStatusGrid;
var l,m,rw,tRow,s:integer;
begin
  tRow:=0;
  with StatusGrid do
  for l:=0 to PORT_THREAD_SUM-1 do
   for m:=0 to 15 do
   for rw:=0 to 1 do
//    with Ext[y-1] do
      begin
      s:=ModMes[l,m,rw];
      if s=0 then continue;
      inc(tRow);
      if tRow>Rows then Rows:=tRow;
      Cell[1,tRow]:=l;
      Cell[2,tRow]:=m;
      if rw=0 then Cell[3,tRow]:='Out' else Cell[3,tRow]:='In';
      Cell[4,tRow]:=PortMes[s mod 7];  //s;//
      if s>1 then RowColor[tRow]:=$E0D0FF else RowColor[tRow]:=$D0FFDF;
      end;
  if tRow<StatusGrid.Rows then StatusGrid.Rows:=tRow;
  ViewTimeL.Caption:=TimeToStr(Now);
end;

procedure TFPortStatus.TimerViewTimer(Sender: TObject);
begin
    if FGlobErr>0 then InitPortStatus
      else if Visible then SetPortsGrid;
    SetStatusGrid;
end;

procedure TFPortStatus.PortsGridCellEdit(Sender: TObject; DataCol,
  DataRow: Integer; ByUser: Boolean);
begin
  if DataCol=2 then try Ext[DataRow-1].FComPort:=PortsGrid.Cell[DataCol,DataRow]; SavePortThread; except end;
end;

end.
