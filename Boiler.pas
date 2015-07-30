unit Boiler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, inifiles, DateUtils, ComCtrls,
  FConstType, FBox, FPanel, GGraf, FController, PicCtr, StdCtrls,  Grids, DefineBoil,
  Menus, Grids_ts, TSGrid, GIFDef, GIFComponent;

const  cIdentBoil=173;
{cIdentBoil:TNameIdent=(
     'Модификация',
     'Количество котлов',
     'Количество групп',
     'Количество регуляторов',
     'Тип контроллера');
}
//------------------------------------
type THotTP=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure PostPortRead;override;
     procedure TestCtrTime;
//     procedure SetCO2Tasks;
//     procedure SetTree(var Tree:TTreeView);override;
end;
type THotGroups=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure SetGroupTasks;
end;

type THotBoilers=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     procedure PostPortRead;override;
//     procedure TestCtrTime;
     procedure SetCO2Tasks;
//     procedure SetTree(var Tree:TTreeView);override;
end;

type THotClients=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
      procedure CalcMax;
end;

{type THotMeteo=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     function SendFromPort(EndMethod: TEndPortMethod):Boolean;override;
end; }

type TControl=Class(TBlock)
public
     procedure Init;override;
end;

type TMechanic=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TCalSensBoil=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TTimer=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TBoilConfig=Class(TBlock)
public
     procedure Init;override;
end;

type TCommonHot=Class(TBlock)
public
     procedure Init;override;
     procedure CalcComPower;
//     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
//       var Txt:String):Double;override;
end;

type
  TFBoiler = class(TFPicCtr)
    FPanel1: TFPanel;
    FPMeteoBoil: TFPanel;
    FPMeteo: TFPanel;
    Splitter1: TSplitter;
    FPBoils: TFPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    FPGroup: TFPanel;
    FPanel6: TFPanel;
    FPanel7: TFPanel;
    FPanel8: TFPanel;
    FPanel9: TFPanel;
    FPanel10: TFPanel;
    StringGridGroup: TtsGrid;
    StringGridClient: TtsGrid;
    StringGridCommon: TtsGrid;
    StringGridBoiler: TtsGrid;
    GIFSShow1: TGIFSShow;
    GIFSShow2: TGIFSShow;
    GIFSShow3: TGIFSShow;
    GIFSShow4: TGIFSShow;
    procedure pmAutoFormatClick(Sender: TObject);
  private
    { Private declarations }
    HotClients:THotClients;
    HotBoilers:THotBoilers;
    HotGroups:THotGroups;
    CommonHot:TCommonHot;
//    NetMeteo:TBlock;
  public
    { Public declarations }
//    HotMeteo:TBlock;
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
    function CtrToFile:string;override;
    function CtrFromFile(CtrNameFile:string):Boolean;override;
  end;

//procedure SetGridFromBlock(vStringGrid:TtsGrid;vBlock:TBlock);
procedure GridFromFile(const NameFile:string;Grid:TtsGrid);

implementation

{$R *.dfm}
uses DefineClim65, Port, ClimCalc, HandClim, MessageU, Audit,
      Climat403, DefineClim403, BoilConfig, SetGrid;  //, AddBoiler

var BoilerCountX, BoilerCountY, GroupCountX, GroupCountY:integer;
const  idSumBoils=1; idSumGroups=2;

procedure TFBoiler.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
     NameIdent:=cIdentBoil;
     Design:='Boilers';
     BoilerCountX:=vIdentCtr[idSumBoils];  // котлы
     BoilerCountY:=SumValYHotBoilers;
     GroupCountX:=vIdentCtr[idSumGroups];  // eSumGroups;
     GroupCountY:=SumValHotGroups;

// Создание блоков данных в порядке как в контроллере
     THotTP.Create(Self);
     ConfigBlock:=TBoilConfig.Create(Self);         //6
     TCalSensBoil.Create(Self);
     TTimer.Create(Self);
     TMechanic.Create(Self);   //
     TControl.Create(Self);
//-------------------------------------------------
//     HotMeteo:=THotMeteo.Create(Self);
//     NetMeteo:=TNetMeteo.Create(Self);
     HotBoilers:=THotBoilers.Create(Self);
     HotClients:=THotClients.Create(Self);
     HotGroups:=THotGroups.Create(Self);
     CommonHot:=TCommonHot.Create(Self);

     AuditBlock:=TAudit.Create(Self);
end;


{procedure SetGridFromBlock(vStringGrid:TtsGrid;vBlock:TBlock);
var X,Y,SizeTx,tw:WORD;
    st:String;
begin
vStringGrid.BeginUpdate;
try
  with vStringGrid do
  begin
    with vBlock do
    begin
      Cols := CountX + 1;
      Rows := CountY + 1;
    end;
    for X := 0 to Cols - 1 do
    begin
      SizeTx := 0;
      for Y := 1 to Rows do
      begin
        vBlock.LoadXY(cOutBlock,X,Y-1,st);
        if ConfigExist=cfExistFalse then       //cfExistNone,cfExistTrue,cfExistFalse
            begin
            st:='';
//            GridCellColor:=clGrayText;
//            Grid.CellParentFont[X+1,Y] := false;
//            Grid.CellFont[X+1,Y].Color := clGrayText; //imColor;
            end;
        Cell[X+1,Y]:=st;
        tw := vStringGrid.Canvas.TextWidth(st);
        if tw > SizeTx then
          SizeTx := tw;
      end;
    end;
  end;
finally
    vStringGrid.EndUpdate;
end;
end;
}
procedure TFBoiler.SetPicCtr;
//var X,Y,XX:integer;
//var  st:string;
begin
//  inherited;
//  HotGroups.SetGroupTasks;   //!!!!       (ParentCtr as TFBoiler).
  PSost.Caption:='Автономно';//Авария управления';
  PSost.Color:=clBlue;
//  MessageBeep(MB_ICONASTERISK);
//  PrintMemo(PSost.Caption,mlAlarm);
  HotClients.CountX:=SumClimatClients+1;
  Caption:=DataPath+CtrName+FormatDateTime(LongDateFormat+' '+LongTimeFormat,Block[0].BlDate);

  BlockToGrid(HotClients,StringGridClient);
  BlockToGrid(HotBoilers,StringGridBoiler);
  BlockToGrid(HotGroups,StringGridGroup);
  BlockToGrid(CommonHot,StringGridCommon);
//  SetGridFromBlock(StringGridClient,HotClients);
//  SetGridFromBlock(StringGridBoiler,HotBoilers);
//  SetGridFromBlock(StringGridGroup,HotGroups);
//  SetGridFromBlock(StringGridCommon,CommonHot);
//  SetGridBoiler(StringGridMeteo,NetMeteo);
{  with StringGridMeteo,NetMeteo do
    begin
    Cols := 3;
    Rows := CountY + 1;
    for X := 1 to 3 do
      begin
      XX:=X-1;
      if XX=1 then XX:=3;
//      if XX=2 then XX:=3;
      for Y := 1 to Rows do
        begin
        LoadXY(cOutBlock,XX,Y-1,st);
        Cell[X,Y]:=st;
        end;
      end;
    end; }
end;

procedure TCommonHot.Init;
begin
     CountX := 1; //sumGroups;
     CountY := SumValYCommonHot;
     SizeCol := cHotFullSize;
     FullSize := SizeCol;
     SendByte := 1;
     Pref := 'Общие';
     NameBlock := 'Общие';
     ConstNames:=Addr(CommonHotName[1]);
     Sort := srHowHot;
end;

procedure TCommonHot.CalcComPower;
var   nClient:word;
      vComPower: double;
      st:string;
begin
//  Ready:=False;
  if SumClimatClients < 1 then Exit;
  vComPower:=0;
  for nClient:=1 to SumClimatClients do
      if ClimatClient[nClient].Ctr is TFClimat403 then
       with ClimatClient[nClient].Ctr as TFClimat403 do
        begin
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
  st:=FloatToStr(vComPower);
  LoadXY(cInBlock,1,posComPower,st);
//  Ready:=True;
//  ParentCtr.Block[0].Ready := True;
end;

procedure GridFromFile(const NameFile:string;Grid:TtsGrid);
begin
  if FileExists(NameFile) then
    Grid.LoadFromFile(NameFile, cmaNone);
end;

function TFBoiler.CtrFromFile(CtrNameFile:string):Boolean;
var IniFile:TIniFile;
begin
    result:=inherited CtrFromFile(CtrNameFile);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'ClientsTabl.dsg',StringGridClient);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'CommonTabl.dsg',StringGridCommon);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'GroupTabl.dsg',StringGridGroup);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'BoilersTabl.dsg',StringGridBoiler);

    IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Monitor.ini');
    FPMeteoBoil.Width:=IniFile.ReadInteger(CtrName,'MeteoWidth',513);
    FPBoils.Height:=IniFile.ReadInteger(CtrName,'BoilsHeight',394);
    FPGroup.Height:=IniFile.ReadInteger(CtrName,'GroupHeight',300);
    IniFile.Free;
    SetPicCtr;
end;

function TFBoiler.CtrToFile:string;
var IniFile:TIniFile;
begin
    result:=inherited CtrToFile;
    StringGridClient.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'ClientsTabl.dsg', False);
    StringGridCommon.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'CommonTabl.dsg', False);
    StringGridGroup.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'GroupTabl.dsg', False);
    StringGridBoiler.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'BoilersTabl.dsg', False);

    IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Monitor.ini');
    IniFile.WriteInteger(CtrName,'MeteoWidth',FPMeteoBoil.Width);
    IniFile.WriteInteger(CtrName,'BoilsHeight',FPBoils.Height);
    IniFile.WriteInteger(CtrName,'GroupHeight',FPGroup.Height);
    IniFile.Free;
end;

procedure TFBoiler.pmAutoFormatClick(Sender: TObject);
begin
end;

//*********************************************************************
//***************** ТЕКУЩИЕ СОСТОЯНИЯ КЛИЕНТОВ ************************
//*********************************************************************
const
      SumClientsData = 25;
      ClientsPozY:array[1..SumClientsData] of word=
        (21,39,130,22,41,69,70,77,78,85,86,93,94,101,102,111,112,138,   //42
        142,146,150,154,158,160,174);

procedure THotClients.Init;
begin
  CountX := 1;
  CountY := SumClientsData;
  SizeCol := ParentCtr.Block[0].FullSize;
  FullSize:=ParentCtr.Block[0].FullSize;
  SendByte := 0;//HotBeginByte; // посылка в контроллер
  Pref := 'Потребители';
  NameBlock := 'Запросы потребителей';
  Sort := srHowHot;
  EnableXML:=False;
//  bProperty := bNoGridGraf;
end;

function THotClients.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var nClient,nZone,RealY:integer;
begin
    Ready:=Ready or ParentCtr.Block[0].Ready;
    AccessW:=RW_NOEDIT;
    Result := 0;
    if ValY = 0 then
        begin
        if ValX = 0 then Txt := Pref //ParentCtr.CtrName
        else
          if ValX=1 then Txt := 'Максимум' else
              begin
              with ClimatClient[ValX-1] do
              Txt := Ctr.CtrName+' '+Ctr.GetTextZona(Zone,ValY);
              end;
        Exit;
        end;
    RealY:=ClientsPozY[ValY];
    if ValX=0 then
          begin
          Txt:=DZ_cDefineHot[RealY].Name;
          Exit;
          end;
    if ValX=1 then
          begin
          Result:=Convers('',Addr(PByteArray(Adr)^[iClientsData+(ValY-1)*2]),
            DZ_cDefineHot[RealY].Frm
            ,vInBlock,ValX,ValY,Txt,DZ_cDefineHot[RealY].Ed);
          Exit;
          end;
    if SumClimatClients <=0 then Exit;
    nClient:=ValX-1; nZone:=ClimatClient[nClient].Zone;
    Result := ClimatClient[nClient].Ctr.Block[0].LoadXY(vInBlock,nZone,RealY,Txt);
end;

procedure THotClients.CalcMax;
var x,y:integer;
  Txt,TxtMax:string;
  vData,MaxData:double;
//  iMax:integer;
begin
  CountX := 1;
  if ParentCtr.DataPath = '' then CountX:=CountX+SumClimatClients;
  Ready:=ParentCtr.Block[0].Ready;
  if CountX <=1 then Exit;
  Ready:=True;
  ParentCtr.Block[0].Ready:=True;
  BlDate:=Now;
  for y:=1 to CountY do
    begin
    MaxData:=-22222222;
//    iMax:=0;
    TxtMax:='0';
    for x:=1 to SumClimatClients do
      begin
      vData:=LoadXY(cOutBlock,x+1,y,Txt);
      if  RealSensor(imNum)        //((imNum=0) or ((imNum >= imNorm) and (imNum <= imNoCalibr)))
          and ((Now-ClimatClient[x].Ctr.Block[0].BlDate)<(6*cMin))
          and (vData > MaxData) then
            begin
            MaxData:=vData;
//            iMax:=x;
            TxtMax:=Txt;
            end;
      end;
    LoadXY(cInBlock,1,y,TxtMax);
    end;
end;

procedure THotBoilers.SetCO2Tasks;
var StMax :string;
  nBoil, nClient: integer;
  MaxCO2: double;
begin
  if SumClimatClients < 1 then Exit;
  for nBoil:=1 to CountX do
      begin
      MaxCO2:=0;
      StMax:='0';
      for nClient:=1 to SumClimatClients do
        if ClimatClient[nClient].Ctr is TFClimat403 then
          with ClimatClient[nClient].Ctr as TFClimat403 do
            WarmGroupConfig.FindCO2Max(ClimatClient[nClient].Zone,nBoil,MaxCO2,StMax);
      LoadXY(cInBlock,nBoil,posCO2Task,StMax);
      end;
   Ready:=True;
end;

procedure THotTP.PostPortRead;
var SendCopy:integer;
//  StMax :string;
//  nBoil, nClient: integer;
//  MaxCO2: double;
begin
  if ParentCtr.DataPath <> '' then Exit;
  with (ParentCtr as TFBoiler) do
    begin
    HotGroups.SetGroupTasks;
    HotClients.CalcMax;
    HotBoilers.SetCO2Tasks;
    CommonHot.CalcComPower;
    end;
//----  Отсылка заданий групп в контроллер
  if Not Ready then Exit;
  SendCopy := SendByte;
  SendByte := 17 * 2;  //10 заданий для групп и 6 для СО2 и 1 мощность
  FPort.BlockSend(Self,IN_UNIT,DefBoilGroup[pozGroupTask].Index,nil);
//----  восстановить размер передачи по умолчанию
  SendByte := SendCopy;
  TestCtrTime;
  inherited; // записать блок в файл
end;

{procedure THotClients.SetTree(var Tree:TTreeView);
var// st:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i,nTemp:word;
    nSens:word;
    Txt:string;
begin
  with ParentCtr as TCtrBoiler,Tree do
  begin
    Items.BeginUpdate;
    // Items.Clear;
    Param.X := 0;
    Param.Y := 0;
    if Items.Count = 0 then
      NodeHead := Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
    else
      NodeHead := Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
    // Заполнение внешних измерений
    Param.X := 1;
    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Общие данные',Param.Ptr);
    for nSens := 1 to SumDataBoilMeteo do
    begin
      Param.Y := nSens + 1000;
      Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
      (Items.AddChildObject(Node1,Txt,Param.Ptr)).ImageIndex := 2;//GetState(cDefineHotV1[nSens].TipSens);
    end;
    // заполнение измерений котлов
    Param.X := 1;
    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Измерения в котельной',Param.Ptr);
    for i := 1 to SumBoilKot do
    begin
      for nSens := 1 to SumKotSens do
      begin
        Param.Y := 1000*(i+1) + nSens;
        Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
        (Items.AddChildObject(Node1,'Котел ' + IntToStr(i) + ' - ' + Txt,Param.Ptr)).ImageIndex := 2;//GetState(cDefineHotV1[nSens].TipSens);
      end;
    end;
    // заполнение измерений групп
    Param.X := 1;
    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Измерения тепловых групп',Param.Ptr);
    for i := 1 to SumBoilGroup do
    begin
      for nSens := 1 to SumGroupSens do
      begin
        Param.Y := 1000 * (i + 1 + SumBoilKot) + nSens;
        Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
        (Items.AddChildObject(Node1,'Группа ' + IntToStr(i) + ' - ' + Txt,Param.Ptr)).ImageIndex := 2;//GetState(cDefineHotV1[nSens].TipSens);
      end;
    end;

    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Обогрев',Param.Ptr);
    nTemp := NumTaskGrParam - NumTaskGrParRez + NumKonturPar - NumKonturParRez - (SumGroupSens - 1);
    for i := 1 to SumBoilGroup do
    begin
      for nSens := 1 to nTemp  do
      begin
        Param.Y := 1000 * (i + 1 + SumBoilKot) + SumGroupSens + nSens;
        Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
        (Items.AddChildObject(Node1,'Группа ' + IntToStr(i) + ' - ' + Txt,Param.Ptr)).ImageIndex := 2;
      end;
    end;

   Items.EndUpdate;
   NodeHead.Expand(False);
   end;

end;  }

//*********************************************************************
//******************* END СОСТОЯНИЕ КЛИЕНТОВ **************************
//*********************************************************************
procedure THotTP.Init;
begin
  CountX := 1;//ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := BoilerCountX * BoilerCountY + GroupCountX * GroupCountY+SumValYCommonHot;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref :=  'Котельная'; //'Состояние';
  NameBlock := 'Состояние котельной'; //'Состояние';
  EnableXML:=False;
//  ConstNames:=Addr(DefHotBoilers[1]);
//  bProperty := bHowHot;
end;

function THotTP.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var sb,sumgr,x,y:integer;
    NameX:string;
begin
  Result := ValX;
  if ValY = 0 then
  begin
    if ValX = 0 then Txt := ParentCtr.CtrName
    else Txt := 'Значение' + IntToStr(ValX);
    Exit;
  end;
  sb:=BoilerCountX * BoilerCountY;
  if ValY <= sb then
      begin
      x:=(ValY-1) div BoilerCountY+1;
      y:=(ValY-1) mod BoilerCountY+1;
      if ValX = 0 then
          begin
          (ParentCtr as TFBoiler).HotBoilers.LoadXYvirt(vInBlock,x,0,NameX);
          (ParentCtr as TFBoiler).HotBoilers.LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
        else Result := (ParentCtr as TFBoiler).HotBoilers.LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumgr:=sb+GroupCountX * GroupCountY;
  if ValY <= sumgr then
      begin
      x:=(ValY-sb-1) div GroupCountY+1;
      y:=(ValY-sb-1) mod GroupCountY+1;
      if ValX = 0 then
          begin
          (ParentCtr as TFBoiler).HotGroups.LoadXYvirt(vInBlock,x,0,NameX);
          (ParentCtr as TFBoiler).HotGroups.LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
      else Result := (ParentCtr as TFBoiler).HotGroups.LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  Result := (ParentCtr as TFBoiler).CommonHot.LoadXYvirt(vInBlock,ValX,ValY-sumgr,Txt);
end;

//*********************************************************************
//******************* ТЕКУЩИЕ ДАННЫЕ КОТЕЛЬНОЙ  ***********************
//*********************************************************************
//const iSumBoils =0;
procedure THotBoilers.Init;
begin
  CountX := BoilerCountX; //ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := BoilerCountY; //SumValYHotBoilers;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref := 'Котлы';
  NameBlock := 'Состояние котлов';
  ConstNames:=Addr(DefHotBoilers[1]);
  Sort := srHowHot;
end;

function THotBoilers.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pHot:pByteArray;
begin
  pHot := Adr;
  Result := ValX;
  if ValY = 0 then
  begin
    if ValX = 0 then Txt := ParentCtr.CtrName
    else Txt := 'Котел N' + IntToStr(ValX);
    Exit;
  end;
//  GetExist(1,ValY);
// смещение относительно Hot учтено в DefHotBoilers.Index     //!!!
  Result := Convers(DefHotBoilers[ValY].Name,
              Addr(pHot^[DefHotBoilers[ValY].Index+DefHotBoilers[ValY].Tag*(ValX-1)]),
              DefHotBoilers[ValY].Frm,
              vInBlock, ValX,ValY, Txt, DefHotBoilers[ValY].Ed);
end;
//*********************************************************************
//*************** END ТЕКУЩИЕ ДАННЫЕ КОТЕЛЬНОЙ  ***********************
//*********************************************************************

//*********************************************************************
//*************** ТЕКУЩИЕ ДАННЫЕ ГРУПП ОТОПЛЕНИЯ **********************
//*********************************************************************
const iSumGroups =1;
{var XNamesGroups:array [1..1] of TXNames=(
    (Name:'Группа';Frm:None;Ed:'';Index:cSizeColTimer404;Cfg:0;Kind:0)
     );  }

procedure THotGroups.Init;
begin
     CountX := GroupCountX; // * ;ParentCtr.IdentCtr[iSumGroups+1];  // eSumGroups;
     CountY := GroupCountY; //SumValHotGroups;
     SizeCol := cHotFullSize;
     FullSize := SizeCol;
//     StartSend:=DZ_iMechanic;
//     SendByte:=DZ_sizeHand;       //*DZ_MAX_SUM_ZONE;
     SendByte := 0;
     Pref := 'Теплогруппы';
     NameBlock := 'Состояние тепловых групп';
     ConstNames:=Addr(DefBoilGroup[1]);
     Sort := srHowHot;
end;

function THotGroups.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pHot:pByteArray;
begin
  Ready:=Ready or ParentCtr.Block[0].Ready;
  pHot := Adr;
  Result := ValX;
  if ValY = 0 then
  begin
    if ValX = 0 then Txt := 'Группы отопления'
                else Txt := 'Группа' + IntToStr(ValX);
    Exit;
  end;
//  GetExist(1,ValY);
  Result := Convers(ConstNames[ValY].Name,    //DefBoilGroup
             Addr(pHot^[DefBoilGroup[ValY].Index + DefBoilGroup[ValY].Tag*(ValX-1)]),
             DefBoilGroup[ValY].Frm,
             vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
end;

procedure THotGroups.SetGroupTasks;
var   nClient, nGroup:word;
      Max,vComPower: double;
      st:string;
begin
  Ready:=False;
  if SumClimatClients < 1 then Exit;
  vComPower:=0;
  for nGroup:=1 to CountX do
    begin
    Max:=0;
    st:='0';
    for nClient:=1 to SumClimatClients do
      if ClimatClient[nClient].Ctr is TFClimat403 then
       with ClimatClient[nClient].Ctr as TFClimat403 do
        begin
        WarmGroupConfig.FindWarmMax(ClimatClient[nClient].Zone,nGroup,Max,st);
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
    LoadXY(cInBlock,nGroup,pozGroupTask,st);
    end;
  st:=FloatToStr(vComPower);
  (ParentCtr as TFBoiler).CommonHot.LoadXY(cInBlock,1,posComPower,st);
  Ready:=True;
  ParentCtr.Block[0].Ready := True;
end;
//*********************************************************************
//*************** END ТЕКУЩИЕ ДАННЫЕ ГРУПП ОТОПЛЕНИЯ ******************
//*********************************************************************

//*********************************************************************
//************************* ТЕКУЩИЕ ДАННЫЕ МЕТЕО **********************
//*********************************************************************
{procedure THotMeteo.Init;
begin
  CountX := 1;
  CountY := 14;//CountYNetMeteo;
  SizeCol := iTepl;//SizeOf(TrGlobalHot);
  FullSize := SizeCol;
//  ReceiveByte := SizeOf(TrGlobalHot) - sizeAdd;
  SendByte:=0;
  Pref :='Метео';
  NameBlock := 'Общие данные';
  ConstNames:=Addr(cDefineHotV1[1]);
  bProperty := bHowHot;
end;

function THotMeteo.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var nClient,nZone:integer;
begin
     if ValY=0 then
        begin
        if ValX=0 then Txt:='Общие данные'
          else Txt:='Значение';
        Exit;
        end;
     if SumClimatClients <=0 then Exit;
//     if (ValX=0) and (ValY=3) then
//         CopyMemory(Adr,ClientsPC[1].ClimCtr.Block[0].Adr,FullSize);
      nClient:=ValX;
      nZone:=ClimatClient[ValX].Zone;
      if nClient=0 then begin nClient:=1; nZone:=0; end;
      Result := ClimatClient[nClient].Ctr.Block[0].LoadXY(vInBlock,nZone,ValY,Txt);
end;
}
//*********************************************************************
//******************** END ТЕКУЩИЕ ДАННЫЕ МЕТЕО ***********************
//*********************************************************************

//*********************************************************************
//********************** ПАРАМЕТРЫ МЕХАНИЗМОВ **************************
//*********************************************************************
const SumValBoilMech = 39;
var XNamesParamsPID326:array [1..3] of TXNames=(
    (Name:'Время хода';Frm:SSSS;Ed:'сек';Index:0;Cfg:0;Kind:0),
    (Name:'П-коэффициент';Frm:SSpSS;Ed:'%';Index:2;Cfg:0;Kind:0),
    (Name:'И-коэффициент';Frm:SSpSS;Ed:'%';Index:4;Cfg:0;Kind:0)
     );

procedure TMechanic.Init;
begin
  CountX := 1;
  CountY := sumValBoilMech;
  SizeCol := 6;//sizeBoilMech;
  FullSize := SizeCol*CountY;//SizeCol;
  SendByte := FullSize;
  Pref := 'Механизмы';
  NameBlock := 'Параметры механизмов';
  FixRow := 1;
  ConstNames:=Addr(BoilNameConfig[pozCfMixValGr1]);
  XNames:=Addr(XNamesParamsPID326[1]);
  XNamesCount:=CountX;
//  ConstNames:=Addr(DefBoilersMech[1]);
end;

function TMechanic.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var Cop:integer;
begin
  if (ValX>0) and (ValY>0) then
    begin
    Cop:=ConstNames[ValY].Index;
    ConstNames[ValY].Index:=(ValY-1)*SizeCol;
    end;
  Result:=inherited  LoadXYvirt(vInBlock,ValX,ValY,Txt);
  if (ValX>0) and (ValY>0) then ConstNames[ValY].Index:=Cop;
end;

//*********************************************************************
//****************** END ПАРАМЕТРЫ МЕХАНИЗМОВ **************************
//*********************************************************************



//*********************************************************************
//********************** ПАРАМЕТРЫ КОТЕЛЬНОЙ **************************
//*********************************************************************
procedure TControl.Init;
begin
  CountX := 1;
  CountY := sumValYControl;
  SizeCol := sizeBoilControl;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'Параметры';
  NameBlock := 'Параметры управления';
  FixRow := 1;
  ConstNames:=Addr(DefControlBoil[1]);
end;

//*********************************************************************
//****************** END ПАРАМЕТРЫ КОТЕЛЬНОЙ **************************
//*********************************************************************

//*********************************************************************
//****************** ДАТЧИКИ КОТЕЛЬНОЙ И ГРУПП ************************
//*********************************************************************
const MAX_INP_ANAL = 32;
procedure TCalSensBoil.Init;//override;
begin
  CountX := 6;
  CountY := SumSens;
  SizeCol := sizeFullCalibr;  //eMAX_SUM_SENS * sizeCalibrSensor;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'Калибровки';
  NameBlock := 'Калибровка датчиков';
  ConstNames:=Addr(DefSensBoil[1]);
end;

function TCalSensBoil.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pCal:pByteArray;
    nInput,i:word;  //nPort
begin
  pCal := Adr;
  Result := 0;
  if ValY = 0 then // заполнение первой (нулевой) строки таблицы
      begin
      case ValX of
             0:Txt := ParentCtr.CtrName;
             1:Txt := 'Номер входа';
             2:Txt := 'Эталон1';
             3:Txt := 'Напряжение1';
             4:Txt := 'Эталон2';
             5:Txt := 'Напряжение2';
             6:Txt := 'Код датчика';
              end;
      Exit;
      end;
   GetExist(1,ValY);
   if ValY = CountY then // занесение в посл. строку частоты порта
   begin
      if (ValX > 1) then begin Txt := ''; Exit; end;
//      nPort := 1;
      Result := Convers(ConstNames[ValY].Name,
       Addr(pCal^[DefSensBoil[ValY].Index]),SSSS,vInBlock,ValX,ValY,Txt,DefSensBoil[ValY].Ed);                       //!!!
      Exit;
   end;
   if ValX <= 1 then
      begin
      Result := Convers(DefSensBoil[ValY].Name,
          Addr(pCal^[DefSensBoil[ValY].Index+iInput]),SS,vInBlock,ValX,ValY,Txt,'');
      Exit;
      end;
   nInput:= pCal^[DefSensBoil[ValY].Index+iInput];
//   Result:=0; Txt:='';
   if nInput > MAX_INP_ANAL then
        begin
        if (ValX > 5) then
            begin
            pCal:=Addr(pCal^[DefSensBoil[ValY].Index]);
            if vInBlock=cInBlock then SetCalibrDigit(Txt,pCal);
            Txt:=''; Result:=1;
            for i:=0 to 7 do Txt:=Txt+Format('%3.3d-',[pCal^[i]]);
            Txt:=copy(Txt,1,Length(Txt)-1);    // удалить тире
            end
            else Txt:='';
        AccessW:=ConstNames[ValY].AccessW;
        AccessR:=ConstNames[ValY].AccessR;
        Exit;
        end;
   case ValX of
      2: Result := Convers('',
          Addr(pCal^[DefSensBoil[ValY].Index+iVCal]),DefSensBoil[ValY].Frm,vInBlock,ValX,ValY,Txt,DefSensBoil[ValY].Ed);
      3: Result := Convers('',
          Addr(pCal^[DefSensBoil[ValY].Index+iUCal]),SSSS,vInBlock,ValX,ValY,Txt,'мВ');
      4: Result := Convers('',
          Addr(pCal^[DefSensBoil[ValY].Index+iVCal+2]),DefSensBoil[ValY].Frm,vInBlock,ValX,ValY,Txt,DefSensBoil[ValY].Ed);
      5: Result := Convers('',
          Addr(pCal^[DefSensBoil[ValY].Index+iUCal+2]),SSSS,vInBlock,ValX,ValY,Txt,'мВ');
      6: begin Result:=0; Txt:=''; end;
   end;
end;
//*********************************************************************
//************** END ДАТЧИКИ КОТЕЛЬНОЙ И ГРУПП ************************
//*********************************************************************

//*********************************************************************
//************************* ЗАДАНИЕ КОТЕЛЬНОЙ *************************
//*********************************************************************
procedure TTimer.Init;
begin
     CountX := SumTask; // количество заданий
     CountY := SumValYBoilTimer;
     SizeCol := sizeBoilTimer;
     FullSize := SizeCol * CountX;
     SendByte := FullSize;
     Pref:='Задание';
     NameBlock:='Программа котельной';
     FixRow:=1;
     ConstNames:=Addr(DefBoilersTimer[1]);
end;

function TTimer.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pTimer:pByteArray;
begin
  pTimer := Adr;
  Result := ValX;
  if ValY = 0 then
  begin
    if ValX = 0 then
    begin
      Txt := ParentCtr.CtrName;
      Exit;
    end;
    Txt := 'Программа ' + IntToStr(ValX);
    Exit;
  end;
  GetExist(1,ValY);
  Result:=Convers(DefBoilersTimer[ValY].Name,
            Addr(pTimer^[DefBoilersTimer[ValY].Index+(ValX-1)*SizeCol]),
            DefBoilersTimer[ValY].Frm,vInBlock,ValX,ValY,Txt,DefBoilersTimer[ValY].Ed);
end;

//*********************************************************************
//******************** END ЗАДАНИЕ КОТЕЛЬНОЙ *************************
//*********************************************************************

//*********************************************************************
//**********************     КОНФИГУРАЦИЯ     *************************
//*********************************************************************

procedure TBoilConfig.Init;
begin
     CountY:=cSumValYConfig;
     CountX:=1;
     SizeCol:=1;
     FullSize:=cSizeColConf;
     SendByte:=FullSize;
     Pref:=ProgMess[193]; //'Конфигурация';
     NameBlock:=ProgMess[194]; //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(BoilNameConfig[1]);
end;

//*********************************************************************

//*********************************************************************

//*********************************************************************

//*********************************************************************
//****************** ADD BOILER FROM 20.02.2008  **********************
//*********************************************************************
procedure THotTP.TestCtrTime;
var pHot:pByteArray; //    TByteArray = array[0..32767] of Byte;
    PCTime,CtrTime,copy:word;
begin
    if (ParentCtr.DataPath <> '') then Exit;
    if FormFalseTime then Exit;
  // проверка времени контроллера
  pHot:=Adr;
  PCTime := MinuteOfTheDay(Now);
  CtrTime := pHot^[boil_iTimeBoil] * 256 + pHot^[boil_iTimeBoil + 1];
  if (PCTime < 15) or (PCTime > (24 * 60 - 15))
     or (((CtrTime + 15) > PCTime) and ((CtrTime - 15) < PCTime)) then Exit;
  FormFalseTime := True;
  if (MessageDlg('Внимание! Время контроллера "' + ParentCtr.CtrName
     +'" отличается от ПК. Синхронизировать?'
       ,mtWarning,[mbYes, mbNo],0) = mrYes) then
    begin
    pHot := Adr;
    pHot^[0] := $80;
    pHot^[boil_iTimeBoil] := PCTime div 256;
    pHot^[boil_iTimeBoil + 1] := PCTime mod 256;
    pHot^[boil_iTimeBoil + 2] := MonthOfTheYear(Now);
    pHot^[boil_iTimeBoil + 3] := DayOfTheMonth(Now);
    pHot^[boil_iTimeBoil + 4] := YearOf(Now) - 2000;
    copy:=SendByte;
    SendByte := boil_iTimeBoil + 5;
    SendToPort(nil);
    SendByte := copy;
    end;
  FormFalseTime := False;
end;

end.
