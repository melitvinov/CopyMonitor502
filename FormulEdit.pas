unit FormulEdit;

interface

uses Windows, Classes, Graphics, Forms, Controls, Menus,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ImgList, StdActns,
  ActnList, ToolWin, SysUtils, StrUtils, Messages, FormulUtil, FConstType,
  FController, PicCtr,
  XPMan;

type
  TFormulForm = class(TForm)
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    ToolBar1: TToolBar;
    ToolButton9: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ActionList1: TActionList;
    FileNew1: TAction;
    FileOpen1: TAction;
    FileSave1: TAction;
    FileSaveAs1: TAction;
    FileExit1: TAction;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    HelpAbout1: TAction;
    StatusBar: TStatusBar;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    N1: TMenuItem;
    FileExitItem: TMenuItem;
    Edit1: TMenuItem;
    CutItem: TMenuItem;
    CopyItem: TMenuItem;
    PasteItem: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    Panel1: TPanel;
    BitBtnOK: TBitBtn;
    BitBtnCancel: TBitBtn;
    FormulMemo: TMemo;
    Panel3: TPanel;
    LMessage: TLabel;
    EditMessig: TEdit;
    SBOperator: TSpeedButton;
    ToolButton7: TToolButton;
    SB_NOT: TSpeedButton;
    SB_OR: TSpeedButton;
    SB_AND: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    XPManifest1: TXPManifest;
    Splitter1: TSplitter;
    SpeedButton1: TSpeedButton;
    Panel4: TPanel;
    TermListBox: TListBox;
    RuleBox: TComboBox;
    LabelMistake: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Test: TBitBtn;
    RuleTxt: TMemo;
    Label3: TLabel;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileOpen1Execute(Sender: TObject);
    procedure FileSave1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure TermListBoxClick(Sender: TObject);
    procedure EditMessigChange(Sender: TObject);
    procedure SBOperatorClick(Sender: TObject);
    procedure RuleBoxSelect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TestClick(Sender: TObject);
    procedure RuleTxtEnter(Sender: TObject);
    procedure FormulMemoEnter(Sender: TObject);
  private
    { Private declarations }
//    FNumRule:word;
    FAuditCtr:TFPicCtr;
//    Ctr:TFController;
    function FormulaTest:Boolean;
  public
    { Public declarations }
    WorkStr:string;
    function Execute(vX,vY:integer;vAuditCtr:TFPicCtr):Boolean;
  end;

function Pack(var aStr:string; const FuncName:string; StrList:TStrings):boolean;
//function Pack(var aStr:string):boolean;
function UnPack(var aStr:string; const FuncName:string; StrList:TStrings):boolean;
//function UnPack(var aStr:string):boolean;
function GetFuncFromText(const FuncName,vText:string; StrList:TStrings):string;
//function GetFuncFromName(vName:string; ListStr:TStrings):string;
//function GetFuncFromNameRule(vName:string; ListStr:TStrings):string;
function GetTextFromFunc(vNum:integer; StrList:TStrings):string;
//function GetNameFromFunc(vNum:integer; ListStr:TStrings):string;

var
  FormulForm: TFormulForm;

implementation

{$R *.dfm}
uses Math, audit, MessageU;

//const cOperList='Операции: +  -  *  /  >  >=  <  <=  и  или  не';

function TFormulForm.Execute(vX,vY:integer;vAuditCtr:TFPicCtr):Boolean;
var y,x:integer;
    st:string;
    NameZone:string;
begin
  LabelMistake.Visible:=False;
//  FNumRule:=vX;
//  RuleBox.Tag:=0;
//  LabelMistake.Caption:=cOperList;
  with vAuditCtr.AuditBlock do
    begin
    LoadXY(cOutBlock,vX,0,st);
    Caption:=ParentCtr.CtrName+' '+st;
    RuleBox.Clear;
    for x:=1 to CountX do
        begin
        LoadXY(cOutBlock,x,pozAuditName,st);
        if (st <> '') and (x<>vX) then
            RuleBox.Items.AddObject(st,TObject(x));
        end;
    if RuleBox.Items.Count > 0 then RuleBox.ItemIndex:=0;
    LoadXY(cOutBlock,vX,pozAuditName,st);
    end;
  EditMessig.Text:=st;
  EditMessig.Tag:=0;
  UnPack(st,FUNC_LOAD,TermListBox.Items);
  RuleTxt.Lines.SetText(PChar(st));
  if (FAuditCtr <> vAuditCtr) then  // or (Ctr <> vAuditBlock.ParentCtr)
    begin
    FAuditCtr:=vAuditCtr;
//    Ctr:=FAuditBlock.ParentCtr;
    TermListBox.Clear;
    with FAuditCtr.Block[0] do
      for y:=1 to CountY do
       for x:=1 to CountX do
        begin
        NameZone:=FAuditCtr.GetTextZona(x,y);
        if (x>1) and (NameZone='') then continue;
        if GetExist(x,y) <> cfExistFalse then
          begin
          LoadXY(cOutBlock,0,y,st);
          TermListBox.Items.AddObject(NameZone+' '+st,TObject(y+ZoneToTag(x)));
          end;
        end;
    end;
  FAuditCtr.AuditBlock.LoadXY(cOutBlock,vX,vY,WorkStr);
  UnPack(WorkStr,FUNC_LOAD,TermListBox.Items);
  UnPack(WorkStr,FUNC_RULE,RuleBox.Items);
  FormulMemo.Lines.SetText(PChar(WorkStr));
//  FormulMemo.SetFocus;
  Result:=ShowModal=mrOK;
  if Result then
      begin
      st:=string(RuleTxt.Lines.GetText);// .DelimitedText;
      Pack(st, FUNC_LOAD, TermListBox.Items);
      FAuditCtr.AuditBlock.LoadXY(cInBlock,vX,pozAuditName,st);
      end;
//  if Result and (EditMessig.Tag > 0) then
//      begin
//      st:=EditMessig.Text;
//      FAuditCtr.AuditBlock.LoadXY(cInBlock,vX,pozAuditName,st);
//      end;
  Hide;
end;

procedure TFormulForm.BitBtnOKClick(Sender: TObject);
begin
  if FormulaTest then ModalResult:=mrOK else ModalResult:=0;
end;

function TFormulForm.FormulaTest:Boolean;
begin
  WorkStr:=string(FormulMemo.Lines.GetText);// .DelimitedText;
  Pack(WorkStr, FUNC_LOAD, TermListBox.Items);
  Pack(WorkStr, FUNC_RULE, RuleBox.Items);
  Formula.CalcFromText(WorkStr,FAuditCtr);
  Result:=Formula.MistakeCode = MC_NOERROR;
  if Not Result then
    begin
    LabelMistake.Visible:=True;
    LabelMistake.Caption:=Formula.GetMistakeText;
    end else LabelMistake.Caption:=ProgMess[541];//Mess'Ошибок не найдено';
end;

procedure TFormulForm.TestClick(Sender: TObject);
begin
  FormulaTest;
  LabelMistake.Visible:=True;
  ModalResult:=0;
end;


function GetFuncFromText(const FuncName,vText:string; StrList:TStrings):string;
var ind:integer;
begin
  ind:=StrList.IndexOf(Copy(vText,2,Length(vText)-2));
  if ind >= 0 then Result:=FuncName+'('+IntToStr(integer(StrList.Objects[ind]))+')'
  else Result:='';
end;

function GetTextFromFunc(vNum:integer; StrList:TStrings):string;
var ind:integer;
begin
  ind:=StrList.IndexOfObject(pointer(vNum));
  if ind >= 0 then  Result:='['+StrList.Strings[ind]+']'
  else Result:='';
end;

function Pack(var aStr:string; const FuncName:string; StrList:TStrings):boolean;
var i,j:word;
    PackFuncStr,NamePar:string;
begin
  i:=1;
  while (i<=Length(aStr)) and (i>0) do
    begin
    i:=PosEx('[',aStr,i);
    j:=PosEx(']',aStr,i);
    if (i > 0) and (j > 0) then
      begin
      NamePar:=Copy(aStr,i,j-i+1);
      PackFuncStr:=GetFuncFromText(FuncName, NamePar, StrList);
      if PackFuncStr <> '' then
        begin
        aStr:=StringReplace(aStr,NamePar,PackFuncStr,[rfReplaceAll]);
        i:=i+Length(PackFuncStr);
        end
        else i:=i+Length(NamePar);
      end;
    end;
end;


function UnPack(var aStr:string; const FuncName:string; StrList:TStrings):boolean;
var OpenSk,CloseSk,PosFunc:word;
    NewStr,TempStr:string;
begin
  PosFunc:=1;
  while (PosFunc <= Length(aStr)) and (PosFunc > 0) do
    begin
    PosFunc:=PosEx(FuncName,aStr,PosFunc);
    OpenSk:=PosEx('(',aStr,PosFunc);
    CloseSk:=PosEx(')',aStr,OpenSk);
    if (PosFunc > 0) and (OpenSk > 0) and  (CloseSk > 0) then
      begin
      TempStr:=Copy(aStr,PosFunc,CloseSk-PosFunc+1);
      NewStr:= Copy(aStr,OpenSk+1,CloseSk-OpenSk-1);
      NewStr:=GetTextFromFunc(StrToInt(NewStr),StrList);
      if NewStr <> '' then
        begin
        aStr:=StringReplace(aStr, TempStr, NewStr, [rfReplaceAll]);
        PosFunc:=PosFunc+Length(NewStr)-1;
        end
      else PosFunc:=CloseSk;
      end;
    end;
end;

procedure TFormulForm.FileNew1Execute(Sender: TObject);
begin
  { Do nothing }
end;

procedure TFormulForm.FileOpen1Execute(Sender: TObject);
begin
  with OpenDialog do
    begin
    if Execute then FormulMemo.Lines.LoadFromFile(FileName);
    EditMessig.Text:=ChangeFileExt(ExtractFileName(FileName),'');
    end;
end;

procedure TFormulForm.FileSave1Execute(Sender: TObject);
begin
  with SaveDialog do
    begin
    Options:=Options + [ofOverwritePrompt];
    {if FileName='' then} FileName:=EditMessig.Text+'.txt';
    if Execute then FormulMemo.Lines.SaveToFile(FileName);
    end;
end;

procedure TFormulForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;

procedure TFormulForm.TermListBoxClick(Sender: TObject);
begin
  if RuleTxt.Color = clWindow then
    begin
    FormulMemo.Perform(EM_REPLACESEL,1,longint(PChar(
      ' ['+TermListBox.Items[TermListBox.ItemIndex]+'] ')));
    FormulMemo.SetFocus;
    Exit;
    end;
    RuleTxt.Perform(EM_REPLACESEL,1,longint(PChar(
      ' ['+TermListBox.Items[TermListBox.ItemIndex]+'] ')));
    RuleTxt.SetFocus;
end;

procedure TFormulForm.RuleBoxSelect(Sender: TObject);
begin
  FormulMemo.Perform(EM_REPLACESEL,1,longint(PChar(
    ' ['+RuleBox.Items[RuleBox.ItemIndex]+'] ')));
//  RuleBox.ItemIndex:=FNumRule-1;
  FormulMemo.SetFocus;
end;

procedure TFormulForm.EditMessigChange(Sender: TObject);
begin
  EditMessig.Tag:=1;
end;

procedure TFormulForm.SBOperatorClick(Sender: TObject);
begin
//  if (Sender as TSpeedButton).Caption = 'и.' then (Sender as TSpeedButton).Caption ='и';
  FormulMemo.Perform(EM_REPLACESEL,1,longint(PChar(' '+(Sender as TSpeedButton).Caption)+' '));
//    '['+TermListBox.Items[TermListBox.ItemIndex]+']')));
  FormulMemo.SetFocus;
end;

procedure TFormulForm.FormCreate(Sender: TObject);
begin
  if ProgMess[L_AND]='И.' then ProgMess[L_AND]:='И';
  SB_AND.Caption := ProgMess[L_AND];
  SB_OR.Caption := ProgMess[L_OR];
  SB_NOT.Caption := ProgMess[L_NOT];
end;

procedure TFormulForm.RuleTxtEnter(Sender: TObject);
begin
  RuleTxt.Color:=$d7ffd7;  //clLime;
  FormulMemo.Color:=clWindow;
end;

procedure TFormulForm.FormulMemoEnter(Sender: TObject);
begin
  RuleTxt.Color:=clWindow;
  FormulMemo.Color:=$d9ffd9;  // clLime;
end;

end.
