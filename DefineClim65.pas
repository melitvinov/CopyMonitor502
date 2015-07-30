unit DefineClim65;

interface
uses FConstType, FController, Graphics, ClimCalc, MessageU;  //DefineBoil,

//const
{        treeTA=          0;
        treeCA=          1;
        treeTR=          2;
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
        lLowA=3;  }

type eNameStr=string[40];

//*определения единиц измерения*/
type TUnit=(u,uB,uT,uPr,uYesNo,uOnOff,uBt,uDj,uPa,uMM,uMSec,uPPM,uGr,uKgsm);

type  eNameMes=record
        Name:string[60];
        ShowAlarm:Byte;
        LevelAlarm:Byte;
        NByte:integer;
        Mask:Byte;
        NPar:Word;
        Voice:string[20];
        end;
type  eNameASens=record
        Name:string[40];
        Frm:TSFormat;
        Ed:string[10];
        TipSens:TTipSens;
        Min,Max:word;
        end;

type eIzASens=record
        IZ:InInt;
        RCS:Byte;
        end;
type mIzASens=array [1..1] of eIzASens;
type eIzDSens=record
        RCS:Byte;
        end;
type mIzDSens=array [1..1] of eIzDSens;

const
        SProgn=         10;
        cSumContur=       7;
        cSMech=          10;
        NumTimer=10;
        NumArx=5;
        NumArxV5=3;
        cSInTeplSens=	15; // Количество датчиков в теплице
        cSMeteoSens=	11; // Количество датчиков метеостанции

// ------- Горячий блок - РАСЧИТАННЫЕ ПАРАМЕТРЫ ---------------------------
const
             STVirtSens=      4;
             SumCommon=       20;
             SumSensOut=      cSMeteoSens;
             StCommon=        1;
             EndCommon=       StCommon+SumCommon-1;      //в ПК - номер начала датчиков
             SourseMeteo=     StCommon+15;
             posAbsMaxWater=  16;
             posZoneMaxWater= 49;
             SSumSun=         12;
             S1TASens=        14;

             StTeplSens=      EndCommon+1;
             SumTeplASens=    cSInTeplSens;
             SumTeplDSens=    2;
             EndTeplSens=     StTeplSens+SumTeplASens+SumTeplDSens-1;                   //в ПК - номер начала датчиков

             SumTeplCalc=     12;//14;//10+STVirtSens;
             StTeplCalc=      EndTeplSens+1;                   //в ПК - номер начала расчета клим
             EndTeplCalc=     StTeplCalc+SumTeplCalc-1;                  //в ПК - номер окончания расчета клим

             SumTeplWarm=     13+10*5;//11+10*5;//51;
             StTeplWarm=      EndTeplCalc+1;       //в ПК - номер начала контуров обогрева
             EndTeplWarm=     StTeplWarm+SumTeplWarm-1;       //в ПК - номер окончания контуров обогрева

             SumTeplVent=     13;
             StTeplVent=      EndTeplWarm+1;       //в ПК - номер начала контуров обогрева
             EndTeplVent=     StTeplVent+SumTeplVent-1;       //в ПК - номер окончания контуров обогрева

             SumTeplScreen=   7;
             StTeplScreen=    EndTeplVent+1;           //в ПК - номер начала контуров экрана
             EndTeplScreen=   StTeplScreen+SumTeplScreen-1;

               SCalcPump=       5;
               SCalcRegul=      13;
               SCalcMecan=      SCalcPump+SCalcRegul;
               SASens=20;

             SumTeplMecan=    42; //56;
             StTeplMecan=     EndTeplScreen+1;              //в ПК - номер начала положений механизмов
             EndTeplMecan=    StTeplMecan+SumTeplMecan-1;
             StTeplRez=       EndTeplMecan+1;
             SumTeplRez=      0;
             EndTeplRez=      StTeplRez+SumTeplRez-1;
             SumMesTepl=      EndTeplRez-SumCommon;
             SumMesHot=       EndTeplRez;//SumMesTepl+SumCommon;

             ibNews=           0;
//			/*Блок пиема из ПК*/
             iSensOut=        1;//7;
             iPCSend325=      0;//iSensOut;
             sizeSensOut=     cSMeteoSens*3;
             iNextTAir=       iSensOut+sizeSensOut;//iRez+12;
             iAbsMaxWater=    iNextTAir;
             iVosx=           iNextTAir+8;//iRez+sizeRez;
//             iVosx=           iPulRelay+8;//iRez+sizeRez;
             iSumSun=         iVosx+4;//iPCBlock+sizePCBlock325-2;//6;
             iRezer=          iSumSun+2;
             iPulRegul=       iSumSun+2;
             iMidlSR=         iRezer+12;
             sizePCSend325=   iMidlSR;
             iMidlWind=       iMidlSR+2;
             iPozFluger=      iMidlSR+4;
             iTime=           iPozFluger+2;
             iHand=           iTime+5;
             cSendTime=       iHand+1;

//typedef struct eeTepl
	{

				uchar 		Cfg[2];

				eSensing	InTeplSens[cSInTeplSens];
				char		DiskrSens[4];

				int			RCS;
/*
	0х01 - 1 - нет задания температуры
	0х02 - 1 - нет измерения температуры
	0х04 - 1 - температура скорректирована по солнцу
	0х08 - 1 - температура
*/
				eClimTask	AllTask;
				eOtherCalc	OtherCalc;

				eWaterCalc	WaterCalc;
				eKontur		Kontur[cSKontur+1];
				eMechanic	Mechanic[cSMechanic+1];
		 eTepl;					}

             iTepl=           iHand+1;//iPozFluder+2;
              itConfig=        0;
              itSensorIn=      2;
              itTAir=          2;
              itRH=            5;
              itTSheet=        8;
              sizeSensorIn=    cSInTeplSens*3;
              itTeplDSens=     itSensorIn+sizeSensorIn;
              itTeplRCS=       itTeplDSens+4;
                itTeplTemRSC=  itTeplRCS+1;
                itTeplWinRSC=  itTeplRCS+0;
              itClimTask=      itTeplRCS+2;
              itTaskT=         itClimTask;
              itDoT=           itTaskT+2;
              sizeClimTask=    24;//22;
              itOtherCalc=     itClimTask+sizeClimTask;
              sizeOtherCalc=   8;
              itWaterCalc=     itOtherCalc+sizeOtherCalc;
              itRaisedCritery=  itWaterCalc;
              sizeWaterCalc=   28 ;
              itKontur=        itWaterCalc+sizeWaterCalc;
                itKonturRCS=   itKontur+20;
              size1Kontur=     22;
              SizeContur=      size1Kontur;
              iZoneMaxWater=   itKontur+(cSumContur)*size1Kontur;
              itMechanic=      itKontur+(cSumContur)*size1Kontur;
              size1Mec=        2;
              sizeTepl=        itMechanic+(cSMech+1)*size1Mec;

              // ( MESI
              // Смещение на последний блок данных о механизмах
              iMech=           iTepl + sizeTepl*2;
              // Размер последнего блока (20 механизмов * 2 байта)
              sizeTMech=       40;
              // Количество реальных механизмов
              START_MECH_NUM= 133;
//              ZONE_SM= 180;
//              MECH_KOL = 28;

{ 1 байт - RCS
2 байт - состояние

Для большинства:
0 бит RCS - режим работы:       авто (0) / ручн(1)
1 бит RCS - наличие механизма:  есть (0) / нет (1)
MESI }

// Номер бита RCS дозатора CO2, в котором указан тип механизма (клапан, задвижка)
//CO2_TYPE_BIT_NUM: Byte = 7;
// Номера механизмов в структуре cDefineMech
T_VALVE1      = 1;
T_PUMP1       = 2;
T_VALVE2      = 3;
T_PUMP2       = 4;
T_VALVE3      = 5;
T_PUMP3       = 6;
T_VALVE4      = 7;
T_PUMP4       = 8;
T_VALVE5      = 9;
T_PUMP5       = 10;
T_FRAM_NORTH  = 11;
T_FRAM_SOUTH  = 12;
T_SCREEN      = 13;
T_CO2         = 14;
T_VENT        = 15;
T_VAG         = 16;
T_SIO_PUMP    = 17;
T_SIO_VALVES  = 18;
T_PRES_REG    = 19;
T_LIGHT      = 20;
T_EXTREG1     =21;

SValTp=130;
//cSumZona=  3;


type TDefineHot=array [1..SumMesHot] of TNameConst;

const
cDefineHotV0:TDefineHot=( //array [1..EndHot] of eNameConst=(
// ----------------- Метеоданные -----------------
{1}(Name:'Температура наружная';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-40;Max:60;Index:iSensOut),
(Name:'Интенсивность сoлнца';Frm:SSSS;Ed:'Вт/м2';TipSens:SensorRCS;Min:0;Max:2000;Index:iSensOut+3),
(Name:'Скорость ветра';Frm:SSpS0;Ed:'м/сек';TipSens:SensorRCS;Min:0;Max:40;Index:iSensOut+6),
(Name:'Направление ветра';Frm:SSSS;Ed:'°';TipSens:SensorRCS{TipText};Min:0;Max:360;Index:iSensOut+9),
(Name:'Дождь';Frm:SSSS;Ed:'';TipSens:TipNoCalibr;Min:-10;Max:10;Index:iSensOut+12),
(Name:'Bлажность наружная';Frm:SSpS0;Ed:'%';TipSens:SensorRCS;Min:0;Max:100;Index:iSensOut+15),
(Name:'Температура воды прямой';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:150;Index:iSensOut+18),
(Name:'Температура воды обратной';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:100;Index:iSensOut+21),
(Name:'Давление воды прямой';Frm:SSSpS;Ed:'Кг/см2';TipSens:TipSensor;Min:0;Max:16;Index:iSensOut+24),
{10}(Name:'Давление воды обратной';Frm:SSSpS;Ed:'Кг/см2';TipSens:TipSensor;Min:0;Max:14;Index:iSensOut+27),
(Name:'Расход воды';Frm:SSSS;Ed:'м3/час';TipSens:TipSensor;Min:0;Max:600;Index:iSensOut+30),

(Name:'Накопленная сoлнечная радиация';Frm:SSSS;Ed:'Дж/см2';TipSens:TipSR;Min:0;Max:8000;Index:iSumSun),
(Name:'Солнечная радиация Средняя';Frm:SSSS;Ed:'Вт/м2';TipSens:TipSun;Min:0;Max:2000;Index:iMidlSR),
(Name:'Ветер Средний';Frm:SSpS0;Ed:'м/сек';TipSens:TipCalc;Min:0;Max:40;Index:iMidlSR+2),
(Name:'Наветренная строна';Frm:ComboSS;Ed:'';TipSens:TipCalc;Min:comNord;Max:comNord+1;Index:iMidlSR+4),
(Name:'Ручное управление';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:2;Index:iHand),
(Name:'Время восхода солнца';Frm:SShSSm;Ed:'';TipSens:TipSun;Min:cMin;Max:24*60*cMin;Index:iVosx),
(Name:'Время захода солнца';Frm:SShSSm;Ed:'';TipSens:TipSun;Min:cMin;Max:24*60*cMin;Index:iVosx+2),
(Name:'Время в контроллере';Frm:SShSSm;Ed:'час:мин';TipSens:TipTime;Min:cMin;Max:24*60*cMin;Index:iTime),
{20}(Name:'Дата в контроллере';Frm:SSsSS;Ed:'';TipSens:TipTime;Min:35065;Max:200*365;Index:iTime+2),

// ------- ИЗМЕРЯЕМЫЕ ПАРАМЕТРЫ ТЕПЛИЦЫ  -----------------------
{21}(Name:'Темпер воздуха ';Frm:SSpS0;Ed:'°C';TipSens:TipGoTask{TipSensor};Min:3;Max:70;Index:itTAir),
(Name:'Относит влажность воздуха';Frm:SSpS0;Ed:'%';TipSens:TipSensor;Min:3;Max:100;Index:itRH),
(Name:'Температура листа';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:10;Max:60;Index:itTAir+6),
(Name:'Температура почвы';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:10;Max:60;Index:itTAir+9),
{25}(Name:'Температура резерв';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:0;Max:70;Index:itTAir+12),
(Name:'Температура стекла';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:-25;Max:70;Index:itTAir+15),
(Name:'Концентрация СО2';Frm:SSSS;Ed:'ppm';TipSens:TipSensor;Min:100;Max:3000;Index:itTAir+18),
(Name:'Темпер воздуха контроль';Frm:SSpS0;Ed:'°C';TipSens:TipGoTask;Min:3;Max:70;Index:itTAir+21),
//(Name:'Темпер воздуха контроль';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:3;Max:70;Index:itTAir+21),
(Name:'Сокодвижение';Frm:SSpS0;Ed:'мл/час';TipSens:TipSensor;Min:0;Max:70;Index:itTAir+24),
(Name:'Диаметр плода';Frm:SSSS;Ed:'мм';TipSens:TipSensor;Min:0;Max:100;Index:itTAir+27),
{31}(Name:'Вода прямая контур 1';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:10;Max:150;Index:itTAir+30),
(Name:'Вода прямая контур 2';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:10;Max:150;Index:itTAir+33),
(Name:'Вода прямая контур 3';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:10;Max:150;Index:itTAir+36),
(Name:'Вода прямая контур 4';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:10;Max:150;Index:itTAir+39),
(Name:'Вода прямая контур 5';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:10;Max:150;Index:itTAir+42),
{36}(Name:'Состояние досветки';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itTeplDSens+1),
{37}(Name:'Состояние полива';Frm:ComboBit;Ed:'1';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itTeplDSens+1),

// ------- РАСЧИТАННЫЕ ПАРАМЕТРЫ ТЕПЛИЦЫ ---------------------------
{38}(Name:'Температура воздуха - Задана';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:3;Max:35;Index:itTaskT),
(Name:'Температура воздуха - ДЕРЖАТЬ';Frm:SSpS0;Ed:'°C';TipSens:TipSun;Min:3;Max:35;Index:itTaskT+2),
{40}
(Name:'Влажность воздуха - Задана по програм';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:95;Index:itTaskT+10),
(Name:'Влажность воздуха - ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipSun;Min:0;Max:95;Index:itTaskT+12),
(Name:'Температура вентиляции - Расчитана';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:5;Max:40;Index:itTaskT+4),

{43}(Name:'СО2 - Задано по программе';Frm:SSSS;Ed:'ppm';TipSens:TipTimer;Min:0;Max:1500;Index:itTaskT+14),
(Name:'СО2 - ДЕРЖАТЬ концентрацию';Frm:SSSS;Ed:'ppm';TipSens:TipSun;Min:0;Max:1500;Index:itTaskT+16),

(Name:'Абсолютная влажность воздуха';Frm:SSpS0;Ed:'г/м3';TipSens:AbsRH;Min:0;Max:20;Index:0{iRez}),
(Name:'Дефицит водяного пара воздуха';Frm:SSpS0;Ed:'г/м3';TipSens:DDWP;Min:0;Max:20;Index:0{iRez}),
{47}(Name:'Дефицит водяного пара листа';Frm:SSpS0;Ed:'г/м3';TipSens:DDWPS;Min:0;Max:20;Index:0{iRez}),
(Name:'Точка росы';Frm:SSpS0;Ed:'°C';TipSens:TR;Min:0;Max:40;Index:0{iRez}),
{49}
(Name:'Максимальный теплоноситель';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:iZoneMaxWater;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
//(Name:'Сейчас расхождение-(Тзад-Тизм)';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:-5;Max:5;Index:iContur+12),//iDifferTemp),
//(Name:'Прогноз задания температуры';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:3;Max:35;Index:itTaskT+6),
//(Name:'Прогноз задания влажности';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:95;Index:itTaskT+8),
//(Name:'Рассчет температуры';Frm:SSpS0;Ed:'°C';TipSens:PrognT;Min:0;Max:50;Index:iNextTAir),
{52}
{				int		DifTAirTDo;//Разница междуизмеренным и заданным
				int		UpSR;//Повышение температуры теплицы солнцем	2
				int		LowGlass;//Понижает стекло	4
				int		LowOutWinWind;//Понижает ветер и внешняя температура	6
				int		UpLight;//Повышает включение досветки	8
				int		ICorrection;//Коррекция управляющей функции по разности задания и измерения	10
				int		LowRain;//Понижают осадки	12

				int		DCorrection;//Коррекция управляющей функции по 2 разности	14    SSSpS
				int		UpScreen;//Изменяет экран	16
				int		PCorrection;//Коррекция управляющей функции по 1 разности	18     SSSpSSSSpS

				int		Critery;//Цель-изменить теплоноситель на	20                   SSSpS
				int		dNextTCalc;//Прогноз температуры (для приоритетов)	22

				int		dSumCalc;//Приращение внешних влияний	24                       SSSpS

				int		LastCrit;//Остаток от предыдущих расчетов	26                   SSSpS
}
(Name:'Т теплицы - Солнце повышает на';Frm:SSpSS;Ed:'°C';TipSens:TipSun;Min:0;Max:60;Index:itRaisedCritery+2),
(Name:'Т теплицы - (Тзад-Твнеш) понижает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:30;Index:itRaisedCritery+6),
(Name:'Т теплицы - (Тзад-Тстекла) понижает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:30;Index:itRaisedCritery+4),
//(Name:'Т теплицы- (Тзад-Трезерв)понижает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:20;Index:itRaisedCritery+10),
//(Name:'Т теплицы- (Тзад-Твозд) изменяет на';Frm:SSpS0;Ed:'°C';TipSens:TipAdd;Min:-80;Max:80;Index:itRaisedCritery+18),
(Name:'Т теплицы - Осадки понижают на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:20;Index:itRaisedCritery+12),
(Name:'Т теплицы - Досветка повышает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:20;Index:itRaisedCritery+8),
(Name:'Т теплицы - Экран повышает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:20;Index:itRaisedCritery+16),
(Name:'Т теплицы - Сумма внешних изменяет(х10)';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:-300;Max:300;Index:itRaisedCritery+24),
//57
(Name:'Т теплицы - Рассогласование Т возд';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-5;Max:5;Index:itRaisedCritery),
//(Name:'Т теплицы - Прогноз рассогласования';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-10;Max:10;Index:itRaisedCritery+22),
(Name:'Т теплицы - (П) изменяет на (х10)';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:-100;Max:100;Index:itRaisedCritery+18),
(Name:'Т теплицы - (И) изменяет на (х10)';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:-100;Max:100;Index:itRaisedCritery+10),
(Name:'Т теплицы - (Д) изменяет на (х10)';Frm:SSSpS;Ed:'°C';TipSens:TipAdd;Min:-100;Max:100;Index:itRaisedCritery+14),
(Name:'Т теплицы - Нерегулируемость(х10)';Frm:SSSpS;Ed:'°C';TipSens:TipAdd;Min:-400;Max:400;Index:itRaisedCritery+26),
(Name:'Цель - изменить теплоноситель на';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-400;Max:400;Index:itRaisedCritery+20),
{63}
(Name:'Контур 1 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Index:itKontur+2),
(Name:'Контур 1 Минимум Задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Index:itKontur+4),
(Name:'Контур 1 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Index:itKontur+6),
(Name:'Контур 1 Оптимум задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:70;Index:itKontur),
(Name:'Контур 1 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Index:itKontur+10),
// Wpr=Wdt*dTnext+Wrh*dRH/10+Wopt*dTopt/10
(Name:'Контур 1 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Index:itKontur+12),
// Weco=Wpr*Keco(k)/Keco(1)
(Name:'Контур 1 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Index:itKontur+8),
(Name:'Контур 1 - Приоритет с возможностями';Frm:SS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Index:itKontur+21),
(Name:'Контур 1 - Принятая часть цели'{'Вклад в измененение климата'};Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-10;Max:10;Index:itKontur+16),
(Name:'Контур 1 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Index:itKontur+18),
{73}
(Name:'Контур 2 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Index:itKontur+size1Kontur+2),
(Name:'Контур 2 Минимум Задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Index:itKontur+size1Kontur+4),
(Name:'Контур 2 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Index:itKontur+size1Kontur+6),
(Name:'Контур 2 Оптимум задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:70;Index:itKontur+size1Kontur),
(Name:'Контур 2 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Index:itKontur+size1Kontur+10),
(Name:'Контур 2 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Index:itKontur+size1Kontur+12),
(Name:'Контур 2 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Index:itKontur+size1Kontur+8),
(Name:'Контур 2 - Приоритет с возможностями';Frm:SS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Index:itKontur+size1Kontur+21),
(Name:'Контур 2 - Принятая часть цели';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-10;Max:10;Index:itKontur+size1Kontur+16),
(Name:'Контур 2 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Index:itKontur+size1Kontur+18),
{83}
(Name:'Контур 3 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Index:itKontur+size1Kontur*2+2),
(Name:'Контур 3 Минимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:50;Index:itKontur+size1Kontur*2+4),
(Name:'Контур 3 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Index:itKontur+size1Kontur*2+6),
(Name:'Контур 3 Оптимум задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:70;Index:itKontur+size1Kontur*2),
(Name:'Контур 3 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*2+10),
(Name:'Контур 3 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*2+12),
(Name:'Контур 3 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Index:itKontur+size1Kontur*2+8),
(Name:'Контур 3 - Приоритет с возможностями';Frm:SS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*2+21),
(Name:'Контур 3 - Принятая часть цели';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-10;Max:10;Index:itKontur+size1Kontur*2+16),
(Name:'Контур 3 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Index:itKontur+size1Kontur*2+18),
{93}
(Name:'Контур 4_Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Index:itKontur+size1Kontur*3+2),
(Name:'Контур 4_Минимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:50;Index:itKontur+size1Kontur*3+4),
(Name:'Контур 4_Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Index:itKontur+size1Kontur*3+6),
(Name:'Контур 4_Оптимум задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:70;Index:itKontur+size1Kontur*3),
(Name:'Контур 4 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*3+10),
(Name:'Контур 4 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*3+12),
(Name:'Контур 4 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Index:itKontur+size1Kontur*3+8),
(Name:'Контур 4 - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*3+14),
(Name:'Контур 4 - Принятая часть цели';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-10;Max:10;Index:itKontur+size1Kontur*3+16),
(Name:'Контур 4 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Index:itKontur+size1Kontur*3+18),
{103}
(Name:'Контур 5_Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Index:itKontur+size1Kontur*4+2),
(Name:'Контур 5_Минимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:50;Index:itKontur+size1Kontur*4+4),
(Name:'Контур 5_Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Index:itKontur+size1Kontur*4+6),
(Name:'Контур 5_Оптимум задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:70;Index:itKontur+size1Kontur*4),
(Name:'Контур 5 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*4+10),
(Name:'Контур 5 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*4+12),
(Name:'Контур 5 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Index:itKontur+size1Kontur*4+8),
(Name:'Контур 5 - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*4+14),
(Name:'Контур 5 - Принятая часть цели';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-10;Max:10;Index:itKontur+size1Kontur*4+16),
(Name:'Контур 5 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Index:itKontur+size1Kontur*4+18),
{113}
(Name:'Фрамуги-режим работы по программе';Frm:ComboSS;Ed:'';TipSens:TipTimer;Min:comFram;Max:comFram+2;Index:itClimTask+18),
(Name:'Фрамуги Макс Наветренной Расчитан';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Index:itKontur+size1Kontur*6+2),
(Name:'Фрамуги Макс Подветренной Расчитан';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Index:itKontur+size1Kontur*5+2),
(Name:'Фрамуги Минимум Задан в программе';Frm:SSSS;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Index:itKontur+size1Kontur*5+4),
(Name:'Фрамуги Минимум Рассчитан по солнцу';Frm:SSSS;Ed:'%';TipSens:TipSun;Min:0;Max:100;Index:itKontur+size1Kontur*5+6),
(Name:'Фрамуги - Рассчетный минимальный шаг';Frm:SSSS;Ed:'%';TipSens:TipProg;Min:0;Max:100;Index:itKontur+size1Kontur*5),
(Name:'Фрамуги - Приоритет работы';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*5+10),
(Name:'Фрамуги - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipAdd;Min:-300;Max:300;Index:itKontur+size1Kontur*5+12),
(Name:'Фрамуги - Коэффициент усиления';Frm:SSpSSS;Ed:'%';TipSens:TipCalc;Min:-5;Max:5;Index:itKontur+size1Kontur*5+8),
(Name:'Фрамуги - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipAdd;Min:-300;Max:300;Index:itKontur+size1Kontur*5+14),
(Name:'Фрамуги - Принятая часть цели';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-100;Max:200;Index:itKontur+size1Kontur*5+16),
{124}(Name:'Фрамуги - ДЕРЖАТЬ Подветренную';Frm:SSSS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Index:itKontur+size1Kontur*5+18),
(Name:'Фрамуги - ДЕРЖАТЬ Наветренную';Frm:SSSS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Index:itKontur+size1Kontur*6+18),
{126}
(Name:'Экран-режим работы по программе';Frm:ComboSS;Ed:'';TipSens:TipTimer;Min:comScreen;Max:comScreen+2;Index:itClimTask+22),
(Name:'Экран-рассчитано приоткрытие';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Index:itOtherCalc),
{128}(Name:'Вентиляторы-режим работы по программе';Frm:ComboSS;Ed:'';TipSens:TipTimer;Min:comOnOff;Max:comOnOff+2;Index:itClimTask+21),
(Name:'Вентиляторы-задана разница для вкл';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:10;Index:itOtherCalc+2),
(Name:'Вентиляторы-сейчас разница';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:10;Index:itOtherCalc+4),
(Name:'СИОД - текущее задание распыления';Frm:SSSS;Ed:'сек';TipSens:TipTimer;Min:0;Max:30;Index:itClimTask+19),
(Name:'СИОД - время работы с начала суток';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:0;Max:1000;Index:itOtherCalc+6),
{133}
// ( MESI
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Смесительный клапан 1';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Смесительный клапан 2';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+2),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Смесительный клапан 3';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+4),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Смесительный клапан 4';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+6),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Смесительный клапан 5';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+8),
{143}
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Насос контура 1';Frm:ComboBit;Ed:'7';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itKonturRCS),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Насос контура 2';Frm:ComboBit;Ed:'7';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itKonturRCS+size1Kontur),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Насос контура 3';Frm:ComboBit;Ed:'7';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itKonturRCS+size1Kontur*2),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Насос контура 4';Frm:ComboBit;Ed:'7';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itKonturRCS+size1Kontur*3),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Насос контура 5';Frm:ComboBit;Ed:'7';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itKonturRCS+size1Kontur*4),
{153}
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Фрамуги Север';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+10),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Фрамуги Юг';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+12),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Вентиляторы';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itMechanic+18),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Воздушный обогрев';Frm:ComboBit;Ed:'1';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Index:itMechanic+18),
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Экран';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+16),
{163}
(Name:'Резерв';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Дозатор СО2';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Index:itMechanic+14),
{165}
(Name:'Резерв 1';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 2';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 3';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 4';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 5';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 6';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 7';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 8';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 9';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 10';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic)
//175
{(Name:'Резерв 11';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 12';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 13';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 14';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 15';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 16';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic)
(Name:'Резерв 17';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 18';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 19';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 20';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
//186
(Name:'Резерв 21';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 22';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
//188
(Name:'Резерв 35';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic),
(Name:'Резерв 36';Frm:None;Ed:'';TipSens:TipBit;Min:0;Max:0;Index:itMechanic)
}
{Итого: 190. Всего 58 механизмов}
// MESI )
);

{typedef struct eeHot
				uchar 		News;
			/*Блок пиема из ПК*/
				eSensing 	MeteoSens[cSMeteoSens];//11
//typedef struct eeSensing {
//				int		Value;
//				uchar	RCS;
				int			NextTAirSens[2];
				int			NextRHAirSens[2];
				int			Vosx;
				int			Zax;
/***************************************/
				int			SumSun;
				int			Rez[6];
				int			MidlSR;
				int			MidlWind;
				int			PozFluger;
				uint 		Time;
				uint 		Data;
				uchar 		Year;
				uchar 		Demo;
/***************************************/				
				eTepl 		Tepl[cSTepl];
/***************************************/
				eMechanic	HandCtrl[cSTepl][cSHandCtrls];			
				 eHot;   }
const
         iWind65 = iSensOut+6;
         iDirWind65 = iSensOut+9;
// Сама структура
const
cDefineHotV1:TDefineHot=(
// ----------------- Метеоданные -----------------
//1
(Name:'Температура наружная';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:-40;Max:60;Def:HIDE_MIN_MAX;
    Index:iSensOut;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Интенсивность сoлнца';Frm:SSSS;Ed:'Вт/м2';TipSens:TipSensor;Min:0;Max:2000;Def:HIDE_MIN_MAX;
    Index:iSensOut+3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Скорость ветра';Frm:SSpS0;Ed:'м/сек';TipSens:TipSensor;Min:0;Max:40;Def:HIDE_MIN_MAX;
    Index:iSensOut+6;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Направление ветра';Frm:SSSS;Ed:'°';TipSens:TipSensor;Min:0;Max:360;Def:HIDE_MIN_MAX;
    Index:iSensOut+9;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Дождь';Frm:SSSS;Ed:'';TipSens:TipSensor;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:iSensOut+12;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//6
(Name:'Bлажность наружная';Frm:SSpS0;Ed:'%';TipSens:TipSensor;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:iSensOut+15;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура воды прямой';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:iSensOut+18;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура воды обратной';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:iSensOut+21;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Давление воды прямой';Frm:SSpSS;Ed:'Кг';TipSens:TipSensor;Min:0;Max:16;Def:HIDE_MIN_MAX;
    Index:iSensOut+24;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Давление воды обратной';Frm:SSpSS;Ed:'Кг';TipSens:TipSensor;Min:0;Max:14;Def:HIDE_MIN_MAX;
    Index:iSensOut+27;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//11
(Name:'Расход воды';Frm:SSSS;Ed:'м3/час';TipSens:TipSensor;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:iSensOut+30;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Накопленная сoлнечная радиация';Frm:SSSS;Ed:'Дж/см2';TipSens:TipSR;Min:0;Max:8000;Def:HIDE_MIN_MAX;
    Index:iSumSun;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Солнечная радиация Средняя';Frm:SSSS;Ed:'Вт/м2';TipSens:TipSun;Min:0;Max:2000;Def:HIDE_MIN_MAX;
    Index:iMidlSR;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Ветер Средний';Frm:SSpS0;Ed:'м/сек';TipSens:TipCalc;Min:0;Max:60;Def:HIDE_MIN_MAX;
    Index:iMidlSR+2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Наветренная строна';Frm:ComboSS;Ed:'';TipSens:TipCalc;Min:comNord;Max:comNord+1;Def:HIDE_MIN_MAX;
    Index:iMidlSR+4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//16
(Name:'Абсолютный макс теплоносителя';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:iAbsMaxWater;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//(Name:'Резерв';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:2;
//    Index:iHand;AccessR:RW_NOEDIT;AccessW:RW_SUPERVISOR),
(Name:'Время восхода солнца';Frm:SShSSm;Ed:'';TipSens:TipSun;Min:cMin;Max:0;Def:HIDE_MIN_MAX;
    Index:iVosx;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Время захода солнца';Frm:SShSSm;Ed:'';TipSens:TipSun;Min:cMin;Max:0;Def:HIDE_MIN_MAX;
    Index:iVosx+2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Время в контроллере';Frm:SShSSm;Ed:'час:мин';TipSens:TipTime;Min:0;Max:0;Def:HIDE_MIN_MAX;
    Index:iTime;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Дата в контроллере';Frm:SSsSS;Ed:'';TipSens:TipTime;Min:0;Max:0;Def:HIDE_MIN_MAX;
    Index:iTime+2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
// ------- ИЗМЕРЯЕМЫЕ ПАРАМЕТРЫ ТЕПЛИЦЫ  -----------------------
//21
(Name:'Темпер воздуха ';Frm:SSpS0;Ed:'°C';TipSens:TipGoTask{TipSensor};Min:3;Max:70;Def:HIDE_MIN_MAX;
Index:itTAir;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Относит влажность воздуха';Frm:SSpS0;Ed:'%';TipSens:TipSensor;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itRH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура листа';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:0;Max:60;Def:HIDE_MIN_MAX;
Index:itTAir+6;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура почвы';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:0;Max:60;Def:HIDE_MIN_MAX;
Index:itTAir+9;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура резерв';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itTAir+12;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//26
(Name:'Температура стекла';Frm:SSpS0;Ed:'°C';TipSens:TipSensor;Min:-20;Max:80;Def:HIDE_MIN_MAX;
Index:itTAir+15;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Концентрация СО2';Frm:SSSpS;Ed:'ppm/10';TipSens:TipSensor;Min:0;Max:5000;Def:HIDE_MIN_MAX;
Index:itTAir+18;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Темпер воздуха контроль';Frm:SSpS0;Ed:'°C';TipSens:TipSensor{TipGoTask};Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itTAir+21;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Положение фрамуги СЕВЕР';Frm:SSSS;Ed:'%';TipSens:TipSensor;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itTAir+24;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Положение фрамуги ЮГ';Frm:SSSS;Ed:'%';TipSens:TipSensor;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itTAir+27;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//31
(Name:'Вода прямая контур 1';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:10;Max:150;
    Index:itTAir+30;Mech:0{T_VALVE1};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вода прямая контур 2';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itTAir+33;Mech:0{T_VALVE2};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вода прямая контур 3';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itTAir+36;Mech:0{T_VALVE3};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вода прямая контур 4';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itTAir+39;Mech:0{T_VALVE4};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вода прямая контур 5';Frm:SSSpS;Ed:'°C';TipSens:TipSensor;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itTAir+42;Mech:0{T_VALVE5};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//36
(Name:'Состояние досветки';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
    Index:itTeplDSens+1;Mech:T_LIGHT ;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Состояние полива';Frm:ComboBit;Ed:'1';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:itTeplDSens+1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
// ------- РАСЧИТАННЫЕ ПАРАМЕТРЫ ТЕПЛИЦЫ ---------------------------
(Name:'Температура воздуха - Задана';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:3;Max:35;Def:HIDE_MIN_MAX;
Index:itTaskT;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
(Name:'Температура воздуха - ДЕРЖАТЬ';Frm:SSpS0;Ed:'°C';TipSens:TipSun;Min:3;Max:35;Def:HIDE_MIN_MAX;
Index:itTaskT+2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Влажность воздуха - Задана по програм';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itTaskT+10;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
//41
(Name:'Влажность воздуха - ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipSun;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:itTaskT+12;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура вентиляции - Расчитана';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:5;Max:40;Def:HIDE_MIN_MAX;
    Index:itTaskT+4;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
(Name:'СО2 - Задано по программе';Frm:SSSpS;Ed:'ppm/10';TipSens:TipTimer;Min:0;Max:1500;Def:HIDE_MIN_MAX;
    Index:itTaskT+14;Mech:T_CO2;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
(Name:'СО2 - ДЕРЖАТЬ концентрацию';Frm:SSSpS;Ed:'ppm/10';TipSens:TipSun;Min:0;Max:1500;Def:HIDE_MIN_MAX;
    Index:itTaskT+16;Mech:T_CO2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Абсолютная влажность воздуха';Frm:SSpS0;Ed:'г/м3';TipSens:AbsRH;Min:0;Max:40;Def:HIDE_MIN_MAX;
    Index:0{iRez};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//46
(Name:'Дефицит водяного пара воздуха';Frm:SSpS0;Ed:'г/м3';TipSens:DDWP;Min:0;Max:40;Def:HIDE_MIN_MAX;
    Index:0{iRez};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{47}
(Name:'Дефицит водяного пара листа';Frm:SSpS0;Ed:'г/м3';TipSens:DDWPS;Min:0;Max:40;Def:HIDE_MIN_MAX;
Index:0{iRez};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Точка росы';Frm:SSpS0;Ed:'°C';TipSens:TR;Min:0;Max:70;Def:HIDE_MIN_MAX;
Index:0{iRez};AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{49}
(Name:'Максимальный теплоноситель';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:iZoneMaxWater;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
//(Name:'Прогноз задания температуры';Frm:SSpS0;Ed:'°C';TipSens:prognT;Min:3;Max:35;Def:HIDE_MIN_MAX;
//Index:itTaskT+6;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - Солнце повышает на';Frm:SSpSS;Ed:'°C';TipSens:TipSun;Min:0;Max:40;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+2;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - (Тзад-Твнеш) понижает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:30;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+6;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - (Тзад-Тстекла) понижает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:30;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+4;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - Осадки понижают на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:20;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+12;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - Досветка повышает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:20;Def:HIDE_MIN_MAX;
    Index:itRaisedCritery+8;Mech:T_LIGHT;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - Экран повышает на';Frm:SSpSS;Ed:'°C';TipSens:TipAdd;Min:0;Max:20;Def:HIDE_MIN_MAX;
    Index:itRaisedCritery+16;Mech:T_SCREEN;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - Сумма внешних изменяет(х10)';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+24;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
//57
(Name:'Т теплицы - Рассогласование Т возд';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-10;Max:30;Def:HIDE_MIN_MAX;
Index:itRaisedCritery;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - (П) изменяет на (х10)';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+18;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - (И) изменяет на (х10)';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+10;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - (Д) изменяет на (х10)';Frm:SSSpS;Ed:'°C';TipSens:TipAdd;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+14;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Т теплицы - Нерегулируемость(х10)';Frm:SSSpS;Ed:'°C';TipSens:TipAdd;Min:-40;Max:40;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+26;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Цель - изменить теплоноситель на';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-40;Max:40;Def:HIDE_MIN_MAX;
Index:itRaisedCritery+20;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
{63}
(Name:'Контур 1 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itKontur+2;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 Минимум Задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+4;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+6;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 Оптимум задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:70;Def:HIDE_MIN_MAX;
Index:itKontur;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Def:HIDE_MIN_MAX;
Index:itKontur+10;Mech:T_VALVE1;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+8;Mech:T_VALVE1;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Def:HIDE_MIN_MAX;
Index:itKontur+12;Mech:T_VALVE1;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Def:HIDE_MIN_MAX;
Index:itKontur+14;Mech:T_VALVE1;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 - Тепература воды';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:10;Max:150;Def:HIDE_MIN_MAX;
Index:itKontur+16;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
      Index:itKontur+18;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{73}
(Name:'Контур 2 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur+2;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 Минимум Задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur+4;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur+6;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 Оптимум задан в Программе';Frm:SSSpS;Ed:'°C';TipSens:TipTimer;Min:0;Max:70;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur+10;Mech:T_VALVE2;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur+8;Mech:T_VALVE2;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur+12;Mech:T_VALVE2;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-200;Max:200;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur+14;Mech:T_VALVE2;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 - Тепература воды';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur+16;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur+18;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{83}
(Name:'Контур 3 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2+2;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 Минимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2+4;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2+6;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 Оптимум задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:70;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2+10;Mech:T_VALVE3;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2+8;Mech:T_VALVE3;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2+12;Mech:T_VALVE3;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*2+14;Mech:T_VALVE3;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 - Тепература воды';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Index:itKontur+size1Kontur*2+16;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur*2+18;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{93}
(Name:'Контур 4 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+2;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 Минимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+4;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+6;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 Оптимум задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:70;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+10;Mech:T_PUMP4;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+8;Mech:T_PUMP4;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Регулятор давления - ИЗМЕРЕНА разность';Frm:SSpSS;Ed:'Кг';TipSens:TipCalc;Min:-3;Max:7;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+16;Mech:T_PRES_REG;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Регулятор давления - ДЕРЖАТЬ разность';Frm:SSpSS;Ed:'Кг';TipSens:TipCalc;Min:-3;Max:7;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+18;Mech:T_PRES_REG;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 - Тепература воды';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*3+16;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur*3+18;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{103}
(Name:'Контур 5 Максимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+2;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 Минимум Задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+4;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 Минимум Рассчитан';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+6;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 Оптимум задан в Параметрах';Frm:SSSpS;Ed:'°C';TipSens:TipProg;Min:0;Max:70;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 - Приоритет работы (Твозд,RH,Топт)';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+10;Mech:T_VALVE5;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 - Нерегулируемость теплоносителя';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:-100;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+8;Mech:T_VALVE5;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+12;Mech:T_VALVE5;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+14;Mech:T_VALVE5;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 - Тепература воды';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*4+16;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 - ДЕРЖАТЬ температуру воды';Frm:SSSpS;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur*4+18;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{113}
(Name:'Фрамуги - режим работы по программе';Frm:ComboSS;Ed:'';TipSens:TipTimer;Min:comFram;Max:comFram+2;Def:HIDE_MIN_MAX;
Index:itClimTask+18;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Макс Наветренной Расчитан';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*6+2;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Макс Подветренной Расчитан';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5+2;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Минимум Задан в программе';Frm:SSSS;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5+4;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Минимум Рассчитан по солнцу';Frm:SSSS;Ed:'%';TipSens:TipSun;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5+6;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги - Рассчетный минимальный шаг';Frm:SSSS;Ed:'%';TipSens:TipProg;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги - Приоритет работы';Frm:SSSpS;Ed:'';TipSens:TipCalc;Min:-300;Max:300;Index:itKontur+size1Kontur*5+10;Mech:T_FRAM_SOUTH;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги - Коэффициент увеличения';Frm:SSpSSS;Ed:'раз';TipSens:TipCalc;Min:0;Max:5;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5+8;Mech:T_FRAM_SOUTH;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги - Приоритет с экономичностью';Frm:SSSpS;Ed:'';TipSens:TipAdd;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5+12;Mech:T_FRAM_SOUTH;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги - Приоритет с возможностями';Frm:SSSpS;Ed:'';TipSens:TipAdd;Min:-300;Max:300;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5+14;Mech:T_FRAM_SOUTH;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги - Принятая часть цели';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:-100;Max:200;Def:HIDE_MIN_MAX;
    Index:itKontur+size1Kontur*5+16;Mech:T_FRAM_SOUTH;AccessR:RW_USER;AccessW:RW_SUPERVISOR),
{124}
(Name:'Фрамуги - ДЕРЖАТЬ Подветренную';Frm:SSSS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*5+18;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги - ДЕРЖАТЬ Наветренную';Frm:SSSS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:itKontur+size1Kontur*6+18;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{126}
(Name:'Экран - режим работы по программе';Frm:ComboSS;Ed:'';TipSens:TipTimer;Min:comScreen;Max:comScreen+2;Def:HIDE_MIN_MAX;
    Index:itClimTask+22;Mech:T_SCREEN;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Экран - рассчитано приоткрытие';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:itOtherCalc;Mech:T_SCREEN;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{128}
(Name:'Вентиляторы - режим работы по программе';Frm:ComboSS;Ed:'';TipSens:TipTimer;Min:comOnOff;Max:comOnOff+2;Def:HIDE_MIN_MAX;
    Index:itClimTask+21;Mech:T_VENT;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вентиляторы - задана разница для вкл';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:10;Def:HIDE_MIN_MAX;
    Index:itOtherCalc+2;Mech:T_VENT;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вентиляторы - сейчас разница';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:10;Def:HIDE_MIN_MAX;
    Index:itOtherCalc+4;Mech:T_VENT;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'СИОД - текущее задание распыления';Frm:SSSS;Ed:'сек';TipSens:TipTimer;Min:0;Max:120;Def:HIDE_MIN_MAX;
    Index:itClimTask+19;Mech:T_SIO_PUMP;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'СИОД - время работы с начала суток';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:0;Max:32000;Def:HIDE_MIN_MAX;
    Index:itOtherCalc+6;Mech:T_SIO_PUMP;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

//133 1 ========================== Control and Status ==========================
(Name:'Смесительный клапан 1 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
    Index:iMech+0;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 1 Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:iMech+1;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 1 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+18;Mech:T_PUMP1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 1 Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:iMech+19;Mech:T_PUMP1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 2 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
    Index:iMech+2;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//138  6
(Name:'Смесительный клапан 2 Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:iMech+3;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 2 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+20;Mech:T_PUMP2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 2 Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:iMech+21;Mech:T_PUMP2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 3 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
    Index:iMech+4;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 3 Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+5;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//143  11
(Name:'Насос контура 3 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+22;Mech:T_PUMP3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 3 Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:iMech+23;Mech:T_PUMP3;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 4 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+6;Mech:T_VALVE4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 4 Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+7;Mech:T_VALVE4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 4 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+24;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//148  16
(Name:'Насос контура 4 Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:iMech+25;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 5 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+8;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смесительный клапан 5 Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+9;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 5 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+26;Mech:T_PUMP5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Насос контура 5 Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:iMech+27;Mech:T_PUMP5;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//153   21
(Name:'Фрамуги Север Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+10;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Север Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+11;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Юг Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+12;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Юг Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+13;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Экран Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+14;Mech:T_SCREEN;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//158   26
(Name:'Экран Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+15;Mech:T_SCREEN;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Дозатор СО2 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+16;Mech:T_CO2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Дозатор СО2 Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+17;Mech:T_CO2;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вентиляторы Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+28;Mech:T_VENT;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вентиляторы Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:iMech+29;Mech:T_VENT;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//163   31
(Name:'Воздушный обогрев Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+30;Mech:T_VAG;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Воздушный обогрев Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
Index:iMech+31;Mech:T_VAG;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//165   33
(Name:'СИО Насос Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+32;Mech:T_SIO_PUMP;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'СИО Насос Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
    Index:iMech+33;Mech:T_SIO_PUMP;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'CИО клапан  Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+34;Mech:T_SIO_VALVES;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'CИО клапан  Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
    Index:iMech+35;Mech:T_SIO_VALVES;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Регулятор давления Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+6;Mech:T_PRES_REG;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Регулятор давления Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
Index:iMech+7;Mech:T_PRES_REG;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//171   39
(Name:'Досвет Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
Index:iMech+36;Mech:T_LIGHT;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Досвет Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
    Index:iMech+37;Mech:T_LIGHT;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//188}
(Name:'Регулятор 1 Режим';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comAutoHand;Max:comAutoHand+1;Def:HIDE_MIN_MAX;
    Index:iMech+6;Mech:T_EXTREG1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Регулятор 1 Состояние';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:iMech+7;Mech:T_EXTREG1;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR)

{Итого: 190, из них 58 механизмов}
);

// ------- АВАРИЙНЫЕ И ИНФОРМАЦИОННЫЕ СООБЩЕНИЯ -----------------
const   SumTeplDiadnos=   30;//46;             // число сообщений
        SumDiadnos=       {SumComDiadnos+}SumTeplDiadnos;            // число сообщений
//        iMes=           1;              // Смещение общего RCS относительно Hot.Cfg
//        iMesContur=     iContur*2+18;      Смещение RCS контуров относительно Hot.RSC
   //     nMesMin1=       28;             // Номер сообщения о  минимуме 1 контура
   //     nMesMax1=       nMesMin1+1;     // Номер сообщения о  максимуме 1 контура
   //     nMesMin2=       nMesMin1+2;     // Номер сообщения о  минимуме 2 контура
   //     nMesMax2=       nMesMin1+3;     // Номер сообщения о  максимуме 2 контура
        clKontur100=clFuchsia;
        clKontur0=clBlue;
        clKonturMax=clFuchsia;
        clKonturMin=$C306A3;//clBlue;
        clNoEff=clAqua;
type TClimatDiagnos=array [1..SumDiadnos] of TDiagnos;    //30
const
comClimatDiagnosV1:array [1..SumDiadnos] of TDiagnos = (
   (Name:'Нет задания температуры воздуха';ShowPozition:29;LevelAlarm:alFatal;
      PosInHot:39;Oper:BLE;OperValue:0;Color:clRed;Voice:'NoTask'),
   (Name:'Нет измерения температуры воздуха';ShowPozition:25;LevelAlarm:alFatal;
      PosInHot:21;Oper:BLE;OperValue:0;Color:clRed;Voice:'NoMesAir'),
   (Name:'Нет измерения температуры воды в контуре 1';ShowPozition:21;LevelAlarm:alFatal;
      PosInHot:71;Oper:BLE;OperValue:0;Color:clRed;Voice:'NoMesWater1';Mech:T_VALVE1),
   (Name:'Нет измерения температуры воды в контуре 2';ShowPozition:15;LevelAlarm:alFatal;
      PosInHot:81;Oper:BLE;OperValue:0;Color:clRed;Voice:'NoMesWater2';Mech:T_VALVE2),
   (Name:'Нет измерения температуры воды в контуре 3';ShowPozition:11;LevelAlarm:alFatal;
      PosInHot:91;Oper:BLE;OperValue:0;Color:clRed;Voice:'NoMesWater3';Mech:T_VALVE3),
   (Name:'Нет измерения температуры воды в контуре 4';ShowPozition:8;LevelAlarm:alFatal;
      PosInHot:101;Oper:BLE;OperValue:0;Color:clRed;Voice:'NoMesWater4';Mech:T_VALVE4),
   (Name:'Нет измерения температуры воды в контуре 5';ShowPozition:5;LevelAlarm:alFatal;
      PosInHot:111;Oper:BLE;OperValue:0;Color:clRed;Voice:'NoMesWater5';Mech:T_VALVE5),

   (Name:'Клапан контура 1 в ручном режиме';ShowPozition:19;LevelAlarm:alHand;
      PosInHot:133;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_VALVE1;),
   (Name:'Насос контура 1 в ручном режиме';ShowPozition:16;LevelAlarm:alHand;
      PosInHot:135;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_PUMP1;),
   (Name:'Клапан контура 2 в ручном режиме';ShowPozition:13;LevelAlarm:alHand;
      PosInHot:137;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_VALVE2;),
   (Name:'Насос контура 2 в ручном режиме';ShowPozition:10;LevelAlarm:alHand;
      PosInHot:139;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_PUMP2;),
   (Name:'Клапан контура 3 в ручном режиме';ShowPozition:7;LevelAlarm:alHand;
      PosInHot:141;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_VALVE3;),
   (Name:'Насос контура 3 в ручном режиме';ShowPozition:4;LevelAlarm:alHand;
      PosInHot:143;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_PUMP3;),
   (Name:'Клапан контура 4 в ручном режиме';ShowPozition:2;LevelAlarm:alHand;
      PosInHot:145;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_VALVE4;),
   (Name:'Насос контура 4 в ручном режиме';ShowPozition:-2;LevelAlarm:alHand;
      PosInHot:147;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_PUMP4;),
   (Name:'Клапан контура 5 в ручном режиме';ShowPozition:-5;LevelAlarm:alHand;
      PosInHot:149;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_VALVE5;),
   (Name:'Насос контура 5 в ручном режиме';ShowPozition:-8;LevelAlarm:alHand;
      PosInHot:151;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl';Mech:T_PUMP5;),

{8}(Name:'Т воды в 1-м контуре не регулируется';ShowPozition:-1;LevelAlarm:alAttention;
      PosInHot:68;Oper:BGT;OperValue:90;Color:clRed;Voice:'NoRegul1';Mech:T_VALVE1),
   (Name:'Т воды в 2-м контуре не регулируется';ShowPozition:-4;LevelAlarm:alAttention;
      PosInHot:78;Oper:BGT;OperValue:90;Color:clRed;Voice:'NoRegul2';Mech:T_VALVE2),
   (Name:'Т воды в 3-м контуре не регулируется';ShowPozition:-7;LevelAlarm:alAttention;
      PosInHot:88;Oper:BGT;OperValue:90;Color:clRed;Voice:'NoRegul3';Mech:T_VALVE3),
   (Name:'Т воды в 4-м контуре не регулируется';ShowPozition:-10;LevelAlarm:alAttention;
      PosInHot:98;Oper:BGT;OperValue:90;Color:clRed;Voice:'NoRegul4';Mech:T_VALVE4),
   (Name:'Т воды в 5-м контуре не регулируется';ShowPozition:-13;LevelAlarm:alAttention;
      PosInHot:108;Oper:BGT;OperValue:90;Color:clRed;Voice:'NoRegul5';Mech:T_VALVE5),

   (Name:'Клапан 1 контура полностью закрыт';ShowPozition:0;LevelAlarm:alBlueAttention;
      PosInHot:134;Oper:BLE;OperValue:3;Color:clKontur0;Mech:T_VALVE1),
   (Name:'Клапан 1 контура полностью открыт';ShowPozition:-22;LevelAlarm:alBlueAttention;
      PosInHot:134;Oper:BGT;OperValue:97;Color:clKontur100;Mech:T_VALVE1),
   (Name:'Клапан 2 контура полностью закрыт';ShowPozition:0;LevelAlarm:alBlueAttention;
      PosInHot:138;Oper:BLE;OperValue:3;Color:clKontur0;Mech:T_VALVE2),
   (Name:'Клапан 2 контура полностью открыт';ShowPozition:-26;LevelAlarm:alBlueAttention;
      PosInHot:138;Oper:BGT;OperValue:97;Color:clKontur100;Mech:T_VALVE2),
   (Name:'Клапан 3 контура полностью закрыт';ShowPozition:0;LevelAlarm:alBlueAttention;
      PosInHot:142;Oper:BLE;OperValue:3;Color:clKontur0;Mech:T_VALVE3),
   (Name:'Клапан 3 контура полностью открыт';ShowPozition:-30;LevelAlarm:alBlueAttention;
      PosInHot:142;Oper:BGT;OperValue:97;Color:clKontur100;Mech:T_VALVE3),
   (Name:'Клапан 4 контура полностью открыт';ShowPozition:-34;LevelAlarm:alBlueAttention;
      PosInHot:146;Oper:BGT;OperValue:97;Color:clKontur100;Mech:T_VALVE4),
   (Name:'Клапан 5 контура полностью открыт';ShowPozition:-38;LevelAlarm:alBlueAttention;
      PosInHot:150;Oper:BGT;OperValue:97;Color:clKontur100;Mech:T_VALVE4)
    );

//begin-----------Блок конфигурация оборудования-----------------

const SumConfigOutputs=26;
      SizeConfigOutputs=25;
      MAX_NUM_RELAY=48;
var NameConfigOutputs:array [1..SumConfigOutputs] of TNameConst=(
(Name:'Смесительный клапан 1';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:0;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 1';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:9;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:1;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:10;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 3';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:2;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 3';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:11;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 4';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:3;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 4';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:12;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан 5';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:4;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос контура 5';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:13;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//6
//11
(Name:'Фрамуги Север';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:5;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Фрамуги Юг';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:6;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Экран';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:7;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Дозатор СО2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:8;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Вентиляторы';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:14;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//16
(Name:'Воздушный обогрев';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:15;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'СИО Насос';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:16;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'CИО клапаны';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:17;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор давления';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:3;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Досвет';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:18;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:24;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
//21
(Name:'Регулятор1';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:19;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор2';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:20;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор3';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:21;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор4';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:22;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор5';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:MAX_NUM_RELAY;
    Index:23;Mech:0;AccessR:R_CONFIG;AccessW:W_CONFIG)
);
// ------- ПАРАМЕТРЫ УПРАВЛЕНИЯ КОНТРОЛЛЕРА 65 ---------

const        SumParUpr=         139;
             iSunToClim=          0;
             iSunToMinFram=       iSunToClim+24;
             iTfram=              iSunToClim+15*2;
             iMaxTPipe=           iTfram+5*2;
             iMinTPipe=           iMaxTPipe+5*2;
             iOptTPipe=           iMinTPipe+3*2;
             iTask5Kon=           iOptTPipe+3*2;
             iPAirToWater=        iTask5Kon+3*2;
             iCalcWater=          iPAirToWater+2*2;
             iParValve=           iCalcWater+28*2;
             iFram=               iParValve+3*2;
             iSunToFram=          iFram+14*2;
             iCO2=                iSunToFram+3*2;
             iScreen=             iCO2+2*2;
             iSiod=               iScreen+20*2;
             iVentil=             iSiod+10*2;
             iCalorifer=          iVentil+3*2;
             iConst=              iCalorifer+2*2;
             iRHToT=              iConst+3*2;
             iDelPup=             iRHToT+6*2;
             iScreenGlass=        iDelPup+2;
             iPar3_4Kontur=       iScreenGlass+8;//iDelPup+2;
             iRez=                iPar3_4Kontur+4;
             LongArrayConst=iRez+2*2;
var NameParUpr:array [1..SumParUpr] of TNameConst=(
         (Name:'Контур 1 - Максимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:40;Max:95;Def:60;Index:iMaxTPipe;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Контур 2 - Максимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:130;Def:90;Index:iMaxTPipe+2;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Контур 3 - Максимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:130;Def:60;Index:iMaxTPipe+4;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Контур 4 - Максимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:40;Index:iMaxTPipe+6;Mech:T_VALVE4;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Контур 5 - Максимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:130;Def:110;Index:iMaxTPipe+8;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Фрамуги - Максимальное открыие подветренной стороны';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:100;Index:iFram;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Фрамуги - Максимальное открыие наветренной стороны';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:100;Index:iFram+2;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_GUEST),

         (Name:'Температура задана - солнце начинает влиять при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:200;Def:0;Index:iSunToClim;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - солнце влияет до';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:100;Max:800;Def:300;Index:iSunToClim+2;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - солнце увеличивает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:0;Index:iSunToClim+4;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - повышенная влажность начинает влиять от';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:30;Def:5;Index:iRHToT;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - повышенная влажность влияет до';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:30;Max:50;Def:30;Index:iRHToT+2;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - повышенная влажность увеличивает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:2;Def:0;Index:iRHToT+4;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - пониженная влажность начинает влиять от';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:30;Def:5;Index:iRHToT+6;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - пониженная влажность влияет до';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:30;Max:50;Def:30;Index:iRHToT+8;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Температура задана - пониженная влажность уменьшает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:2;Def:0;Index:iRHToT+10;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Влажность задана - солнце начинает влиять при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:100;Def:0;Index:iSunToClim+6;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Влажность задана - солнце влияет до';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:100;Max:800;Def:300;Index:iSunToClim+8;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Влажность задана - солнце увеличивает на';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:30;Def:0;Index:iSunToClim+10;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Концентрация СО2 - солнце начинает влиять при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:200;Def:0;Index:iSunToClim+12;Mech:T_CO2;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Концентрация СО2 - солнце влияет до';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:100;Max:800;Def:300;Index:iSunToClim+14;Mech:T_CO2;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Концентрация СО2 - солнце увеличивает на';Frm:SSSS;Ed:'ppm';TipSens:TipCalc;Min:0;Max:500;Def:000;Index:iSunToClim+16;Mech:T_CO2;AccessR:RW_GUESTI;AccessW:RW_USER),

         (Name:'Т теплицы - солнце начинает влиять при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:50;Def:0;Index:iCalcWater+26;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - солнце влияет до';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:200;Max:800;Def:300;Index:iCalcWater+28;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - солнце повышает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:40;Def:15;Index:iCalcWater+30;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - (Тзад-Тстекла)начинает влиять при ';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:3;Index:iCalcWater+14;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - (Тзад-Тстекла)влияет до';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:10;Max:50;Def:30;Index:iCalcWater+16;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - (Тзад-Тстекла)понижает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:25;Def:15;Index:iCalcWater+18;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - (Тзад-Твнеш)начинает влиять при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:4;Index:iCalcWater+32;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - (Тзад-Твнеш)влияет до';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:20;Max:80;Def:50;Index:iCalcWater+34;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - (Тзад-Твнеш)понижает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:35;Def:30;Index:iCalcWater+36;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - ветер начинает влиять при';Frm:SSpS0;Ed:'м/сек';TipSens:TipCalc;Min:1;Max:6;Def:1.5;Index:iCalcWater+38;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - ветер влияет до';Frm:SSpS0;Ed:'м/сек';TipSens:TipCalc;Min:6;Max:25;Def:15;Index:iCalcWater+40;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - ветер понижает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:15;Def:5;Index:iCalcWater+42;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - фрамуги начинают влиять при';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:0;Index:iCalcWater+44;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Т теплицы - фрамуги влияют до';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:20;Max:100;Def:100;Index:iCalcWater+46;Mech:T_FRAM_SOUTH;AccessR:RW_SUPERVISOR;AccessW:RW_USER),
         (Name:'Т теплицы - фрамуги понижают на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:10;Def:0;Index:iCalcWater+48;Mech:T_FRAM_SOUTH;AccessR:RW_SUPERVISOR;AccessW:RW_USER),
         (Name:'Т теплицы - осадки понижают на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:10;Def:0;Index:iCalcWater+54;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - досветка повышает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:1;Max:15;Def:3;Index:iCalcWater+50;Mech:T_LIGHT;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Т теплицы - закрытие экрана повышает';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:10;Def:0;Index:iCalcWater+52;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),

//         (Name:'Т теплицы - (Тзад-Тизм)начинает влиять при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:1;Def:0;Index:iCalcWater+2),
//         (Name:'Т теплицы - (Тзад-Тизм)влияет до';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:4;Max:15;Def:8;Index:iCalcWater+4),
//         (Name:'Т теплицы - (Тзад-Тизм)увеличивает на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:3;Max:15;Def:8;Index:iCalcWater+6),
//         (Name:'Т теплицы - Динамика(Тзад-Тизм)начинает влиять при';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0.1;Max:0.4;Def:0;Index:iCalcWater+8),
//         (Name:'Т теплицы - Динамика(Тзад-Тизм)влияет до';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0.4;Max:1;Def:0.5;Index:iCalcWater+10),
         (Name:'Т теплицы - Коэф пропорциональной поправки';Frm:SSpSSS;Ed:'';TipSens:TipCalc;Min:0;Max:3;Def:1;Index:iCalcWater+10;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
         (Name:'Т теплицы - Коэф динамической поправки';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:0;Max:3;Def:0.5;Index:iCalcWater+12;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),

         (Name:'Т теплицы - Коэф интегральной поправки';Frm:SSpSSS;Ed:'';TipSens:TipCalc;Min:0.02;Max:0.25;Def:0.1;Index:iCalcWater;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
//         (Name:'Т теплицы - Нелинейная интегральная поправка';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:1;Def:0;Index:iCalcWater+4),
         (Name:'Т теплицы - Допуск регулирования';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:0.5;Def:0.1;Index:iCalcWater+8;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),//iTfram+6),
         (Name:'Т теплицы - повысится на 1°C при повыш 35°C воды на';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:1;Max:8;Def:3.5;Index:iTask5Kon+6;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
         (Name:'Т теплицы - повысится на 1°C при повыш 75°C воды на';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:1;Max:8;Def:3.5;
            Index:iPar3_4Kontur+4;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
         (Name:'Время упреждения расчета задания климата';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:16;Max:30;Def:21;Index:iConst+4;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),

         (Name:'Смесител клапаны - П-коэф разницы Т воды';Frm:SSpSSS;Ed:'%/°C';TipSens:TipCalc;Min:0.3;Max:5;Def:1;Index:iParValve;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Смесител клапаны - контроль регулируемости';Frm:SSSpS;Ed:'°C*мин';TipSens:TipCalc;Min:15;Max:50;Def:30;Index:iParValve+4;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
         (Name:'Смесител клапаны - авария регулируемости';Frm:SSSpS;Ed:'°C*мин';TipSens:TipCalc;Min:0;Max:200;Def:100;Index:iParValve+2;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
         (Name:'Смесител клапаны - контроль полного открытия';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:10;Def:5;Index:iCalcWater+2;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
         (Name:'Смесител клапаны - контроль полного закрытия';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:1;Def:1;Index:iCalcWater+3;AccessR:RW_SUPERVISOR;AccessW:RW_SUPERVISOR),
         (Name:'Насосы обогрева - задержка выключения';Frm:SSpS0;Ed:'°C*мин';TipSens:TipCalc;Min:1;Max:8;Def:4;Index:iDelPup;AccessR:RW_GUESTI;AccessW:RW_USER),
          // ( MESI
         (Name:'Смесител клапан 3 - И-коэффициент';Frm:SSpSSS;Ed:'%/°C';TipSens:TipCalc;Min:0.3;Max:5;Def:1;Index:iPar3_4Kontur;Mech:T_VALVE3;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Смесител клапан 4 - И-коэффициент';Frm:SSpSSS;Ed:'%/°C';TipSens:TipCalc;Min:0.3;Max:5;Def:1;
            Index:iPar3_4Kontur+2;Mech:T_VALVE4;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Регулятор давления - И-коэффициент';Frm:SSpSSS;Ed:'%/°C';TipSens:TipCalc;Min:0.3;Max:5;Def:1;Index:iPar3_4Kontur+2;Mech:T_PRES_REG;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Насосы обогрева - разрешать включение при солнце меньшем';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:100;Def:40;Index:iCalcWater+22;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Насосы обогрева - разрешать включение при (Тзад-Твнеш) больше';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-2;Max:5;Def:2;Index:iCalcWater+24;AccessR:RW_GUESTI;AccessW:RW_USER),
          // MESI )

         (Name:'Контур 1 - Минимум в прогр- солнце начинает влиять при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:200;Def:0;Index:iSunToClim+18;Mech:T_VALVE1;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 1 - Минимум в программе - солнце влияет до';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:100;Max:800;Def:300;Index:iSunToClim+20;Mech:T_VALVE1;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 1 - Минимум в программе - солнце уменьшает на';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:30;Def:0;Index:iSunToClim+22;Mech:T_VALVE1;AccessR:RW_GUESTI;AccessW:RW_USER),

         (Name:'Контур 3 - Минимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:50;Def:0;Index:iMinTPipe;Mech:T_VALVE3;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 3 - Оптимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:0;Index:iOptTPipe;Mech:T_VALVE3;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 4 - Минимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:40;Def:0;Index:iMinTPipe+2;Mech:T_VALVE4;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 4 - Оптимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:0;Index:iOptTPipe+2;Mech:T_VALVE4;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 5 - Минимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:80;Def:0;Index:iMinTPipe+4;Mech:T_VALVE5;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 5 - Оптимальная температура';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:90;Def:0;Index:iOptTPipe+4;Mech:T_VALVE5;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 5 - включить, если Тстекла меньше';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-15;Max:10;Def:-5;Index:iTask5Kon+4;Mech:T_VALVE5;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 5 - вкл при закр экране и Тстекла меньше';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-5;Max:10;Def:4;Index:iTask5Kon;Mech:T_VALVE5;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Контур 5 - при закр экране минимум';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:40;Max:130;Def:90;Index:iTask5Kon+2;Mech:T_VALVE5;AccessR:RW_GUESTI;AccessW:RW_USER),

//         (Name:'Тобогрева - допуск регулирования';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0.2;Max:2;Def:0.5;Index:iTfram+6),
//         (Name:'Твентиляции - установить выше Тобогрева на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0.5;Max:4;Def:1;Index:iTfram+8),
//         (Name:'Твентиляции - Разница влажности начинает влиять при';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:5;Index:iTfram),
//         (Name:'Твентиляции - Разница влажности влияет до';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:20;Max:40;Def:30;Index:iTfram+2),
//         (Name:'Твентиляции - Разница влажности изменяет на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:3;Index:iTfram+4),

         (Name:'Фрамуги - Минимум в прогр- солнце начинает влиять при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:300;Def:0;Index:iSunToMinFram;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - Минимум в программе - солнце влияет до';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:100;Max:800;Def:300;Index:iSunToMinFram+2;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - Минимум в программе - солнце увеличивает на';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:40;Def:0;Index:iSunToMinFram+4;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - (RHизм-RHзад) начинает влиять на минимум при';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:5;Index:iTFram;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - (RHизм-RHзад) влияет на минимум до';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:20;Max:60;Def:30;Index:iTFram+2;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - (RHизм-RHзад) увеличивает минимум на';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:20;Index:iTFram+8;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - (RHзад-RHизм) начинает влиять на максимум при';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:5;Index:iTFram+4;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - (RHзад-RHизм) влияет на максимум до';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:20;Max:60;Def:30;Index:iTFram+6;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - (RHзад-RHизм) уменьшает максимум на';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:30;Index:iTFram+9;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - Внешр темп допускает максимум открытия при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:5;Max:25;Def:15;Index:iFram+18;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - Внешн темп закрывает при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-10;Max:10;Def:-5;Index:iFram+20;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - при Дожде допустимо открывать на';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:40;Index:iFram+22;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
//         (Name:'Фрамуги - Солнце начинает влиять при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:300;Def:20;Index:iSunToFram;Mech:T_ANY_FRAM),
//         (Name:'Фрамуги - Солнце влияет до';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:200;Max:800;Def:500;Index:iSunToFram+2;Mech:T_ANY_FRAM),
//         (Name:'Фрамуги - Солнце увеличивает на';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:30;Index:iSunToFram+4;Mech:T_ANY_FRAM),
         (Name:'Фрамуги - (Тзад-Твнеш) начинает влиять при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:10;Def:0;Index:iSunToFram;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Фрамуги - (Тзад-Твнеш) влияет до';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:10;Max:30;Def:25;Index:iSunToFram+2;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Фрамуги - (Тзад-Твнеш) уменьшает открытие в';Frm:SSpSSS;Ed:'раз';TipSens:TipCalc;Min:0;Max:10;Def:10;Index:iSunToFram+4;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Фрамуги - Ветер начинает влиять при';Frm:SSpS0;Ed:'м/с';TipSens:TipCalc;Min:1;Max:6;Def:3;Index:iFram+16;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - Ветер закрывает Наветренную сторону при';Frm:SSpS0;Ed:'м/с';TipSens:TipCalc;Min:1;Max:25;Def:10;Index:iFram+12;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - Ветер закрывает Подветренную сторону при';Frm:SSpS0;Ed:'м/с';TipSens:TipCalc;Min:5;Max:35;Def:15;Index:iFram+14;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - Флюгер меняет наветренную сторону при';Frm:SSSS;Ed:'°';TipSens:TipCalc;Min:10;Max:90;Def:30;Index:iFram+24;Mech:T_FRAM_SOUTH;AccessR:RW_GUESTI;AccessW:RW_USER),
//         (Name:'Фрамуги - какая (Тизм-Твентиляции)откроет на максимум';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:2;Max:15;Def:5;Index:iFram+26;Mech:T_ANY_FRAM),
//         (Name:'Фрамуги - коэф Пропорциональной поправки';Frm:SSpSSS;Ed:'%/°C';TipSens:TipCalc;Min:0.25;Max:50;Def:15;Index:iFram+26;Mech:T_ANY_FRAM),
//         (Name:'Фрамуги - коэф Интегральной поправки';Frm:SSpSSS;Ed:'%/°C';TipSens:TipCalc;Min:0;Max:0.3;Def:0.1;Index:iFram+4;Mech:T_FRAM_SOUTH),
         (Name:'Фрамуги - открывать наветренную, если подветренная больше';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:100;Index:iCalcWater+4;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Фрамуги - пауза расчета после срабатывания';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:0;Max:15;Def:4;Index:iFram+26;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Фрамуги - эффективность реакции';Frm:SSpSSS;Ed:'';TipSens:TipCalc;Min:0.5;Max:0.99;Def:0.8;Index:iFram+4;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
          // ( MESI
         (Name:'Фрамуги - увеличить эффективность при нерегулируемости';Frm:SSpSSS;Ed:'раз';TipSens:TipCalc;Min:1;Max:4;Def:2;Index:iCalcWater+20;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
          // MESI )
         (Name:'Фрамуги - минимальная Пауза между включениями';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:1;Max:600;Def:12;Index:iFram+10;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Фрамуги - максимальная Пауза между включениями';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:2;Max:600;Def:15;Index:iFram+8;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Фрамуги - исполнять, если рассчет больше';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:10;Max:40;Def:10;Index:iFram+6;Mech:T_FRAM_SOUTH;AccessR:RW_USERI;AccessW:RW_USER),

         (Name:'СО2 - коэф Пропорциональный';Frm:SSpSSS;Ed:'%/ppm';TipSens:TipCalc;Min:0;Max:0.5;Def:0.04;Index:iCO2;Mech:T_CO2;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СО2 - коэф Интегральной поправки';Frm:SSpSSS;Ed:'%/ppm';TipSens:TipCalc;Min:0;Max:0.5;Def:0.04;Index:iCO2+2;Mech:T_CO2;AccessR:RW_GUESTI;AccessW:RW_USER),

         (Name:'Экран затеняющий - Солнце закрывает при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:900;Def:400;Index:iScreen;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран термический - Солнце открывает при';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:300;Def:150;Index:iScreen+2;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран термический - Твнеш днем закрывает при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-10;Max:25;Def:4;Index:iScreen+4;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран термический - Твнеш ночью закрывает при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-10;Max:25;Def:8;Index:iScreen+6;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран термический - ветер начинает влиять при';Frm:SSpS0;Ed:'м/сек';TipSens:TipCalc;Min:1;Max:6;Def:1.5;Index:iScreen+8;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран термический - ветер влияет до';Frm:SSpS0;Ed:'м/сек';TipSens:TipCalc;Min:6;Max:25;Def:10;Index:iScreen+10;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран термический - ветер увеличивает Т внеш на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:15;Def:5;Index:iScreen+12;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - (Тизм-Тзад) начинает приоткрывать при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:2;Def:0.5;Index:iScreen+14;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - (Тизм-Тзад) влияет до';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:2;Max:5;Def:4;Index:iScreen+16;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - (Тизм-Тзад) приоткрывает на';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:40;Def:25;Index:iScreen+18;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - (RHизм-RHзад) начинает приоткрывать при';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:5;Index:iScreen+20;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - (RHизм-RHзад) влияет до';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:20;Max:40;Def:30;Index:iScreen+22;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - (RHизм-RHзад) приоткрывает на';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:40;Def:25;Index:iScreen+24;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - Т стекла начинает приоткрывать при';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-5;Max:10;Def:5;Index:iScreenGlass;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - Т стекла влияет до';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-20;Max:0;Def:-5;Index:iScreenGlass+2;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран - Т стекла приоткрывает на';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:30;Index:iScreenGlass+4;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран закрывать шагами по';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:4;Index:iScreen+26;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран закрывать-количество шагов';Frm:SSSS;Ed:'раз';TipSens:TipCalc;Min:0;Max:10;Def:4;Index:iScreen+28;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран закрывать-пауза между включениями';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:0;Max:20;Def:8;Index:iScreen+30;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран открывать шагами по';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:4;Index:iScreen+32;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран открывать-количество шагов';Frm:SSSS;Ed:'раз';TipSens:TipCalc;Min:0;Max:10;Def:4;Index:iScreen+34;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран открывать-пауза между включениями';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:0;Max:20;Def:8;Index:iScreen+36;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран исполнять если шаг больше';Frm:SSSS;Ed:'%';TipSens:TipCalc;Min:0;Max:20;Def:5;Index:iScreen+38;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Экран полное закрытие/открытие не чаще';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:20;Max:360;Def:60;Index:iScreenGlass+6;Mech:T_SCREEN;AccessR:RW_GUESTI;AccessW:RW_USER),

         (Name:'СИОД - запрещен,если температура меньше задания на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:10;Def:2;Index:iSiod+8;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - включается,если температура больше задания на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:10;Def:2;Index:iSiod;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - температура больше задания влияет до';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:20;Def:5;Index:iSiod+4;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - при начале превышения темпер повторяется через';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:0;Max:180;Def:40;Index:iSiod+2;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - при большом превышении Т повторяется через';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:0;Max:120;Def:20;Index:iSiod+6;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - запрещен,если влажность больше задания на';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:20;Index:iSiod+18;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - включается,если влажность меньше задания на';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:40;Def:10;Index:iSiod+10;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - влажность меньше задания влияет до';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:60;Def:40;Index:iSiod+14;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - при начале понижения влаж повторяется через';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:0;Max:180;Def:40;Index:iSiod+12;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'СИОД - при большом понижении влаж повторяется через';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:0;Max:120;Def:20;Index:iSiod+16;Mech:T_SIO_PUMP;AccessR:RW_GUESTI;AccessW:RW_USER),

         (Name:'Вентиляторы - включать, если рассогласование больше';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:2;Index:iVentil;Mech:T_VENT;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Вентиляторы - время работы';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:1;Max:100;Def:10;Index:iVentil+2;Mech:T_VENT;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Вентиляторы - время паузы';Frm:SSSS;Ed:'мин';TipSens:TipCalc;Min:1;Max:100;Def:10;Index:iVentil+4;Mech:T_VENT;AccessR:RW_GUESTI;AccessW:RW_USER),

         (Name:'Воздушный обогрев - включать,если температура меньше на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:0;Index:iCalorifer;Mech:T_VAG;AccessR:RW_GUESTI;AccessW:RW_USER),
         (Name:'Воздушный обогрев - выключать,если температура больше на';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:5;Def:0;Index:iCalorifer+2;Mech:T_VAG;AccessR:RW_GUESTI;AccessW:RW_USER),

         (Name:'Коэффициент усреднения солнечой радиации';Frm:SSpSSS;Ed:'';TipSens:TipCalc;Min:0.1;Max:1;Def:0.2;Index:iConst;AccessR:RW_USERI;AccessW:RW_USER),
         (Name:'Коэффициент усреднения ветра';Frm:SSpSSS;Ed:'';TipSens:TipCalc;Min:0.1;Max:1;Def:0.2;Index:iConst+2;AccessR:RW_USERI;AccessW:RW_USER)
         );


// ------- ЗАДАНИЕ КОНТРОЛЛЕРА 65 ---------

// ------- ПАРАМЕТРЫ МЕХАНИМОВ КОНТРОЛЛЕРА 65 ---------

const

          SumParMec=       18;
          io_TimeMixVal=0;
{1-5 - смесительные клапаны, 6 - Сев Фрамуга, 7 - Южн Фрамуга, 8 - СО2,
9 - экран, искдючен 10 - вентиляторы и нагрев}
          l_SGroup=io_TimeMixVal+18;
          sio_SVal=l_SGroup+1;
          iv_MinTime=sio_SVal+1;
//          iNumSiod=iv_MinTime-1;
          ico_model=iv_MinTime+2;
          l_TimePause=ico_model+1;
          sio_ValPause=l_TimePause+1;
          iLiftValve=sio_ValPause+1;
          io_TeplPlace=iLiftValve+1;
          sizeParMec=io_TeplPlace+2;

var NameParMec:array [1..SumParMec] of TNameConst=(
         (Name:'Смесительный клапан контур 1 - полное закрытие';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:800;Def:60;Index:io_TimeMixVal;Mech:T_VALVE1;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Смесительный клапан контур 2 - полное закрытие';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:800;Def:60;Index:io_TimeMixVal+2;Mech:T_VALVE2;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Смесительный клапан контур 3 - полное закрытие';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:800;Def:60;Index:io_TimeMixVal+4;Mech:T_VALVE3;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Смесительный клапан контур 4 - полное закрытие';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:800;Def:60;Index:io_TimeMixVal+6;Mech:T_PUMP4;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Смесительный клапан контур 5 - полное закрытие';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:800;Def:60;Index:io_TimeMixVal+8;Mech:T_VALVE5;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Фрамуги_Север - время полного закрытия';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:10;Max:900;Def:60;Index:io_TimeMixVal+10;Mech:T_FRAM_NORTH;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Фрамуги_Юг - время полного закрытия';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:10;Max:900;Def:60;Index:io_TimeMixVal+12;Mech:T_FRAM_SOUTH;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Экран - время полного закрытия';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:1200;Def:60;Index:io_TimeMixVal+14;Mech:T_SCREEN;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'СО2 - время хода регулятора';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:0;Max:600;Def:60;Index:io_TimeMixVal+16;Mech:T_CO2;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'СО2 - исполнитель(0-регулятор,1-клапан)';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:1;Def:1;Index:ico_model;Mech:T_CO2;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Регулятор давления - полное закрытие';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:800;Def:60;Index:io_TimeMixVal+6;Mech:T_PRES_REG;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Смесительные клапаны - пауза между включениями';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:90;Def:60;Index:iv_MinTime;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Смесительные клапаны - люфт при смене направления';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:3;Def:1;Index:iLiftValve;AccessR:RW_GUEST;AccessW:RW_USER),
//         (Name:'СИОД - насос раньше клапана на';Frm:SS;Ed:'сек';TipSens:TipCalc;Min:0;Max:10;Def:6;Index:imSiod;Mech:T_SIO_PUMP),
         (Name:'СИОД - пауза между включениями клапанов';Frm:SS;Ed:'сек';TipSens:TipCalc;Min:0;Max:20;Def:4;Index:sio_ValPause;Mech:T_SIO_PUMP;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'СИОД - количество клапанов';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:8;Def:2;Index:sio_SVal;Mech:T_SIO_PUMP;AccessR:RW_GUEST;AccessW:RW_USER),
         (Name:'Досветка - количество групп';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:8;Def:4;Index:l_SGroup;Mech:T_LIGHT;AccessR:RW_SUPERVISOR;AccessW:RW_USER),
         (Name:'Досветка - пауза между вкл групп';Frm:SS;Ed:'мин';TipSens:TipCalc;Min:1;Max:30;Def:3;Index:l_TimePause;Mech:T_LIGHT;AccessR:RW_SUPERVISOR;AccessW:RW_USER),
         (Name:'Положение теплицы относительно севера';Frm:SSSS;Ed:'°';TipSens:TipCalc;Min:0;Max:360;Def:0;Index:io_TeplPlace;AccessR:RW_GUEST;AccessW:RW_USER)
          );

implementation

end.
