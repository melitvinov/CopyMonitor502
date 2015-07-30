unit FTopMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,MessageU;

type
  TTopMesForm = class(TForm)
    MesL: TLabel;
    BitBtn1: TBitBtn;
    vLabel: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsCancel:Boolean;
    procedure ShowTop(const vMes:string;vColor:TColor=clNone);
    procedure HideTop;
    end;

var
  TopMesForm: TTopMesForm;

implementation
uses FConstType;//GGraf;

{$R *.dfm}

procedure TTopMesForm.ShowTop(const vMes:string;vColor:TColor=clNone);
begin
  IsCancel:=False;
  BitBtn1.Visible:=true;
  Caption:= MonitorName;
  MesL.Caption:=vMes;
  if vColor<>clNone  then MesL.Color:=vColor;
  Show;// Repaint;//Update;
end;

procedure TTopMesForm.BitBtn1Click(Sender: TObject);
begin
  IsCancel:=true;
  MesL.Caption:=MesL.Caption+' '+ProgMess[535]; //отменено';
//  BitBtn1.Visible:=false;
end;

procedure TTopMesForm.HideTop;
begin
  if Not IsCancel then Hide;
end;

end.
