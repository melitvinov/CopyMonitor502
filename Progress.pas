unit Progress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons;

type
  TFProgress = class(TForm)
    BCancel: TBitBtn;
    ProgressBar1: TProgressBar;
    LParam: TLabel;
    LDate: TLabel;
    procedure BCancelClick(Sender: TObject);
  private
    { Private declarations }
    FBoolOpen:Boolean;
  public
    { Public declarations }
    procedure Start(const NameBlock:string;vDate:TDateTime);
    function Exec(vDate:TDateTime;vProgress:integer):Boolean;
//    procedure FormShow(const NameBlock:string);
  end;

var
  FProgress: TFProgress;

implementation

{$R *.dfm}
procedure TFProgress.Start(const NameBlock:string;vDate:TDateTime); //;vDate:TDateTime
begin
  if Not Visible then Exit;
  LDate.Caption:=FormatDateTime(LongDateFormat,vDate);
//  Caption:=NameBlock;
  LParam.Caption:=NameBlock;
  Update;
  FBoolOpen:=True;
end;

function TFProgress.Exec(vDate:TDateTime;vProgress:integer):Boolean;
begin
      Result:=true;
      if Not Visible then Exit;
//      LDate.Caption:=FormatDateTime(LongDateFormat,vDate);
      ProgressBar1.Position:=vProgress;
//      ProgressBar1.Update;
      Result:=FBoolOpen;
end;

{procedure TFProgress.FormShow(const NameBlock:string);
begin
    Caption:=NameBlock;
    LParam.Caption:=NameBlock;
    ProgressBar1.Position:=0;
    Show;
    Update;
end; }

procedure TFProgress.BCancelClick(Sender: TObject);
begin
    FBoolOpen:=False;
//    Hide;
end;

end.
