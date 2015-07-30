unit FCDP;

interface
uses Classes, SysUtils, Windows, Messages, IdMessage, IdSMTP;

const
SEND_EMAIL =WM_CTLCOLORMSGBOX;//(WM_USER+201);
DefMailDir      ='fml';
DefDataDir    = 'Данные';
DefUpdateDir  ='Update';
PrefData  ='$$';
PrefRegister = '$!';
StartMailFile   ='MonStart.oml';
MonListFile     ='MonList.txt';
CtrListFile     ='CtrList.txt';
InpMailExt      ='.iml';
OutMailExt      ='.oml';
InpDataExt     ='.ifd';
OutDataExt     ='.ofd';

NameAddrToFCDP    = 1;
NameAddrFromFCDP  = 2;
MailHostFCDP  = 3;
MailPortFCDP  = 4;
ServerFCDP    = 5;
ServPortFCDP  = 6;
UserNameFCDP = 7;
PasswordFCDP = 8;
SubjectFCDP   = 9;
BodyFCDP     = 10;
SMSuserFCDP   = 11;
SMSpassFCDP   = 12;
SMSmessFCDP   = 13;
SMStelsFCDP   = 14;
CmdFCDP       = 15;
AutorFCDP   = 16;   //MonName
SendFileFromFCDP   = 17;
SendFileToFCDP     = 18;
GetFileFromFCDP   = 19;
GetFileToFCDP     = 20;
//rCtrNameFCDP   = 17;
//rFileNameFCDP  = 18;
//rFilePathFCDP  = 19;
//rBlockNumFCDP  = 20;
SMSHostFCDP   = 21;
SMSPortFCDP   = 22;
SMSMailFCDP   = 23;
FTPHostFCDP   = 24;
rFilePathToFCDP   =25;
rFilePathFromFCDP =26;
ResultFCDP     = 27;
StartDateFCDP     =28;
EndDateFCDP       =29;

sumFCDPName    =29;

FCDPName:array [1..sumFCDPName] of string[12]=(
'NameAddrTo',
'NameAddrFrom',
'MailHost',
'MailPort',
'Server',
'ServPort',
'UserName',
'Password',
'Subject',
'Body',
'user',
'pass',
'mess',
'tels',
'Cmd',
'Autor',//'MonName',
'SetFileFrom',
'SetFileTo',
'GetFileFrom',
'GetFileTo',
//'CtrName',
//'FileName',
//'FilePath',
//'BlockNum',
'SMSHost',
'SMSPort',
'SMSMail',
'FTPHost',
'FilePathTo',
'FilePathFrom',
'Result',
'StartDate',
'EndDate'
);

{CmdLastBlock    =1;
CmdGetAllBlock  =2;
CmdSetBlock     =3;
CmdReplaceMon   =4;
CmdGetCtrList   =5;
CmdGetCtr       =6;}

CmdSetFile      ='SetFile';
CmdGetFile      ='GetFile';
//CmdGetLastBlock ='GetLastBlock';
CmdAppendToBlock='AppendToBlock';  //GetBlocksFrom
//CmdCtrList      ='CtrList';
//CmdGetAllBlock  ='GetAllBlock';
//CmdSetBlock     ='SetBlock';
CmdReplaceMon   ='ReplaceMon';
CmdGetCtrList   ='GetCtrList';
CmdSendToChat   ='SendToChat';
CmdNone='None';
//CmdGetCtr       =6;

{sumCmdFCDPName=6;

CmdFCDPName:array [1..sumCmdFCDPName] of string=(
'GetLastBlock',
'GetAllBlock',
'SetBlock',
'ReplaceMon',
'GetCtrList',
'GetCtr'
); }

noTels=1;
noHost=2;
noConnect=3;

ErrFCDP:array [1..3] of string=(
'Нет телефона SMS',
'Не указан Host',
'Ошибка соединения'
);

type TFCDP=class(TStringList)
  public
//  Body:TStringList;
  function GetValue(ind:integer;const DefStr:string):string;
  function GetName(ind:integer):string;
  function AddStr(ind:integer;const ScrStr:string):Boolean;
  function AddReplaceValue(ind:integer;const ScrStr:string):Boolean;
  function AddIfNoValue(ind:integer;const ScrStr:string):Boolean;
  function Del(ind:integer):Boolean;
//  function SetValue(ind:integer;const ScrStr:string):Boolean;
end;

//procedure SaveCtrList(List:TStrings);
function GetMailMonName(const tstr:string):string;
function GetMailAddr(const tstr:string):string;
//function SetNameAddr(const Name,Addr:string):string;
procedure CompressFile(const ScrFile,DstFile:string);
procedure DeCompressFile(const ScrFile,DstFile:string);
//function GetMailDir:string;
function GetSecKey(scr:string):string;
function GetUserFromMailAddr(tstr:string):string;
function GetPOP3HostFromMailAddr(const tstr:string):string;
function GetSmtpHostFromMailAddr(const tstr:string):string;
function TestPinCod(const pin,str:string):Boolean;
function DelPin(const tstr:string; var pin:string):string;
function DelMonName(const tstr:string):string;

implementation

uses  ZLib;//MessageU, , GGraf;

function GetUserFromMailAddr(tstr:string):string;
var
  i: integer;
begin
  i:=pos('@',tstr);
  delete(tstr,i,length(tstr)-i+1);
  Result:=tstr;
end;

function GetPOP3HostFromMailAddr(const tstr:string):string;
var i:integer;
begin
  i:=pos('@',tstr);
  if i<1 then Result:=tstr
  else Result:='POP.'+Copy(tstr,i+1,length(tstr)-i);
end;

function GetSmtpHostFromMailAddr(const tstr:string):string;
var i:integer;
begin
  i:=pos('@',tstr);
  if i<1 then Result:=tstr
  else Result:='smtp.'+Copy(tstr,i+1,length(tstr)-i);
end;

function GetMailMonName(const tstr:string):string;
var
  i1,i2: integer;
begin
  i1:=pos('[',tstr);
  i2:=pos(']',tstr);
  if (i1<1) or (i2<1) then Result:=''
  else Result:=Copy(tstr,i1+1,i2-i1-1);
end;

function DelMonName(const tstr:string):string;
var i:integer;
begin
  i:=Pos(']',tstr);
  if i<1 then i:=1;
  Result:=Copy(tstr,i+1,length(tstr)-i);
end;

function GetMailAddr(const tstr:string):string;
var
  i1,i2: integer;
begin
  i1:=Pos(']',tstr);
  i2:=Pos(PrefRegister,tstr);
  if i2<1 then i2:=length(tstr)+1;
//  delete(tstr,1,pos(']',tstr));
  Result:=Copy(tstr,i1+1,i2-i1-1);
end;

function DelPin(const tstr:string; var pin:string):string;
var i:integer;
begin
  i:=Pos(PrefRegister,tstr);
  if i<1 then i:=length(tstr)+1;
  Result:=Copy(tstr,1,i-1);
  pin:=Copy(tstr,i+length(PrefRegister),length(tstr));
end;

function TestPinCod(const pin,str:string):Boolean;
var i:integer;
begin
Result:=False;
i:=Pos(PrefRegister,str);
if i<1 then Exit;
i:=i+length(PrefRegister);
if pin=GetSecKey(Copy(str,i,length(str)-i+1)) then Result:=True;
end;

{function OnlyName(tstr: string): string;
var
  i: integer;
begin
  i:=pos(']',tstr);
  delete(tstr,i+1,length(tstr)-i);
  Result:=tstr;
end;

function OnlyFName(tstr: string):string;
begin
  delete(tstr,1,pos(']',tstr));
  Result:=tstr;
end;}

function TFCDP.GetValue(ind:integer;const DefStr:string):string;
begin
    Result:=Values[FCDPName[ind]];
    if Result='' then Result:=DefStr;
end;

function TFCDP.GetName(ind:integer):string;
begin
    Result:=FCDPName[ind];
end;

function TFCDP.AddStr(ind:integer;const ScrStr:string):Boolean;
var nStr:integer;
begin
    Result:=False;
    if ScrStr='' then Exit;
    Append(FCDPName[ind]+'='+ScrStr);
    Result:=True;
end;

function TFCDP.AddReplaceValue(ind:integer;const ScrStr:string):Boolean;
var nStr:integer;
begin
    Result:=False;
    if ScrStr='' then Exit;
    nStr:= IndexOfName(FCDPName[ind]);
    if nStr < 0 then
     Append(FCDPName[ind]+'='+ScrStr)
    else begin
         Delete(nStr);
         Insert(nStr,FCDPName[ind]+'='+ScrStr);
         end;
    Result:=True;
end;

function TFCDP.AddIfNoValue(ind:integer;const ScrStr:string):Boolean;
var nStr:integer;
begin
    Result:=False;
    if ScrStr='' then Exit;
    nStr:= IndexOfName(FCDPName[ind]);
    if nStr < 0 then
      begin
      Append(FCDPName[ind]+'='+ScrStr);
      Result:=True;
      end;
end;

function TFCDP.Del(ind:integer):Boolean;
var nStr:integer;
begin
    nStr:= IndexOfName(FCDPName[ind]);
    if nStr >= 0 then
      begin
      Delete(nStr);
      Result:=True;
      end else Result:=False;
end;

function CompressStream(Scr,Dst:TStream):Integer;
var ComprStrm:TCompressionStream;
begin
  ComprStrm:=TCompressionStream.Create(clMax,Dst);  //(clNone, clFastest, clDefault, clMax)
  try
    ComprStrm.CopyFrom(Scr,Scr.Size);
    ComprStrm.CompressionRate;
  finally
    ComprStrm.Free;
  end;
end;

procedure DeCompressStream(Scr,Dst:TStream);
var DecomprStrm:TDecompressionStream;
    nRead: Integer;
    Buffer: array[0..1023] of Char;
begin
  DeComprStrm:=TDecompressionStream.Create(Scr);
  try
    repeat
      nRead:=DeComprStrm.Read(Buffer, 1024);
      Dst.Write(Buffer,nRead);
    until nRead = 0;
  finally
    DeComprStrm.Free;
  end;
end;

procedure CompressFile(const ScrFile,DstFile:string);
var Scr,Dst:TFileStream;
begin
  try
    try
      Scr:=TFileStream.Create(ScrFile,fmOpenRead);
      Dst:=TFileStream.Create(DstFile,fmCreate);
      CompressStream(Scr,Dst);
   finally
      Scr.Free;
      Dst.Free;
    end;
  except
  end;
end;

procedure DeCompressFile(const ScrFile,DstFile:string);
var Scr,Dst:TFileStream;
begin
  try
    try
      Scr:=TFileStream.Create(ScrFile,fmOpenRead);
      Dst:=TFileStream.Create(DstFile,fmCreate);
      DeCompressStream(Scr,Dst);
//  CompressStream(TFileStream.Create(ScrFile),TFileStream.Create(DstFile));
    finally
      Scr.Free;
      Dst.Free;
    end;
  except
  end;
end;

function GetSecKey(scr:string):string;
var i,j:integer;
begin
  Result:=scr;
  j:=Length(scr);
  for i:=1 to j do Result[i]:=scr[j-i+1];// xor 33);
end;

//function SetSecKey(scr:string):string;

end.
