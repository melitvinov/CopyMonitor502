unit Cloud502;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids_ts, TSGrid, ExtCtrls,inifiles,
  FController;

type
  TFSetCloud = class(TForm)
    PBlock: TPanel;
    Panel1: TPanel;
    AliasGrid: TtsGrid;
    bOk: TBitBtn;
    BitBtn2: TBitBtn;
    bTest: TSpeedButton;
    procedure bOkClick(Sender: TObject);
    procedure bTestClick(Sender: TObject);
    procedure AliasGridCellEdit(Sender: TObject; DataCol, DataRow: Integer;
      ByUser: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetCloud: TFSetCloud;
  ModeList:TStringList;
  ModeFileName,CloudPath:string;
  IsInitCloud:Boolean=false;
  ViewCloudHandle:Cardinal=0;
  procedure AddToModeCloud(vBlock:TBlock;vX,vY:integer);
  procedure BlockToPreCloud(vBlock:TBlock);
//  function InitViewCloud:Boolean;

implementation
uses FConstType;
{$R *.dfm}

const cModeColCount=5;
var FBlock:TBlock;

//Monitor
function InitViewCloud:Boolean;
begin
//  if (mnArchServerAPL.Checked or mnAudServerAPL.Checked) then
      begin
      Result:=True;
      if ViewCloudHandle > 32 then Exit;
      if ViewCloudHandle > 0 then begin Result:=False; Exit; end;
      ViewCloudHandle:=FindWindow('TmFViewCloud',nil);//Cloud клиент');
      if ViewCloudHandle = 0 then ViewCloudHandle:=WinExec(PChar('ViewCloud.exe'+' "s"'),SW_SHOWNORMAL);
      //WinExec(PChar('MonGuard.exe'+' "'+ParamStr(0)+'"'),SW_SHOWNORMAL)
      if ViewCloudHandle < 32 then begin Result:=False; ViewCloudHandle:= 1; end;
      end
end;

{procedure InitCloud;
var IniFile:TIniFile;
begin
      if IsInitCloud then Exit;
      IniFile:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'web\Cloud.ini');
      CloudPath:=IniFile.ReadString('Common','CloudPath','');
      IniFile.Free;
      IsInitCloud:=True;
end;   }

function GetModeFileName(vBlock:TBlock):string;
begin
      Result:=ExtractFilePath(ParamStr(0))+'web\'+
            vBlock.ParentCtr.CtrName+'_'+vBlock.Pref+'.cld';
end;

//Monitor PM SetGrid
procedure AddToModeCloud(vBlock:TBlock;vX,vY:integer);
var yModeGrid,yModeList:integer; txt,txt2:string;
begin
      if (vX<1) or (vY<1) then Exit;
      if FSetCloud=nil then Application.CreateForm(TFSetCloud, FSetCloud);
      FBlock:=vBlock;
      ModeFileName:=GetModeFileName(vBlock);
      ModeList:=TStringList.Create;
      if FileExists(ModeFileName) then
            ModeList.LoadFromFile(ModeFileName);
      vBlock.LoadXY(cOutBlock,0,vY,txt);
      if vBlock.CountX>1 then
          begin
          vBlock.LoadXY(cOutBlock,vX,0,txt2);
          txt:=txt+'_'+txt2;
          end;
      ModeList.Add(txt);                    //signal name 0
      ModeList.Add('');                              //alias       1
      if vY <= vBlock.CountConstNames then txt:=vBlock.ConstNames[vY].Ed
      else txt:='';
      ModeList.Add(txt);                             //unit        2
      ModeList.Add(IntToStr(vX*1000+vY));            //xy          3
      if vBlock=vBlock.ParentCtr.Block[0] then  ModeList.Add('day')
      else ModeList.Add('mon');                             //Mode        4
      FSetCloud.AliasGrid.Rows:=0;
      for yModeList:=0 to ModeList.Count-1 do
            begin
            if (yModeList mod cModeColCount)=0 then
                  FSetCloud.AliasGrid.Rows:=FSetCloud.AliasGrid.Rows+1;
            FSetCloud.AliasGrid.Cell[(yModeList mod cModeColCount)+1,yModeList div cModeColCount+1]:=ModeList.Strings[yModeList];
            end;
      FSetCloud.Caption:='LMS Cloud Data';
      FSetCloud.PBlock.Caption:=vBlock.ParentCtr.CtrName+'  '+vBlock.Pref;
      FSetCloud.bTest.Enabled:=true;
      FSetCloud.ShowModal;
      ModeList.Free;
end;

//Monitor AddToModeCloud
procedure TFSetCloud.bOkClick(Sender: TObject);
var yModeGrid,x:integer;
begin
      ModeList.Clear;
      for yModeGrid:=1 to AliasGrid.Rows do
            begin
            if AliasGrid.Cell[2,yModeGrid] <> '' then
            for x:=1 to cModeColCount do
             ModeList.Add(AliasGrid.Cell[x,yModeGrid]);
            end;
      if ModeList.Count>=cModeColCount then ModeList.SaveToFile(ModeFileName);
      InitViewCloud;
end;

//Monitor SaveToFile
procedure BlockToPreCloud(vBlock:TBlock);
var ModeFileName,PreFileName:string; ModList,PreList:TStringList;
      x,y,yModList:integer;  Val:double;
      txt:string;
begin
      ModeFileName:=GetModeFileName(vBlock);
      if Not FileExists(ModeFileName) then Exit;
      if Not InitViewCloud then Exit;
      ModList:=TStringList.Create;
      ModList.LoadFromFile(ModeFileName);
      if ModList.Count<cModeColCount then begin ModList.Free; Exit; end;
      PreList:=TStringList.Create;
      PreFileName:=ExtractFilePath(ParamStr(0))+'web\Cloud.dat';
//      PreFileName:=ChangeFileExt(ModeFileName,'.dat');
      if FileExists(PreFileName) then PreList.LoadFromFile(PreFileName);
      yModList:=0;
      while yModList<ModList.Count do
            begin
            x:=StrToInt(ModList.Strings[yModList+3]);
            y:=x mod 1000; x:=x div 1000;
            Val:=vBlock.LoadXY(cOutBlock,x,y,txt);
            PreList.Add(DateTimeToStr(vBlock.BlDate));   //datetime  0
            PreList.Add(ModList.Strings[yModList+1]);    //alias     1
            PreList.Add(FormatFloat('0.##',Val));        //val       2
            PreList.Add(ModList.Strings[yModList+2]);    //unit      3
            PreList.Add(ModList.Strings[yModList+4]);    //mode      4
            yModList:=yModList+cModeColCount;
            end;
      PreList.SaveToFile(PreFileName);
      PreList.Free;
      ModList.Free;
end;

//ViewCloud Timer
{procedure PreCloudToCloud(const vCloudPath:string);
var CloudFileName,PreFileName:string; CloudList,PreList:TStringList;
      x,y,yPreList,PreMode:integer; PreVal:double; PreDate:TDateTime;
      str:string;
begin
      PreFileName:=ExtractFilePath(ParamStr(0))+'web\Cloud.dat';
      if Not FileExists(PreFileName) then Exit;
      PreList:=TStringList.Create;
      PreList.LoadFromFile(PreFileName);
      DeleteFile(PreFileName); //!!!!
      CloudList:=TStringList.Create;
      yPreList:=0;
      while yPreList<=PreList.Count do
            begin
            PreDate:=StrToDateTime(PreList.Strings[yPreList]);
            PreVal:=StrToFloat(PreList.Strings[yPreList+2]);
            PreMode:=StrToInt(PreList.Strings[yPreList+4]);
            CloudFileName:=vCloudPath+'\Data\'+PreList.Strings[yPreList+1]+'\';
            case PreMode of
                  0: CloudFileName:=CloudFileName+FormatDateTime('yyyy\MM\dd.day',PreDate);
                  1: CloudFileName:=CloudFileName+FormatDateTime('yyyy\MM.mon',PreDate);
                  2: CloudFileName:=CloudFileName+FormatDateTime('yyyy.year',PreDate);
                  end;
            if FileExists(CloudFileName) then CloudList.LoadFromFile(CloudFileName)
            else  begin
                  ForceDirectories(ExtractFilePath(CloudFileName));
                  CloudList.Clear;
                  CloudList.Add(DateToStr(PreDate));
                  CloudList.Add(PreList.Strings[yPreList+1]);
                  CloudList.Add('CloudLMS');
                  CloudList.Add(PreList.Strings[yPreList+3]);
                  end;
            CloudList.Add(DateTimeToStr(PreDate)+';'+FloatToStr(PreVal));
            CloudList.SaveToFile(CloudFileName);
            yPreList:=yPreList+4;
            end;
      CloudList.Free;
      PreList.Free;
end;  }

procedure TFSetCloud.bTestClick(Sender: TObject);
begin
  while FBlock.LoadFileCycle(FBlock.BlDate) do  BlockToPreCloud(FBlock);
  FSetCloud.bTest.Enabled:=false;
end;

procedure TFSetCloud.AliasGridCellEdit(Sender: TObject; DataCol,
  DataRow: Integer; ByUser: Boolean);
begin
  FSetCloud.bTest.Enabled:=false;
end;

end.
