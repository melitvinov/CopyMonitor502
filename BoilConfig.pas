unit BoilConfig;

interface
uses FConstType, MessageU;
//*********************************************************************
//*******************     КОНФИГУРАЦИЯ     ****************************
//*********************************************************************
const
  eSumBoilers =6;
  eSumGroups=  10;
  eSumCollector=6;
  eSumCO2Units =6;
  eSumTankSens =20;
  eSumPanels =150;
  eSumElGroups= 20;
  eSumHPUnits =10;
  eSumBuses =10;
  faAlarm=3;

      eMAX_SUM_PID=60;
    eMAX_SUM_PUMP=270;
    eMAX_SUM_SENS=140;
    eMAX_SUM_CALC=1100;
    eMAX_SUM_INPUT=140;
    eMAX_SUM_CONST=100;


  iConfMixValve           =15;
  iConfBurn               =iConfMixValve+eSumGroups;
  iConfMixBoiler          =iConfBurn+eSumBoilers;
  iConfRegBoiler          =iConfMixBoiler+eSumBoilers;
  iConfShockBoil          =iConfRegBoiler+eSumBoilers;
  iConfCondBoil           =iConfShockBoil+eSumBoilers;
  iConfMixHP              =iConfCondBoil+eSumBoilers;
  iConfValveHP            =iConfMixHP+eSumHPUnits;


  iConfGrPump             =iConfMixValve+eMAX_SUM_PID;
  iConfBoilOn             =iConfGrPump+eSumGroups;
  iConfBoilOnline         =iConfBoilOn+eSumBoilers;
  iConfBoilPump           =iConfBoilOnline+eSumBoilers;
  iConfBoilShPump         =iConfBoilPump+eSumBoilers;
  iConfBoilCondPump       =iConfBoilShPump+eSumBoilers;
  iConfBoilRezPump        =iConfBoilCondPump+eSumBoilers;

  iConfCO2                =iConfBoilRezPump+eSumBoilers;

  iConfPanelOn            =iConfCO2+eSumCO2Units;
  iConfElGroupOn          =iConfPanelOn+eSumPanels;
  iConfElGroupLight       =iConfElGroupOn+eSumElGroups;
  iConfHPStart            =iConfElGroupLight+eSumElGroups;
  iConfRlLightOK          =iConfHPStart+eSumHPUnits;

  iConfControlOK          =iConfRlLightOK+eSumHPUnits;
  iConfFatalAlarm         =iConfControlOK+1;
  iConfCommonAlarm        =iConfFatalAlarm+1;

  iConfBoilLev            =iConfGrPump+eMAX_SUM_PUMP;
  iConfBoilAlr            =iConfBoilLev+eSumBoilers;
  iConfCO2Alr             =iConfBoilAlr+eSumBoilers;
  iConfCO2Req             =iConfCO2Alr+eSumCO2Units;
  iConfElGroupAlr         =iConfCO2Req+eSumCO2Units;
  iConfHPInfo             =iConfElGroupAlr+eSumElGroups;
  iConfHPOn               =iConfHPInfo+eSumHPUnits;
  iConfHPRequest          =iConfHPOn+eSumHPUnits;
  iConfTankAlarm          =iConfHPRequest+eSumHPUnits;
  iConfReset              =iConfTankAlarm+1;
  iConfFire               =iConfReset+1;
  iConfNitro              =iConfFire+1;
  iConfPumps              =iConfNitro+1;

  iConfCollect            =iConfBoilLev+eMAX_SUM_INPUT;
  iConfBus                =iConfCollect+eSumBoilers;

  cSumValYConfig        =427;

  cSizeColConf     =550;
  MAX_SUM_RELAY    =0;//60000;//128;
  MAX_SUM_INPUT    =0;//60000;//8;
  pozCfMixValGr1    =7;
//  iSumBoils =0;
//  iSumGroups =1;

var BoilNameConfig:array [1..cSumValYConfig] of TNameConst=(
//1
(Name:'Кол-во котлов';Frm:SSSS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:4; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Кол-во теплогрупп';Frm:SSSS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:5; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Кол-во ГПУ';Frm:SSSS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:11; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Кол-во щитов';Frm:SSSS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:9; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Кол-во электрогрупп';Frm:SSSS;Ed:'';TipSens:TipControl;Min:0;Max:20;Def:HIDE_MIN_MAX;
  Index:10; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Кол-во установок СО2';Frm:SSSS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:8; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
//7
(Name:'Смесительный клапан группы 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан группы 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixValve+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//17
{(Name:'Частотный регулятор насоса 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Частотный регулятор насоса 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPumpReg+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),}
//17
(Name:'Горелка котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBurn; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Горелка котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBurn+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Горелка котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBurn+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Горелка котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBurn+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Горелка котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBurn+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Горелка котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBurn+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//23
(Name:'Клапан котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixBoiler; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixBoiler+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixBoiler+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixBoiler+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixBoiler+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixBoiler+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//29
(Name:'Регулятор насоса котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRegBoiler; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор насоса котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRegBoiler+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор насоса котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRegBoiler+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор насоса котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRegBoiler+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор насоса котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRegBoiler+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Регулятор насоса котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRegBoiler+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//35
(Name:'Клапан шока котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfShockBoil; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан шока котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfShockBoil+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан шока котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfShockBoil+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан шока котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfShockBoil+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан шока котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfShockBoil+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Клапан шока котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfShockBoil+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//41
(Name:'Клапан конденсера котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCondBoil; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан конденсера котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCondBoil+1; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан конденсера котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCondBoil+2; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан конденсера котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCondBoil+3; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан конденсера котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCondBoil+4; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан конденсера котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCondBoil+5; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
//47
(Name:'Смесительный клапан ГПУ 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Смесительный клапан ГПУ 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfMixHP+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//57
(Name:'Клапан ГПУ 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+1; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+2; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+3; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+4; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+5; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+6; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+7; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+8; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Клапан ГПУ 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfValveHP+9; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),

//35
(Name:'Реверс бака';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:0; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
//36
(Name:'Насос группы 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос группы 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfGrPump+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//46
(Name:'Запуск котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOn; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOn+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOn+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOn+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOn+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOn+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//52
(Name:'Управление котлом 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOnline; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Управление котлом 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOnline+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Управление котлом 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOnline+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Управление котлом 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOnline+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Управление котлом 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOnline+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Управление котлом 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilOnline+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//58
(Name:'Насос котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilPump; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilPump+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilPump+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilPump+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilPump+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilPump+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//64
(Name:'Насос защиты котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilShPump; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос защиты котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilShPump+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос защиты котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilShPump+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос защиты котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilShPump+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос защиты котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilShPump+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Насос защиты котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilShPump+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//70
//64
(Name:'Насос конденсера котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilCondPump; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос конденсера котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilCondPump+1; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос конденсера котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilCondPump+2; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос конденсера котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilCondPump+3; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос конденсера котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilCondPump+4; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос конденсера котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilCondPump+5; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),

(Name:'Насос доп котла 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilRezPump; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос доп котла 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilRezPump+1; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос доп котла 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilRezPump+2; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос доп котла 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilRezPump+3; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос доп котла 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilRezPump+4; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),
(Name:'Насос доп котла 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfBoilRezPump+5; Mech:0; AccessR:RW_INVISIBLE;AccessW:W_CONFIG),

(Name:'Вентилятор СО2 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCO2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Вентилятор СО2 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCO2+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Вентилятор СО2 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCO2+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Вентилятор СО2 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCO2+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Вентилятор СО2 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCO2+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Вентилятор СО2 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCO2+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//76
(Name:'Включить щит 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 11';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+10; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 12';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+11; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 13';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+12; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 14';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+13; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 15';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+14; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 16';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+15; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 17';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+16; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 18';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+17; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 19';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+18; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 20';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+19; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 21';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+20; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 22';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+21; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 23';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+22; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 24';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+23; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 25';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+24; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 26';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+25; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 27';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+26; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 28';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+27; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 29';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+28; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 30';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+29; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 31';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+30; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 32';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+31; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 33';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+32; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 34';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+33; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 35';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+34; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 36';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+35; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 37';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+36; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 38';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+37; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 39';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+38; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 40';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+39; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 41';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+40; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 42';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+41; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 43';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+42; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 44';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+43; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 45';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+44; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 46';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+45; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 47';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+46; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 48';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+47; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 49';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+48; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 50';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+49; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 51';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+50; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 52';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+51; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 53';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+52; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 54';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+53; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 55';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+54; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 56';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+55; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 57';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+56; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 58';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+57; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 59';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+58; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 60';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+59; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 61';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+60; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 62';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+61; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 63';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+62; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 64';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+63; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 65';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+64; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 66';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+65; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 67';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+66; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 68';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+67; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 69';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+68; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 70';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+69; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 71';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+70; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 72';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+71; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 73';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+72; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 74';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+73; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 75';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+74; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 76';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+75; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 77';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+76; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 78';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+77; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 79';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+78; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 80';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+79; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 81';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+80; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 82';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+81; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 83';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+82; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 84';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+83; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 85';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+84; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 86';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+85; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 87';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+86; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 88';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+87; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 89';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+88; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 90';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+89; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 91';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+90; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 92';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+91; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 93';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+92; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 94';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+93; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 95';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+94; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 96';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+95; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 97';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+96; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 98';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+97; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 99';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+98; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 100';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+99; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 101';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+100; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 102';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+101; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 103';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+102; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 104';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+103; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 105';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+104; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 106';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+105; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 107';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+106; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 108';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+107; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 109';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+108; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 110';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+109; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 111';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+110; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 112';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+111; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 113';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+112; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 114';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+113; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 115';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+114; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 116';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+115; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 117';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+116; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 118';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+117; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 119';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+118; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 120';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+119; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 121';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+120; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 122';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+121; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 123';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+122; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 124';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+123; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 125';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+124; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 126';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+125; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 127';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+126; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 128';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+127; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 129';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+128; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 130';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+129; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 131';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+130; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 132';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+131; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 133';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+132; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 134';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+133; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 135';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+134; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 136';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+135; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 137';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+136; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 138';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+137; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 139';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+138; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 140';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+139; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 141';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+140; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 142';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+141; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 143';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+142; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 144';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+143; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 145';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+144; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 146';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+145; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 147';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+146; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 148';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+147; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 149';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+148; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить щит 150';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfPanelOn+149; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//176

(Name:'Включить группу 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 11';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+10; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 12';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+11; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 13';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+12; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 14';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+13; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 15';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+14; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 16';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+15; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 17';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+16; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 18';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+17; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 19';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+18; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Включить группу 20';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupOn+19; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//196
(Name:'Процент освещенности группы 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 11';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+10; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 12';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+11; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 13';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+12; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 14';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+13; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 15';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+14; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 16';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+15; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 17';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+16; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 18';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+17; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 19';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+18; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Процент освещенности группы 20';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfElGroupLight+19; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//216
(Name:'Запуск ГПУ 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запуск ГПУ 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfHPStart+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//226
(Name:'Разрешение досветки 1';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 2';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 3';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 4';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 5';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 6';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 7';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 8';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 9';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Разрешение досветки 10';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfRlLightOK+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//236

(Name:'Работа котла 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilLev; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа котла 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilLev+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа котла 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilLev+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа котла 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilLev+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа котла 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilLev+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа котла 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilLev+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//242
(Name:'Авария котла 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilAlr; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария котла 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilAlr+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария котла 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilAlr+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария котла 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilAlr+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария котла 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilAlr+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария котла 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfBoilAlr+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//248
(Name:'Авария СО2 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Alr; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария СО2 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Alr+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария СО2 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Alr+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария СО2 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Alr+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария СО2 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Alr+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария СО2 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Alr+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//254
(Name:'Запрос СО2 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Req; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запрос СО2 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Req+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запрос СО2 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Req+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запрос СО2 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Req+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запрос СО2 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Req+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Запрос СО2 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfCO2Req+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//260
(Name:'Авария группы 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfELGroupAlr+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfELGroupAlr+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 7';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 8';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 9';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 10';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 11';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+10; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 12';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+11; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 13';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+12; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 14';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+13; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 15';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+14; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 16';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+15; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 17';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+16; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 18';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+17; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 19';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+18; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария группы 20';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfElGroupAlr+19; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//280
(Name:'Авария ГПУ 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 7';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 8';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 9';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария ГПУ 10';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPRequest+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//290
(Name:'Работа ГПУ 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 7';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 8';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 9';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Работа ГПУ 10';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPOn+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
//300
(Name:'Протокол ГПУ 1';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 2';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 3';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 4';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 5';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 6';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 7';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 8';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 9';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Протокол ГПУ 10';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfHPInfo+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

//310
(Name:'Фатальная авария';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfFatalAlarm; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Общая авария';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfCommonAlarm; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

(Name:'Идет управление';Frm:CpMpN;Ed:'-реле';TipSens:TipControl;Min:0;Max:MAX_SUM_RELAY;Def:0;
    Index:iConfControlOK; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

(Name:'Фатальная авария бака (закрыт)';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfTankAlarm; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Сброс контроллера';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfReset; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Пожарная сигнализация';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfFire; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Подпитка бака-аккумулятора';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfNitro; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Авария насосов';Frm:CpMpN;Ed:'-вход';TipSens:TipControl;Min:0;Max:MAX_SUM_INPUT;Def:0;
    Index:iConfPumps; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

(Name:'Коллектор утилизации';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfCollect; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Коллектор без СО2';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfCollect+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Коллектор СО2 1';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfCollect+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Коллектор СО2 2';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfCollect+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Коллектор СО2 3';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfCollect+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Коллектор СО2 4';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfCollect+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),

(Name:'Шина электросети';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 1';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+1; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 2';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+2; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 3';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+3; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 4';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+4; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 5';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+5; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 6';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+6; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 7';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+7; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 8';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+8; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG),
(Name:'Шина электрическая 9';Frm:ComboSSSS;Ed:'';TipSens:TipControl;Min:comNoYes;Max:comNoYes+1;Def:0;
    Index:iConfBus+9; Mech:0; AccessR:R_CONFIG;AccessW:W_CONFIG)


//276
    );
//*********************************************************************
//******************** END КОНФИГУРАЦИЯ ***********************
//*********************************************************************


implementation





end.
