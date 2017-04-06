unit Port;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, Spin,
  registry, SyncObjs, FConstType, FController,MessageU,WinSock;

const
  MAX_REPEAT=3;//##3;
  PAUSE=0;
//  TIME_OUT_TIMER=100; //200; // Таймер 100 мс - timeOut = 100*200 = 20 sek
  posIdLo=0;
  posIdHi=1;
  posSizeLo=2;
  posSizeHi=3;
  posDirect=4;
  cSizeHead=5;
//  WAIT_OPEN=1;
//  WAIT_UNIT=2;
//  WAIT_END_HEAD=3;
//  WAIT_END_SEND=4;
//  WAIT_END_RESIEV=5;
//  WAIT_INFO=6;
  OUT_UNIT=$50;
  IN_UNIT=$A0;
  MAX_PROBE=3;
  MAXLINECOUNT=150;
  BLOCK_COUNT=8;

type

TPortThread=class(TThread)
  private
      ModeCheckByte,FullCheck:Boolean;
      inaddr:sockaddr_in;
      hCom:THANDLE;
      tout:Tcommtimeouts;
      dcb:TDCB;
      RWTransferBytes:DWORD;
      TempSizeSend:WORD;
      hSock:integer;
      SockErr:integer;
      NonBlockType:integer;
      function CheckSum(vBufSend:PByteArray;vSizeSend:integer):Byte;
      function UnitSend:integer;
      function SetDCB:Boolean;
      function EthernetSend:integer;
      procedure FindNewLine;
  public
     procedure Execute(); override;
//     function UnitSend:integer;
  end;

TLineEl= record
    lBlock:TBlock;
    lDir:Byte;
    lCtrOffSet:Integer;
    lEndMethod:TEndPortMethod;
    lSendSize: integer;
//    lReceiveSize: integer;
    lBufSend:PByteArray;//: Pointer;
    lSourceBuf:PByteArray;
    lNumUnit:Byte;
    lNumBlock:Byte;
    lBaudRate:integer;
    lSort:integer;
    lPortName:string[7];  //array [0..6] of Char;//:string[5];
    lIPAddress:string[50];
    lVisible:Boolean;
  end;

  TFPort = class(TForm)
    NameBlock: TPanel;
//    TxtPortResultP: TPanel;
    PL5: TLabel;
    NameContr: TPanel;
    TimerSend: TTimer;
    PL2: TLabel;
    TxtPortResultPan: TPanel;
    TxtPortResult: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
//    procedure StartButtonClick(Sender: TObject);
  private
    { Private declarations }
    SumBadSend:integer;
    procedure PutInLine(vBlock:TBlock;Dir:Byte;CtrOffSet:Integer;vEndMethod:TEndPortMethod);
    procedure EndSend;
    procedure SelfShow;
    procedure GoodSend;

  public
    { Public declarations }
    function BlockSend(vBlock:TBlock;Dir:Byte;IndexCtr:Integer;vEndMethod:TEndPortMethod):Boolean;
    function ArrayRead(vVisible:Boolean; vUnitNum,vBlockNum:TUnitNum; OffSet:integer; const vPortName:TPortName;
          const vIPAddress:string;
          vBaudRate:TBaudRate; vBuf:pointer; vSize:integer; vEndMethod:TEndPortMethod):Integer;
    function IsActivBlock(vBlock:TBlock):Boolean;
    procedure Stop;
    procedure DeleteCtr(vCtr:TFController);
    procedure PostMes;
  end;

var
  FPort: TFPort;
  PortThread: TPortThread;
  LineUpdate:TCriticalSection;
  PortResult:integer;
  WorkedPort:Boolean;
  numRepeat,sumRepeat, TimeOutTimer:Integer;
  PortTop:Boolean;
  Head: array [0..4] of Byte;
  rNumUnit:array [1..4] of Byte;
  ErrCaption: string;
  ActiveLine:TLineEl;
  wVersionRequested:WORD; wsData:WSADATA;
//  PortLine: TPortLine;
    Line: array[0..MAXLINECOUNT] of TLineEl;
    LineStart: integer=0;
    LineFree: integer=0;
    LineLong:integer;
    CtrWiew,BlockView,LineWiew:integer;
// ezz,zz:integer; //###
implementation

{$R *.DFM}
uses GGraf,PicCtr;

procedure TFPort.Stop;
begin
  ActiveLine.lBlock:=nil;
  ActiveLine.lSendSize:=0;
end;

procedure TFPort.PostMes;
begin
  HotMessage(ProgMess[515],ErrCaption+'-'+IntToStr(LineStart)+'-'+IntToStr(LineFree),clBlue); //Обмен данными
end;

procedure TFPort.DeleteCtr(vCtr:TFController);
var i,j:integer;
begin
  with vCtr do
  for i:=0 to CountBlock-1 do
    begin
    if ActiveLine.lBlock=Block[i] then
        begin ActiveLine.lBlock:=nil; ActiveLine.lSendSize:=0; end;
    for j:=0 to MAXLINECOUNT-1 do
      if Block[i]=Line[j].lBlock then
        begin Line[j].lBlock:=nil; Line[j].lSendSize:=0; end;
    end;
end;

procedure TFPort.PutInLine(vBlock:TBlock;Dir:Byte;CtrOffSet:Integer;vEndMethod:TEndPortMethod);
var
  currPos,Lstart,Lfree: integer;
begin
  Lstart:=LineStart; Lfree:=LineFree;
  if vBlock.FNumBlock>0 then
      begin
      Lstart:=LineStart-1;
      if Lstart<0 then Lstart:=MAXLINECOUNT-1;
      if Lstart=LineFree then exit;
      currPos:=Lstart;
      end
  else
      begin
      Lfree:=(LineFree+1) mod MAXLINECOUNT;
      if Lfree=LineStart then exit;
      currPos:=LineFree
      end;
  with Line[currPos] do
  begin
    lBlock:=vBlock;
    lDir:=Dir;
    lCtrOffSet:=CtrOffSet;
    lEndMethod:=vEndMethod;
    if Dir = IN_UNIT then    //-- запись
        lSendSize:=vBlock.SendByte
        else lSendSize:=vBlock.ReceiveByte;
    lNumUnit:=vBlock.ParentCtr.CtrNum;
    lNumBlock:=vBlock.BlockNumber;
    CtrWiew:=lNumUnit; BlockView:=lNumBlock;
    lVisible:=lNumBlock>0;
    lBaudRate:=vBlock.ParentCtr.CtrBaudRate;
    lSort:=vBlock.Sort;
    lPortName:=vBlock.ParentCtr.PortName;
    lIPAddress:=vBlock.ParentCtr.IPAddress;
    lBufSend:=vBlock.SendingBuf;
    lSourceBuf:=vBlock.Address;
    lSourceBuf:=Addr(lSourceBuf^[lCtrOffSet]);
  end;
LineLong:=Lfree-Lstart;
if LineLong < 0 then LineLong:=LineLong + MAXLINECOUNT;
LineStart:=Lstart;
LineFree:=Lfree;
end;

procedure TPortThread.FindNewLine;
var i: integer;
begin
  LineWiew:=LineStart;
  ActiveLine:=Line[LineStart];
  LineStart:=(LineStart+1) mod MAXLINECOUNT;
  LineLong:=LineLong-1;
  with ActiveLine do
    begin
    Head[posIdLo]:=lCtrOffSet mod 256;
    Head[posIdHi]:=lCtrOffSet div 256;
    Head[posSizeLo]:=lSendSize mod 256;
    Head[posSizeHi]:=lSendSize div 256;
    if (lSort and srHowHot)>0 then Head[posDirect]:=lDir
    else Head[posDirect]:=lDir+lNumBlock;
    for i:=0 to lSendSize-1 do lBufSend[i]:=lSourceBuf[i];
    if lSendSize > 0 then WorkedPort:=true;
    end;
{  posIdLo=0;
  posIdHi=1;
  posSizeLo=2;
  posSizeHi=3;
  posDirect=4;
  cSizeHead=5;  }
end;

procedure TPortThread.Execute();
var i:integer;
begin
  repeat
    if LineStart=LineFree then begin Sleep(20); continue; end;
//    if WorkedPort then exit;
    if MonitorState<>msWork then continue;
    try
    LineUpdate.Acquire;
    try FindNewLine;
    finally LineUpdate.Release; end;
    if not WorkedPort then continue;
    if ActiveLine.lVisible then
            begin
            PortResult:=1;
            ErrCaption:=ProgMess[515]; //'Производится обмен данными';
            Synchronize(FPort.SelfShow);
            end;
    if ActiveLine.lIPAddress <> '' then
            begin
            ErrCaption:=ActiveLine.lIPAddress+'[Send '+IntToStr(ActiveLine.lSendSize)+' bytes]';
                        //Synchronize(FPort.PostMes);
            for numRepeat:=1 to 2 do //MAX_REPEAT do
              begin
              PortResult:=EthernetSend;
              if hSock > 0 then try
                  if NonBlockType > 0 then
                      try
                      NonBlockType := 0;                //!!
                      ioctlsocket(hSock,FIONBIO,NonBlockType);   //!!
                      except end;
                  closesocket(hSock);
                  except end;
              if PortResult>0 then  begin //if PortResult < ActiveLine.lSendSize then ActiveLine.lSendSize:=PortResult;
                                    break; end;
              if SockErr>0 then ErrCaption:=ActiveLine.lIPAddress+'-'+ProgMess[165]+IntToStr(numRepeat)
               +' '+SysErrorMessage(SockErr);
//              Synchronize(FPort.PostMes);
              end;
            end
      else
            begin
            for numRepeat:=1 to MAX_REPEAT do
              begin
              PortResult:=UnitSend;
              try CloseHandle(hCom); except end;   //######
              if PortResult>0 then break;
              end;
            if PortResult=0 then //## ezz:=ezz+1;   //###
              begin
              ErrCaption:=ActiveLine.lPortName+':'+ProgMess[125]{номер '}+IntToStr(ActiveLine.lNumUnit)+' - ' //TxtPortResult.Caption
                +ErrCaption;      //ProgMess[165]+IntToStr(numRepeat)+' '
              Synchronize(FPort.SelfShow);
              end;
          end;
    Synchronize(FPort.EndSend);
    except ErrCaption:='Except Line'; Synchronize(FPort.PostMes); end;
    WorkedPort:=false;
  until Terminated or (MonitorState = msTerminate);
end;

function TFPort.BlockSend(vBlock:TBlock; Dir:Byte; IndexCtr:Integer; vEndMethod:TEndPortMethod):Boolean;
var i,n,t:integer;
begin
  Result:=true;
  if LineFree < LineStart then n:=LineFree+MAXLINECOUNT-1 else n:=LineFree;
  for i:=LineStart to n-1 do
    begin
    t:=i mod MAXLINECOUNT;
    if (Line[t].lBlock=vBlock) and (Line[t].lDir=Dir)
      and ((Line[t].lSendSize=vBlock.ReceiveByte) or (Line[t].lSendSize=vBlock.SendByte))
      then begin Result:=false; break; end;
    end;
  if (Not Result) or ((vBlock.FNumBlock=0) and (LineLong > (MAXLINECOUNT - BLOCK_COUNT))) then
        begin
        with vBlock do HotMessage(ParentCtr.CtrName,NameBlock+' - '+ProgMess[151]+' N'+IntToStr(i)+' activ ('+IntToStr(LineWiew)+'-'+IntToStr(CtrWiew)+'-'+IntToStr(BlockView)+')');   //,clNone,clNone,clNone
        SumBadSend:=SumBadSend+1;
        if SumBadSend > 60 then

            HotMessage('Заблокирован обмен','Проверить COM порт',clLog,clRed,clBlue);   //,clNone,clNone,clNone
              with PortThread do try
                  if NonBlockType > 0 then
                      try
                      NonBlockType := 0;                //!!
                      ioctlsocket(hSock,FIONBIO,NonBlockType);   //!!
                      except end;
                  closesocket(hSock);
                  except end;
        Exit;
        end;
  SumBadSend:=0;
  LineUpdate.Acquire;
  try PutInLine(vBlock,Dir,IndexCtr,vEndMethod);
  finally LineUpdate.Release; end;
  Result:=true;
end;

procedure TFPort.EndSend;
begin
   PortTop:=False;
//HotMessage('port','endSend start');
   if ActiveLine.lBlock <> nil then
      begin
      if PortResult>0 then GoodSend
      else  begin
            with ActiveLine.lBlock do (ParentCtr as TFPicCtr).SetLog(NameBlock+' - '+ErrCaption,clNone);
//              HotMessage(ParentCtr.CtrName,NameBlock+' - '+ErrCaption,clLog,clNone,clNone);
            MessageBeep(MB_ICONASTERISK);
            end;
      end;
   try
   if (ActiveLine.lSendSize>0) and (@ActiveLine.lEndMethod <> nil) then ActiveLine.lEndMethod;   //@
   except HotMessage('Port','EndMetod',clLog); end;
   if PortResult = 0 then SelfShow else Self.Visible:=false;//####  //###
end;


//------ прием - передача успешно --------
procedure TFPort.GoodSend;
var i:integer;
begin
//HotMessage('port','GoodSend start');
    with ActiveLine.lBlock do
          begin
          Ready:=True;
          BlDate:=Now;
          if ActiveLine.lDir = IN_UNIT then    //-- запись
            begin
            HotMessage(ParentCtr.CtrName,NameBlock+' - '+ProgMess[160],clNone,clGreen); //+' ('+IntToStr(LineLong)+')'  %%%%
            if (ActiveLine.lNumBlock>0) and ((ActiveLine.lSort and srHowHot) = 0) then
                begin
                SaveToFile;             // 2 write 13.12.05
                SetVoice('BlockRecord',alMessig);
                end;
            end
          else  begin                //-- чтение
                with ActiveLine do for i:=0 to lSendSize-1 do lSourceBuf[i]:=lBufSend[i];
//                HotMessage(ParentCtr.CtrName,NameBlock+' - '+ProgMess[163],clNone,clGreen); //+' ('+IntToStr(LineStart)+'-'+IntToStr(LineFree)+')',mlSend);
                try
                PostPortRead;
                except HotMessage('Port','PostPortRead',clLog); end;
                try
                SaveToFile;
                except HotMessage('Port','SaveToFile',clLog); end;
                end;
          end;
end;

function TPortThread.UnitSend:integer;
var OldHeadTrue:Boolean; AnsiPortName:array [0..12] of Char;
begin
  ErrCaption:=ActiveLine.lPortName;//'RS485 ';
try
//if hCom = INVALID_HANDLE_VALUE then  //###
//begin //###
 StrPCopy(AnsiPortName,'\\.\'+ActiveLine.lPortName);
// StrPCopy(AnsiPortName,ActiveLine.lPortName);
 hCom := CreateFile(AnsiPortName,
    GENERIC_READ or GENERIC_WRITE,
    0,Nil,OPEN_EXISTING,0,0);
 if (hCom = INVALID_HANDLE_VALUE) then
    begin
    ErrCaption:=ErrCaption+' '+SysErrorMessage(GetLastError);//Format(ProgMess[155],[ActiveLine.lPortName]);
    Result:=0;
    Exit;
    end;
//end;//###
if FMain.mFastCOM.Checked then PurgeComm(hCom, PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR); //#####
 SetDCB;
 dcb.Parity:=MARKPARITY;
 SetCommState(hCom, dcb);
 EscapeCommFunction(hCom,CLRRTS);
 EscapeCommFunction(hCom,SETDTR);
 rNumUnit[1]:=7;
 // пустое чтение 4 байтов   N1
if Not FMain.mFastCOM.Checked then ReadFile(hCom,rNumUnit,4,RWTransferBytes,nil);
  //------ передача байта номера контроллера -----
 WriteFile(hCom,ActiveLine.lNumUnit,1,RWTransferBytes,nil);
 //------ прием байта номера контроллера ------
 rNumUnit[1]:=117;
 ReadFile(hCom,rNumUnit,1,RWTransferBytes,nil);
 if rNumUnit[1] <> ActiveLine.lNumUnit then
    begin
    ErrCaption:=ProgMess[156];
    Result:=0;
    Exit;
    end;
 dcb.Parity:=SPACEPARITY;
 SetCommState(hCom, dcb);
 EscapeCommFunction(hCom,CLRRTS);
 EscapeCommFunction(hCom,SETDTR);

// пустое чтение 4 байтов  N2
if Not FMain.mFastCOM.Checked then ReadFile(hCom,rNumUnit,4,RWTransferBytes,nil);  //!!!
// PurgeComm(hCom, PURGE_TXABORT or PURGE_RXABORT or PURGE_TXCLEAR or PURGE_RXCLEAR);
//------ передача заголовка
 WriteFile(hCom,Head,cSizeHead,RWTransferBytes,nil);
 rNumUnit[1]:=0;
 RWTransferBytes:=0;
 //------ прием последнего байта в заголовке
 ReadFile(hCom,rNumUnit,1,RWTransferBytes,nil);
//------- Проверка ответа на заголовок
 ModeCheckByte:=(Not Head[posDirect] = rNumUnit[1])
  or (Head[posDirect] = (rNumUnit[1]-1));    //((PortVersion < 2) and
 FullCheck:=CheckSum(PByteArray(Addr(Head[0])),cSizeHead) = rNumUnit[1]; //(Head[posDirect] = rNumUnit[1]+1);
 OldHeadTrue:= (PortVersion=11) or ((PortVersion <> 1) and (Head[posDirect] = rNumUnit[1]));
 if Not ModeCheckByte and  Not OldHeadTrue and  Not FullCheck then
    begin
    ErrCaption:=ProgMess[157]+' '+IntToStr(RWTransferBytes)+' '+IntToStr(rNumUnit[1]);
    Result:=0;
    Exit;
    end;
//------ прием - передача буфера
 TempSizeSend:=ActiveLine.lSendSize;
 if ActiveLine.lDir=IN_UNIT then
    begin
    EscapeCommFunction(hCom,CLRRTS);
    if FullCheck then
        begin
        TempSizeSend:=ActiveLine.lSendSize+1;
        ActiveLine.lBufSend[TempSizeSend-1]:=55-CheckSum(ActiveLine.lBufSend,TempSizeSend-1);
        end;
    WriteFile(hCom,ActiveLine.lBufSend[0],TempSizeSend,RWTransferBytes,nil);
    end
 else
    begin
    ReadFile(hCom,ActiveLine.lBufSend[0],TempSizeSend,RWTransferBytes,nil);
    end;
 if TempSizeSend<>RWTransferBytes then
          begin
          ErrCaption:=ProgMess[158]+IntToStr(RWTransferBytes)
            +ProgMess[159]+IntToStr(TempSizeSend);
          Result:=0;
          Exit;
          end;
    if (Not FullCheck) and (Not ModeCheckByte) then
          begin Result:=1; Exit; end;
          
 //------ прием контрольной суммы
    RWTransferBytes:=0;
    ReadFile(hCom,rNumUnit,1,RWTransferBytes,nil);
 if (Not FMain.mBreakCheckSum.Checked) and  (RWTransferBytes > 0) and (CheckSum(ActiveLine.lBufSend,TempSizeSend) <> rNumUnit[1]) then
        begin
        rNumUnit[2]:=CheckSum(ActiveLine.lBufSend,TempSizeSend);        /// 4
        ErrCaption:='Checksum error '+IntToStr(rNumUnit[2]) +' '+IntToStr(rNumUnit[1]);//ProgMess[516];//'Ошибка контрольной суммы';
        Result:=0;
        Exit;
        end;
 if (RWTransferBytes < 1) then
          begin
          ErrCaption:='No checksum';//ProgMess[517];//'Нет контрольной суммы';
          Result:=0;
          Exit;
          end;
 Result:=2;
except
  ErrCaption:='Except '+SysErrorMessage(GetLastError);//+IntToStr(SelectSend);
  Result:=0;
end;
end;

procedure TFPort.SelfShow;
begin
//##zz:=zz+1; //##
//##Label1.Caption:=IntToStr(zz)+'-'+IntToStr(ezz);  //####
  PortTop:=True;
  Visible:=True;
  if ActiveLine.lBlock<>nil then try
    NameContr.Caption:=ActiveLine.lBlock.ParentCtr.CtrName;
    NameBlock.Caption:=ActiveLine.lBlock.NameBlock;
    except end
  else begin
    NameContr.Caption:=ProgMess[117];
    NameBlock.Caption:=Format(ProgMess[164],[ActiveLine.lNumBlock]);
    end;
  TxtPortResult.Caption:=ErrCaption;
  if PortResult > 0 then TxtPortResultPan.Color:=clLime else TxtPortResultPan.Color:=clRed;
  Visible:=true;//if Visible then  Self.BringToFront else Self.Show;
//  DefocusControl(ActiveControl,false);
//  Self.Update;
end;

function TPortThread.SetDCB:Boolean;
begin
  Result:=GetCommState(hCom,dcb);
  if ActiveLine.lBaudRate<9000 then dcb.BaudRate:=ActiveLine.lBaudRate*100
  else dcb.BaudRate := ActiveLine.lBaudRate;
  dcb.ByteSize := 8;
  dcb.StopBits := ONESTOPBIT;
   tout.ReadIntervalTimeout:=300*(numRepeat);
   tout.ReadTotalTimeoutMultiplier:=180*(numRepeat);//!!!60*(numRepeat);
   tout.ReadTotalTimeoutConstant:=400*(numRepeat);    //50*SizeSend
   tout.WriteTotalTimeoutMultiplier:=40*(numRepeat);//!!!!!120*(numRepeat);
   tout.WriteTotalTimeoutConstant:=140*(numRepeat);//!!!!430*(numRepeat);
  result:=SetCommTimeOuts(hCom,tout);
end;

function TPortThread.CheckSum(vBufSend:PByteArray;vSizeSend:integer):Byte;
var i:integer;
begin
  Result:=0;
  for i:=0 to vSizeSend-1 do Result:=Result+vBufSend[i];
end;

procedure TFPort.FormDestroy(Sender: TObject);
begin
  WSACleanup;
{   MonitorState := msTerminate;
   if WorkedPort then
    try
    CloseHandle(hCom);
    except
    end;  }
end;

procedure TFPort.FormCreate(Sender: TObject);
begin
//  PortThread.hCom:=INVALID_HANDLE_VALUE;   //####
  WorkedPort:=false;
  LineStart:=0;
  LineFree:=0;
  wVersionRequested:=MAKEWORD(2,2);
  WSAStartup(wVersionRequested,wsData);
  LineUpdate:=TCriticalSection.Create;
  PortThread:=TPortThread.Create(false);
  PortThread.FreeOnTerminate:=true;
end;

//------------------------------------------------------
function TPortThread.EthernetSend:integer;
var integ,RecvSize: integer; IPadr:array[0..50] of Char;    //cmdarg,
    readFDSet: TFDSet;  tv: Ttimeval;   //, writeFDSet, exceptFDSet
    crc : byte;

function TestRecv(vBuf:PByteArray;vSize:integer; tmo:integer):integer;
var res:integer;
begin
  Result:=0;
  FD_ZERO(readFDSet);
  FD_SET(hSock,readFDSet);
  tv.tv_sec := tmo;  tv.tv_usec := 0;
  res:=select(0,@readFDSet,nil,nil,@tv);
  if res=0 then begin Result:=0; SockErr:=WSAECONNABORTED; exit; end;
  if res=SOCKET_ERROR  then begin Result:=0; SockErr:=WSAENOTSOCK; exit; end;   //WSAGetLastError()
  Result:=recv(hSock,vBuf[0],vSize,0); // ErrCaption:='recv='+IntToStr(Result)+'  ';



//  Result:=Result+readFDSet.fd_array[0]. ErrCaption:='recv='+IntToStr(Result);
//  until Result>=vSize;
//  Result:=1;
end;

begin
try
  Result:=0;
//'Установка соединения';
  NonBlockType := 0;
  hSock:=socket(AF_INET,SOCK_STREAM,0);
  if hSock=INVALID_SOCKET then
        begin
        SockErr:=WSAGetLastError;  //'Ошибка создания сокета';
        hSock:=0; exit;
        end;
  Inaddr.sin_family:=AF_INET;
  integ:=pos(':',ActiveLine.lIPAddress);
  if integ > 0 then
      try
      StrPCopy(IPadr,Copy(ActiveLine.lIpAddress,1,integ-1));
      Inaddr.sin_port:=htons(StrToInt(Copy(ActiveLine.lIPAddress,integ+1,length(ActiveLine.lIPAddress)-integ)));
      except end
  else begin StrPCopy(IPadr,ActiveLine.lIpAddress); Inaddr.sin_port:=htons(3434); end;
  Inaddr.sin_addr.S_addr:=inet_addr(IPadr);//!Вставить IP адрес!);
  connect(hSock,Inaddr,sizeof(Inaddr));
  SockErr:=WSAGetLastError();
  if (SockErr<>0) then exit;
  NonBlockType := 1;
  ioctlsocket(hSock,FIONBIO,NonBlockType);   //!!
 //------ посылка заголовка
  send(hSock,Head,cSizeHead,0);
 //------ прием последнего байта в заголовке
  if TestRecv(@rNumUnit[1],1,5)=0 then exit;
  if ActiveLine.lDir=IN_UNIT then
        // было так
        //Result:=send(hSock,ActiveLine.lBufSend[0],ActiveLine.lSendSize,0)
    // стало так
    begin
      TempSizeSend:=ActiveLine.lSendSize+1;
      crc := 55-CheckSum(ActiveLine.lBufSend,TempSizeSend-1);
      ActiveLine.lBufSend[TempSizeSend-1]:=crc;
      Result:=send(hSock,ActiveLine.lBufSend[0],TempSizeSend,0)
    end
    // -------
  else  begin
        RecvSize:=0;
        while RecvSize < ActiveLine.lSendSize do
            begin
            Result:=TestRecv(@ActiveLine.lBufSend[RecvSize],ActiveLine.lSendSize-RecvSize,5);
            if Result=0 then exit;
            RecvSize:=RecvSize+Result;
            Result:=RecvSize;
            end;
//        Result:=TestRecv(@ActiveLine.lBufSend[0],ActiveLine.lSendSize,5);
         //recv(hSock,ActiveLine.lBufSend[0],ActiveLine.lSendSize,0);
        end;

//  TestRecv(@ActiveLine.lBufSend[0],ActiveLine.lSendSize,5);


  SockErr:=WSAGetLastError();
  if SockErr<>0 then Result:=0;
except ErrCaption:='Exception Error'; end;
end;

function TFPort.IsActivBlock(vBlock:TBlock):Boolean;
begin
  Result:=false;//WorkedPort and (ActiveLine.lBlock=vBlock);
end;

function TFPort.ArrayRead(vVisible:Boolean; vUnitNum,vBlockNum:TUnitNum; OffSet:integer; const vPortName:TPortName;
          const vIPAddress:string;
          vBaudRate:TBaudRate; vBuf:pointer; vSize:integer; vEndMethod:TEndPortMethod):Integer;
var
  currPos,i,Lstart,Lfree: integer;
  vvBuf,vvBuf2:PByteArray;
begin
  Lstart:=LineStart; Lfree:=LineFree;
  Lstart:=LineStart-1;
  if Lstart<0 then Lstart:=MAXLINECOUNT-1;
  if Lstart=LineFree then exit;
  currPos:=Lstart;
  with Line[currPos] do
  begin
    lBlock:=nil;
    lDir:=OUT_UNIT;
    lCtrOffSet:=OffSet;
    lEndMethod:=vEndMethod;
    lSendSize:=vSize;
    lNumUnit:=vUnitNum;
    lNumBlock:=vBlockNum;
    lBaudRate:=vBaudRate;
    lSort:=0;
    lPortName:=vPortName;
    lIPAddress:=vIPAddress;
    lBufSend:=vBuf;
    lSourceBuf:=vBuf;
    lVisible:=vVisible;
//    for i:=0 to lSendSize-1 do lBufSend[i]:=lSourceBuf[i];
  end;
LineStart:=Lstart;
LineFree:=Lfree;
Result:=0;
end;
end.
