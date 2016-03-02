unit ClimCalc;

interface

uses Math,SysUtils, Graphics, FConstType, FController,  MessageU, Registry,
     Windows, StrUtils; 

const
//     calcTrans = 1;
//     calcConsumCO2 = 2;


//* номера бит в регистре состояния */
        bNoWork=         1;  //0x01
        bMinMaxV=        32; //0x20
        bMinMaxU=        64; //0x40
        bHiAlarm=        4;  //0x04
        bLowAlarm=       8;  //0x08
        bHiCtrl=         16; //0x10
        bLowCtrl=        128;//0x80
//        lNorma=0;
        lHiA=0;
        lHiC=1;
        lLowC=2;
        lLowA=3;
//----------------------------------------
      comSun=     1;
      comSumSun=  15;
      comMidlSR=  16;
      comWind=    2;
      comMidlWind=17;

//      cGoodMeteoVal=76;
//      cBadMeteoVal=1+16;

{ По 3 байта   Теп
0 'Температура наружняя'
1 'Интенсивность сoлнца'
2 'Скорость ветра'
3 'Направление ветра'
4 'Осадки  (0-нет,>0-есть)'
5'Bлажность наружняя'
6 'Температура воды прямой'
7 'Температура воды обратной'
8 'Давление воды прямой'
9 'Давление воды обратной'
10 'Расход воды'
}
type T2Byte=integer;//SmallInt;
type TMeteo=record
     Val51:InInt;
//     RCS:Byte;
//     Value:double;
     UpdateTime:TDateTime;
     Source:string[50];
//     function GetValid(vDate:TdateTime):Boolean;
     end;

//function GetCO2Consum(vCO,vCOr,Speed:T2Byte):T2Byte;
//function GetMaxTrans(vT,vH,vTr,vHr,Speed:T2Byte):T2Byte;

function AbsHum(fTemp,fRH:T2Byte):T2Byte;
function GetMaxH(vmT:T2Byte):T2Byte;
function GetAbsH(vT,vH:T2Byte):T2Byte;
function GetDDWP(vT,vH:T2Byte):T2Byte;
function GetRH_DDWP(vT,vD:T2Byte):T2Byte;
function GetTR(vT,vH:T2Byte):T2Byte;
function GetProgn(NowTem:T2Byte):T2Byte;
procedure SunRaiseSet502;//(CalcDate:TDateTime; Long,Width: extended; TimeZone: integer; var SRaise: TDateTime; var SSet: TDateTime);
function GetColorZone(x,y:integer):TColor;
function GetWindDirect(Direct:double;wind:word):string;
function TipSensToNumImage(TipSens:TTipSens):Byte;
function RCSBitToImage(rs:Byte):Byte;
function RealSensor(v_imNum:Byte):Boolean;
function GetRowExist(Block:TBlock;y:word):TConfigExist;
function GetTextFromAlarm(vLevAlarm:integer; var vColor:TColor):string;
procedure SetCalibrDigit(Txt:string;Dest:PByteArray);
function GetDayBitFromTxt(const txt:string):Byte;
function GetPowerContur(Temp,Length,Diam:double):double;
//function TemCalcTypeToStr(vCalcType:integer):string;
//function StrToTemCalcType(str:string):integer;
//function FindTimeZone:integer;

//    LastTimeMeteo:array[0..12] of TDateTime;
var   mMeteo:array[0..24] of TMeteo;
      GlobSunRaise,GlobSunSet:TDateTime;
      GlobMeteoLong,GlobMeteoWidth:extended; GlobMeteoZone:integer;

implementation

uses GGraf;

const SKof=29;
      lMas=5;

var MaxH:array [1..SKof] of T2Byte=(
520,557,595,637,680,757,779,828,883,
941,1002,1067,1136,1208,1284,1365,1450,1539,1632,
1732,1835,1944,2060,2181,2307,2440,2579,2726,2910);

//------------------------------------
const sDiams=7;
      sTemps=21;
      SENS_SUM=6;

var PipeDiams: array [1..sDiams] of integer=(33,38,42,45,48,51,57);

var PowerCalc: array [1..sDiams,1..sTemps] of integer=(
//    2   7   12   17  22  27  32  37  42  47   52   57   62   67    72   77    82    87    92    97    102градусы
{33} (3,  9,  15,  22, 29, 37, 46, 55, 64, 73,  83,  93,  104, 115, 126,  138,  150,  163,  176,  190,  204),
{38} (3,  9,  16,  25, 33, 42, 52, 62, 72, 83,  94,  106, 118, 130, 143,  156,  170,  184,  198,  213,  228),
{42} (4,  10, 18,  27, 36, 46, 57, 68, 79, 91,  103, 115, 128, 142, 156,  170,  185,  200,  215,  231,  247),
{45} (4,  10, 19,  38, 39, 49, 60, 72, 84, 96,  109, 123, 136, 151, 166,  181,  197,  213,  230,  247,  264),
{48} (5,  12, 20,  30, 41, 52, 64, 76, 89, 102, 116, 130, 144, 159, 175,  191,  207,  224,  241,  258,  274),
{51} (5,  13, 21,  32, 43, 55, 67, 80, 93, 107, 122, 137, 152, 168, 185,  202,  219,  237,  255,  274,  293),
{57} (6,  14, 23,  35, 47, 60, 74, 88, 103,118, 134, 151, 168, 185, 204,  223,  242,  261,  281,  301,  321)

);

function GetPowerContur(Temp,Length,Diam:double):double;
var
  xTable, yTable,i: integer;
  PrDiam, PrTemp, tPow1, tPow2: double;
begin
  if Diam>PipeDiams[sDiams] then Diam:=PipeDiams[sDiams];
  if Diam<PipeDiams[1] then Diam:=PipeDiams[1];
  for i:=1 to sDiams-1 do
  begin
    if (Diam>=PipeDiams[i]) and (Diam<=PipeDiams[i+1]) then
      yTable:=i;
  end;
  PrDiam:=(Diam-PipeDiams[yTable])/(PipeDiams[yTable+1]-PipeDiams[yTable]);
  if Temp>101.9 then Temp:=101.9;
  if Temp<2 then Temp:=2;
  xTable:=round(Temp-2) div 5;
  PrTemp:=(Temp-2-xTable*5)/5;
  xTable:=xTable+1;
  tPow1:=(PowerCalc[yTable,xTable]+(PowerCalc[yTable+1,xTable]-PowerCalc[yTable,xTable])*PrDiam);
  tPow2:=(PowerCalc[yTable,xTable+1]+(PowerCalc[yTable+1,xTable+1]-PowerCalc[yTable,xTable+1])*PrDiam);
  Result:=(tPow1+(tPow2-tPow1)*PrTemp)*Length/1000000;
end;


function GetTextFromAlarm(vLevAlarm:integer; var vColor:TColor):string;
begin
   case  vLevAlarm  of
   alFatal:
         begin
         Result:=ProgMess[243];  //'Авария управления';
         vColor:=clRed;
         end;
   alHand:
         begin
         Result:=ProgMess[244];  //'Есть ручное управление';
         vColor:=clFuchsia;
         end;
   alDifficulty:
         begin
         Result:=ProgMess[245];  //'Управление затруднено';
         vColor:=clFuchsia;
         end;
   alAttention:
         begin
         Result:=ProgMess[246];  //'Обратить внимание';
         vColor:=clPurple;
         end;
   alBlueAttention:
         begin
         Result:=ProgMess[247];  //'Обратить внимание';
         vColor:=clBlue;
         end
   else
         begin
         Result:=ProgMess[248];  //'Управляет';
         vColor:=clLime;
         end;
   end;
end;
//-------------------------------------

function GetRowExist(Block:TBlock;y:word):TConfigExist;
var i:word;
begin
     Result:=cfExistFalse;  //cfExistNone,cfExistTrue,cfExistFalse
     with Block do
     for i:=1 to ParentCtr.SumZone do
      if GetExist(i,y) <> cfExistFalse then
       begin Result:=cfExistTrue; break; end;
end;

function GetColorZone(x,y:integer):TColor; //override;
begin
    case x of
    1: Result:=clYellow;
    2: Result:=clAqua;
    3: Result:=clLime;
    4: Result:=clFuchsia
    else Result:=clNone;
    end;
end;

function GetDayBitFromTxt(const txt:string):Byte;
var i, mask, pos1, pos2:word;
begin
  Result:=0;
  if (Txt='') or (Txt=ProgMess[340]) then Exit;
  mask:=64;
  for i:=1 to 7 do
    begin
    pos1:=Pos(ProgMess[339][-1+i*3],txt);   //DayOfWeekName
    while pos1 > 0 do
        begin
        pos2:=PosEx(ProgMess[339][i*3],txt,pos1+1);  //DayOfWeekName
        if (pos2 > pos1) and ((pos2-2) <= pos1) then
            begin
            Result:=Result or mask;
            break;
            end;
         pos1:=PosEx(ProgMess[339][-1+i*3],txt,pos1+1); //DayOfWeekName
         end;
    mask:=mask shr 1;
    end;
end;

procedure SetCalibrDigit(Txt:string;Dest:PByteArray);
var i, posTire, posStart, SumTriade:word;
  ResByte:array[1..8] of Byte;
  Res:Boolean;
  Triade:string;
begin
//        if Txt <> '' then
//            for PortNum:=0 to 7 do
//              pSensNum^[PortNum]:= StrToInt(copy(Txt,4*PortNum+1,3));
  Res:=False;
  SumTriade:=0;
  posStart:=1;
  Txt:=Txt+'-';
  try
  for i:=1 to 8 do
    begin
    posTire:=PosEx('-',txt,posStart);
    if posTire > 0 then SumTriade:=SumTriade+1
    else break;
    Triade:=Copy(Txt,posStart,posTire-posStart);
    ResByte[i]:=StrToInt(Triade);
    posStart:=posTire+1;
    end;
  if SumTriade=8 then
    begin
    for i:=1 to 8 do
      Dest^[i-1]:=ResByte[i];
    end;
  except end;
end;

function RealSensor(v_imNum:Byte):Boolean;
begin
  result:=(v_imNum = imBook) or (v_imNum > imNoRealPC);  // 27.11.06
//  result:=(imNum=0) or ((imNum >= imNorm) and (imNum <= imNoCalibr));
end;

//--- 24.12.2007г. заменено для WindSonic по часовой стрелке
//--- 22.04.2008 назад против часовой стрелки
function GetWindDirect(Direct:double;wind:word):string;
begin
  if wind=0 then Result:=ProgMess[251] else   //'Нет ветра'
//    begin
//    if (MeteoTipM127_0 = 0) then Direct:=360-Direct;
    case Trunc((Direct+22.5)/45) of
      0,8: Result:=ProgMess[252];  //'Северный';
      1: Result:=ProgMess[253];  //'Северо-Западный';    7
      2: Result:=ProgMess[254];  //'Западный';           6
      3: Result:=ProgMess[255];  //'Юго-Западный';       5
      4: Result:=ProgMess[256];  //'Южный';
      5: Result:=ProgMess[257];  //'Юго-Восточный';      3
      6: Result:=ProgMess[258];  //'Восточный';          2
      7: Result:=ProgMess[259];  //'Северо-Восточный';   1
      end;
//    end;
end;


// ****************************************************************************************************************
function RCSBitToImage(rs:Byte):Byte;
begin
  Result:=imNorm;
  if (rs and bLowCtrl)>0 then Result:=imSigLow;
  if (rs and bHiCtrl)>0  then Result:=imSigHi;
  if (rs and bLowAlarm)>0 then  Result:=imAlarmLow;
  if (rs and bHiAlarm)>0 then Result:=imAlarmHi;
  if (rs and bMinMaxU)>0 then Result:=imNoCalibr; //32
  if (rs and bMinMaxV)>0 then Result:=imNoReal; //32
  if (rs and bNoWork)>0  then Result:=imNoConnect;
//  if not Ready then imNum:=imNoConnect;
//  if (Result > imBook) and  (Result <= imAlarmHi)then imColor:=clRed;
end;

function TipSensToNumImage(TipSens:TTipSens):Byte;
begin
 case TipSens of
     TipCalc: Result:=imRasch;
     TipProg: Result:=imProg;
     TipTimer:Result:=imTimer;
     TipSun:  Result:=imSun;
     TipDo:   Result:=imDo;
     TipAdd:  Result:=imAdd
     else Result:=imIzmer;
     end;
end;

function AbsHum(fTemp,fRH:T2Byte):T2Byte;
var
	tT,tRH,tRez:integer;
begin
	tT:=fTemp div 100;
	tRH:=fRH div 100;
	tRez:=Round( ((0.000002*tT*tT*tT*tT)+(0.0002*tT*tT*tT)+(0.0095*tT*tT)+( 0.337*tT)+4.9034)*tRH );
	Result :=  tRez;
end;

function GetMaxH(vmT:T2Byte):T2Byte;
var sot:integer;
begin
  sot:=vmT mod 100;
  vmT:=vmT div 100;
  if (vmT<1) or (vmT>=SKof) then Result:=0
  else Result:=MaxH[vmT]+(MaxH[vmT+1]-MaxH[vmT])*sot div 100;
end;

function GetAbsH(vT,vH:T2Byte):T2Byte;
begin
  Result:=AbsHum(vT,vH);
 //Result:=vH*GetMaxH(vT) div 10000; //АВ=ОВ*МаксН/100
end;

{function GetCO2Consum(vCO,vCOr,Speed:T2Byte):T2Byte;
begin
    Result := (vCOr - vCO)*Speed;
    // разница между датчиком в теплице и датчиком в рукаве и умноженное на скорость вращения вентиляторов
end;

function GetMaxTrans(vT,vH,vTr,vHr,Speed:T2Byte):T2Byte;
var
absHruk:integer;
absH:integer;
res:integer;
begin
    absHruk := AbsHum(vTr, vHr);
    absH    := AbsHum(vT, vH);
    res := (absH - absHruk)*Speed;
    Result := res;
    // разница между датчиком в теплице и датчиком в рукаве и умноженное на скорость вращения вентиляторов
end;      }


{function GetMaxTrans(vT,vH,vTr,vHr,Speed:T2Byte):T2Byte;
var
absHruk:integer;
absH:integer;
begin
    absHruk := vHr*GetMaxH(vTr) div 10000;
    absH    := vH*GetMaxH(vT) div 10000;
    Result:= (absHruk - absH)*Speed;
    // разница между абсолютной влажностью в рукове и абс влажностью в тепл и умноженное на скорость вращения вентиляторов
end;}

function GetDDWP(vT,vH:T2Byte):T2Byte;
begin
 if vH=0 then Result:=0 else
  Result:=GetMaxH(vT)*(10000-vH) div 10000; //DDWP=MaxH-АВ(ОВ*МаксН/100)
end;

function GetRH_DDWP(vT,vD:T2Byte):T2Byte;
var mxH:integer;
begin
 Result:=0;
 if (vT=0) or (vD=0) then Exit;
 mxH:=GetMaxH(vT);
 if mxH>0 then
 Result:=(100-vD*100 div mxH)*100;
end;

function GetTR(vT,vH:T2Byte):T2Byte;
var ed_ros,av:integer;
begin
 Result:=0;
 av:=vH*GetMaxH(vT) div 10000;
 for ed_ros:=1 to SKof-1 do
  if (av>=MaxH[ed_ros]) and (av<MaxH[ed_ros+1]) then begin
      Result:=(ed_ros*100+(av-MaxH[ed_ros])*100 div (MaxH[ed_ros+1]-MaxH[ed_ros]));
      Exit;
      end;
end;

var
    PrevTemp:T2Byte;
    PrevSumDifr,sr:Double;
    mPul:array [1..lMas] of T2Byte;

function GetProgn(NowTem:T2Byte):T2Byte;
var i:integer;
begin
  if PrevTemp=0 then
     begin
     PrevTemp:=NowTem;
     PrevSumDifr:=0;
     end;
{  vDif:=NowTem-PrevTemp;
  PrevSumDifr:=(PrevSumDifr*19+vDif)/20 ;
  Result:=round(PrevSumDifr*10+NowTem);
  PrevTemp:=NowTem; }
//  PrevDifr:=vDif;
 sr:=0;
 for i:=lMas downto 2 do
    begin
    sr:=sr+mPul[i];
    mPul[i]:=mPul[i-1];
    end;
 sr:=sr+mPul[1];
 mPul[1]:=NowTem-PrevTemp;
 PrevTemp:=NowTem;
 sr:=sr+mPul[1];
 Result:=round(sr/(lMas+1)*10+NowTem);
//if (mPul[2]<40) and (mPul[2]>10) then Result:=NowTem*2-mPul[2]
//  else Result:=NowTem;
end;

{function FindTimeZone:integer;
var
  reg: TRegistry;
begin
  reg:=TRegistry.Create;
  try
    reg.RootKey:=HKEY_LOCAL_MACHINE;
    reg.OpenKey('System\CurrentControlSet\Control\TimeZoneInformation',false);
    Result:=reg.ReadInteger('ActiveTimeBias') div 60;
  except
    Result:=-3;
  end;
  reg.Free;
end; }

procedure SunRaiseSet502;//(CalcDate:TDateTime; Long: extended; Width: extended; TimeZone: integer; var SRaise: TDateTime; var SSet: TDateTime);
var
  Date: word;
  Month: word;
  Year: word;
  C0,H3,M3: integer;
  Z0,G,J3,D1,F,J,S,A,T,TT,T0,SM,DR,L,P2,V,U,W,AA1,DA1,R5,AA2,DA2,
  Z1,C,Z,M8,W8,A0,D0,DA,DD,P,A2,D2,K1,L0,L2,H0,H1,V2,H2,V0,P1,V1,B,
  D,EE,T3,H7,N7,D7,AZ: extended; Long: extended;

function Flooring(X: extended): integer;
begin
  if (X>=0)  then
    Result:=floor(X)
  else
    Result:=ceil(X);
end;

begin
  DecodeDate(Now,Year,Month,Date);
  Long:=GlobMeteoLong/360;
  Z0:=-GlobMeteoZone/24;    //FindTimeZone/24;//
  P1:=3.14159265358;
  P2:=2.*P1;
  DR:=P1/180;

  G:=1;
  J3:=0;
  if (Year<1583) then G:=0;
  D1:=Flooring(Date);
  F:=Date-D1-0.5;
  J:=-Flooring(7*(Flooring((Month+9)/12)+Year)/4);
  if (G<>0) then
  begin
    if ((Month-9)<0) then S:=-1
    else S:=1;
    A:=abs(Month-9);
    J3:=Flooring(Year+S*Flooring(A/7));
    J3:=-Flooring((Flooring(J3/100)+1)*3/4);
  end;
  J:=J+Flooring(275*Month/9)+D1+G*J3;
  J:=J+1721027+2*G+367*Year;
  if (F<0) then
  begin
     F:=F+1;
     J:=J-1;
  end;
  T:=(J-2451545)+F;
  TT:=T/36525+1;
  T0:=T/36525;
  S:=24110.5+8640184.813*T0;
  S:=S+86636.6*Z0+86400*Long;
  S:=S/86400;
  SM:=Flooring(S);
  S:=S-Flooring(S);
  T0:=S*360*DR;
  T:=T+Z0;
  L:=0.779072+0.00273790931*T;
  G:=0.993126+0.0027377785*T;
  L:=L-Flooring(L);
  G:=G-Flooring(G);
  L:=L*P2;
  G:=G*P2;
  V:=0.39785*sin(L);
  V:=V-0.01000*sin(L-G);
  V:=V+0.00333*sin(L+G);
  V:=V-0.00021*TT*sin(L);
  U:=1-0.03349*cos(G);
  U:=U-0.00014*cos(2*L);
  U:=U+0.00008*cos(L);
  W:=-0.00010-0.04129*sin(2*L);
  W:=W+0.03211*sin(G);
  W:=W+0.00104*sin(2*L-G);
  W:=W-0.00035*sin(2*L+G);
  W:=W-0.00008*TT*sin(G);
  S:=W/sqrt(U-V*V);
  AA1:=L+arctan(S/sqrt(1-S*S));//tahn
  S:=V/sqrt(U);
  DA1:=arctan(S/sqrt(1-S*S));   //tahn
  R5:=1.00021*sqrt(U);
  T:=T+1;
  L:=0.779072+0.00273790931*T;
  G:=0.993126+0.0027377785*T;
  L:=L-Flooring(L);
  G:=G-Flooring(G);
  L:=L*P2;
  G:=G*P2;
  V:=0.39785*sin(L);
  V:=V-0.01000*sin(L-G);
  V:=V+0.00333*sin(L+G);
  V:=V-0.00021*TT*sin(L);
  U:=1-0.03349*cos(G);
  U:=U-0.00014*cos(2*L);
  U:=U+0.00008*cos(L);
  W:=-0.00010-0.04129*sin(2*L);
  W:=W+0.03211*sin(G);
  W:=W+0.00104*sin(2*L-G);
  W:=W-0.00035*sin(2*L+G);
  W:=W-0.00008*TT*sin(G);
  S:=W/sqrt(U-V*V);
  AA2:=L+arctan(S/sqrt(1-S*S)); //tahn
  S:=V/sqrt(U);
  DA2:=arctan(S/sqrt(1-S*S));    //tahn
  R5:=1.00021*sqrt(U);
  if (AA2 < AA1) then AA2:=AA2+P2;
  Z1:=DR*(90.833);
  S:=sin(GlobMeteoWidth*DR);
  C:=cos(GlobMeteoWidth*DR);
  Z:=cos(Z1);
  M8:=0;
  W8:=0;
  A0:=AA1;
  D0:=DA1;
  DA:=AA2-AA1;
  DD:=DA2-DA1;
  for C0:=0 to 23 do
  begin
    P:=(C0+1)/24;
    A2:=AA1+P*DA;
    D2:=DA1+P*DD;
    K1:=15*DR*1.0027379;
    L0:=T0+C0*K1;
    L2:=L0+K1;
    H0:=L0-A0;
    H2:=L2-A2;
    H1:=(H2+H0)/2;
    D1:=(D2+D0)/2;
    if (C0<=0) then V0:=S*sin(D0)+C*cos(D0)*cos(H0)-Z;
    V2:=S*sin(D2)+C*cos(D2)*cos(H2)-Z;
    if ((V0<0)and(V2<0))or((V0>0)and(V2>0)) then
    //if ((V0<0?-1:1)==(V2<0?-1:1)) {
//			return
    begin
      A0:=A2;
      D0:=D2;
      V0:=V2;
      continue;
    end;
    V1:=S*sin(D1)+C*cos(D1)*cos(H1)-Z;
    A:=2*V2-4*V1+2*V0;
    B:=4*V1-3*V0-V2;
    D:=B*B-4.*A*V0;
    if (D<0) then
//			return
    begin
      A0:=A2;
      D0:=D2;
      V0:=V2;
      continue;
    end;
    D:=sqrt(D);
    EE:=(-B+D)/(2*A);
    if (EE>1) or (EE<0) then EE:=(-B-D)/(2*A);
    T3:=C0+EE+1/120;
    H3:=Flooring(T3);
    M3:=Flooring((T3-H3)*60);
    if (V0<0)and (V2>0) then
    begin
      GlobSunRaise:=EncodeTime(H3,M3,0,0);
      M8:=1;
    end;
    if (V0>0)and(V2<0) then
    begin
      GlobSunSet:=EncodeTime(H3,M3,0,0);
      W8:=1;
    end;
    H7:=H0+EE*(H2-H0);
    N7:=-cos(D1)*sin(H7);
    D7:=C*sin(D1)-S*cos(D1)*cos(H7);
    AZ:=arctan(N7/D7)/DR;  //arctahn
    if (D7<0) then AZ:=AZ+180;
    if (AZ<0) then AZ:=AZ+360;
    if (AZ>360) then AZ:=AZ-360;

    A0:=A2;
    D0:=D2;
    V0:=V2;
  end;
end;

end.
