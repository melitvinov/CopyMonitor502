unit MSiod;

interface
uses  FConstType,FController,SysUtils, PicCtr,DefIrrig;  //
const
{#ifdef  Siod
#define NumTepl         4            /*Количество теплиц*/
#define SizeArxSiod     3            /*Количество дней архивирования СИОД*/
#define NumPort         1            /*Количество портов микроклимата*/
#define nPort0          16           /*Начало портов в калибровках*/
#define NumChan         16+NumPort   /*Количество калибруемых датчиков*/
#define NumChanTH       8            /*Количество датчиков температуры и влажности*/
#define Temp1           8            /*Начало датчиков температуры в калибровках*/
#define Hum1            12           /*Начало датчиков влажности в калибровках*/
#define NumChanSiod     8            /*Количество каналов СИОД*/
#define NumTimerSiod    20           /*Количество заданий СИОД*/
}
    NumTepl=4;
    NumChanTH=8;
    NumTimerSiod=10;// с июня 2004г. 10 вместо 20;
    SizeArxSiod=3;

NameChan403:array [1..17] of string[6]=(
     'EC1','pH1','EC2','pH2','Тем','Sun','LevА','LevВ',
     'Tem 1','Tem 2','Tem 3','Tem 4','RH 1','RH 2','RH 3','RH 4',
     'Port');
EdChan403:array [1..17] of string[7]=(
     'mSm/sm','','mSm/sm','','°C','Vt/m2','sm','sm',
     '°C','°C','°C','°C','%','%','%','%','');
     cCountYChanel=7;
     cSizeColChanel=15;


type TTimerSiod=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;
type TTimerSiod22=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;
type TTimerSiod403=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;
type TTimerKamera=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TArxivSiod=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

implementation

uses Mixer403,MessageU, GGraf;
//--------- ЗАДАНИЕ НА СУТКИ Siod ------------------
{typedef struct  eeTimerSiod
        uint    DataStart;
        uint    DataEnd;
        uint    TimeStart;
        char    SelTepl;
        uint    MinPeriod;
        uint    MaxPeriod;
        uint    MinHum;
        uint    MaxTemp;
        uint    LevSR;
        char    TimeVal[2];
        }

type rT1TimerSiod=record
     DataStart:InInt;
     DataEnd:InInt;
     TimeStart:InInt;
     SelTepl:Byte;
     MinPeriod:InInt;
     MaxPeriod:InInt;
     MinHum:InInt;
     MaxTemp:InInt;
     LevSR:InInt;
     TimeValve:array [1..2] of Byte;
     end;
type rTimerSiod=array [1..NumTimerSiod] of rT1TimerSiod;

procedure TTimerSiod.Init;//override;
begin
     CountX:=NumTimerSiod;
     CountY:=11;
//     if (((ParentCtr.CtrTip div 10)=4) or ((ParentCtr.SubTip and YesSiod)=0))then Num:=blTimerSiodOld
//         else Num:=blTimerSiodNew;
     SizeCol:=SizeOf(rT1TimerSiod);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
//     EEPSize:=SizeCol*5;
     Pref:='ПрогрСИОД';
     NameBlock:='Программы СИОД';
end;

function TTimerSiod.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;//override;
var  pTimer:^rTimerSiod;
begin
  Result:=ValX;
  pTimer:=Adr;
 case ValY of
   0: begin if ValX=0 then Txt:='Номер прогр'
         else  Txt:='Прог N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Зона N',
        Addr(pTimer^[ValX].SelTepl),SS,InBlock,ValX,ValY,Txt,'');
      end;
   2: begin
      Result:=Convers('Время начала',
        Addr(pTimer^[ValX].TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   3: begin
      Result:=Convers('Минимальная влажность',
        Addr(pTimer^[ValX].MinHum),FrmChan324[Hum1],InBlock,ValX,ValY,Txt,EdChan324[Hum1]);
      end;
   4: begin
      Result:=Convers('Максимальная температура',
        Addr(pTimer^[ValX].MaxTemp),FrmChan324[Temp1],InBlock,ValX,ValY,Txt,EdChan324[Temp1]);
      end;
   5: begin
      Result:=Convers('Включить,если света больше',
        Addr(pTimer^[ValX].LevSR),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      end;
   6: begin
      Result:=Convers('Минимальный период',
        Addr(pTimer^[ValX].MinPeriod),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   7: begin
      Result:=Convers('Максимальный период',
        Addr(pTimer^[ValX].MaxPeriod),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   8: begin
      Result:=Convers('Клап 1 вкл на',
        Addr(pTimer^[ValX].TimeValve[1]),SS,InBlock,ValX,ValY,Txt,'сек');
      end;
   9: begin
      Result:=Convers('Клап 2 вкл на',
        Addr(pTimer^[ValX].TimeValve[2]),SS,InBlock,ValX,ValY,Txt,'сек');
      end;
   10: begin
      Result:=Convers('Дата начала',
        Addr(pTimer^[ValX].DataStart),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   11: begin
      Result:=Convers('Дата окончания',
        Addr(pTimer^[ValX].DataEnd),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   end;
end;
//--------- END ЗАДАНИЕ НА СУТКИ Siod------------------
//--------- ЗАДАНИЕ НА СУТКИ Siod22------------------
{typedef struct  eeTimerSiod
        uint    DataStart;
        uint    DataEnd;
        uint    TimeStart;
        uint    TimeEnd;
        char    SelValSiod;
        char    SelSens;
        uint    MinPeriod;
        uint    MaxPeriod;
        uint    MinHum;
        uint    MaxTemp;
        uint    LevSR;
        char    TimeValSiod;
    eTimerSiod;}
type rT1TimerSiod22=record
     DataStart:InInt;
     DataEnd:InInt;
     TimeStart:InInt;
     TimeEnd:InInt;
     SelValSiod:Byte;
     SelSens:Byte;
     MinPeriod:InInt;
     MaxPeriod:InInt;
     MinHum:InInt;
     MaxTemp:InInt;
     LevSR:InInt;
     TimeValSiod:Byte;
     end;
type rTimerSiod22=array [1..NumTimerSiod] of rT1TimerSiod22;

procedure TTimerSiod22.Init;//override;
begin
     CountX:=NumTimerSiod;
     CountY:=12;
//     Num:=blTimerSiodNew;
     SizeCol:=SizeOf(rT1TimerSiod22);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:='ПрогрСИОД';
     NameBlock:='Программы СИОД';
end;

function TTimerSiod22.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;//override;
var  pTimer:^rTimerSiod22;
begin
  Result:=ValX;
  pTimer:=Adr;
 case ValY of
   0: begin if ValX=0 then Txt:='Номер программы'
         else  Txt:='Прог N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Время начала работы программы',
        Addr(pTimer^[ValX].TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   2: begin
      Result:=Convers('Время окончания работы программы',
        Addr(pTimer^[ValX].TimeEnd),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   3: begin
      Result:=Convers('Программа действует для клапана №',
        Addr(pTimer^[ValX].SelValSiod),SS,InBlock,ValX,ValY,Txt,'');
      end;
   4: begin
      Result:=Convers('Время, на которое включается клапан',
        Addr(pTimer^[ValX].TimeValSiod),SS,InBlock,ValX,ValY,Txt,'сек');
      end;
   5: begin
      Result:=Convers('Обязательная пауза между включениями',
        Addr(pTimer^[ValX].MinPeriod),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   6: begin
      Result:=Convers('Без условий повторно включать через',
        Addr(pTimer^[ValX].MaxPeriod),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   7: begin
      Result:=Convers('Номер датчика темпер/влажн для условий',
        Addr(pTimer^[ValX].SelSens),SS,InBlock,ValX,ValY,Txt,'');
      end;
   8: begin
      Result:=Convers('Включать при влажности менее',
        Addr(pTimer^[ValX].MinHum),FrmChan324[Hum1],InBlock,ValX,ValY,Txt,EdChan324[Hum1]);
      end;
   9: begin
      Result:=Convers('Включать при температуре более',
        Addr(pTimer^[ValX].MaxTemp),FrmChan324[Temp1],InBlock,ValX,ValY,Txt,EdChan324[Temp1]);
      end;
   10: begin
      Result:=Convers('Включать при накопленной радиации более',
        Addr(pTimer^[ValX].LevSR),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      end;
   11: begin
      Result:=Convers('Дата начала действия программы',
        Addr(pTimer^[ValX].DataStart),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   12: begin
      Result:=Convers('Дата окончания действия программы',
        Addr(pTimer^[ValX].DataEnd),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   end;
end;
//--------- END ЗАДАНИЕ НА СУТКИ Siod22------------------
//--------- ЗАДАНИЕ НА СУТКИ Siod403------------------
{typedef struct  eeTimerSiod
        uint    DataStart;    0
        uint    DataEnd;      2
        uint    TimeStart;    4
        uint    TimeEnd;      6
        char    NumZone;      8
        char    SelSens;      9
        uint    MinPeriod;    10
        uint    MaxPeriod;    12
        uint    MinHum;       14
        uint    MaxTemp;      16
        uint    LevSR;        18
        char    TimeValSiod;  20
    eTimerSiod;}
const cSizeColTimerSiod=21;
      iProp=6;
      cCountYTimerSiod=12;
var NameTimerSiod:array [1..cCountYTimerSiod] of TNameConst=(
    (Name:'Номер зоны СИОД';Frm:SS;Ed:'зона';TipSens:TipCalc;Min:0;Max:20;
        Def:0;Index:8;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время начала СИО';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время окончания СИО';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Время, на которое включается клапан';Frm:SS;Ed:'сек';TipSens:TipCalc;Min:0;Max:99;
        Def:0;Index:20;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Обязательная пауза между включениями';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:10;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Без условий повторно включать через';Frm:SShSSm;Ed:'час:мин';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:12;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Номер ячейки темпер/влажн для условий';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:4;
        Def:0;Index:9;Mech:32{cfBoxT_RH};AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Включать при влажности менее';Frm:SSpSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;
        Def:0;Index:14;Mech:32{cfBoxT_RH};AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Включать при температуре более';Frm:SSpSS;Ed:'°C';TipSens:TipControl;Min:0;Max:50;
        Def:0;Index:16;Mech:32{cfBoxT_RH};AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Включать при накопленной радиации более';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:1000;
        Def:0;Index:18;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дата начала действия программы';Frm:SSsSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дата окончания действия программы';Frm:SSsSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER));

procedure TTimerSiod403.Init;//override;
begin
     CountX:=NumTimerSiod;
     CountY:=cCountYTimerSiod;
     SizeCol:=cSizeColTimerSiod;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:=ProgMess[309]; //'ПрогрСИОД';
     NameBlock:=ProgMess[310]; //'Программы СИОД';
     ConstNames:=Addr(NameTimerSiod[1]);
     Translator:=CountY;
end;

function TTimerSiod403.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;//override;
var  ADat:PByteArray; tPoint: pointer;
begin
     ADat:=Adr;
     Result:=ValX;
     if ValY=0 then
        begin
        if ValX=0 then begin Txt:=ParentCtr.CtrName;Exit;end;
        Txt:=ProgMess[202]+' '+IntToStr(ValX);  //'Задание '
//        Txt:='Задание '+IntToStr(ValX);
        Exit;
        end;
     tPoint:=Addr(ADat^[ConstNames[ValY].Index+SizeCol*(ValX-1)]);
     GetExist(1,ValY);
     Result:=Convers(ConstNames[ValY].Name,
            tPoint,ConstNames[ValY].Frm,InBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
{     if (ValX>0) and (Result< ConstNames[ValY].Min) then Txt:='?Мало '+Txt;
     if (ValX>0)
        and (ConstNames[ValY].Max > 0)
        and (Result>ConstNames[ValY].Max )
          then Txt:='?Много '+Txt; }
end;
//--------- END ЗАДАНИЕ НА СУТКИ Siod403------------------

//--------- ЗАДАНИЕ НА СУТКИ КАМЕРА ------------------
type rT1TimerKamera=record
     TimeStart:InInt;
     ZDHum:InInt;
     ZDTem:InInt;
     PauseHum:InInt;
     PauseTem:InInt;
     WorkHum:Byte;
     WorkTem:Byte;
     end;
type rTimerKamera=array [1..NumTimerSiod] of rT1TimerKamera;

procedure TTimerKamera.Init;//override;
begin
     CountX:=NumTimerSiod;
     CountY:=3;
//     Num:=blTimerSiodNew;
     SizeCol:=SizeOf(rT1TimerKamera);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:='Камера';
     NameBlock:='Программы Камеры';
end;

function TTimerKamera.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;//override;
var  pTimer:^rTimerKamera;
begin
  Result:=ValX;
  pTimer:=Adr;
 case ValY of
   0: begin if ValX=0 then Txt:='Номер прогр'
         else  Txt:='Прог N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Время начала',
        Addr(pTimer^[ValX].TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   2: begin
      Result:=Convers('Влажность',
        Addr(pTimer^[ValX].ZDHum),FrmChan324[Hum1],InBlock,ValX,ValY,Txt,EdChan324[Hum1]);
      end;
   3: begin
      Result:=Convers('Температура',
        Addr(pTimer^[ValX].ZDTem),FrmChan324[Temp1],InBlock,ValX,ValY,Txt,EdChan324[Temp1]);
      end;
   end;
end;
//--------- END ЗАДАНИЕ НА СУТКИ Siod------------------
//--------- АРХИВ Siod ------------------

{typedef struct eeArxSiod
        int      Data;
        uint     SolRad;
        uint     TimeSiod[NumTepl];
        int      Midl [NumChanTH][24];
        eArxSiod;
}
type rT1ArxSiod=record
     Data:InInt;
     SolRad:InInt;
     TimeSiod:array [1..NumTepl] of InInt;
     Midl:array [1..NumChanTH,1..24] of InInt;
     end;
type rArxSiod=array [1..SizeArxSiod]of rT1ArxSiod;


procedure TArxivSiod.Init;//override;
begin
     CountX:=SizeArxSiod*NumChanTH;
     CountY:=24+1;
//     Num:=blArxSiod;
     SizeCol:=SizeOf(rT1ArxSiod);
     FullSize:=SizeCol*SizeArxSiod;//SizeArxD;
     SendByte:=FullSize;
     FixRow:=1;
     Pref:=ProgMess[260]; //'Архив климата';
     NameBlock:=ProgMess[261]; //'Архивные данные климата'
     Sort:=srNoGridGraf;
end;

function TArxivSiod.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var    pArx:^rArxSiod;
       NDat,NArx,NHour:Byte;
begin
  NDat:=(ValX-1) mod NumChanTH +1;    //Номер датчика с 1
  NHour:=ValY-1; //номер часа с 1
  NArx:=(ValX-1) div NumChanTH +1; //Номер архива
  pArx:=Adr;
  if (ValY>0) and (ValX>0) then
    if (pArx^[NArx].Data[0]<=0) or (pArx^[NArx].Data[0]>12)or
         (pArx^[NArx].Data[1]<=0) or (pArx^[NArx].Data[1]>31)then begin
            Txt:='';
            Result:=0;
            AccessW:=RW_NOEDIT;
            Exit;
            end;
  Result:=ValX;
  case ValY of
    0: if ValX=0 then Txt:=ParentCtr.CtrName
                  else Txt:=NameChan403[NDat+8];
    1: Result:=Convers(ProgMess[311],  //'Дата',
          Addr(pArx^[NArx].Data),SSsSS,InBlock,ValX,ValY,Txt,'');
    else begin
         Result:=Convers(Format(ProgMess[312],[NHour-1,NHour]), //' c '+IntToStr(NHour-1)+' до '+IntToStr(NHour)+'часа',
          Addr(pArx^[NArx].Midl[NDat][NHour]),FrmChan324[NDat+8],InBlock,ValX,ValY,Txt,EdChan403[NDat+8]);
         if Result<0.2 then Txt:=''; //'нет изм';
         end;
    end;
   AccessW:=RW_NOEDIT;
end;
//---- END АРХИВ Siod ------------------

end.
