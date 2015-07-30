unit Calc502;

interface

uses SysUtils,FController,FConstType,MessageU,Stg;

{***********************************************************
--------------------Описание блока задание-----------------
************************************************************}
type T1Timer=record
    Res1,StartTime,EndTime:SmallInt;//int16;
    Stg:array[0..33] of Char;
    T,TV,RH,DDWP,CO2,Res2,Res3:SmallInt;//int16;
    end;

    Tp1Timer=^T1Timer;
    TTimers=array [1..20] of T1Timer;
    TpTimers=^TTimers;

type TTimer502=Class(TBlock)
private
      pTimers:TpTimers;
      ATimer,BTimer:Byte;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
     function GetTimer(tTime:TDateTime; var ResTimer:T1Timer):Boolean;
end;

implementation

uses ClimCalc,SetGrid,TeEngine, Series, StdCtrls, TeeProcs,GanttCh,Chart,DateUtils;

{***********************************************************
--------------------Инициализация блока задание-----------
************************************************************}
const YTimerSum502=9;  XTimerSum502=20;
      yStartTime=3; yT=5; yRH=6; yDDWP=7;

var  NameTimer502:array [1..YTimerSum502] of TNameConst=(
 (Name:'Время начала действия программы (если 0 - прогр не активна)';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:0;Def:0;
    Index:2;GridColor:$ffef00;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Тип старта';Frm:ComboSS;Ed:'';TipSens:TipCalc;Min:657;Max:661;Def:0;
    Index:4;GridColor:$ffef00;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Время старта';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:0;Def:0;
    Index:0;GridColor:$ffef00;AccessR:RW_GUEST;AccessW:RW_INVISIBLE),
 (Name:'Стратегия управления';Frm:SFStr;Ed:'';TipSens:TipText;Min:-1;Max:0;Def:HIDE_MIN_MAX;
    Index:6;GridColor:$ff0faf;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
// (Name:'Тип старта';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:0;Def:0;
//    Index:3;GridColor:$ffdf00;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать температуру воздуха (если 0-прогр не активна)';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:30;Def:HIDE_MIN_MAX;
    Index:40;GridColor:$ff0faf;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST;Kind:kdProgTask),
 (Name:'Держать влажность воздуха (если 0-то не управлять)';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:95;Def:HIDE_MIN_MAX;
    Index:44;GridColor:$ff0faf;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST;Kind:kdProgTask),
 (Name:'Держать дефицит водяного пара ';Frm:SSpS0;Ed:'г/м3';TipSens:DDWP;Min:0;Max:0;Def:0;
    Index:46;GridColor:$ff0faf;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Температура вентиляции';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:40;Def:HIDE_MIN_MAX;
    Index:42;GridColor:$ff0faf;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
 (Name:'Держать концентрацию CO2 (если 0 - не управлять)';Frm:SSSS;Ed:'ppm';TipSens:TipCalc;Min:0;Max:3000;Def:HIDE_MIN_MAX;
    Index:48;GridColor:$ff0faf;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST;Kind:kdProgTask)
);
var XNamesTimer502:array [1..1] of TXNames=(
    (Name:'Задание';Frm:None;Ed:'';Index:SizeOf(T1Timer);Cfg:0;Kind:0)
     );

procedure TTimer502.Init;//override;
var HotY,TimY:integer;
begin
     CountX:=XTimerSum502;
     CountY:=YTimerSum502;
     SizeCol:=SizeOf(T1Timer);
     FullSize:=CountX*SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[224];      //'Задание';
     NameBlock:=ProgMess[225];  //  'Задание микроклимата';
     FixRow:=1;
     ConstNames:=Addr(NameTimer502);
     XNames:=Addr(XNamesTimer502[1]);
     XNamesCount:=1;
//     SavingConstNames:=True;
     HotY:=1; TimY:=1;
     while HotY < ParentCtr.Block[0].CountY do
            begin
            if (ParentCtr.Block[0].ConstNames[HotY].Kind and kdProgTask)>0
              then
               while TimY<CountY do
                  begin
                  if (ConstNames[TimY].Kind and kdProgTask)>0
                   then begin ConstNames[TimY].Tag:=HotY; inc(TimY); break; end;
                   inc(TimY);
                   end;
            inc(HotY);
            end;
     Translator:=CountY;
end;

{***********************************************************
--------------------Загрузка значений блока таймер-------------
************************************************************}
function TTimer502.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  st:string;
     RH,T:integer;
     StTime:double;
     Mode:Byte;
begin
if (ValY>0) and (ValX>0) then
  begin
  if ValY=yStartTime then
      begin
      StTime:=LoadXY(cOutBlock,ValX,ValY-2,Txt)*60;
      Mode:=round(LoadXY(cOutBlock,ValX,ValY-1,Txt));
      case Mode of
        1: StTime:=MinuteOfTheDay(GlobSunRaise)-StTime;
        2: StTime:=MinuteOfTheDay(GlobSunRaise)+StTime;
        3: StTime:=MinuteOfTheDay(GlobSunSet)-StTime;
        4: StTime:=MinuteOfTheDay(GlobSunSet)+StTime;
        end;
      Txt:=FormatDateTime('hh:mm',StTime*cMin);
      Result:=inherited LoadXYvirt(cOutTxtBlock,ValX,ValY,Txt);
      Exit;
      end;
  if ValY=yDDWP then
      begin
      if (vInBlock=cInBlock) then
          begin
          Result:=inherited LoadXYvirt(cInBlock,ValX,ValY,Txt);
          T:=round(LoadXY(cOutBlock,ValX,yT,st)*100);
          st:=FloatToStr(GetRH_DDWP(T,round(Result*100)));
          inherited LoadXYvirt(cInBlock,ValX,yRH,st);
          end
      else
          begin
          RH:=round(LoadXYvirt(cOutBlock,ValX,yRH,st)*100);
          T:=round(LoadXY(cOutBlock,ValX,yT,st)*100);
          Txt:=FloatToStr(GetDDWP(T,RH)/100);
          Result:=inherited LoadXYvirt(cInBlock,ValX,ValY,Txt);
          end;
      Exit;
      end;
    end;
  Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
{      Txt:=GetRH_DDWP(pTimers^[ValX].T,tIn);
      end;
  pTimers:=Adr;
  if (ValX>0) and (ValY>0) then
      begin
      if (pTimers^[ValX].StartTime=0) or (pTimers^[ValX].T=0) or (pTimers^[ValX].Stg=#0) then
        GridCellColor:=$e0e0e0;//clSilver;
      if (ConstNames[ValY].TipSens = DDWP) then
        begin
          tIn:=GetDDWP(pTimers^[ValX].T,pTimers^[ValX].RH);//*100);
        Result:=Convers(ConstNames[ValY].Name,
         Addr(tIn),SSpS0,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
        if (vInBlock=cInBlock) then
             begin
             NewRH:=GetRH_DDWP(pTimers^[ValX].T,tIn);
             if (NewRH > 0) then pTimers^[ValX].RH:=NewRH;
             end;
        Exit;
        end;
      end;
    Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt); }
end;

function TTimer502.GetTimer(tTime:TDateTime; var ResTimer:T1Timer):Boolean;
var nTim:integer; tMin,tEnd:integer;
    d:double; st:string;
begin
  pTimers:=Adr;
  ATimer:=0; BTimer:=0;
//todo  tMin:=MinuteOfTheDay(tTime);
  Result:=False;
  for nTim:=1 to CountX do
   with pTimers^[nTim] do
    begin
    if (pTimers^[nTim].StartTime=0) or (pTimers^[nTim].T=0) then continue;
    if tMin < pTimers^[nTim].StartTime then
            begin
            if (BTimer=0) or (pTimers^[BTimer].StartTime > StartTime)
                  then BTimer:=nTim;
            continue;
            end;
    if EndTime > StartTime then tEnd:=EndTime else tEnd:=EndTime+1440;
    if (tMin<tEnd) then begin ATimer:=nTim; BTimer:=nTim; break; end;
    if (ATimer=0) or (pTimers^[ATimer].EndTime < tEnd) then ATimer:=nTim;
    end;
  if ATimer=0 then ATimer:=BTimer;
  if BTimer=0 then BTimer:=ATimer;
  if ATimer>0 then
      begin
      d:=pTimers^[BTimer].StartTime-pTimers^[ATimer].EndTime;
      if d=0 then d:=0 else d:=(tMin-pTimers^[ATimer].EndTime)/d;
//todo      with ParentCtr as TFClimat502 do CalcStrategyBlock.GetStgFromName(pTimers^[ATimer].Stg);
      end;
//  with ParentCtr as TFClimat502 do
   for nTim:=1 to CountY do //TaskCount do
      begin
      if ConstNames[nTim].Tag<=0 then continue;
      if ATimer=0 then st:='0'
      else st:=FloatToStr((1-d)*LoadXY(cOutBlock,ATimer,nTim,st)+d*LoadXY(cOutBlock,BTimer,nTim,st));
      ParentCtr.Block[0].LoadXY(cInBlock,1,ConstNames[nTim].Tag,st);
      end;
end;

const tmSt=1;tmEnd=2;valDt=3;LstTm=1;LstDt=2;Sum=3;Lg=4;
//type TStatZ=array [1..DZ_NumTimer,1..4,1..Lg] of double;
type tsk1=record tmSt,tmEnd,valDt:Double; end;
type TStatZ=array [0..XTimerSum502,1..4] of tsk1;

procedure InitZ(var StatZ:TStatZ);
var i:integer;
begin
  for i:=1 to 4 do StatZ[0,i].tmSt:=0;
end;

function InsZ(var StatZ:TStatZ;vZ:integer;tsk:tsk1):Integer;
var i,cnt,fnd:integer;
begin
  cnt:=round(StatZ[0,vZ].tmSt);
  StatZ[0,vZ].tmSt:=cnt+1;
  fnd:=0;
  for i:=1 to cnt do
      if tsk.tmSt < StatZ[i,vZ].tmSt then begin fnd:=i; break; end;
  if fnd=0 then
      begin
      StatZ[cnt+1,vZ]:=tsk;
      Exit;
      end;
  for i:=cnt downto fnd do StatZ[i+1,vZ]:=StatZ[i,vZ];
  StatZ[fnd,vZ]:=tsk;
end;

function GetZ(var StatZ:TStatZ;vZ:integer;Gradient:integer):string;
var i,cnt:integer;
  sm,lg,tmLast,valLast,dd,ddd:double;
begin
  cnt:=round(StatZ[0,vZ].tmSt);
  if cnt<1 then begin Result:='нет зад'; Exit; end;
  sm:=0; lg:=0;
  for i:=1 to cnt do
      begin
      if sm<>0  then
          begin
          dd:=StatZ[i,vZ].tmSt-tmLast;
          if dd <= 0 then begin Result:='пересеч'; ActionMes:=ProgMess[209]; Exit; end;
          ddd:=(StatZ[i,vZ].valDt-valLast)*cMin*60/dd;
          if (ddd > Gradient) or (ddd < -Gradient)  then
             begin ActionMes:=Format(ProgMess[210],[Gradient]); Result:='>'+IntToStr(Gradient)+'° час'; Exit; end;
          sm:=sm+(StatZ[i,vZ].valDt+valLast)*dd/2;
          lg:=lg+dd;
          end;
      dd:=StatZ[i,vZ].tmEnd-StatZ[i,vZ].tmSt;
      valLast:=StatZ[i,vZ].valDt;
      tmLast:=StatZ[i,vZ].tmEnd;
      sm:=sm+valLast*dd;
      lg:=lg+dd;
      end;
  dd:=StatZ[1,vZ].tmSt-tmLast;
  if dd<0 then dd:=dd+24*60*cMin;
  sm:=sm+(StatZ[1,vZ].valDt+valLast)*dd/2;
  lg:=lg+dd;
  if lg<>0 then Result:=Format('%f C',[sm/lg]) else Result:='err';
end;

function TTimer502.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
var ChartBl:TChart;
    iX,iY,yG:integer;
    dbStart,dbEnd,dbDan,Midl,LongMidl,dd:Double;
    pTimers:TpTimers;
    StatZ:TStatZ;  tsk:tsk1;
    st:string;
begin
 ChartBl:=Any.Ptr;
 Result:=1;
 ActionMes:='';
 pTimers:=Adr;
 if (Col<1) or(Col > CountX) then Col:=1;
 if (Row<3) or(Row >=CountY) then Row:=3;
 with ChartBl do
  begin
  iY:=0;
  for iX:=1 to CountX do
      begin
      if (pTimers^[iX].StartTime=0) or (pTimers^[iX].T=0) then continue;
      dbStart:=pTimers^[iX].StartTime*cMin;
      dbEnd:=pTimers^[iX].EndTime*cMin;//dbStart+cMin;
      dbDan:=LoadXY(cOutBlock,iX,Row,st);
//      tsk.valDt:=pTimers^[iX-1].T/100;
//      if (dbStart=dbEnd) or (tsk.valDt=0) then continue;
      if dbEnd=0 then dbEnd:=24*60*cMin;
//--------------------------------------------
      tsk.tmSt:=dbStart;
      tsk.tmEnd:=dbEnd;
      if dbEnd<dbStart then
          begin
          tsk.tmEnd:=24*60*cMin;
          InsZ(StatZ,1,tsk);
          tsk.tmSt:=0;
          tsk.tmEnd:=dbEnd;
          end;
      InsZ(StatZ,1,tsk);
//--------------------------------------------

        with (Series[ChartBl.Tag]as TFastLineSeries) do
           begin
           AddXY(dbStart,dbDan,'',clTeeColor);
           AddXY(dbEnd,dbDan,'',clTeeColor);
           if dbStart>dbEnd then
              begin
              AddXY(0,dbDan,'',clTeeColor);
              AddXY(24*60*cMin,dbDan,'',clTeeColor);
              end;
           end;

      with (Series[0]as TGanttSeries) do
          begin
          if dbStart>dbEnd then
              begin
              yG:=AddGantt(0,dbEnd,iX*3,Format(ProgMess[235],[iX]));  //задание
              //##ValueColor[yG]:=GetColorZone(nZone,1);
              dbEnd:=24*60*cMin;
              end;
          yG:=AddGantt(dbStart,dbEnd,iX*3,Format(ProgMess[235],[iX]));
          //##ValueColor[yG]:=GetColorZone(nZone,1);
          end;
      end;
//---------------- end loop --------
//==================================
  with FSetGrid do
      begin
      ZName.Caption:='Прогноз';
      ZonesCB.Visible:=false;
      end;
  with FSetGrid.StatGrid do
      begin
      Rows:=1;
      for iX:=1 to 1 do
          begin
          Cell[1,iX]:='средняя Т';
          try
           Cell[2,iX]:=GetZ(StatZ,iX,ClimMaxGradient);//Format('%f C',[GetZ(StatZ,iX)])
          except Cell[2,iX]:='Error'; end;
          RowColor[iX]:=GetColorZone(iX,1);
          end;
      end;
  FSetGrid.StatGrid.Visible:=true;
//------------------------------------
  if (Series[0]as TGanttSeries).Count<1 then
      begin
      Result:=erNullProg;
      ActionMes:=ProgMess[212];     //'Нет заданий микроклимата!'
      Exit;
      end;
//счет среднего и проверка градиента температуры
   Midl:=0;
   LongMidl:=0;
   with (Series[ChartBl.Tag]as TFastLineSeries) do
    if Count >= 2 then
     begin
     if (XValues.Value[Count-1] > XValues.Value[0]) then
            begin
            dbDan:=YValues.Value[0]-XValues.Value[0]*(YValues.Value[Count-1]-YValues.Value[0])
              /(XValues.Value[Count-1]-24*60*cMin-XValues.Value[0]);
            AddXY(0,dbDan,'',clTeeColor);
            AddXY(24*60*cMin,dbDan,'',clTeeColor);
            end;
     for iX:=0 to count-2 do
        begin
        Midl:=Midl+(YValues.Value[iX]+YValues.Value[iX+1])*(XValues.Value[iX+1]-XValues.Value[iX]);
        LongMidl:=LongMidl+(XValues.Value[iX+1]-XValues.Value[iX]);
{        dbDan:=(YValues.Value[iX]-YValues.Value[iX+1])*cMin*60/((XValues.Value[iX]-XValues.Value[iX+1]));
        if (Row=4) and ((dbDan>ClimMaxGradient) or (dbDan<-ClimMaxGradient))  then
             begin
             Result:=erGradTemp;
             ActionMes:=Format(ProgMess[210],[ClimMaxGradient]);
             Exit;
             end; }
        end;
//     iY:=LastValue;
     end;
  end;
  if ActionMes<>'' then begin Result:=erTask; end;
  if (LongMidl > 0) and (ActionMes='') then
      begin
//      LoadXY(cOutBlock,Col,1,st);
      ActionMes:=StrBefoSpec('(',ConstNames[Row].Name)
        +Format(' Среднее=%.2f'+ConstNames[Row].Ed,[Midl/(2*LongMidl)]);  //ProgMess[211]+'= '
      end else FSetGrid.ZName.Caption:='';
end;


end.
