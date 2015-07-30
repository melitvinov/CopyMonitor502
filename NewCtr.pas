unit NewCtr;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Spin, ComCtrls,Dialogs,StrUtils,
  FConstType, FController, PicCtr, audit, Series, Buttons, Grids, DirOutln, MessageU,
  xmldom, subr, XMLIntf, msxmldom, XMLDoc, CustomizeDlg, ActnColorMaps, ActnMan;
const  cBaudRate=9600;//1152;//00;//     ######
{type TXmlBlock=Class(TBlock)
     procedure Init;override;
//     procedure SaveAsXML(BlockNode:IXMLNode);
     end; }
type
  TFNewCtr = class(TForm)
    Panel1: TPanel;
    GBPort: TGroupBox;
    LCtrNum: TLabel;
    SECtrNum: TSpinEdit;
    LPort: TLabel;
    CBPort: TComboBox;
    BSearch: TBitBtn;
    LMes: TLabel;
    BRead: TBitBtn;
    LCtrHead: TLabel;
    ECtrName: TEdit;
    GBTipCtr: TGroupBox;
    Id1: TLabel;
    Id2: TLabel;
    Id3: TLabel;
    Id4: TLabel;
    IdEdit1: TEdit;
    IdEdit2: TEdit;
    IdEdit3: TEdit;
    IdEdit4: TEdit;
    IdEdit5: TEdit;
    TimerScan: TTimer;
    BDone: TBitBtn;
    BCancel: TBitBtn;
    RGXml: TRadioGroup;
    CBWriterCtr: TComboBox;
    Label1: TLabel;
    eIPAddress: TEdit;
    Lsst: TLabel;
    Label2: TLabel;
    ECtrAlias: TEdit;
    procedure BReadClick(Sender: TObject);
    procedure BSearchClick(Sender: TObject);
    procedure TimerScanTimer(Sender: TObject);
    procedure CBWriterCtrChange(Sender: TObject);
    procedure IdEdit5Change(Sender: TObject);
  private
//    nCtr:TFPicCtr;
    SaveCtrIdent:TIdentCtr;
    NewUnitNum:TUnitNum;
    FSearch:Boolean;
    NextSearch:Boolean;
    SaveBSearch:string;
    function GetNewCtr:TFPicCtr;
    procedure SetType(inCtr:TFPicCtr);
    procedure AfterRead;
    procedure AfterSear;
    function CtrFromIdent(const Ident:TIdentCtr; const vCtrName:string;XML:Boolean):TFPicCtr;
    function CtrFromDom2(const CtrFileName:string):TFPicCtr;
    function GetNewCtrIdent:TIdentCtr;
    procedure SetCtrIdent(vCI:TIdentCtr);
//    function GetTypeWriterCtr(nType:integer):Integer;
  public
    procedure CtrToDom2(Ctr:TFPicCtr; const DomFileName:string);
    function CreateCtrFromFile2(const CtrFileName,DirNameData:string):TFPicCtr;
    function ShowCtr2:Boolean;
  end;

var
  FNewCtr: TFNewCtr;

procedure SetNewViewGraf2(vCtr:TFController);
procedure InitXmlBlock2(vBlock:TBlock;BlockNum:ShortInt);

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
implementation
uses Salat, Climat403, Mixer403, Mixer04, Mixer501, Climat65,BoilerIPC, Boiler,  //SelPar,
     Port,GGraf, Desinf, WaterReady, TxtCtr405, Drain405, Drain501,UVDisinf,DesinfDig
     ,ServerZ,Meteo,Translate502,F101,Aphrodite,Climat510,Supplay501,Climat502,Climat501U,Climat501S;   //
{$R *.DFM}
const
  cTestMes='';//'Тестовая сборка 502 от 2.2.15  v 5.2.5.29  (Only test)';  //'';//
var
  vNumCtr,vNumPort:Integer;
  vIdentCtr:TIdentCtr;
  XMLDoc:IXMLDocument;
 

function TFNewCtr.CtrFromIdent(const Ident:TIdentCtr; const vCtrName:string;XML:Boolean):TFPicCtr;
var lTip:Byte;
begin
   if Ident[idTip] <> 0 then lTip:=Ident[idTip]
   else lTip:=Ident[2];
   Result:=nil;
   case (lTip div 10) of
     1:     Result:= TFTxtCtr.Create(Application);
     2:     begin
            if lTip < 25 then Result:= TFMixer403.Create(Application)
            else Result:= TFMixer501.Create(Application);  //TFClimat65.Create(Application);//
            end;
     3:     Result:= TFWater.Create(Application);
     4..5:Result:= TFMixer04.Create(Application);
     6:  begin
            if (lTip = 67) or  ((Ident[idModific] and DZ_MODEL) >0)  then
                Result:= TFClimat403.Create(Application)
            else if lTip=65  then Result:= TFClimat65.Create(Application)
              else if lTip=61  then Result:= TFBoilerIPC.Create(Application);
            if lTip=69  then Result:= TFClimat510.Create(Application);
          end;
     7:     begin
            case lTip of
            70: Result:=TFClimat502.Create(Application);
            71: Result:=TFClimat501U.Create(Application);
            72: Result:=TFClimat501S.Create(Application);
            else Result:= TFSalat.Create(Application);
            end; end;
     8:     begin
            case lTip of
            81: Result:= TFServerZ.Create(Application);
            82: Result:= TFMeteo.Create(Application);
            end;
            end;
     9:     begin
            case lTip of
            91: Result:= TFDrain405.Create(Application);
            92: Result:= TForm101.Create(Application);
            94: Result:= TFDesinf.Create(Application);
            95: Result:= TFDisinfDig.Create(Application);
            97: Result:= TFUVDisinf.Create(Application);
            else Result:= TFBoiler.Create(Application);
            end; end;
     10:    begin
            case lTip of
            120: Result:= TFDrain501.Create(Application);
            102: Result:= TFSupplay501.Create(Application);
            end;  end;
     12:    begin Result:= TFAphrodite.Create(Application); end
     else MessageDlg(ProgMess[113]+' '+IntToStr(Ident[idTip]),mtWarning,[mbOk],0);
    end;
   if Result <> nil then
      begin
      Result.IdentCtr:=Ident;
      Result.IsXML:=XML;
      if (vCtrName='')or (vCtrName=ProgMess[117]) then
         Result.FCtrName:='Type'+' '+IntToStr(Result.CtrTip)
      else Result.FCtrName:=vCtrName;
      Result.InitCtr(Ident);
      Result.InitBlocksLng;
      end;
end;
//=============================== DOM =========================================
{function CtrFromType(const Typ:integer):TFPicCtr;
begin
   Result:=nil;
   case (Typ) of
     11:    Result:= TFTxtCtr.Create(Application);
     22,23: Result:=TFMixer403.Create(Application);
     31:    Result:=TFWater.Create(Application);
     65..67:Result:=TFClimat403.Create(Application);
     70:    Result:=TFSalat.Create(Application);
     91:    Result:=TFDrain.Create(Application);
     94:    Result:=TFDesinf.Create(Application);
     81:    Result:=TFBoiler.Create(Application);
     else   Result:=TFTxtCtr.Create(Application);
   end;
   if Result<> nil then Result.CtrTip:=Typ;
end; }

{procedure BlockToDom(Block:TBlock;BlockNode:IXMLNode);
var vNode:IXMLNode;
    i:integer;
begin
  if Block.ConstNames = nil then Exit;
  BlockNode.SetAttribute('Size',Block.FullSize);
  BlockNode.SetAttribute('Sort',Block.Sort);
  BlockNode.AddChild('Name').Text:=Block.Pref;  //NameBlock;
  vNode:=BlockNode.AddChild('Rows');
  for i:=1 to Block.CountY do
      with vNode.AddChild('Row'),Block.ConstNames[i] do
        begin
        Text:=Name;
        SetAttribute('Index',Index);
        SetAttribute('Format',Frm);
        SetAttribute('Unit',Ed);
        SetAttribute('Cfg',Mech);
        SetAttribute('Min',Min);
        SetAttribute('Max',Max);
        SetAttribute('Def',Def);
        SetAttribute('Kind',TipSens);
        SetAttribute('AccR',AccessR);
        SetAttribute('AccW',AccessW);
        end;// else ;                       I
  vNode:=BlockNode.AddChild('Cols');
  if Block.CountX <=1 then Exit;
end; }

procedure BlockSaveAsXML2(Block:TBlock; BlockNode:IXMLNode);
var vNode:IXMLNode;
    i:integer;
begin
  BlockNode.SetAttribute('Size',Block.FullSize);
  BlockNode.SetAttribute('RowNum',Block.CountY);
  BlockNode.SetAttribute('ColNum',Block.CountX);
  BlockNode.SetAttribute('Sort',Block.Sort);
  BlockNode.AddChild('Name').Text:=Block.Pref;  //NameBlock;
//  if Block.ConstNames = nil then Exit;
  vNode:=BlockNode.AddChild('Rows');
  if Block.EnableXML then
   for i:=1 to Block.CountConstNames do
      with vNode.AddChild('Row'),Block.ConstNames[i] do
        begin
        Text:=Name;
        SetAttribute('Index',Index);
        SetAttribute('Format',Frm);
        SetAttribute('Unit',Ed);
        SetAttribute('Cfg',Mech);
        SetAttribute('Tag',Tag);
        SetAttribute('Min',Min);
        SetAttribute('Max',Max);
        SetAttribute('Def',Def);
        SetAttribute('Kind',TipSens);
        SetAttribute('AccR',AccessR);
        SetAttribute('AccW',AccessW);
        end;
  vNode:=BlockNode.AddChild('Cols');
  if Block.XNames = nil then Exit;
  for i:=1 to Block.XNamesCount do
      with vNode.AddChild('Col'),Block.XNames[i] do
        begin
        Text:=Name;
        SetAttribute('Index',Index);
        SetAttribute('Format',Frm);
        SetAttribute('Unit',Ed);
        SetAttribute('Cfg',Cfg);
        SetAttribute('Kind',Kind);
        end;
end;

procedure TFNewCtr.CtrToDom2(Ctr:TFPicCtr; const DomFileName:string);
var i:integer;
  vNode:IXMLNode;
begin
  XMLDoc:=NewXMLDocument();//: IXMLDocument;
  XMLDoc.Active:=True;
  XMLDoc.DocumentElement:=XMLDoc.CreateNode('Ctr');
  XMLDoc.DocumentElement.AddChild('Name').Text:=Ctr.FCtrName;
  XMLDoc.DocumentElement.SetAttribute('Type',Ctr.CtrTip);
  XMLDoc.DocumentElement.SetAttribute('Model',Ctr.Model);
  XMLDoc.DocumentElement.SetAttribute('Id1',Ctr.IdentCtr[1]);
  XMLDoc.DocumentElement.SetAttribute('Id2',Ctr.IdentCtr[2]);
  XMLDoc.DocumentElement.SetAttribute('Id3',Ctr.IdentCtr[3]);
  with Ctr do
    begin
    if AuditBlock<>nil then AuditBlock.Sort:=srAudit or srSingleSave;
    if ConfigBlock<>nil then ConfigBlock.Sort:=srConfig;
    end;
  vNode:=XMLDoc.DocumentElement.AddChild('Blocks');
  for i:=0 to Ctr.CountBlock-1 do
//      if Ctr.Block[i].ConstNames <> nil then
          BlockSaveAsXML2(Ctr.Block[i], vNode.AddChild('Block'));
  if DomFileName<>'' then XMLDoc.XML.SaveToFile(DomFileName);
end;

var CtrNode,BlockNode:IXMLNode;

//function BlockFromDom(Ctr:TFController;BlockNode:IXMLNode):TBlock;
//procedure TXmlBlock.Init;
procedure InitXmlBlock2(vBlock:TBlock;BlockNum:ShortInt);
var y:integer;
  tg:variant;
begin
 BlockNode:=CtrNode.ChildNodes['Blocks'].ChildNodes[BlockNum];
 with vBlock do
  begin
  Pref:=BlockNode.ChildNodes['Name'].Text;
  if NameBlock='' then NameBlock:=Pref;
  FullSize:=BlockNode.Attributes['Size'];
//  SizeCol:=0;//FullSize;
//  SendByte:=FullSize;
  Sort:=BlockNode.Attributes['Sort'];
//CountY:=BlockNode.ChildNodes['Rows'].ChildNodes.Count;
  CountConstNames:=BlockNode.ChildNodes['Rows'].ChildNodes.Count;
  try
    CountY:=BlockNode.Attributes['RowNum'];
  except end;
  if CountY=0 then CountY:=CountConstNames;
  CountX:=BlockNode.Attributes['ColNum'];
  if CountX=0 then CountX:=1;
  XNamesCount:=BlockNode.ChildNodes['Cols'].ChildNodes.Count;
//  GetMem(Adr,FullSize);
//##  GetMem(ConstNames,SizeOf(TNameConst)*CountConstNames);
  for y:=1 to CountConstNames do
      with ConstNames[y],BlockNode.ChildNodes['Rows'].ChildNodes[y-1] do
        begin
        try
        ConstNames[y].Name:=Text;
        Index:=Attributes['Index'];
        Frm:=Attributes['Format'];
        Ed:=Attributes['Unit'];
        Mech:=Attributes['Cfg'];
        Min:=Attributes['Min'];
        Max:=Attributes['Max'];
        Def:=Attributes['Def'];
        TipSens:=Attributes['Kind'];
        AccessR:=Attributes['AccR'];
        AccessW:=Attributes['AccW'];
        Tag:=Attributes['Tag'];
        except end;
        end;
//??  if (CountConstNames>0) and (ConstNames[1].Name[Length(ConstNames[1].Name)]=ADD_SUMBOL) then
//??      ConstNames[1].Name[Length(ConstNames[1].Name)]:=' ';
  if XNamesCount = 0 then Exit;
//##  GetMem(XNames,SizeOf(TXNames)*XNamesCount);
  for y:=1 to XNamesCount do
      with XNames[y],BlockNode.ChildNodes['Cols'].ChildNodes[y-1] do
        begin
        XNames[y].Name:=Text;
        Index:=Attributes['Index'];
        Frm:=Attributes['Format'];
        Ed:=Attributes['Unit'];
        Cfg:=Attributes['Cfg'];
        Kind:=Attributes['Kind'];
        end;
//  SizeCol:=XNames[1].Index;
  end;
end;

function TFNewCtr.CtrFromDom2(const CtrFileName:string):TFPicCtr;
var vIdentCtr:TIdentCtr;
begin
  Result:=nil;
  if Not FileExists(CtrFileName) then Exit;
  try
  XMLDoc:=NewXMLDocument();
  XMLDoc.XML.LoadFromFile(CtrFileName);
  XMLDoc.Active:=True;
  CtrNode:=XMLDoc.DocumentElement;
  vIdentCtr[IdTip]:=CtrNode.Attributes['Type'];
  vIdentCtr[IdModel]:=CtrNode.Attributes['Model'];
  try
  vIdentCtr[idModific]:=CtrNode.Attributes['Id1'];
  vIdentCtr[ident2]:=CtrNode.Attributes['Id2'];
  vIdentCtr[ident3]:=CtrNode.Attributes['Id3'];
  except  end;
  Result:=CtrFromIdent(vIdentCtr,ChangeFileExt(ExtractFileName(CtrFileName),''),True);  //CtrFromType(CtrNode.Attributes['Type']);
  except Result:=nil; end;
//  if Result=nil then Exit;
//  Result.IsXml:=True;
//  Result.CountBlock:=0;
end;
//=============================== END DOM =========================================


function TFNewCtr.CreateCtrFromFile2(const CtrFileName,DirNameData:string):TFPicCtr;
var f:file;
    sn,sf:integer;
    isDom:Boolean;
    s,vCtrName:string;
    vCtrIdent:TIdentCtr;
    FileStream:TFileStream;
begin
   Result:=nil;
   isDom:=False;
   if CtrFileName='' then begin
        Result:=GetNewCtr; Exit; end;
   if Not FileExists(CtrFileName) then begin
        if CtrFileName=ProgMess[483]+'.ctr' then   //'Метео
            begin
            vCtrIdent[idTip]:=82;
            Result:=CtrFromIdent(vCtrIdent,ProgMess[483]+' '+MonitorName,False);  //'Меeтео '
            SetNewViewGraf2(Result);
            Exit;
            end;
        MessageDlg(Format(Progmess[114],[CtrFileName]),mtWarning,[mbOk],0);
        Exit;
        end;
//------------------------------------------
  vCtrName:=ChangeFileExt(ExtractFileName(CtrFileName),'');
  if ExtractFileExt(CtrFileName) = '.ctr' then
      try
          FileStream:=TFileStream.Create(CtrFileName,fmOpenRead);
          if FileStream.Size > 500 then isDom:=True
          else FileStream.Read(vCtrIdent,SizeOf(TIdentCtr));
      finally
          FileStream.Free;
       {   AssignFile(f,CtrFileName);
          Reset(f,1);
          if FileSize(f) > 500 then isDom:=True
          else BlockRead(f,vCtrIdent,SizeOf(TIdentCtr));
      finally
          CloseFile(f);}
      end;
  if ExtractFileExt(CtrFileName) = '.dcf' then
      try
          AssignFile(f,CtrFileName);
          Reset(f,1);
          BlockRead(f,vCtrIdent,SizeOf(TIdentCtr));
            s:=vCtrName;
            sn:=Pos(ProgMess[60],s);
            if sn = 0 then Exit;
            s:=Copy(s,1,sn-2);
            sn:=1;
            while sn > 0 do
              begin
              sf:=sn;
              sn:=PosEx(' ',s,sn+1);
              end;
            vCtrName:=Copy(s,1,sf-1);
      finally
          CloseFile(f);
      end;
  if ExtractFileExt(CtrFileName) = '.txt' then vCtrIdent[idTip]:=11;
  if isDom then Result:=CtrFromDom2(CtrFileName)
  else Result:=CtrFromIdent(vCtrIdent,vCtrName,False);
  if Result <> nil then
      begin
      Result.DataPath:=DirNameData;
      if cTestMes<>'' then FMain.mHelp.Caption:=cTestMes;//'Тестовая сборка 502 от 2.2.15  v 5.2.5.26  (Only test)';  //!!!test compi
      if Not Result.CtrFromFile(CtrFileName) then SetNewViewGraf2(Result);
      end
   else MessageDlg(Format(ProgMess[115],[CtrFileName]),mtWarning,[mbOk],0);
end;

function TFNewCtr.GetNewCtr:TFPicCtr;
var i:integer;
begin
   Result:=nil;
   CBWriterCtr.Clear;
   for i:=1 to SUM_CTR do
      CBWriterCtr.AddItem(GetNameWriterCtr(i),nil);
   Caption:=ProgMess[116];
   LMes.Caption:='';
   CBPort.ItemIndex:=0;
   SECtrNum.Value:=0;
//   CBBaudRate.ItemIndex :=1;
   for i:=0 to ComponentCount-1 do
//    if Components[i] is TControl then
      begin
      if (Components[i].Tag mod 100)=0 then continue;
      if Components[i] is TEdit then
        with Components[i] as TEdit do begin Enabled:=True; Text:=''; end;
      if Components[i] is TBitBtn then
        with Components[i] as TBitBtn do
          if (Tag mod 100) = 1 then Enabled:=True
          else Enabled:=False;
      end;
   BDone.Caption:=ProgMess[118];
   BDone.Enabled:=CBWriterCtr.ItemIndex >= 0;
   ECtrName.Text:=ProgMess[117];
   ECtrAlias.Text:='';
   if ShowModal=mrOK then
      begin
      Result:=CtrFromDom2(IntToStr(GetNewCtrIdent[idTip])+'.ctr');
      if Result = nil then Result:=CtrFromIdent(GetNewCtrIdent,ECtrName.Text,False)
      else Result.FCtrName:=ECtrName.Text;
      if Result <> nil then
        with Result do
          begin
          BaudRate:=cBaudRate;//StrToInt(CBBaudRate.Text);
          UnitNum:=SECtrNum.Value;
          PortName:=CBPort.Text;
          CtrFromFile(IntToStr(GetNewCtrIdent[idTip])+'.ctr');
          SetNewViewGraf2(Result);
          IsXml:=IsXml or (RGXml.ItemIndex = 0);
          IPAddress:=eIPAddress.Text;
          if IPAddress<>'' then PortName:='';//begin IsIPC:=True;  end else IsIPC:=False; //UnitNum:=0;
          CtrAlias:=ECtrAlias.Text; 
          end;
      end;
end;

function TFNewCtr.ShowCtr2:Boolean;
var i:integer;
begin
  CBWriterCtr.Clear;
  for i:=1 to SUM_CTR do
    CBWriterCtr.AddItem(GetNameWriterCtr(i),nil);//WriterCtr[i].nType);
  CBWriterCtr.ItemIndex:=GetRecordWriterCtr(ActiveCtr.IdentCtr[5])-1;
  for i:=0 to ComponentCount-1 do
    begin
    if (Components[i].Tag mod 100) = 0 then continue;
    if Components[i] is TEdit then
      with Components[i] as TEdit do Enabled:=False;
    if Components[i] is TBitBtn then
      with Components[i] as TBitBtn do Enabled:=False;
//    with Components[i] as TControl do begin Enabled:=False; end;
    end;
  BCancel.Enabled:=True;
  Caption:=ActiveCtr.CtrName;
  LMes.Caption:='';
  with ActiveCtr do
     begin
     SetCtrIdent(IdentCtr);
     CBPort.Text:=CtrPort;
//     CBBaudRate.Text :=IntToStr(CtrBaudRate);
     SECtrNum.Value:=CtrNum;
     ECtrName.Text:=FCtrName;
     ECtrAlias.Text:=CtrAlias;
     eIPAddress.Text:=IPAddress;
     if IsXML then RGXml.ItemIndex:=0 else RGXml.ItemIndex:=1;
     end;
  SetType(ActiveCtr);
  BCancel.Enabled:=True;
  BDone.Caption:='OK';
  Result:=ShowModal=mrOK;
  if Result then
      begin
      ActiveCtr.IsXML:= RGXml.ItemIndex = 0;
      ActiveCtr.CtrAlias:=ECtrAlias.Text;
      end;
end;

function TFNewCtr.GetNewCtrIdent:TIdentCtr;
begin
  Result[1]:=StrToIntDef(IdEdit1.Text,0);
  Result[2]:=StrToIntDef(IdEdit2.Text,0);
  Result[3]:=StrToIntDef(IdEdit3.Text,0);
  Result[4]:=StrToIntDef(IdEdit4.Text,0);
  Result[5]:=StrToIntDef(IdEdit5.Text,0);
end;

procedure TFNewCtr.SetCtrIdent(vCI:TIdentCtr);
begin
        IdEdit5.Text:=IntToStr(vCI[5]);
        IdEdit4.Text:=IntToStr(vCI[4]);
        IdEdit3.Text:=IntToStr(vCI[3]);
        IdEdit2.Text:=IntToStr(vCI[2]);
        IdEdit1.Text:=IntToStr(vCI[1]);
end;

procedure TFNewCtr.SetType(inCtr:TFPicCtr);
begin
//  BSetCtr.Enabled:=False;
  if inCtr<>nil then
        begin
        ECtrName.Text:=inCtr.FCtrName;
        ECtrAlias.Text:=inCtr.CtrAlias;
        BDone.Enabled:=CBWriterCtr.ItemIndex >= 0;//True;
        if eIPAddress.Text='' then eIPAddress.Text:=inCtr.IPAddress;
//        eIPAddress.Enabled:=eIPAddress.Text<>'';
        if inCtr.NameIdent > 0  then
          begin
          Id1.Caption:=ProgMess[inCtr.NameIdent];
          Id2.Caption:=ProgMess[inCtr.NameIdent+1];
          Id3.Caption:=ProgMess[inCtr.NameIdent+2];
//          Id4.Caption:=ProgMess[inCtr.NameIdent+3];
//          Id5.Caption:=ProgMess[inCtr.NameIdent+4];
          end;
        SetCtrIdent(inCtr.IdentCtr);
        if inCtr.DataPath <> '' then
             begin LMes.Caption:=ProgMess[120]+': '+inCtr.DataPath; end
             else LMes.Caption:=ProgMess[120]+': '+CBPort.Text;
        end
   else
        begin
        ECtrName.Text:=ProgMess[117];
//##        BDone.Enabled:=False;
//        Id5.Caption:=ProgMess[121];
        Id1.Caption:=ProgMess[49];
        Id2.Caption:=ProgMess[49];
        Id3.Caption:=ProgMess[49];
        Id4.Caption:=ProgMess[49];
        IdEdit5.Text:='0';
        IdEdit4.Text:='0';
        IdEdit3.Text:='0';
        IdEdit2.Text:='0';
        IdEdit1.Text:='0';
        end;
end;

procedure TFNewCtr.BReadClick(Sender: TObject);
begin
     LMes.Caption:='';
     IdEdit5.Text:='';
     if (eIPAddress.Text <> '') and (pos(':',eIPAddress.Text)<1) then
        begin
        CBPort.Text:='';
        eIPAddress.Text:=eIPAddress.Text+':'+IntToStr(SECtrNum.Value+8000);
        end;
     ECtrName.Text:=ProgMess[117];
     NewUnitNum:=SECtrNum.Value;
//     FPort.ArrayRead(SECtrNum.Value, 1, CBPort.Text,
//        cBaudRate,pointer(@NewIdentCtr), SizeOf(TIdentCtr), AfterRead);
     FPort.ArrayRead(
        True, SECtrNum.Value,         // номер контр
        1,0,                      // номер блока в контр
        CBPort.Text,            // имя порта контр полива
        eIPAddress.Text,
        cBaudRate,              // скорость передачи
        pointer(@SaveCtrIdent),  // указатель на массив данных
        SizeOf(TIdentCtr),      // размер передачи
        AfterRead);             // функция после передачи
     Lsst.Caption:=ProgMess[540]; //'Ожидаем результат';
end;

procedure TFNewCtr.AfterRead;
var tCtr:TFPicCtr;
begin
    if PortResult > 0 then
      begin
      tCtr:=CtrFromIdent(SaveCtrIdent,'',False);
      SetType(tCtr);
      ECtrName.Text:=GetNameWriterCtr(CBWriterCtr.ItemIndex+1)+' '+SECtrNum.Text; //tCtr.Design+' '+IntToStr(SECtrNum.Value);
      tCtr.Free;
      Lsst.Caption:='';
      BDone.Enabled:=True;
      end
 else
      begin
      Lsst.Caption:=ErrCaption;
      LMes.Caption:=ProgMess[122]+ProgMess[123]+#13#10+ProgMess[124];
      end;
end;

procedure TFNewCtr.BSearchClick(Sender: TObject);
begin
 FSearch:=Not FSearch;
 BCancel.Enabled := Not FSearch;
 if FSearch then
    begin
    SaveBSearch:=BSearch.Caption;
    BSearch.Caption:=ProgMess[128];
    LMes.Caption:='';
    vNumPort:=0;
    vNumCtr:=0;
//    PortResult:=20;
    TimerScan.Enabled:=True;
    NextSearch:=True;
    end
 else
    begin
    BSearch.Caption:=SaveBSearch;
    TimerScan.Enabled:=False;
    NextSearch:=False;
    end;
end;

procedure TFNewCtr.AfterSear;
begin
    if Not FSearch then  Exit;
    NextSearch:=True;
    if PortResult > 0 then
         LMes.Caption:=LMes.Caption+'<'+CBPort.Items.Strings[vNumPort]+' '+ProgMess[125]+' '+IntToStr(vNumCtr)+'>  ';
    if PortResult=1 then vNumCtr:=100;
    if vNumCtr < 99 then vNumCtr:=vNumCtr+1
    else begin
         if vNumPort < CBPort.Items.Count-1 then
            begin
            vNumPort:=vNumPort+1;
            vNumCtr:=1;
            end
         else
            begin
            BSearchClick(Self);
            if LMes.Caption='' then LMes.Caption:=ProgMess[126];
            end;
         end;
end;

procedure TFNewCtr.TimerScanTimer(Sender: TObject);
begin
   if Not NextSearch then Exit;
   if FSearch then
         begin
         NextSearch:=False;
         FPort.ArrayRead(True,vNumCtr, 1,0, CBPort.Items[vNumPort],'',
          cBaudRate,pointer(@vIdentCtr), SizeOf(TIdentCtr), AfterSear);
         end
   else BSearch.Caption:=SaveBSearch; //ProgMess[127];

end;

procedure SetNewViewGraf2(vCtr:TFController);
var i,k:Word;
begin
  with FMain,vCtr do
      begin
      k:=Block[0].CountY-2;
      if k > szTablView-1 then k:=szTablView-1;
      for i:=0 to k do
         begin
         TablView[i].Checked:=True;
         TablView[i].nCtr:=0;
         TablView[i].nSensX:=1;
         TablView[i].nSensY:=i+1;
//!!!         TablView[i].Color:=(PanelName.Controls[i] as TPanel).Font.Color;
         TablView[i].Width:=2;
         TablView[i].bModif:=bStairs;//False;
         end;
      end;
end;
procedure TFNewCtr.CBWriterCtrChange(Sender: TObject);
begin
  if GetLngWriterCtr(CBWriterCtr.ItemIndex+1) < GetCurrentLang then
    begin MessageDlg(Format('No translation',['New ctr']),mtWarning,[mbOk],0); Exit; end;
  IdEdit5.Text:=IntToStr(GetTypeWriterCtr(CBWriterCtr.ItemIndex+1));
  SECtrNum.MaxValue:=190;//WriterCtr[CBWriterCtr.ItemIndex+1].MaxCtrNum;
  if SECtrNum.MaxValue = 0 then
    begin SECtrNum.Enabled:=False; SECtrNum.Value:=0; CBPort.Text:='';BRead.Enabled:=False; end
  else begin SECtrNum.Enabled:=True; BRead.Enabled:=True; end;
  BDone.Enabled:=True;
end;

procedure TFNewCtr.IdEdit5Change(Sender: TObject);
begin
 CBWriterCtr.ItemIndex:=GetRecordWriterCtr(StrToIntDef(IdEdit5.Text,0))-1;
 ECtrName.Text:=GetNameWriterCtr(CBWriterCtr.ItemIndex+1)+'-'+SECtrNum.Text; //tCtr.Design+' '+IntToStr(SECtrNum.Value);
// BSetCtr.Enabled:=True;
// BDone.Enabled:=False;
end;

end.
