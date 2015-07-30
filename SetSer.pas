unit SetSer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, ToolWin, ComCtrls, ExtCtrls, TeeProcs, Chart, StdCtrls,
  Controller,Grids, ImgList;

type
  TFSetSer = class(TForm)
    CDC: TChart;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ListName: TComboBox;
    Series1: TAreaSeries;
    procedure ListNameChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    Grid:TStringGrid;
    Block:TBlock;
    ParX,ParY:Word;
    procedure SetStart({vGrid:TStringGrid;}vBlock:TBlock;Z:word);
    procedure SetSeriesZ;
    procedure SetSeries;
  end;

var
  FSetSer: TFSetSer;

implementation
uses GGraf;
{$R *.DFM}
procedure TFSetSer.SetStart({vGrid:TStringGrid;}vBlock:TBlock;Z:word);
var StrX:String;
    i:word;
begin
// Grid:=vGrid;
 Block:=vBlock;
 Caption:=Block.NameBlock;
 ListName.Clear;
 with Block do begin
   i:=0;
   while LoadXY(cOutBlock,i,0,StrX)>cEndCol do begin
//        LoadZ(cNameY,i,st);
        ListName.Items.Add(StrX);//+' '+st);
        i:=i+1;
        end;
   end;
 ListName.ItemIndex:=Z;
 SetSeriesZ;
 Self.Show;
end;

procedure TFSetSer.SetSeries;
//var x:word;
begin
 ParY:=ListName.ItemIndex;
 ParX:=1;
 {with Grid do
  begin
  try
   for x:=1 to ColCount-1 do
     begin
     st:=Cells[x,ParX];
     GridCtr.Block[NBlock].LoadXY(cInBlock,x,y,st);
     Cells[x,y]:=st;
     end;
  except
   Col:=x;
   Row:=y;
   Result:=False;
   MessageDlg('Ќеверный формат данных. —ледует исправить значение и после этого сохранить таблицу',mtWarning,[mbOk],0);
  end;
 end;
for i:=1 to Grid.
}
end;

procedure TFSetSer.SetSeriesZ;
var y:Integer;
    st:String;
    Dat:Double;
    vDate:TDateTime;
begin
 y:=ListName.ItemIndex;
 with Block do begin
 vDate:=BlDate;
 if Not LoadFileByDate(vDate,dBegin) then Exit;
 Series1.Clear;
 CDC.Title.Text[0]:=ListName.Items[y];
//    +FormatDateTime(' от dd/mm/yy',vDate);
 repeat
    Dat:=LoadXY(cOutBlock,1,y,st);
//    LoadZ(cOutBlock,i,0,st);
    Series1.AddXY(BlDate,Dat,st,clTeeColor);
    LoadFileByDate(vDate,dNext);
 until PozRecord>=NumRecord;
 end;
end;

procedure TFSetSer.ListNameChange(Sender: TObject);
begin
 SetSeriesZ;
end;

end.
