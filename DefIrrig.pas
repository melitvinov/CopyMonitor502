unit DefIrrig;

interface
uses FConstType, FController, Graphics;

const
// Маски модификаций контроллера SubTip
{#define tR100   1
#define tDV     2
#define tTV     8
#define tAV10   16
#define tSiod   32}

        Rasxod100=      $01;
        DubleValve=     $02;
        Pusto=          $04;
        TriValve=       $08;
//        ArxRas10=       $10;
        YesSiod =       $20;
        YesKamera=      $02;
//#define tSiod22 64 /* 6 бит=1(64), то подсоединен СИОД22 */
        YesSiod22=      $40;
        YesT325=        $80;
// Состояние регистра статуса полива  - GD.SostPol.OutReg
	OnNasos=	$01;
	OnWater=	$02;
	OnFirstKl=	$04;
// Состояние входного регистра  - GD.SostPol.InReg
	OnLevel1=	$01;
	OnLevel2=	$02;
	OnLevel3=	$04;
	OnLevel4=	$08;
//  Состояние канала дозатора- GD.SostPol.Chan[].RCS
        ActChan=	0;//$01;
        YesZD=		1;//$02;
        LowLevErr=	4;//$10;
        HiLevErr=	5;//$20;
        LevErr=         $30;
// Коды регистра аварии - GD.SostPol.TipError
        cErDoz=4; //Коды от 1 до 4
//        cErVAC=	7;
        bErOutMat=64;
        cErRasxod=32;
        cErNasWater=8;
        cErWater=9;
// Состояние полива  - GD.SostPol.Cycle
        sSTOP=           0;
        sACT=            1;
        sPAUSE=          2;
        sWATER=          3;
// Параметры контроллера по умолчанию
       Temp1=9;
       Hum1=13;
const    NameChan04:array [1..17] of string[6]=(
     'EC','pH','Тем','ECk','Сол','УрА','УрВ','УрС',
     'Темп1','Темп2','Темп3','Темп4','Влаж1','Влаж2','Влаж3','Влаж4',
     'Порт 1');
const    FrmChan04:array [1..17] of TSFormat=
    (SSpSS,SSpSS,SSpS0,SSpSS,SSSS,SSSpS,SSSpS,SSSpS,
     SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSSS);
const    EdChan04:array [1..17] of string[7]=(
     'мСм/см','','°C','мСм/см','Вт/м2','см','см','см',
     '°C','°C','°C','°C','%','%','%','%','коэф');
const    NameChan324:array [1..17] of string[6]=(
     'EC','pH','Тем','ECk','pHк','Сол','УрА','УрВ',
     'Темп1','Темп2','Темп3','Темп4','Влаж1','Влаж2','Влаж3','Влаж4',
     'Порт 1');
const    FrmChan324:array [1..17] of TSFormat=
    (SSpSS,SSpSS,SSpS0,SSpSS,SSpSS,SSSS,SSSpS,SSSpS,
     SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSSS);
const    EdChan324:array [1..17] of string[7]=(
     'мСм/см','','°C','мСм/см','','Вт/м2','см','см',
     '°C','°C','°C','°C','%','%','%','%','коэф');

{type
 TCtrPoliv=Class(TFPicCtr)
 public
     ScaleRasxod:TSFormat;
     NumDozEC:Byte;
//     mSostPol:array[0..100] of byte;
     property NumValve:Byte read IdentCtr[id1] write IdentCtr[id1];
     property NumChan:Byte read IdentCtr[id2] write IdentCtr[id2];
//     property NumTimer:Byte read Ident[1] write Ident[1];
     property SizeArx:Byte read IdentCtr[id3] write IdentCtr[id3];
end; }
SumIrrigDiag=6;
var
IrrigDiagnos:array [1..SumIrrigDiag] of TDiagnos=(
   (Name:'Нет принятых данных';ShowPozition:30;LevelAlarm:alFatal;PosInHot:0;Frm:SS;Oper:BGT;OperValue:0;Color:clRed;Voice:''),
   (Name:'Время контроллера отлично от ПК';ShowPozition:29;LevelAlarm:alFatal;PosInHot:6;Frm:SS;Oper:lAND;OperValue:$80;Color:clRed;Voice:'WrongTime'),
   (Name:'Ручное управление';ShowPozition:28;LevelAlarm:alHand;PosInHot:13;Frm:SS;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl'),
//   (Name:'Программа';ShowPozition:-2;LevelAlarm:caRedFatalAlarm+1;PosInHot:22;Frm:SS;Oper:BGT;OperValue:0;Color:clGreen),
   (Name:'По программе полив';ShowPozition:-2;LevelAlarm:alMessig;PosInHot:22;Frm:SS;Oper:BGT;OperValue:0;Color:clGreen),
//   (Name:'Клапан';ShowPozition:-5;LevelAlarm:caRedFatalAlarm+1;PosInHot:20;Frm:SS;Oper:lAND;OperValue:1;Color:clBlue),
   (Name:'Насос полива';ShowPozition:-5;LevelAlarm:alMessig;PosInHot:21;Frm:SS;Oper:lAND;OperValue:1;Color:clBlue),
   (Name:'Авария';ShowPozition:-1;LevelAlarm:alFatal;PosInHot:23;Frm:SS;Oper:BGT;OperValue:0;Color:clRed)
   );

implementation

end.
