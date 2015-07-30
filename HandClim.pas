unit HandClim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids_ts, TSGrid, ComCtrls, Gauges, StdCtrls, FPicLabel, FPicPanel,
  ImgList, FConstType, FController, SetGrid, ToolWin, MessageU;

type
  TFHandClim = class(TForm)
    ListClimCtr: TTabControl;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ImageTumbler: TImageList;
    ImageButton: TImageList;
    LPKontur1: TFPicPanel;
    LPPump1: TFPicPanel;
    FLAutoHand: TFPicLabel;
    FLOnOff: TFPicLabel;
    FPicPanel7: TFPicPanel;
    FLAutoValve: TFPicLabel;
    GShowPoz1: TGauge;
    TBSetPozit1: TTrackBar;
    FPicPanel1: TFPicPanel;
    FPicPanel2: TFPicPanel;
    FPicLabel1: TFPicLabel;
    FPicLabel2: TFPicLabel;
    FPicPanel3: TFPicPanel;
    FPicLabel3: TFPicLabel;
    Gauge1: TGauge;
    TrackBar1: TTrackBar;
    FPicPanel4: TFPicPanel;
    FPicPanel5: TFPicPanel;
    FPicLabel4: TFPicLabel;
    FPicLabel5: TFPicLabel;
    FPicPanel6: TFPicPanel;
    FPicLabel6: TFPicLabel;
    Gauge2: TGauge;
    TrackBar2: TTrackBar;
    FPicPanel8: TFPicPanel;
    FPicPanel9: TFPicPanel;
    FPicLabel7: TFPicLabel;
    FPicLabel8: TFPicLabel;
    FPicPanel10: TFPicPanel;
    FPicLabel9: TFPicLabel;
    Gauge3: TGauge;
    TrackBar3: TTrackBar;
    FPicPanel11: TFPicPanel;
    FPicPanel12: TFPicPanel;
    FPicLabel10: TFPicLabel;
    FPicLabel11: TFPicLabel;
    FPicPanel13: TFPicPanel;
    FPicLabel12: TFPicLabel;
    Gauge4: TGauge;
    TrackBar4: TTrackBar;
    LPFram1: TFPicPanel;
    FLAutoHandFr1: TFPicLabel;
    GFram1: TGauge;
    TBSetFram1: TTrackBar;
    FPicPanel14: TFPicPanel;
    FPicLabel13: TFPicLabel;
    Gauge5: TGauge;
    TrackBar5: TTrackBar;
    FPicPanel15: TFPicPanel;
    FPicLabel14: TFPicLabel;
    Gauge6: TGauge;
    TrackBar6: TTrackBar;
    HandGrid: TtsGrid;
    TBCtr: TToolBar;
    TBSendToCtr: TToolButton;
    TBShowCtr: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ImageFram: TImageList;
    TabSheet3: TTabSheet;
    FPicPanel20: TFPicPanel;
    FPicPanel21: TFPicPanel;
    FPicLabel19: TFPicLabel;
    FPicLabel21: TFPicLabel;
    FPicPanel22: TFPicPanel;
    FPicLabel22: TFPicLabel;
    FPicLabel23: TFPicLabel;
    FPicPanel24: TFPicPanel;
    FPicPanel25: TFPicPanel;
    FPicLabel26: TFPicLabel;
    FPicLabel27: TFPicLabel;
    FPicPanel26: TFPicPanel;
    FPicLabel28: TFPicLabel;
    FPicLabel29: TFPicLabel;
    FPicPanel27: TFPicPanel;
    FPicPanel28: TFPicPanel;
    FPicLabel30: TFPicLabel;
    FPicLabel31: TFPicLabel;
    FPicPanel29: TFPicPanel;
    FPicLabel32: TFPicLabel;
    FPicLabel33: TFPicLabel;
    FPicPanel30: TFPicPanel;
    FPicLabel34: TFPicLabel;
    Gauge7: TGauge;
    TrackBar7: TTrackBar;
    FPicPanel31: TFPicPanel;
    FPicLabel35: TFPicLabel;
    Gauge9: TGauge;
    TrackBar9: TTrackBar;
    FPicPanel19: TFPicPanel;
    FPicLabel20: TFPicLabel;
    Gauge8: TGauge;
    TrackBar8: TTrackBar;
    FPicPanel16: TFPicPanel;
    FPicLabel15: TFPicLabel;
    Gauge10: TGauge;
    TrackBar10: TTrackBar;
    FPicPanel17: TFPicPanel;
    FPicLabel16: TFPicLabel;
    Gauge11: TGauge;
    TrackBar11: TTrackBar;
    FPicPanel18: TFPicPanel;
    FPicLabel17: TFPicLabel;
    Gauge12: TGauge;
    TrackBar12: TTrackBar;
    FPicPanel23: TFPicPanel;
    FPicLabel18: TFPicLabel;
    Gauge13: TGauge;
    TrackBar13: TTrackBar;
    procedure ListClimCtrChange(Sender: TObject);
    procedure FLAutoHandClick(Sender: TObject);
    procedure TBSetPozit1Change(Sender: TObject);
    procedure TBSendToCtrClick(Sender: TObject);
    procedure ListClimCtrChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure TBShowCtrClick(Sender: TObject);
  private
    { Private declarations }
    NowSetControl:Boolean;
    YesChanging:Boolean;
    procedure SetControl;
    procedure WriteCell(vCol,vRow:integer; txt:string);
    function GetPozFromTag(vCtr:TFController; vTag:integer):integer;
    procedure  ReCalc;
  public
    { Public declarations }
    procedure  SetTabs;
    procedure  Exec(vCtr:TFController);
//    procedure  Exec(vCtr:TFClimat65);
  end;

const MAX_CLIENTS=100;

type TClimatClient=record
      Ctr:TFController;
      Zone:Byte;
      end;
var
      SumClimatClients:word=0;
      ClimatClient:array[1..MAX_CLIENTS] of TClimatClient;
      FHandClim: TFHandClim;
      ActHandZone:word;

function SetClimatClients:Integer;

implementation

{$R *.dfm}
uses  PicCtr, GGraf, Climat403, Climat510, Climat501S;

function SetClimatClients:Integer;
var k,i,iCtr: integer;
begin
  if SumClimatClients >= MAX_CLIENTS then Exit;
  k:=0;
  with FMain.ListCtr do
  for iCtr:=0 to Tabs.Count-1 do
    with Tabs.Objects[iCtr] as TFController do
     begin
     if (CtrTip>60) and (CtrTip < 75) then
        for i:=1 to SumZone do
          begin
          k:=k+1;
          ClimatClient[k].Ctr:=Tabs.Objects[iCtr] as TFController;
          ClimatClient[k].Zone:=i;
          end;
     if k >= MAX_CLIENTS then break;
     end;
 SumClimatClients:=k;
 Result:=k;
 FHandClim.SetTabs;
end;

procedure  TFHandClim.SetTabs;
var i:integer;
begin
  with ListClimCtr do
    begin
    Tabs.Clear;
    for i:=1 to SumClimatClients do
     with ClimatClient[i] do
      if Ctr.HandMode<> nil then
       Tabs.AddObject(Ctr.CtrName+ ' '+ Ctr.GetTextZona(Zone,0),Ctr);
    if Tabs.Count > 0 then TabIndex:=0;
    end;
end;

procedure  TFHandClim.Exec(vCtr:TFController);
var i:integer;
begin
   Exit; // ручное управление отключено
   if ListClimCtr.Tabs.Count = 0 then Exit;
   with ListClimCtr do
    for i:=0 to Tabs.Count-1 do
    if (Tabs.Objects[i]=vCtr) then //and (vCtr.ActivZone = then
       begin
       if (vCtr is TFClimat510) then
          TabIndex:=i + (vCtr as TFClimat510).ActivZone-1;
       if (vCtr is TFClimat501S) then
          TabIndex:=i + (vCtr as TFClimat501S).ActivZone-1;
       if (vCtr is TFClimat403) then
          TabIndex:=i + (vCtr as TFClimat403).ActivZone-1;

       if TabIndex >= Tabs.Count then TabIndex:=i;
       ActHandZone:=ClimatClient[TabIndex+1].Zone;//ClimatClient[i+1].Zone;
       break;
       end;
   Show;
//   HandMode.LoadFileByDate(Now,dEnd);
   ReCalc;
end;

procedure  TFHandClim.ReCalc;
//var i:integer;
begin
  with ClimatClient[ListClimCtr.TabIndex+1].Ctr do
    begin
    HandMode.SetEndRecord;
//    HandMode.LoadFileByDate(Now,dEnd);
    BlockToGrid(HandMode, HandGrid);
    HandGrid.GridMode:=gmBrowse;
    end;
  SetControl;
  YesChanging:=False;
end;

procedure TFHandClim.ListClimCtrChange(Sender: TObject);
begin
  ActHandZone:=ClimatClient[ListClimCtr.TabIndex+1].Zone;
  ReCalc;
end;

procedure TFHandClim.WriteCell(vCol,vRow:integer; txt:string);
begin
   with HandGrid do
      begin
      Cell[vCol,vRow]:= txt;
      CellColor[vCol,vRow]:=RGB(244,200,180);   //Ѕыло редактирование
      CurrentDataRow:=vRow;
      end;
end;

const MAX_TAG_403=1000000;

function TFHandClim.GetPozFromTag(vCtr:TFController; vTag:integer):integer;
begin
   Result:=vTag mod 100;
   if vTag mod MAX_TAG_403 <=26 then Exit;
   if  vCtr is TFClimat403 then
      Result:=(vTag mod MAX_TAG_403) div 100;
   if  vCtr is TFClimat510 then
      Result:=(vTag mod MAX_TAG_403) div 100;
   if  vCtr is TFClimat501S then
      Result:=(vTag mod MAX_TAG_403) div 10000;

end;

procedure TFHandClim.SetControl;
var i,Y,res:integer;
    St:string;
begin
  NowSetControl:=True;
  for i:=0 to ComponentCount-1 do
      begin
      Y:=Components[i].Tag mod MAX_TAG_403;
      if Y = 0  then continue;
      with ClimatClient[ListClimCtr.TabIndex+1] do
          begin
          Y:= GetPozFromTag(Ctr,Y);
          if Y=0 then begin res:=0; ConfigExist:= cfExistFalse; end
          else res:=round(Ctr.HandMode.LoadXY(cOutBlock,Zone*2,Y,St));
          end;
      if Components[i] is TFPicLabel then
       with (Components[i] as TFPicLabel) do
          begin
          ImageIndex:=HotImageIndex+res;
          Caption:=St;
          end;
      if Components[i] is TGauge then
       with Components[i] as TGauge do  Progress:=res;

      if Components[i] is TTrackBar then
       with Components[i] as TTrackBar do Position:=res;

      if Components[i] is TFPicPanel then
       with Components[i] as TFPicPanel do Visible:=ConfigExist <> cfExistFalse;
      end;
  NowSetControl:=False;
end;

procedure TFHandClim.FLAutoHandClick(Sender: TObject);
var ind,Y:integer;St:string;
begin
  if NowSetControl then Exit;
  with Sender as TFPicLabel do
    begin
    Y:=Tag mod MAX_TAG_403;
    ind:=(ImageIndex+1) mod 2;
    ImageIndex:=HotImageIndex+ind;
    St:=IntToStr(ind);
    with ClimatClient[ListClimCtr.TabIndex+1] do
       begin
       Y:= GetPozFromTag(Ctr,Y);
       if Y > 0 then
          begin
          Ctr.HandMode.LoadXY(cInBlock,Zone*2,Y,St);
          WriteCell(Zone*2+1,Y+1,St);
          end;
       end;
    Caption:=St;
    end;
 YesChanging:=True;
end;

procedure TFHandClim.TBSetPozit1Change(Sender: TObject);
var Tg, Y,i,NewVal:integer;
    St:string;
begin
  if NowSetControl then Exit;
  with Sender as TTrackBar do
    begin
    Tg:=Tag mod MAX_TAG_403;
    NewVal := Position;
    St:=IntToStr(NewVal);
    with ClimatClient[ListClimCtr.TabIndex+1] do
       begin
       Y:= GetPozFromTag(Ctr,Tg);
       if Y = 0 then Exit;
       Ctr.HandMode.LoadXY(cInBlock,Zone*2,Y,St);
       WriteCell(Zone*2+1,Y+1,St);
       end;
    end;

//установка отображени€ нового положени€

     for i:=0 to ComponentCount-1 do
      begin
      if (Components[i].Tag mod MAX_TAG_403 = Tg)
        and (Components[i] is TGauge) then
      with Components[i] as TGauge do Progress := NewVal;
      end;
 YesChanging:=True;
end;

procedure TFHandClim.ListClimCtrChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
   if YesChanging then
     AllowChange:=MessageDlg(ProgMess[105]+ProgMess[iContin],mtWarning,[mbYes, mbNo],0) = mrYes;

end;

procedure TFHandClim.TBSendToCtrClick(Sender: TObject);
begin
   with ClimatClient[ListClimCtr.TabIndex+1] do
   if MessageDlg(Format(ProgMess[iAtten]+ProgMess[106]+ProgMess[iContin],[Ctr.CtrName])
       ,mtWarning,[mbYes, mbNo],0)= mrYes
    then Ctr.HandMode.SendToPort(ReCalc);

end;

procedure TFHandClim.TBShowCtrClick(Sender: TObject);
begin
  ClimatClient[ListClimCtr.TabIndex+1].Ctr.Show;
end;

end.
