unit FDiagnosDlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls,GanttCh, Spin, CheckLst, ActnMan,
  FConstType, Translate502;

type
  TFDiagnosisDlg = class(TForm)
    Panel2: TPanel;
    ValueList: TCheckListBox;
    Panel3: TPanel;
    Panel4: TPanel;
    LPosY: TLabel;
    LBlockY: TLabel;
    SEPozY: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ColorBox1: TColorBox;
    LColor: TLabel;
    lDiagnMess: TLabel;
    procedure SEPozYChange(Sender: TObject);
    procedure ValueListClick(Sender: TObject);
    procedure ValueListClickCheck(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
  private
    { Private declarations }
     StartSet:Boolean;
     IsMod:Boolean;
     ArrayDiagnosis:PTArrayDiagnosis;
//     procedure GetLanguage;
     procedure SetValueListCheck(ind:word);
  public
    { Public declarations }

  end;
var FDiagnosisDlg:TFDiagnosisDlg;

function DiagnosisDlgExec(const Capt:string; vDiagnosis:PTArrayDiagnosis;
          vCount:word; var vNowAccess:integer):Boolean; stdcall;

implementation

{$R *.DFM}

function DiagnosisDlgExec(const Capt:string; vDiagnosis:PTArrayDiagnosis;    //vApplication:TApplication;
          vCount:word; var vNowAccess:integer):Boolean; stdcall;
var i:integer;
begin
  if vDiagnosis=nil then begin Result:= False; Exit; end;
  if FDiagnosisDlg=nil then
      begin
      Application.CreateForm(TFDiagnosisDlg, FDiagnosisDlg);
      LoadFormLanguage(FDiagnosisDlg,FDiagnosisDlg.Name);
      end;
  with FDiagnosisDlg do
    begin
    ArrayDiagnosis:=vDiagnosis;
    StartSet:=True;
    ValueList.Clear;
    for i:=1 to  vCount do
      begin
      ValueList.AddItem(vDiagnosis[i].Name,nil) ;
      SetValueListCheck(i);
      end;
    ValueList.ItemIndex:=0;
    ValueListClick(ValueList);
    StartSet:=False;
    Caption:=Capt;
    Result:= ShowModal = mrOK;
    end;
end;

{procedure TFDiagnosisDlg.GetLanguage;
begin
    InitLanguage(INI_FILE_NAME);//Application.ExeName);
    LoadFormLanguage(Self,'DiagnDlg');
end;}

procedure TFDiagnosisDlg.SetValueListCheck(ind:word);
begin              //(cbUnchecked, cbChecked, cbGrayed);
if ArrayDiagnosis[ind].ShowPozition = 0
  then ValueList.State[ind-1]:=cbUnchecked
  else ValueList.State[ind-1]:=cbChecked;
end;

procedure TFDiagnosisDlg.ValueListClick(Sender: TObject);
begin
   StartSet:=True;
   SEPozY.Value:=ArrayDiagnosis[ValueList.ItemIndex+1].ShowPozition;
//   PColor.Color:=ArrayDiagnosis[ValueList.ItemIndex+1].Color;
   ColorBox1.Selected:=ArrayDiagnosis[ValueList.ItemIndex+1].Color;
//    PName.Caption:=ValueList.Items[ValueList.ItemIndex];
//    LevWrite.Value:=ArrayNameConst[ValueList.ItemIndex+1].AccessW;
   SetValueListCheck(ValueList.ItemIndex+1);
   StartSet:=False;
end;

procedure TFDiagnosisDlg.ValueListClickCheck(Sender: TObject);
begin
  if ValueList.State[ValueList.ItemIndex]= cbUnchecked
  then  SEPozY.Value:=0
  else if SEPozY.Value = 0 then SEPozY.Value:=29-ValueList.ItemIndex*3;
end;


procedure TFDiagnosisDlg.SEPozYChange(Sender: TObject);
begin
   if StartSet then Exit;
   StartSet:=True;
   ArrayDiagnosis[ValueList.ItemIndex+1].ShowPozition:=SEPozY.Value;
   SetValueListCheck(ValueList.ItemIndex+1);
   IsMod:=True;
   StartSet:=False;
end;

procedure TFDiagnosisDlg.ColorBox1Change(Sender: TObject);
begin
   if StartSet then Exit;
   ArrayDiagnosis[ValueList.ItemIndex+1].Color:=ColorBox1.Selected;
end;

end.
