unit TxtCtr405;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PicCtr,  Grids_ts, TSGrid, FController, FConstType, MessageU, ComObj;
const
//    MaxCountY=100;
    TxtCtrKey='CtrName';
type
THotTxtCtr=Class(TBlock)
  private
  public
     procedure Init;override;
//     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
//        var Txt:String):Double;override;
//     procedure PostPortRead; override;
//     destructor Destroy;override;
//     procedure SetTree(var Tree:TTreeView); override;
end;

  TFTxtCtr = class(TFPicCtr)
    SGTxtCtr: TtsGrid;
  private
    ReadDate:TDateTime;
    Ole:OleVariant;
//    SourcePath:string[100];
  public
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
//    function CtrFromFile(const NameFile:string):Boolean;override;
    procedure SetPicCtr; override;
//    function CtrToFile:string;override;
  end;

//var
//  FTxtCtr: TFTxtCtr;

implementation

uses  Audit,SetGrid, Boiler;  //SetGrid,GGraf, {SetSer,} Port,

{$R *.dfm}

var NameTxtHot:array [1..1] of TNameConst=(
    (Name:'Не определен';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:20;
        Def:HIDE_MIN_MAX;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
    );
procedure THotTxtCtr.Init;
var FileName:string;
    StrList:TStringList;
    vName:string;
    iY,pos1:integer;
    p:PByteArray;
begin
      ConstNames:=Addr(NameTxtHot[1]);
      CountX:=1;
      CountY:=1;
      FixRow:=1;
      if ParentCtr.IsXML then Exit;
      with ParentCtr do FileName:=GetDataPath+CtrName+'.txt';
      if FileExists(FileName) then
          begin
          StrList:=TStringList.Create;
          try
          StrList.LoadFromFile(FileName);
          CountY:=StrList.Count;
          GetMem(ConstNames,SizeOf(TNameConst)*CountY);
          p:=PByteArray(ConstNames);
          for iY:=0 to SizeOf(TNameConst)*CountY-1 do p^[iY]:=0;
          for iY:=0 to CountY-1 do
              begin
              vName:=StrList.Names[iY];
              ConstNames[iY+1].Name:=vName;
              if vName='Дата' then ConstNames[iY+1].Frm:=SSsSS
               else if vName='Время' then ConstNames[iY+1].Frm:=SShSSm
                else ConstNames[iY+1].Frm:=ffff;
              pos1:=Pos(',',vName);
              if (pos1 > 0) then
                ConstNames[iY+1].Ed:=Copy(vName,pos1+1,length(vName)-pos1);
              ConstNames[iY+1].Index:=(iY)*sizeof(double);
              end;
          finally  StrList.Free; end;
          end;
     SizeCol:=CountY*sizeof(double);    //MaxCountY
     FullSize:=SizeCol;
     SendByte:=0;
     ReceiveByte:=0;
     Pref:=ProgMess[196]; //'Состояние';
     NameBlock:=ProgMess[196];
end;

{Destructor THotTxtCtr.Destroy;
begin
    if ConstNames<>nil then FreeMem(ConstNames);
    inherited Destroy;
end; }


procedure TFTxtCtr.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
     Design:='TxtCtr';
     Period:=90;
     TimeView:=5;
     CtrNum:=0;
     THotTxtCtr.Create(Self);
     AuditBlock:=TAudit.Create(Self);
     try
      SetPicCtr;
     except MessageDlg('Неверный формат текстового контроллера',
          mtWarning,[mbOk],0); end;
     IsXML:=True;
     with Block[0] do
      if Pos('.',ConstNames[CountY].Name)>0  then
        try
        Ole:=CreateOleObject(ConstNames[CountY].Name);
        except end;
end;

procedure TFTxtCtr.SetPicCtr;
var FileName:string;
    StrList:TStringList;
    str:string;
    iY:integer;
begin
  ReadDate:=0;
  FileName:=GetDataPath+CtrName+'.txt';
  if Not FileExists(FileName) then
        begin
        PSost.Caption:=ProgMess[49];  //'No '+FileName;
        PSost.Color:=clRed;
        end
      else
      with Block[0] do
      begin
      try
      StrList:=TStringList.Create;
      StrList.LoadFromFile(FileName);
      for iY:=1 to CountY do
        begin
        str:=StrList.Values[ConstNames[iY].Name];
        LoadXY(cInBlock,1,iY,str);
        end;
      BlDate:=Now;
      try
        ReadDate:=StrToDate(StrList.Values['Дата'])+
          StrToTime(StrList.Values['Время']);
      except ReadDate:=0; end;
      //LoadXY(cOutBlock,1,1,str)+LoadXY(cOutBlock,1,2,str);
      if (ReadDate < (Now + 10*cMin)) and (ReadDate > (Now - 10*cMin))
         then
            begin
            Ready:=True;
            SaveToFile; // записать блок в файл
            PSost.Caption:=ProgMess[80];  //принимает
            PSost.Color:=clGreen;
            end
         else
            begin
            PSost.Caption:=ProgMess[49];;  //нет данных
            PSost.Color:=clRed;
            Ready:=False;
            end;
      finally  StrList.Free; end;
      end;
//  Block[0].PostPortRead;
  BlockToGrid(Block[0],SGTxtCtr);
end;

{function TFTxtCtr.CtrToFile:string;
begin
    result:=inherited CtrToFile;
    SGTxtCtr.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'.dsg', False);
end;
}
end.
