unit HandPanel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, HandClim, StdCtrls, FPicLabel, FPicPanel, BoilerIPC, Buttons, FConstType, FController,
  ComCtrls, Gauges, ExtCtrls;



type
  TFHandPanel = class(TForm)
    FPName: TFPicPanel;
    FPMode: TFPicLabel;
    FPPos: TFPicLabel;
    Panel1: TPanel;
    bbSet: TBitBtn;
    bbCancel: TBitBtn;
    procedure bbCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FPModeClick(Sender: TObject);
    procedure bbSetClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetControl;
  public
    NMech: integer;
    CurrCtr: TFBoilerIPC;
    SaveStart: integer;
    SaveSend: integer;
    { Public declarations }
    procedure TurnBackValues;
  end;

var
  FHandPanel: TFHandPanel;

implementation

uses DefineBoil,Subr;

{$R *.dfm}

procedure TFHandPanel.SetControl;
var
  txt1: string;
begin
//  FPProcView.Visible:=false;
  FPMode.Tag:=NMech-1;
  FPPos.Tag:=NMech;
  FPMode.ImageIndex:=FPMode.HotImageIndex+round(CurrCtr.HotMech.LoadXY(cOutBlock,1,FPMode.Tag,txt1));
  FPMode.Caption:=txt1;
  FPPos.ImageIndex:=FPPos.HotImageIndex+round(CurrCtr.HotMech.LoadXY(cOutBlock,1,FPPos.Tag,txt1));
  FPPos.Caption:=txt1;
//  Ctr.HotMech.LoadXY(cOutBlock,1,NMech+1,txt1);
  FPName.Caption:='Ùèò '+IntToStr((NMech-DMH_PanelStart+1) div 2);
{  if NMech>DMH_GroupStart then
  begin
    FPName.Caption:='Ãðóïïà '+IntToStr((NMech-DMH_GroupStart+1) div 2);
    FPProcView.Visible:=true;
    with FPPrMode do
    begin
      Tag:=NProc;
      TPProc.Position:=round(CurrCtr.HotMech.LoadXY(cOutBlock,1,Tag,txt1));
      Caption:=txt1;
    end;
  end;}
end;

procedure TFHandPanel.bbCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFHandPanel.FormShow(Sender: TObject);
begin
  SetControl;

end;

procedure TFHandPanel.FPModeClick(Sender: TObject);
var
  st: string;
  ind: integer;
begin
  with (Sender as TFPicLabel) do
  begin
    ind:=(ImageIndex+1) mod 2;
    ImageIndex:=HotImageIndex+ind;
    St:=IntToStr(ind);
    CurrCtr.HotMech.LoadXY(cInBlock,1,Tag,St);
    Caption:=st;
  end;
end;

procedure TFHandPanel.TurnBackValues;
begin
  with  CurrCtr.HotMech do
  begin
    StartSend:=SaveStart;
    SendByte:=SaveSend;
    with CurrCtr do
        begin
        with Block[0] do Ready:=TestEquDate(BlDate,Now,5);
        SetPicCtr;
        end;
  end;
end;

procedure TFHandPanel.bbSetClick(Sender: TObject);
begin
  with  CurrCtr.HotMech do
  begin
    SaveStart:=StartSend;
    StartSend:=ConstNames[FPMode.Tag].Index;
    SaveSend:=SendByte;
    SendByte:=2;
    SendToPort(TurnBackValues);
  end;
end;

end.
