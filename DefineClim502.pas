unit DefineClim502;

interface
uses FController, Graphics, ClimCalc,   // DefineClim65, Climat65,
   SysUtils, Chart, Series, GanttCh, GGraf, TeEngine,ComCtrls,
   FConstType, MessageU, Windows, HandClim;

type Int16=SmallInt; pInt16=^SmallInt;

//===============================================================================
// ------- ПАРАМЕТРЫ УПРАВЛЕНИЯ КОНТРОЛЛЕРА 502 ---------
//===============================================================================
const        Conf502Sum=           9;//10;//22;
             Conf502Size=           86;

var XNamesConf502:array [1..1] of TXNames=(
    (Name:'Значение';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0)
     );
//    (Name:'Бак воды не полон';Frm:ComboBit;Ed:'1';TipSens:TipCalc{TipBit};Min:comNoYes;Max:comNoYes+1;Def:HIDE_MIN_MAX;
//        Index:15;Mech:cfNoFull;AccessR:RW_GUEST;AccessW:RW_NOEDIT),

var YNamesConf502:array [1..Conf502Sum] of TNameConst=(
         (Name:'Трубный обогрев';Frm:ComboBit;Ed:'0';TipSens:TipCalc;Min:comNoYes;Max:comNoYes+1;Def:HIDE_MIN_MAX;
            Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Экран горизонтальный';Frm:ComboBit;Ed:'1';TipSens:TipIzm;Min:comNoYes;Max:comNoYes+1;Def:HIDE_MIN_MAX;
            Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Экран вертикальный';Frm:ComboBit;Ed:'2';TipSens:TipCalc;Min:comNoYes;Max:comNoYes+1;Def:HIDE_MIN_MAX;
            Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Вентиляторы';Frm:ComboBit;Ed:'3';TipSens:TipIzm;Min:comNoYes;Max:comNoYes+1;Def:HIDE_MIN_MAX;
            Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Калорифер';Frm:ComboBit;Ed:'4';TipSens:TipIzm;Min:comNoYes;Max:comNoYes+1;Def:HIDE_MIN_MAX;
            Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'UltraClima';Frm:ComboBit;Ed:'5';TipSens:TipIzm;Min:comNoYes;Max:comNoYes+1;Def:HIDE_MIN_MAX;
            Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Количество клапанов CИО';Frm:SS;Ed:'шт';TipSens:TipIzm;Min:0;Max:8;
            Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Кол-во градаций досветки';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:10;
            Index:3;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST),
         (Name:'Ориентация теплицы';Frm:SSSS;Ed:'°';TipSens:TipCalc;Min:0;Max:360;Def:HIDE_MIN_MAX;
            Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_GUEST)
         );


//===============================================================================
// ------- НАСТРОЙКА КЛИМАТА КОНТРОЛЛЕРА 502 ---------
//==============================================================================

const
        MAX_SENS_SUM=60;
        YMaxReg502Count=30;
        YMaxCalibr502Count=MAX_SENS_SUM;
        
        clKontur100=clFuchsia;
        clKontur0=clBlue;
        clKonturMax=clFuchsia;
        clKonturMin=$C306A3;//clBlue;
        clNoEff=clAqua;
        DZ_SUM_DIAGNOS    =30;


// ------- Горячий блок - смещения и индексы ---------------------------
const
      TreeName:array [1..7] of string=('Обшие','Климат теплицы','Обогрев','Фрамуги','Ultra Clima','Экраны','Вентиляторы');
      YMesHotSum=       185;
var
DZ_cDefineHot:array [1..YMesHotSum] of TNameConst=(
// ----------------- Метеоданные -----------------
//1
(Name:'Солнечная радиация';Frm:SSSS;Ed:'Вт/м2';TipSens:SensorRCS;Min:-1;Max:5000;Def:HIDE_MIN_MAX;
    {Link:linkHotInvisible+20;} Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdNewTree),
(Name:'Средняя солнечная радиация';Frm:SSSS;Ed:'Вт/м2';TipSens:TipSun;Min:-1;Max:5000;Def:HIDE_MIN_MAX;
    Link:-1;Index:24;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdEffect;),
(Name:'Накопленная сoлнечная радиация';Frm:SSSS;Ed:'Дж/см2';TipSens:TipSR;Min:-1;Max:8000;Def:HIDE_MIN_MAX;
    Link:-2;Index:22;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура наружная';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-40;Max:60;Def:HIDE_MIN_MAX;
    Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect),
(Name:'Bлажность наружная';Frm:SSpS0;Ed:'%';TipSens:SensorRCS;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Осадки';Frm:SS;Ed:'';TipSens:SensorRCS;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:10;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Скорость ветра';Frm:SSpS0;Ed:'м/сек';TipSens:SensorRCS;Min:0;Max:40;Def:HIDE_MIN_MAX;
    Index:6;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect),
(Name:'Направление ветра';Frm:SSSS;Ed:'°';TipSens:SensorRCS;Min:0;Max:360;Def:HIDE_MIN_MAX;
    Link:-1;Index:8;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Средняя скорость ветра';Frm:SSpS0;Ed:'м/сек';TipSens:TipCalc;Min:0;Max:40;Def:HIDE_MIN_MAX;
    Link:-2;Index:26;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
{(Name:'Наветренная строна';Frm:ComboSS;Ed:'';TipSens:TipCalc;Min:comNord;Max:comNord+1;Def:HIDE_MIN_MAX;
    Index:28;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),}
(Name:'Ветер с юга';Frm:SS;Ed:'м/сек';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-1;Index:28;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Ветер с севера';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-2;Index:28;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Влагосодержание снаружи';Frm:SSpS0;Ed:'г/м3';TipSens:SensorRCS;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-7;Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opMinus;o2:-1),
(Name:'Разница влагосодержания снаружи_внутри';Frm:SSpS0;Ed:'г/м3';TipSens:SensorRCS;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-8;Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMinus;o2:-1),
(Name:'Давление снаружи';Frm:SSSS;Ed:'мм';TipSens:SensorRCS;Min:0;Max:800;Def:HIDE_MIN_MAX;
    Index:10;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Давление внутри';Frm:SSSS;Ed:'мм';TipSens:SensorRCS;Min:0;Max:800;Def:HIDE_MIN_MAX;
    Index:10;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Разница давлений снаружи_внутри';Frm:SSSS;Ed:'мм';TipSens:SensorRCS;Min:-1;Max:20;Def:HIDE_MIN_MAX;
    Link:-1;Index:10;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opMinus;o2:-1),

(Name:'Время восхода солнца';Frm:SShSSm;Ed:'';TipSens:TipSun;Min:0;Max:0;Def:HIDE_MIN_MAX;
    Index:32;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Время захода солнца';Frm:SShSSm;Ed:'';TipSens:TipSun;Min:0;Max:0;Def:HIDE_MIN_MAX;
    Index:34;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Дневное время';Frm:SS;Ed:'%';TipSens:TipSun;Min:0;Max:101;Def:HIDE_MIN_MAX;
    Index:34;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Сезон лето';Frm:SS;Ed:'%';TipSens:TipSun;Min:0;Max:0;Def:HIDE_MIN_MAX;
    Index:34;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Температура воды прямой';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:12;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Температура воды обратной';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:14;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Надо теплоноситель';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:135;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR),
{(Name:'Абсолютный макс теплоносителя';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:150;Def:HIDE_MIN_MAX;
    Index:30;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR), }
(Name:'Давление воды прямой';Frm:SSpSS;Ed:'Кг';TipSens:SensorRCS;Min:0;Max:16;Def:HIDE_MIN_MAX;
    Index:16;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Давление воды обратной';Frm:SSpSS;Ed:'Кг';TipSens:SensorRCS;Min:0;Max:14;Def:HIDE_MIN_MAX;
    Index:18;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Заданный перепад давления воды';Frm:SSpS0;Ed:'кГ';TipSens:TipCalc;Min:-1;Max:5;Def:HIDE_MIN_MAX;
    Link:-2;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//(Name:'Расход воды';Frm:SSSS;Ed:'м3/час';TipSens:SensorRCS;Min:0;Max:100;Def:HIDE_MIN_MAX;
//    Index:20;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
// ------- ИЗМЕРЯЕМЫЕ ПАРАМЕТРЫ ТЕПЛИЦЫ  -----------------------
//====================================================================
(Name:'Температура воздуха Задана';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:-1;Max:35;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR;Kind:kdProgTask+kdNewTree),
(Name:'Коррекция заданной температуры';Frm:SSpS0;Ed:'°C';TipSens:TipSun;Min:-1;Max:5;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Температура воздуха ДЕРЖАТЬ';Frm:SSpS0;Ed:'°C';TipSens:TipSun;Min:-1;Max:35;Def:NO_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opPlus;o2:-1),
(Name:'Темпер воздуха центр';Frm:SSpS0;Ed:'°C';TipSens:TipGoTask{SensorRCS};Min:-1;Max:70;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdTask),
(Name:'Темпер воздуха у почвы';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:70;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Темпер воздуха верх';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:70;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Темпер воздуха шатер';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:70;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Темпер воздуха у стены';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:70;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Температура стекла';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-20;Max:70;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect),
(Name:'Температура почвы';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:0;Max:60;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Температура листа';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:0;Max:60;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),

(Name:'Заданная влажность воздуха';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:95;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR;Kind:kdProgTask),
(Name:'Коррекция заданной влажности';Frm:SSpS0;Ed:'%';TipSens:TipSun;Min:0;Max:15;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Влажность воздуха ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipSun;Min:0;Max:95;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opPlus;o2:-1),
(Name:'Относит влажность воздуха';Frm:SSpS0;Ed:'%';TipSens:SensorRCS;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdTask),
(Name:'Дефицит водяного пара воздуха';Frm:SSpS0;Ed:'г/м3';TipSens:DDWP;Min:0;Max:20;Def:HIDE_MIN_MAX;
    Link:-1;Index:0{iRez};Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-9;op:opDDWP;o2:-1),
(Name:'Дефицит водяного пара листа';Frm:SSpS0;Ed:'г/м3';TipSens:DDWPS;Min:0;Max:20;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Абсолютная влажность воздуха';Frm:SSpS0;Ed:'г/м3';TipSens:AbsRH;Min:0;Max:20;Def:HIDE_MIN_MAX;
    Index:00;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Точка росы';Frm:SSpS0;Ed:'°C';TipSens:TR;Min:0;Max:40;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Разница влажности воздуха снаружи_внутри';Frm:SSpS0;Ed:'г/м3';TipSens:TipCalc;Min:-40;Max:40;Def:HIDE_MIN_MAX;
    Index:00;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:11;op:opMinus;o2:-1),
(Name:'Заданная температура вентиляции';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:-1;Max:40;Def:FATAL_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'СО2 Задана концентрация';Frm:SSSS;Ed:'ppm';TipSens:TipTimer;Min:0;Max:1500;Def:HIDE_MIN_MAX;
    Link:3;Index:0;Mech:0;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR;Kind:kdProgTask),
(Name:'СО2 коррекция';Frm:SSpS0;Ed:'ppm';TipSens:TipTimer;Min:0;Max:1500;Def:HIDE_MIN_MAX;
    Link:2;Index:0;Mech:0;AccessR:RW_GUESTI;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'СО2 ДЕРЖАТЬ концентрацию';Frm:SSSS;Ed:'ppm';TipSens:TipSun;Min:0;Max:1500;Def:HIDE_MIN_MAX;
    Link:1;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opPlus;o2:-1),
(Name:'Концентрация СО2';Frm:SSSS;Ed:'ppm';TipSens:SensorRCS;Min:0;Max:3000;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdTask),
(Name:'Внутренняя освещенность';Frm:SSSS;Ed:'Вт/м2';TipSens:SensorRCS;Min:0;Max:1400;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),

// ------- РАСЧИТАННЫЕ ПАРАМЕТРЫ ТЕПЛИЦЫ ---------------------------

(Name:'Контур 1 Т воды';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Link:linkPape;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect+kdSubSys+kdNewTree),
(Name:'Контур 1 ДЕРЖАТЬ T воды';Frm:SSpS0;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Link:-1;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 Максимум';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Link:-2;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 Минимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Link:-3;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 Оптимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:80;Def:HIDE_MIN_MAX;
    Link:-4;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Контур 1 Тизм-Тзад';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-5;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-4;op:opMINUS;o2:-5),
(Name:'Контур 1 Смеситель положение';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-6;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 1 Смесительный клапан';Frm:SSpS0;Ed:'';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-7;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg+kdPump),
(Name:'Контур 1 Насос';Frm:SS;Ed:'';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-8;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdPump),

(Name:'Контур 2 Т воды';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Link:linkPape;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect+kdSubSys),
(Name:'Контур 2 ДЕРЖАТЬ температуру воды';Frm:SSpS0;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Link:-1;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 Максимум';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Link:-2;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 Минимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Link:-3;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 Оптимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:80;Def:HIDE_MIN_MAX;
    Link:-4;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Контур 2 Тизм-Тзад';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-4;op:opMINUS;o2:-5),
(Name:'Контур 2 Смеситель положение';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 2 Смесительный клапан';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg+kdPump),
(Name:'Контур 2 Насос';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdPump),

(Name:'Контур 3 Т воды';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect+kdSubSys),
(Name:'Контур 3 ДЕРЖАТЬ температуру воды';Frm:SSpS0;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 Максимум';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 Минимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 Оптимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:80;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Контур 3 Тизм-Тзад';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-4;op:opMINUS;o2:-5),
(Name:'Контур 3 Смеситель положение';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 3 Смесительный клапан';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg+kdPump),
(Name:'Контур 3 Насос';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdPump),

(Name:'Контур 4 Т воды';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect+kdSubSys),
(Name:'Контур 4 ДЕРЖАТЬ температуру воды';Frm:SSpS0;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 Максимум';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 Минимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 Оптимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:80;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Контур 4 Тизм-Тзад';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-4;op:opMINUS;o2:-5),
(Name:'Контур 4 Смеситель положение';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 4 Смесительный клапан';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg+kdPump),
(Name:'Контур 4 Насос';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdPump),

(Name:'Контур 5 Т воды';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor+kdEffect+kdSubSys),
(Name:'Контур 5 ДЕРЖАТЬ температуру воды';Frm:SSpS0;Ed:'°C';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 Максимум';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 Минимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 Оптимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:80;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Контур 5 Тизм-Тзад';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-4;op:opMINUS;o2:-5),
(Name:'Контур 5 Смеситель положение';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Контур 5 Смесительный клапан';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg+kdPump),
(Name:'Контур 5 Насос';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdPump),

(Name:'Наветренные фрамуги';Frm:SSpS0;Ed:'%';TipSens:SensorRCS;Min:0;Max:120;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdEffect+kdSubSys+kdNewTree),
(Name:'Наветренные фрамуги ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Наветренные фрамуги Максимум';Frm:SSpS0;Ed:'%';TipSens:TipProg;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Наветренные фрамуги Минимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Наветренные фрамуги Оптимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Подветренные фрамуги';Frm:SSpS0;Ed:'%';TipSens:SensorRCS;Min:0;Max:120;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdEffect+kdSubSys),
(Name:'Подветренные фрамуги ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Подветренные фрамуги Максимум';Frm:SSpS0;Ed:'%';TipSens:TipProg;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Подветренные фрамуги Минимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Подветренные фрамуги Оптимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Фрамуги Юг измерено';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Фрамуги Юг ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Юг расхождение';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-2),
(Name:'Фрамуги Юг положение';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Юг';Frm:SS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),

(Name:'Ultra Clima фрамуги расхождение';Frm:SSpSS;Ed:'мПа';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdNewTree;o1:-6;op:opPlus;o2:-1),
(Name:'Ultra Clima фрамуги положение';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Ultra Clima фрамуги';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),

(Name:'Фрамуги Привод 1 поправка';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Фрамуги Привод 1 ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opPlus;o2:-1),
(Name:'Фрамуги Привод 1 измерено';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Фрамуги Привод 1 расхождение';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-2),
(Name:'Фрамуги Привод 1 расчет';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Привод 1';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),
(Name:'Фрамуги Привод 2 поправка';Frm:SSpSS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Фрамуги Привод 2 ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opPlus;o2:-1),
(Name:'Фрамуги Привод 2 измерено';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Фрамуги Привод 2 расхождение';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-2),
(Name:'Фрамуги Привод 2 расчет';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Привод 2';Frm:SSpS0;Ed:'';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),
(Name:'Фрамуги Привод 3 поправка';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Фрамуги Привод 3 ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opPlus;o2:-1),
(Name:'Фрамуги Привод 3 измерено';Frm:SSpSS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Фрамуги Привод 3 расхождение';Frm:SSpSS;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-2),
(Name:'Фрамуги Привод 3 расчет';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Привод 3';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),
(Name:'Фрамуги Привод 4 поправка';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Фрамуги Привод 4 ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-2;op:opPlus;o2:-1),
(Name:'Фрамуги Привод 4 измерено';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Фрамуги Привод 4 расхождение';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-2),
(Name:'Фрамуги Привод 4 расчет';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Фрамуги Привод 4';Frm:SSpS0;Ed:'';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),

(Name:'Смеситель внутр и наруж воздуха';Frm:SSpS0;Ed:'%';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdEffect+kdSubSys),
(Name:'Смеситель внутр и наруж воздуха ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:-1;Max:130;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смеситель внутр и наруж воздуха Максимум';Frm:SSpS0;Ed:'%';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смеситель внутр и наруж воздуха Минимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смеситель внутр и наруж воздуха Оптимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Смеситель внутр и наруж воздуха Рассогласование';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-4;op:opMINUS;o2:-5),
(Name:'Смеситель внутр и наруж воздуха Положение';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Смеситель внутр и наруж воздуха';Frm:SSpS0;Ed:'';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),

(Name:'Приточный вентилятор';Frm:SSpS0;Ed:'%';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdUltraClimFan+kdEffect+kdSubSys),
(Name:'Приточный вентилятор ДЕРЖАТЬ';Frm:SSpS0;Ed:'%';TipSens:TipDo;Min:-1;Max:130;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Приточный вентилятор Максимум';Frm:SSpS0;Ed:'%';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Приточный вентилятор Минимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Приточный Оптимум';Frm:SSpS0;Ed:'%';TipSens:TipTimer;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Приток подогрев';Frm:SSpS0;Ed:'°C';TipSens:SensorRCS;Min:-1;Max:150;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdEffect+kdSubSys),
(Name:'Приток подогрев поправка';Frm:SSpS0;Ed:'°C';TipSens:TipDo;Min:0;Max:4;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Приток подогрев ДЕРЖАТЬ';Frm:SSpS0;Ed:'°C';TipSens:TipDo;Min:-1;Max:130;Def:HIDE_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-6;op:opPlus;o2:-1),
(Name:'Приток подогрев Максимум';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Приток подогрев Минимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:50;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Приток подогрев Оптимум';Frm:SSpS0;Ed:'°C';TipSens:TipTimer;Min:0;Max:70;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Приток подогрев расхождение';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-4;op:opMINUS;o2:-5),
(Name:'Приток подогрев положение';Frm:SSpS0;Ed:'%';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Приток подогрев смесительный клапан';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg+kdPump),
(Name:'Приток подогрев насос';Frm:SS;Ed:'';TipSens:TipIzm;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdPump),

(Name:'Экран термический ДЕРЖАТЬ';Frm:SSpSS;Ed:'%';TipSens:TipDo;Min:0;Max:130;Def:HIDE_MIN_MAX;
      Link:linkGorScreen;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdNewTree),
(Name:'Экран термический Максимум';Frm:SSpSS;Ed:'%';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Link:-1;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Экран термический Минимум';Frm:SSpSS;Ed:'%';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Link:-2;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Экран термический Оптимум';Frm:SSpSS;Ed:'%';TipSens:TipProg;Min:0;Max:130;Def:HIDE_MIN_MAX;
    Link:-3;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'Экран термический привод 1 измерено';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-4;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Экран термический привод 1 расхождение';Frm:SSpS0;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-5;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-5),
(Name:'Экран термический привод 1 положение';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-6;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Экран термический привод 1';Frm:SS;Ed:'';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Link:-7;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),
(Name:'Экран термический привод 2 измерено';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdSensor),
(Name:'Экран термический привод 2 расхождение';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-9),
(Name:'Экран термический привод 2 положение';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Экран термический привод 2';Frm:SS;Ed:'%';TipSens:TipDo;Min:0;Max:100;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),

(Name:'Вентиляторы задана разница для вкл';Frm:SSpS0;Ed:'°C';TipSens:TipProg;Min:0;Max:10;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask+kdNewTree),
(Name:'Вентиляторы сейчас разница';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:10;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Вентиляторы расхождение';Frm:SSpS0;Ed:'°C';TipSens:TipIzm;Min:0;Max:10;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-2),
(Name:'Вентиляторы';Frm:SS;Ed:'%';TipSens:TipTimer;Min:0;Max:0;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),

(Name:'Регулятор давления  ИЗМЕРЕНА разность';Frm:SSpSS;Ed:'Кг/см2';TipSens:TipCalc;Min:-3;Max:3;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Регулятор давления  ДЕРЖАТЬ разность';Frm:SSpSS;Ed:'Кг/см2';TipSens:TipCalc;Min:-3;Max:3;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdConstTask),
(Name:'Регулятор давления расхождение';Frm:SSpSS;Ed:'Кг/см2';TipSens:TipCalc;Min:0;Max:110;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;o1:-1;op:opMINUS;o2:-2),
(Name:'Регулятор давления положение';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:110;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
(Name:'Регулятор давления';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:110;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR;Kind:kdReg),

//(Name:'Запрос СО2 (разница зад и измер)';Frm:SSSS;Ed:'ppm';TipSens:TipSun;Min:0;Max:1500;Def:HIDE_MIN_MAX;
//    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),

(Name:'СИОД - Текущее задание распыления';Frm:SSSS;Ed:'сек';TipSens:TipTimer;Min:0;Max:30;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR),
//============================= Contnrol and status ========================================
(Name:'Авария Состояние';Frm:ComboBit;Ed:'0';TipSens:TipBit;Min:comOnOff;Max:comOnOff+1;Def:HIDE_MIN_MAX;
    Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_SUPERVISOR)
);
var XHot502Names:array [1..2] of TXNames=(
    (Name:'Значение';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0;Min:0;Max:0),
    (Name:'Функция';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0;Min:0;Max:0));

implementation

end.
