unit FGrafGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Grids, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, ActnList,
  XPStyleActnCtrls, ActnMan, ActnMenus, ToolWin, ActnCtrls, Series,
  FController, FConstType, ComCtrls, Spin, Buttons, TSGrid,MessageU, GanttCh, audit,
  Grids_ts,Math, Menus;

type
  TFGridGraf = class(TForm)
    ColorDialog1: TColorDialog;
    Panel2: TPanel;
    Chart1: TChart;
    LTime: TLabel;
    LVal: TLabel;
    ASer1: TLineSeries;
    Chart2: TChart;
    Series1: TLineSeries;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ToolBar2: TToolBar;
    DateStart: TDateTimePicker;
    DateFinish: TDateTimePicker;
    Series2: TGanttSeries;
    TrackBar1: TTrackBar;
    SBPrint: TSpeedButton;
    Panel1: TPanel;
    SigTV: TTreeView;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    ComboBoxSeries: TComboBox;
    tbColor: TPanel;
    ToolButton2: TToolButton;
    PWitdth: TPanel;
    tbWidth: TSpinEdit;
    tbStairs: TCheckBox;
    ToolButton1: TToolButton;
    tbDelete: TBitBtn;
    Splitter1: TSplitter;
    ToolButton4: TToolButton;
    spColor: TShape;
    LSeries: TStaticText;
    GridArx: TtsGrid;
    pmArx: TPopupMenu;
    NExcelExp: TMenuItem;
    N1: TMenuItem;
    NSaveGraph: TMenuItem;
    NLoadGraph: TMenuItem;
    NChngeClr: TMenuItem;
    NDelete: TMenuItem;
    N2: TMenuItem;
    SaveChartDlg: TSaveDialog;
    OpenChartDlg: TOpenDialog;
    PFinish: TSpeedButton;
    PStart: TSpeedButton;
    procedure ComboBoxSeriesChange(Sender: TObject);
    procedure tbColorClick(Sender: TObject);
    procedure tbDeleteClick(Sender: TObject);
    procedure tbWidthChange(Sender: TObject);
    procedure Chart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Chart1AfterDraw(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure SBPrintClick(Sender: TObject);
    procedure Chart1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Chart1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Chart1ClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Chart1ClickLegend(Sender: TCustomChart; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure spColorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SigTVChange(Sender: TObject; Node: TTreeNode);
    procedure NExcelExpClick(Sender: TObject);
    procedure GridArxRowChanged(Sender: TObject; OldRow, NewRow: Integer);
    procedure NChngeClrClick(Sender: TObject);
    procedure NDeleteClick(Sender: TObject);
    procedure NSaveGraphClick(Sender: TObject);
    procedure NLoadGraphClick(Sender: TObject);
    procedure PStartClick(Sender: TObject);
  private
    { Private declarations }
    OldX,OldY:Longint;
    FBlock:TBlock;
    procedure GetSeries;
    procedure SetSeries;
    procedure IniComboBox;
    procedure InitTable;
//    function BuldGridGraf(StrGrid:TtsGrid;vChart:TChart):Boolean;
//    function ExecAudit(Audit:TBlock; NumRule:Byte):Boolean;  //Если NumRule=0 то все правила
  public
    { Public declarations }
    procedure Exec(StrGrid:TtsGrid);
  end;

//function AllAuditToSeries(Audit:TBlock; NumRule:Byte; vSeries:TGanttSeries; Start,Finish:TDateTime):Boolean;  //Если NumRule=0 то все правила
const

//=========
     grSLTitle      =0;
     grSLPeriod     =1;
     grSLMax        =2;
     grSLMaxTime    =3;
     grSLMin        =4;
     grSLMinTime    =5;
     grSLMidl       =6;
     grSLSum        =7;
     
var
  FGridGraf: TFGridGraf;

implementation

{$R *.dfm}
uses GGraf, PicCtr,SetGrid;

{function GetRandomColor:TColor;
var g,r,b,rand:integer;
begin
 randomize;
 rand:=Random(100);
 if rand > 50 then begin g:=300-rand; r:=rand-50; end
  else begin g:=rand; r:=255-rand; end;
 Result:=RGB(r,g,rand*3 *(rand mod 2) mod 255);
// Result:=GetColor(
end;}

function GetCtrName(var tstr:string):string;
var
  i1,i2: integer;
begin
  i1:=pos('{',tstr);
  i2:=pos('}',tstr);
  if (i1<1) or (i2<1) then Result:=''
  else
  begin
    Result:=Copy(tstr,i1+1,i2-i1-1);
    Delete(tstr,1,i2);
  end;
end;

procedure RedrawChart(vChart:TChart;Start,Finish:TDateTime;nSeries: integer);
var
  i: integer;
  BlNum,x,y: integer;
  vCtr: TFController;
  vBlock: TBlock;
  infoBl: TAny;
  st: string;
  vData: double;
  TestDate: TDateTime;
begin
  with vChart do
  for i:=1 to SeriesCount-1 do
  begin
    if (nSeries<>i) and (nSeries<>-1) then continue;
    try
      infoBl.Long:=Series[i].Tag;
      x:=infoBl.b1;
      y:=infoBl.b2;
      BlNum:=infoBl.b3;
      vCtr:=FMain.ListCtr.Tabs.Objects[infoBl.b4] as TFController;
      vBlock:=vCtr.Block[BlNum];
    except
      continue;
    end;
    Series[i].Clear;
    with vCtr,vBlock do
    begin
      if BlockNumber=0 then
        begin
        TestDate:=Start;
        repeat if LoadFileCycle(TestDate) then
                  repeat if Not IsArtefact then Series[i].AddXY(vBlock.BlDate,LoadXY(cOutBlock,x,y,st),'',clTeeColor);
                  until Not LoadFileCycle(BlDate);
           TestDate:=TestDate+1;
        until TestDate > Finish;
        end
      else
        begin
        if LoadFileCycle(BlDate) then
            repeat
              vData:=LoadXY(cOutBlock,x,y,st);
              if (BlDate >=Start) and (BlDate <= Finish) then
                if Not IsArtefact then Series[i].AddXY(vBlock.BlDate,vData,'',clTeeColor);
            until Not LoadFileCycle(BlDate);
        end;
    end;
  end;
end;

procedure GetSeriesInfo(Series:TChartSeries;tmAct:double;tmFrm:string; serinfo: TStringList);
var vMin,vMax,vMid,vVal,tmMin,tmMax,tmVal,vSum:double;
  i:integer;
  vStr: string;
begin
  serInfo.Clear;
with Series do
  begin
   vMin:=10000;vMax:=-10000;vSum:=0;vVal:=0;
   //serInfo.Name:='no';
   if Series.Count=0 then exit;
   for i:=0 to Series.Count-1 do
    begin
    if (vVal=0) and (tmAct < XValue[i]) then begin vVal:=YValue[i];tmVal:=XValue[i];end;
    if YValue[i] > vMax then begin vMax:=YValue[i];tmMax:=XValue[i];end;
    if YValue[i] < vMin then begin vMin:=YValue[i];tmMin:=XValue[i];end;
    vSum:=vSum+YValue[i];
    end;
   serInfo.Add(Title);
   serInfo.Add('C '+FormatDateTime(tmFrm,XValue[0])+' до '+FormatDateTime(tmFrm,XValue[Count-1]));
   serInfo.Add(Format('%8.2f',[vMax]));
   serInfo.Add(FormatDateTime(tmFrm,tmMax));
   serInfo.Add(Format('%8.2f',[vMin]));
   serInfo.Add(FormatDateTime(tmFrm,tmMin));
   vMid:=vSum/Series.Count;
   serInfo.Add(Format('%8.2f',[vMid]));
   serInfo.Add(Format('%8.2f',[vSum]));
  end;
end;

function GetTabFromListCtr(const vCtrName:string; vCtrNum:Byte):integer;
var i:word;
begin
  Result:=-1;
  with FMain.ListCtr do
    begin
    for i:=0 to Tabs.Count-1 do
      if ((((Tabs.Objects[i] as TFController).CtrNum = vCtrNum))and (((Tabs.Objects[i] as TFController).CtrName = vCtrName)))then
        begin
        Result:=i;
        Exit;
        end;
    end;
end;

function BlockToChart(vBlock:TBlock;x,y:integer;vChart:TChart;Start,Finish:TDateTime;vColor: TColor=clMin):Boolean;
var
  NewSeries:TChartSeries;
  st,stNameX:string;
  infoBl: TAny;
  i:integer;
begin
 with vBlock,vChart do
 try
  infoBl.b1:=x;
  infoBl.b2:=y;
  infoBl.b3:=BlockNumber;
  infoBl.b4:=GetTabFromListCtr(ParentCtr.CtrName,ParentCtr.CtrNum);
  for i:=1 to SeriesCount-1 do
  begin
    if (Series[i].Tag=infoBl.Long) then
    begin
      MessageDlg('Данный параметр уже есть на графике!',mtError,[mbOk],0);
      exit;
    end;
  end;
  Result:=False;
  NewSeries:=TLineSeries.Create(vChart);
  NewSeries.Assign(vChart.Series[1]);
  with NewSeries as TLineSeries,vBlock do
  begin
    ParentChart:=vChart;
    Stairs:=true;
    SeriesColor:=GetFColor(vChart.SeriesCount-1); //GetRandomColor;
    if vColor<>clMin  then  SeriesColor:=vColor;
    LoadXY(cOutBlock,0,y,st);
    if CountX>1 then begin LoadXY(cOutBlock,x,0,stNameX); st:=stNameX+' '+st; end;
    Title:='{'+ParentCtr.CtrName+'} '+st;
    Stairs:=BlockNumber > 0;
    Active:=True;
    NewSeries.Tag:=infoBl.Long;
    RedrawChart(vChart,Start,Finish,vChart.SeriesCount-1);
    Result:=True;
  end;
 finally

 end;
end;



procedure TFGridGraf.IniComboBox;
var i:integer;
begin
      with Chart1.BottomAxis do
          begin
          Automatic:=True;
          if (Maximum-Minimum)>1.5 then
             begin DateTimeFormat:='dd/mm/yy';Increment:=1; end
          else begin DateTimeFormat:='hh:nn';Increment:=1.0/24; end;
          end;
      Chart1.LeftAxis.Automatic:=True;

      ComboBoxSeries.Clear;
      with Chart1 do
        begin
        if SeriesCount<1 then begin ComboBoxSeries.ItemIndex:=-1;Exit; end;
        for i:=2 to SeriesCount-1 do
          ComboBoxSeries.AddItem(Series[i].Title,Series[i]);
        end;
      ComboBoxSeries.ItemIndex:=ComboBoxSeries.Items.Count-1;

      GetSeries;
end;


procedure TFGridGraf.InitTable;
var
  i: integer;
  serInfo: TStringList;
  vStr: string;
begin
  GridArx.Rows:=0;
  serinfo:=TStringList.Create;
  with Chart1 do
  begin
    if SeriesCount<1 then begin Exit; end;
        for i:=2 to SeriesCount-1 do
        begin
          GridArx.Rows:=GridArx.Rows+1;
          GridArx.CellColor[1,i-1]:=Series[i].SeriesColor;
          GetSeriesInfo(Series[i],0,'dd.mm.yy',serInfo);

          vStr:=Series[i].Title;
          GridArx.Cell[2,i-1]:=GetCtrName(vStr);
          GridArx.Cell[3,i-1]:=vStr;
          if SerInfo.Count<1 then continue;
          GridArx.Cell[4,i-1]:=serInfo.Strings[grSLPeriod];
          GridArx.Cell[5,i-1]:=serInfo.Strings[grSLMidl];
          GridArx.Cell[6,i-1]:=serInfo.Strings[grSLMax];
          GridArx.Cell[7,i-1]:='от '+serInfo.Strings[grSLMaxTime];
          GridArx.Cell[8,i-1]:=serInfo.Strings[grSLMin];
          GridArx.Cell[9,i-1]:='от '+serInfo.Strings[grSLMinTime];
          GridArx.Cell[10,i-1]:=serInfo.Strings[grSLSum];
          GridArx.Cell[11,i-1]:=Series[i].Tag;
        end;
  end;
  serinfo.Free;
end;



//function BlockToChart(vBlock:TBlock;x,y:integer;vChart:TChart;Start,Finish:TDateTime):Boolean;
function AllAuditToSeries(Ctr:TFPicCtr; NumRule:Byte; vSeries:TGanttSeries; Start,Finish:TDateTime):Boolean;  //Если NumRule=0 то все правила
var
  vData:Double;
  TestDate:TDateTime;
  st:string;
//  Save_Cursor:TCursor;
begin
// Save_Cursor := Screen.Cursor;
// Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 with Ctr.Block[0] do
 try
  ShowProgress;
  Result:=false;
        TestDate:=Start;
        vSeries.Clear;
        repeat
         if LoadFileCycle(TestDate) then
            begin
            ClearAuditSeries(NumRule);
            repeat (Ctr.AuditBlock as TAudit).SetAuditSeries(Ctr, NumRule,vSeries);
            until Not LoadFileCycle(BlDate);
            end;
          TestDate:=TestDate+1;
        until TestDate > Finish;
        ClearAuditSeries(NumRule);
  Result:=vSeries.Count > 0;
 finally
//    Screen.Cursor := Save_Cursor;  { Always restore to normal }
    HideProgress;
 end;
 if Not Result then MessageDlg(Ctr.CtrName+' '+Ctr.AuditBlock.NameBlock
    +' - '+ProgMess[89],mtWarning,[mbOK],0);
end;

procedure TFGridGraf.Exec(StrGrid:TtsGrid);
var i:integer;//res:Boolean;
begin
  Show;
  if ChangeCtrList then
      begin
      SigTV.Items.Clear;
      SigTV.Items.AddChildObject(nil,MonitorName,nil);
      with FMain.ListCtr.Tabs do
      for i:=0 to Count-1 do
       with Objects[i] as TFPicCtr do
          begin
          if blPCArchive <> nil then
          blPCArchive.SetTree(SigTV);
          end;
      SigTV.Items[0].Expand(False);
      ChangeCtrList:=false;
      end;
  if StrGrid = nil then Exit;
  FBlock := StrGrid.CellData[1,2];
  with StrGrid do
    begin
    if (FBlock = nil) or ((FBlock.Sort and srNoGridGraf)>0) then
            begin
            MessageDlg(ProgMess[90],mtWarning,[mbOK],0);
            Exit;
            end;
    if (FBlock.Sort and srAudit) > 0  then
      AllAuditToSeries((FBlock.ParentCtr as TFPicCtr), 0, Chart1.Series[0] as TGanttSeries,DateStart.Date,DateFinish.Date)
      else
      BlockToChart(FBlock,CurrentDataCol-1,CurrentDataRow-1,Chart1,DateStart.Date,DateFinish.Date);
    end;
  IniComboBox;
  InitTable;
  FormStyle:=fsStayOnTop;
end;

procedure TFGridGraf.ComboBoxSeriesChange(Sender: TObject);
begin
  GetSeries;
end;

procedure TFGridGraf.tbDeleteClick(Sender: TObject);
begin
  with ComboBoxSeries do
  if ItemIndex>=0 then (Items.Objects[ItemIndex] as TLineSeries).Free;
  IniComboBox;
  InitTable;
end;

procedure TFGridGraf.tbWidthChange(Sender: TObject);
begin
  SetSeries;
end;

procedure TFGridGraf.Chart1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var mTime:TDateTime;
    tmp,t:Longint;
    tval:string;
    i:integer;
begin
//  if ChangingSer then Exit;
//  if ChahgingSCount>0 then begin ChahgingSCount:=ChahgingSCount-1;Exit;end;
//  if ActiveCtr=nil then Exit;
  if (OldX<>-1) then begin
    DrawCross(Chart1,OldX,OldY);  { draw old crosshair }
    OldX:=-1;
    end;
  if PtInRect( Chart1.ChartRect, Point(X-Chart1.Width3D,Y+Chart1.Height3D)  ) then
      begin
      tval:=Format('  %.1f',[Chart1.Series[1].YScreenToValue(Y)]);
      mTime:=Chart1.Series[1].XScreenToValue(X);
//Вывод имени графика

{      for t:=2 to Chart1.SeriesCount-1 do
            begin
            if  Chart1.Series[t].Count<3 then continue;
            tmp:=Chart1.Series[t].Clicked(x,y);
            if tmp<>-1 then
              begin
              with LSeries do
                 begin
                 Font.Color:=Chart1.Series[t].SeriesColor;
//                 Caption:=GetStatSeries(Chart1.Series[t],Chart1.Series[t].XScreenToValue(X),' от dd.mm');   //StatGrid,
//                 Caption:=FormatDateTime(ShortTimeFormat,mTime)+' '+Chart1.Series[t].Title+'='+tval;;
                 if (Y+Height) > Chart1.ChartRect.Bottom then
                    top:=y-Height else top:=y;
                 if (x+Width)>Chart1.ChartRect.Right then
                    Left:=x-Width else Left:=x;;
                 Visible:=True;
                 end;
//              LTime.Visible:=False; LVal.Visible:=False;
                  begin
                  i:=ComboBoxSeries.Items.IndexOf(Chart1.Series[t].Title);
                  if i>=0 then
                      begin
                      ComboBoxSeries.ItemIndex:=i;
                      GetSeries;
                      end;
                  end;

              Exit;
              end;
             end;}
//Выведено имя графика
//      LTime.Caption:=FormatDateTime(Chart1.BottomAxis.DateTimeFormat,mTime);
      LTime.Caption:=FormatDateTime(LongDateFormat+' '+ShortTimeFormat,mTime);  //' dd mmmm yy в hh:nn'
      LVal.Caption:=tval;
      LVal.Top:=Y-4;
      LVal.Left:=Chart1.Width-40;//Graf.Left+
      LTime.Left:=X-20;
      LVal.Visible:=True;
      LTime.Visible:=True;
      DrawCross(Chart1,X,Y);  { draw crosshair at current position }
      { store old position }
      OldX:=X;
      OldY:=Y;
      end
      else begin LTime.Visible:=False;
        LVal.Visible:=False; LSeries.Visible:=False; end;
end;

procedure TFGridGraf.Chart1AfterDraw(Sender: TObject);
begin
//  if ChangingSer then Exit;
//  if ChahgingSCount>0 then begin ChahgingSCount:=ChahgingSCount-1;Exit;end;
//  LSeries.Visible:=False;
  OldX:=-1;  // Reset old mouse position
//  CalcScrollBarPos(ScrollBar1,Chart1);
//  CalcScrollBarPos(ScrollBar2,Chart1);
end;

procedure TFGridGraf.TrackBar1Change(Sender: TObject);
begin
 if TrackBar1.Position=1 then Chart1.View3d:=False
  else begin
   Chart1.Chart3dPercent:=TrackBar1.Position;
   Chart1.View3d:=True;
   end;
end;

procedure TFGridGraf.ScrollBar1Change(Sender: TObject);
begin
// ScrollChange(ScrollBar1,Chart1);
// ScrollChange(ScrollBar2,Chart1);
end;

procedure TFGridGraf.SBPrintClick(Sender: TObject);
begin
   if FMain.PrinterSetupDialog1.Execute then FMain.PrintChart(ProgMess[92],Chart1);
end;

procedure TFGridGraf.Chart1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TtsGrid)
         or (Source is TTreeView);
end;

procedure TFGridGraf.Chart1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var  Node: TTreeNode;
     Param:Txy;
     vX,vY:integer;
begin
  if (Source is TtsGrid) then
      Exec(Source as TtsGrid);
{      begin
      BuldGridGraf((Source as TtsGrid),Chart1);
      IniComboBox;
      end;  }
  if (Source is TTreeView) then
    begin
    Node:=(Source as TTreeView).Selected;
    if Node.HasChildren then Exit;
    Param.Ptr:=Node.Data;
    vX:=Param.X; vY:=Param.Y;
    if (vY mod 1000)=0 then exit;
    Param.Ptr:=Node.Parent.Data;
    FBlock := Param.Block;

    BlockToChart(Param.Block,vX,vY,Chart1,DateStart.Date,DateFinish.Date);
//    if Not BlockToChart(Param.Block,vX,vY,Chart1,DateStart.Date,DateFinish.Date) then
//      MessageDlg(FBlock.ParentCtr.CtrName+' '+FBlock.NameBlock+' - '+ProgMess[89]
//          ,mtWarning,[mbOK],0);
    IniComboBox;
    InitTable;
   end;
end;

procedure TFGridGraf.SetSeries;
begin
  with ComboBoxSeries do
  if ItemIndex>=0 then
  with (Items.Objects[ItemIndex] as TLineSeries) do
    begin
    SeriesColor:=spColor.Brush.Color;
//    LinePen.Color:=tbColor.Color;
    LinePen.Width:=tbWidth.Value;
    Stairs:=tbStairs.Checked;
    end;
end;

procedure TFGridGraf.GetSeries;
//var ind:integer;
begin
  with ComboBoxSeries do
  if ItemIndex>=0 then
  with (Items.Objects[ItemIndex] as TLineSeries) do
    begin
    tbColor.Color:=SeriesColor;//:=LinePen.Color;
    spColor.Brush.Color:=SeriesColor;
    tbWidth.Value:=LinePen.Width;
    tbStairs.Checked:=Stairs;
    ComboBoxSeries.Font.Color:=SeriesColor;
    end;
end;

procedure TFGridGraf.Chart1ClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var i:integer;
begin
 i:=ComboBoxSeries.Items.IndexOf(Series.Title);
 if i<0 then Exit;
 ComboBoxSeries.ItemIndex:=i;
 GetSeries;
end;

procedure TFGridGraf.Chart1ClickLegend(Sender: TCustomChart;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var i:integer;
begin
 i:=ComboBoxSeries.Items.IndexOf(TChartSeries(Sender).Title);// as ).Title);
 if i<0 then Exit;
 ComboBoxSeries.ItemIndex:=i;
 GetSeries;
//begin
//   ShowMessage ( Sender.Title.Text[0]+Sender.Series[0].Title);// Sender.Title++ FloatToStr ( Sender.YValues [ ValueIndex ] ) ) ;
//Panel1.Caption:=Sender.Title. .Text;
end;

procedure TFGridGraf.FormCreate(Sender: TObject);
begin
  DateFinish.Date:=Now;
  DateStart.Date:=Now-180;
  GridArx.Rows:=0;
end;

procedure TFGridGraf.tbColorClick(Sender: TObject);
begin
  ColorDialog1.Color:=spColor.Brush.Color;
  if ColorDialog1.Execute then
    begin
    spColor.Brush.Color:=ColorDialog1.Color;
    SetSeries;
    InitTable;
    end;
end;


procedure TFGridGraf.spColorMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   tbColorClick(Self);
end;

procedure TFGridGraf.SigTVChange(Sender: TObject; Node: TTreeNode);
var Param,vBlock:Txy;
begin
//    Node:=SigTV.Selected;
    if Node.HasChildren then Exit;
    Param.Ptr:=Node.Data;
    if (Node.Parent.Data= nil) or (Param.X=0) or (Param.Y=0) then Exit;
    vBlock.Ptr:=Node.Parent.Data;
    BlockToChart(vBlock.Block,Param.X,Param.Y,Chart1,DateStart.Date,DateFinish.Date);
    IniComboBox;
    InitTable;
end;

procedure TFGridGraf.NExcelExpClick(Sender: TObject);
begin
  GridArx.Col[1].Visible:=false;
  GridToExcel(GridArx);
  GridArx.Col[1].Visible:=True;
end;

procedure TFGridGraf.GridArxRowChanged(Sender: TObject; OldRow,
  NewRow: Integer);
begin
  ComboBoxSeries.ItemIndex:=NewRow-1;
  GetSeries;
end;

procedure TFGridGraf.NChngeClrClick(Sender: TObject);
begin
  tbColorClick(Self);
end;

procedure TFGridGraf.NDeleteClick(Sender: TObject);
begin
 tbDeleteClick(Self);
end;

procedure TFGridGraf.NSaveGraphClick(Sender: TObject);
begin
  if SaveChartDlg.Execute then
  begin
    GridArx.SaveToFile(SaveChartDlg.FileName,true);
  end;
end;

procedure TFGridGraf.NLoadGraphClick(Sender: TObject);
var
  t: TTsColMatch;
  i:integer;
  infoBl: TAny;
  x,y: integer;
  vCtr: TFController;
  vBlock: TBlock;
begin
  if OpenChartDlg.Execute then
  begin
    GridArx.LoadFromFile(OpenChartDlg.FileName,t);
  end;
  for i:=1 to GridArx.Rows do
  begin
    try
      infoBl.Long:=GridArx.Cell[11,i];
      x:=infoBl.b1;
      y:=infoBl.b2;
      vCtr:=FMain.ListCtr.Tabs.Objects[infoBl.b4] as TFController;
      vBlock:=vCtr.Block[infoBl.b3];
      BlockToChart(vBlock,X,Y,Chart1,DateStart.Date,DateFinish.Date,GridArx.CellColor[1,i]);
    except
      continue;
    end;

  end;
  IniComboBox;
end;

procedure TFGridGraf.PStartClick(Sender: TObject);
begin
//  DateStart.OnDropDown;//.DroppedDown:=true;
end;

end.
