unit CellChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, TeEngine, Series, StdCtrls, TeeProcs, Chart, ExtCtrls,
  FController;

type
  TFrCellChart = class(TFrame)
    HotGrafPanel: TPanel;
    FloatChart: TChart;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Timer1: TTimer;
    Panel1: TPanel;
    GName: TLabel;
    LVal: TLabel;
    cbTu: TCheckBox;
    procedure FloatChartMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FloatChartAfterDraw(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure cbTuClick(Sender: TObject);
  private
    { Private declarations }
    FBlock:TBlock;
    Fx,Fy:integer;
    FDate:TDateTime;
    FHandle:HWND;
    OldX,OldY:Longint;
    ns:integer;
    xLVal,LastPos:integer;
    gEd:string[12];
    IsNewCell:Boolean;
    function DrawHotGraf(Block:TBlock; X,Y:integer; ActDate:TDateTime):Boolean;

  public
    { Public declarations }
     procedure IsMove(vHandle:HWND; vBlock:TBlock; x,y:integer; tDate:TDateTime);
  end;

implementation

uses FConstType, GGraf, MessageU;

{$R *.dfm}
procedure TFrCellChart.IsMove(vHandle:HWND; vBlock:TBlock; x,y:integer; tDate:TDateTime);
begin
      if Not Self.Visible or (vBlock=nil) or (x<1) or (y<1) or (x>vBlock.CountX) or (y>vBlock.CountY)
            then
            begin
            Timer1.Enabled:=false;
            Exit;
            end;
     // Timer1.Enabled:=true;
      if (FBlock=vBlock) and (Fx=x) and (Fy=y) then Exit;
      FBlock:=vBlock; Fx:=x; Fy:=y; FDate:=tDate; FHandle:=vHandle;
      Timer1.Interval:=1500; Timer1.Enabled:=true;
      IsNewCell:=true;
end;

procedure TFrCellChart.Timer1Timer(Sender: TObject);
var h:HWND;
begin
      Timer1.Enabled:=false;   //Exit; //##
      h:= WindowFromPoint(Mouse.CursorPos);
      //h:=Cursor; //Mouse.CursorPos.X;// .Capture;
      //Mouse. crHandPoint
      if (h<>FHandle) then Exit;
      //if h <> crHandPoint then Exit;
      DrawHotGraf(FBlock,Fx,Fy,FDate);
      GName.Caption:=FBlock.ParentCtr.FCtrName+' '+ FBlock.Pref;
end;

procedure TFrCellChart.FloatChartMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var mTime:TDateTime;
    tval:string;
    i,f:integer;
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
          LVal.Caption:=FormatDateTime('d mmm yy h:nn=',mTime) + FormatFloat('0.##',YValue[f])+' '+gEd;
          LVal.Font.Color:=SeriesColor;
          if X < xLVal then  LVal.Left:=X //xLVal
            else  if (X+LVal.Width) > FloatChart.Width then LVal.Left:=X-LVal.Width
                else LVal.Left:=X;
          LVal.Visible:=True;// GName.Visible:=False;
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

procedure TFrCellChart.FloatChartAfterDraw(Sender: TObject);
begin
  OldX:=-1;
end;

function TFrCellChart.DrawHotGraf(Block:TBlock; X,Y:integer; ActDate:TDateTime):Boolean;
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
      if Not cbTu.Checked then ns:=0;
      Series[ns].Clear;
        LeftAxis.AutomaticMaximum:=true;
        RightAxis.AutomaticMaximum:=true;
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
      //if Not LeftAxis.Automatic then
            begin
//            LeftAxis.Automatic:=true;
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

procedure TFrCellChart.cbTuClick(Sender: TObject);
begin
      FloatChart.Series[1].Active:=cbTu.Checked;
      if Not cbTu.Checked then
        begin
        ns:=0;
        FloatChart.RightAxis.Title.Caption:='';
        end;
end;

end.
