unit Strategy501U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids_ts, TSGrid, ComCtrls, Gauges, StdCtrls, FPicLabel, FPicPanel,
  ImgList, FConstType, SetGrid, ToolWin, MessageU, FController, ExtCtrls,
  Buttons, Mask;

type
  TFStrategy501U = class(TForm)
    ListClimCtr: TTabControl;
    ImageTumbler: TImageList;
    ImageButton: TImageList;
    StratGrid: TtsGrid;
    TBCtr: TToolBar;
    TBSendToCtr: TToolButton;
    TBShowCtr: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Panel69: TPanel;
    Panel70: TPanel;
    Panel71: TPanel;
    Panel72: TPanel;
    Panel73: TPanel;
    Panel74: TPanel;
    Panel75: TPanel;
    Panel76: TPanel;
    Panel77: TPanel;
    Panel78: TPanel;
    Panel79: TPanel;
    Panel80: TPanel;
    Panel81: TPanel;
    Panel82: TPanel;
    Panel83: TPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox20: TComboBox;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox23: TComboBox;
    ComboBox24: TComboBox;
    ComboBox26: TComboBox;
    ComboBox27: TComboBox;
    ComboBox28: TComboBox;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    UpDown4: TUpDown;
    UpDown5: TUpDown;
    UpDown7: TUpDown;
    UpDown8: TUpDown;
    UpDown9: TUpDown;
    UpDown10: TUpDown;
    UpDown11: TUpDown;
    UpDown12: TUpDown;
    UpDown13: TUpDown;
    UpDown14: TUpDown;
    UpDown15: TUpDown;
    UpDown16: TUpDown;
    UpDown17: TUpDown;
    UpDown18: TUpDown;
    UpDown19: TUpDown;
    UpDown20: TUpDown;
    UpDown21: TUpDown;
    UpDown22: TUpDown;
    UpDown23: TUpDown;
    UpDown24: TUpDown;
    UpDown25: TUpDown;
    UpDown26: TUpDown;
    UpDown27: TUpDown;
    UpDown28: TUpDown;
    UpDown29: TUpDown;
    ComboBox291: TComboBox;
    ComboBox25: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel84: TPanel;
    Label3: TLabel;
    procedure ListClimCtrChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TBSendToCtrClick(Sender: TObject);
    procedure TBShowCtrClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox291Change(Sender: TObject);
//    procedure ListClimCtrChange(Sender: TObject);
//    procedure FLAutoHandClick(Sender: TObject);
//    procedure TBSetPozit1Change(Sender: TObject);
//    procedure TBSendToCtrClick(Sender: TObject);
//    procedure ListClimCtrChanging(Sender: TObject;
//      var AllowChange: Boolean);
//    procedure TBShowCtrClick(Sender: TObject);
  private
    { Private declarations }
    NowSetControl:Boolean;
    YesChanging:Boolean;
//    procedure SetControl;
//    procedure WriteCell(vCol,vRow:integer; txt:string);
//    function GetPozFromTag(vCtr:TFController; vTag:integer):integer;
    procedure ReCalc;
    procedure LoadStrategy;
  public
    { Public declarations }
    procedure  SetTabs;
    procedure  Exec(vCtr:TFController);
  end;

const
      MAX_CLIENTS=100;
      SumStrategyX = 8;
      SumStrategyY = 7;
      SumNameCombo = 2;

type TStrategyClient=record
      Ctr:TFController;
      Zone:Byte;
      end;
var
      SumStrategyClients:word=0;
      StrategyClient:array[1..MAX_CLIENTS] of TStrategyClient;
      FStrategy501U: TFStrategy501U;
      ActStrategyZone:word;
      NameStrategyX :array [1..SumStrategyX] of string[80]=(
//      'T>Tset, RH>RHset',
//      'T>Tset, RH<RHset',
//      'T<Tset, RH>RHset',
//      'T<Tset, RH<RHset');

      'T>Tset, RH>RHset', 'Направление',
      'T>Tset, RH<RHset', 'Направление',
      'T<Tset, RH>RHset', 'Направление',
      'T<Tset, RH<RHset', 'Направление');

      NameStrategyY :array [1..SumStrategyY] of string[80]=(
      'Клапан AHU',
      'RailPipe',
      'HeadPipe',
      'AHUPipe',
      'Termo Screen',
      'AHU speed',
      'Mist');

      NameCombo :array [1..SumNameCombo] of string[80]=(
      'Вниз',
      'Вверх');

      DefStrategy: array [1..56] of integer = (
        //st  way
          10,	1, 	8, 	1,	8, 	0, 	10,	0,    // AHU valve
          9, 	0, 	10,	0,	10,	1, 	9, 	1,		// RailPipe
          10, 0, 	9,	0,	9,	1, 	10,	1,		// HeadPipe
          8,	0, 	10,	0,	9,	1, 	8,	1,		// AHUPipe
          9,	1, 	7,	1,	7,	0, 	9,	0,		// Screen
          6,	1, 	6,	1,	6,	0, 	6,	0,		// AHUSpeed
          7,	1, 	9,	1,	10,	0, 	7,	0 );	// Mist

      WarningMesReset: string = 'Восстановить стратегии по умолчания ?';
      WarningMesSend: string = 'Передать в контроллер блок "Старатегии" ?';

function SetStrategyClients:Integer;

implementation

{$R *.dfm}

uses  PicCtr, GGraf, Climat501U;

type GDStrategy=array[0..55] of Byte;
type StrategyArray=array[1..8] of GDStrategy;

procedure  TFStrategy501U.Exec(vCtr:TFController);
var i:integer;
begin
{
   if ListClimCtr.Tabs.Count = 0 then Exit;
   with ListClimCtr do
    for i:=0 to Tabs.Count-1 do
    if (Tabs.Objects[i]=vCtr) then //and (vCtr.ActivZone = then
       begin
         if (vCtr is TFClimat501U) then
         begin
           if TabIndex >= Tabs.Count then TabIndex:=i;
           ActStrategyZone:=StrategyClient[TabIndex+1].Zone;//ClimatClient[i+1].Zone;
           break;
         end;
       end;
   Show;
   ReCalc;
}
  if vCtr.SumZone = 0 then Exit;
  for i:=1 to vCtr.SumZone do
  begin
    StrategyClient[i].Ctr:=vCtr;
    StrategyClient[i].Zone:=i;
  end;
  SumStrategyClients:=vCtr.SumZone;
  FStrategy501U.SetTabs;
  Show;
  ReCalc;

end;

function SetStrategyClients:Integer;
var k,i,iCtr: integer;
begin
{  if SumStrategyClients >= MAX_CLIENTS then Exit;
  k:=0;
  with FMain.ListCtr do
  for iCtr:=0 to Tabs.Count-1 do
    with Tabs.Objects[iCtr] as TFController do
     begin
       if (CtrTip>64) and (CtrTip < 75) then
         for i:=1 to SumZone do
           begin
             if not (Tabs.Objects[iCtr] is TFClimat501U) then continue;
             k:=k+1;
             StrategyClient[k].Ctr:=Tabs.Objects[iCtr] as TFController;
             StrategyClient[k].Zone:=i;
           end;
       if k >= MAX_CLIENTS then break;
     end;
 SumStrategyClients:=k;
 Result:=k;
 FStrategy501U.SetTabs; }
end;

procedure  TFStrategy501U.SetTabs;
var j:integer;
begin
  if SumStrategyClients > 0 then
  ComboBox291.Items.Clear;
  for j:=1 to SumStrategyClients do
    ComboBox291.Items.Add('Зона '+ IntToStr(StrategyClient[j].Zone));
  ComboBox291.Text := ComboBox291.Items[0];
  ComboBox291.ItemIndex:=0;

{  with ListClimCtr do
    begin
      Tabs.Clear;
      for i:=1 to SumStrategyClients do
        with StrategyClient[i] do
          if Ctr.HandMode<> nil then
            Tabs.AddObject(Ctr.CtrName+ ' '+ Ctr.GetTextZona(Zone,0),Ctr);
          if Tabs.Count > 0
            then TabIndex:=0;
    end;
    }
end;

procedure  TFStrategy501U.ReCalc;
var
  pStrategy:^StrategyArray;
  RH:integer;
  i,j:integer;
begin
        //StrategyClient[ComboBox291.ItemIndex+1].Ctr.Block[4].SetEndRecord;
        pStrategy:=(StrategyClient[ComboBox291.ItemIndex+1].Ctr).Block[4].Adr;

        Edit1.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][0]);
        ComboBox1.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][1];
        Edit2.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][2]);
        ComboBox2.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][3];
        Edit3.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][4]);
        ComboBox3.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][5];
        Edit4.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][6]);
        ComboBox4.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][7];

        Edit5.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][8]);
        ComboBox5.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][9];
        Edit6.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][10]);
        ComboBox6.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][11];
        Edit7.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][12]);
        ComboBox7.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][13];
        Edit8.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][14]);
        ComboBox8.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][15];

        Edit9.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][16]);
        ComboBox9.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][17];
        Edit10.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][18]);
        ComboBox10.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][19];
        Edit11.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][20]);
        ComboBox11.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][21];
        Edit12.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][22]);
        ComboBox12.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][23];

        Edit13.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][24]);
        ComboBox13.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][25];
        Edit14.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][26]);
        ComboBox14.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][27];
        Edit15.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][28]);
        ComboBox15.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][29];
        Edit16.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][30]);
        ComboBox16.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][31];

        Edit17.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][32]);
        ComboBox17.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][33];
        Edit18.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][34]);
        ComboBox18.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][35];
        Edit19.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][36]);
        ComboBox19.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][37];
        Edit20.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][38]);
        ComboBox20.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][39];

        Edit21.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][40]);
        ComboBox21.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][41];
        Edit22.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][42]);
        ComboBox22.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][43];
        Edit23.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][44]);
        ComboBox23.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][45];
        Edit24.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][46]);
        ComboBox24.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][47];

        Edit25.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][48]);
        ComboBox25.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][49];
        Edit26.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][50]);
        ComboBox26.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][51];
        Edit27.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][52]);
        ComboBox27.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][53];
        Edit28.Text := IntToStr(pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][54]);
        ComboBox28.ItemIndex := pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][55];


        //pStrategy:=(Tabs.Objects[ListClimCtr.TabIndex] as TFController).Block[4].Adr;
        //pStrategy:=(StrategyClient[ListClimCtr.TabIndex].Ctr).Block[4].Adr; //(Tabs.Objects[ListClimCtr.TabIndex] as TFController).Block[4].Adr;
        //pStrategy:=(Tabs.Objects[ListClimCtr.TabIndex] as TFController).Block[4].Adr;

{        StratGrid.Cols:=SumStrategyX+1;
        StratGrid.Rows:=SumStrategyY+1;
        for i:=1 to SumStrategyX do
          StratGrid.Cell[i+1,1] := NameStrategyX[i];
        for i:=1 to SumStrategyY do
          StratGrid.Cell[1,i+1] := NameStrategyY[i];
        for i:=0 to SumStrategyY-1 do
        begin
          for j:=0 to SumStrategyX-1 do
            StratGrid.Cell[j+2,i+2] := pStrategy^[StrategyClient[ListClimCtr.TabIndex+1].Zone][i*4+j]
        end;

        Edit1.Text := pStrategy^[StrategyClient[ListClimCtr.TabIndex+1].Zone][i*4+j];
}

end;

procedure TFStrategy501U.LoadStrategy;
begin

end;

procedure TFStrategy501U.ListClimCtrChange(Sender: TObject);
begin
  ReCalc;
end;

procedure TFStrategy501U.FormCreate(Sender: TObject);
var
  i,j:integer;
  ss:string;
begin
for i:=1 to FStrategy501U.ComponentCount-1 do
  begin
    if (FStrategy501U.Components[i] is TUpDown) then
    begin
      (FStrategy501U.Components[i] as TUpDown).Align := alRight;
      (FStrategy501U.Components[i] as TUpDown).Max := 10;
    end;
    if (FStrategy501U.Components[i] is TEdit) then
    begin
      (FStrategy501U.Components[i] as TEdit).Align := alClient;
      (FStrategy501U.Components[i] as TEdit).Text := '1';
      (FStrategy501U.Components[i] as TEdit).ReadOnly := true;
    end;
    if (FStrategy501U.Components[i] is TComboBox) then
    begin
      (FStrategy501U.Components[i] as TComboBox).Align := alClient;
      (FStrategy501U.Components[i] as TComboBox).Height := 25;
      (FStrategy501U.Components[i] as TComboBox).Items.Add(NameCombo[1]);
      (FStrategy501U.Components[i] as TComboBox).Items.Add(NameCombo[2]);
      (FStrategy501U.Components[i] as TComboBox).Text := NameCombo[1];
    end;
  end;
  StaticText1.Caption := NameStrategyX[1];
  StaticText2.Caption := NameStrategyX[2];
  StaticText3.Caption := NameStrategyX[3];
  StaticText4.Caption := NameStrategyX[4];
  StaticText5.Caption := NameStrategyX[5];
  StaticText6.Caption := NameStrategyX[6];
  StaticText7.Caption := NameStrategyX[7];
  StaticText8.Caption := NameStrategyX[8];

  StaticText9.Caption :=  NameStrategyY[1];
  StaticText10.Caption := NameStrategyY[2];
  StaticText11.Caption := NameStrategyY[3];
  StaticText12.Caption := NameStrategyY[4];
  StaticText13.Caption := NameStrategyY[5];
  StaticText14.Caption := NameStrategyY[6];
  StaticText15.Caption := NameStrategyY[7];
LoadStrategy();

end;

procedure TFStrategy501U.TBSendToCtrClick(Sender: TObject);
var
  pStrategy:^StrategyArray;
begin
  with StrategyClient[ComboBox291.ItemIndex+1] do
  if MessageDlg(WarningMesSend ,mtWarning,[mbYes, mbNo],0)= mrYes then
  begin
  pStrategy:=(StrategyClient[ComboBox291.ItemIndex+1].Ctr).Block[4].Adr;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][0] := StrToInt(Edit1.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][1] := ComboBox1.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][2] := StrToInt(Edit2.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][3] := ComboBox2.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][4] := StrToInt(Edit3.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][5] := ComboBox3.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][6] := StrToInt(Edit4.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][7] := ComboBox4.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][8] := StrToInt(Edit5.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][9] := ComboBox5.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][10] := StrToInt(Edit6.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][11] := ComboBox6.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][12] := StrToInt(Edit7.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][13] := ComboBox7.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][14] := StrToInt(Edit8.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][15] := ComboBox8.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][16] := StrToInt(Edit9.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][17] := ComboBox9.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][18] := StrToInt(Edit10.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][19] := ComboBox10.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][20] := StrToInt(Edit11.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][21] := ComboBox11.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][22] := StrToInt(Edit12.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][23] := ComboBox12.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][24] := StrToInt(Edit13.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][25] := ComboBox13.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][26] := StrToInt(Edit14.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][27] := ComboBox14.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][28] := StrToInt(Edit15.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][29] := ComboBox15.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][30] := StrToInt(Edit16.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][31] := ComboBox16.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][32] := StrToInt(Edit17.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][33] := ComboBox17.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][34] := StrToInt(Edit18.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][35] := ComboBox18.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][36] := StrToInt(Edit19.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][37] := ComboBox19.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][38] := StrToInt(Edit20.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][39] := ComboBox20.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][40] := StrToInt(Edit21.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][41] := ComboBox21.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][42] := StrToInt(Edit22.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][43] := ComboBox22.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][44] := StrToInt(Edit23.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][45] := ComboBox23.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][46] := StrToInt(Edit24.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][47] := ComboBox24.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][48] := StrToInt(Edit25.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][49] := ComboBox25.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][50] := StrToInt(Edit26.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][51] := ComboBox26.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][52] := StrToInt(Edit27.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][53] := ComboBox27.ItemIndex;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][54] := StrToInt(Edit28.Text);
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][55] := ComboBox28.ItemIndex;
  StrategyClient[ComboBox291.ItemIndex+1].Ctr.Block[4].SendToPort(nil);
  end;
end;

procedure TFStrategy501U.TBShowCtrClick(Sender: TObject);
begin
  StrategyClient[ComboBox291.ItemIndex+1].Ctr.Show;
end;

procedure TFStrategy501U.BitBtn1Click(Sender: TObject);
var
  pStrategy:^StrategyArray;
begin
  if MessageDlg(WarningMesReset, mtWarning,[mbYes, mbNo],0)= mrYes then
  begin
  pStrategy:=(StrategyClient[ComboBox291.ItemIndex+1].Ctr).Block[4].Adr;
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][0] := DefStrategy[1];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][1] := DefStrategy[2];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][2] := DefStrategy[3];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][3] := DefStrategy[4];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][4] := DefStrategy[5];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][5] := DefStrategy[6];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][6] := DefStrategy[7];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][7] := DefStrategy[8];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][8] := DefStrategy[9];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][9] := DefStrategy[10];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][10] := DefStrategy[11];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][11] := DefStrategy[12];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][12] := DefStrategy[13];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][13] := DefStrategy[14];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][14] := DefStrategy[15];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][15] := DefStrategy[16];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][16] := DefStrategy[17];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][17] := DefStrategy[18];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][18] := DefStrategy[19];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][19] := DefStrategy[20];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][20] := DefStrategy[21];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][21] := DefStrategy[22];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][22] := DefStrategy[23];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][23] := DefStrategy[24];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][24] := DefStrategy[25];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][25] := DefStrategy[26];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][26] := DefStrategy[27];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][27] := DefStrategy[28];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][28] := DefStrategy[29];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][29] := DefStrategy[30];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][30] := DefStrategy[31];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][31] := DefStrategy[32];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][32] := DefStrategy[33];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][33] := DefStrategy[34];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][34] := DefStrategy[35];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][35] := DefStrategy[36];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][36] := DefStrategy[37];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][37] := DefStrategy[38];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][38] := DefStrategy[39];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][39] := DefStrategy[40];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][40] := DefStrategy[41];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][41] := DefStrategy[42];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][42] := DefStrategy[43];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][43] := DefStrategy[44];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][44] := DefStrategy[45];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][45] := DefStrategy[46];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][46] := DefStrategy[47];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][47] := DefStrategy[48];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][48] := DefStrategy[49];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][49] := DefStrategy[50];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][50] := DefStrategy[51];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][51] := DefStrategy[52];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][52] := DefStrategy[53];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][53] := DefStrategy[54];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][54] := DefStrategy[55];
  pStrategy^[StrategyClient[ComboBox291.ItemIndex+1].Zone][55] := DefStrategy[56];
  ReCalc();
  end;
end;

procedure TFStrategy501U.ComboBox291Change(Sender: TObject);
begin
 ReCalc;
end;

end.
