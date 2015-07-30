unit Drain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids_ts, TSGrid,  ComCtrls, DateUtils,
  FConstType, FPanel, FController, PicCtr,  SetGrid, GIFDef, GIFComponent,
  ExtCtrls, Boiler, StdCtrls;
const
      MAX_SUM_DRAIN_POINT_404     = 4;
      REAL_SUM_DRAIN_POINT    = 2;
      MAX_SUM_DRAIN_ZONE      = 20;
      COPY_SIZE_ARX_IRRIG     = 500; //size + baypass
//      IsIrrigCtr=1;
//      IsIrrigFlow=2;
//      IsSensors=3;
      cfIrrigCtrNum=1;
      cfIsIrrigFlow=2;
      cfIsSensors=3;

type
{  THotDrain=Class(TBlock)
    private
      ResieveIrrigTime:TDateTime;
      IrrigAchCopy: array [0..COPY_SIZE_ARX_IRRIG] of byte;
      procedure CalcProcDrainPC;
      procedure CalcProcDrainCtr;
    public
      procedure Init;override;
      function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
      procedure SetTree(var Tree:TTreeView); override;
      procedure PostPortRead; override;
    end;
}
  THotDrain405=Class(TBlock)
    private
      ResieveIrrigTime:TDateTime;
      IrrigAchCopy: array [0..COPY_SIZE_ARX_IRRIG] of byte;
      procedure AddIrrig;
//      procedure CalcProcDrainPC;
//      procedure CalcProcDrainCtr;
    public
      procedure Init;override;
      function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
      procedure SetTree(var Tree:TTreeView); override;
      procedure PostPortRead; override;
    end;

  THotArxIrrig=Class(TBlock)
    public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    end;

  TControlDrain=Class(TBlock)
    public
     procedure Init;override;
    end;

  TControlDrain_2=Class(TBlock)
    public
     procedure Init;override;
    end;

  TDrainSensors=Class(TBlock)
    public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    end;

  TChanelDrain=Class(TBlock)
    public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
    end;

  TConfigDrain=Class(TBlock)
    public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     procedure PostPortRead; override;
    end;

{type TAchivePC=Class(TBlock)
private
     DateTest:TDateTime;
     function CalcDayArxPC(var ArxDate:TDateTime):Boolean;
     function CalcAllArxPC(StartDate:TDateTime):Boolean;
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;
}

  TFDrain = class(TFPicCtr)
    Splitter1: TSplitter;
    FPanel1: TFPanel;
    FPDrain: TFPanel;
    FPanel8: TFPanel;
    GIFSShow3: TGIFSShow;
    xHotGrid: TtsGrid;
    FPZone: TFPanel;
    FPanel7: TFPanel;
    GIFSShow4: TGIFSShow;
    ArxivGrid: TtsGrid;
    Bevel1: TBevel;
    DrainImage: TImage;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    xProcDrain: TLabel;
    xLVolDrein: TLabel;
    xVolIrrig: TLabel;
    xRH: TLabel;
    xCo2: TLabel;
    xTAir: TLabel;
    procedure xHotGridEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure xHotGridCellChanged(Sender: TObject; OldCol, NewCol, OldRow,
      NewRow: Integer);
  private
    { Private declarations }
    ArchiveBlock:THotArxIrrig;  //TBlock;
//    property FlowScale:Byte read IdentCtr[2] write IdentCtr[2];
//    property IsIrrigCtr:Byte read IdentCtr[1] write IdentCtr[1];
//    property IsIrrigFlow:Byte read IdentCtr[2] write IdentCtr[2];
    procedure SetResieveIrrig;
  public
    { Public declarations }
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
//    function CtrFromFile(const CtrNameFile):Boolean;override;
//    procedure RefrechTabl;
    function GetTextZona(x,y:integer):string;override;
  end;

var
  FDrain: TFDrain;
implementation

{$R *.dfm}

uses MessageU, Port, GGraf, Audit, ClimCalc;

//========= ControlDrain_2 =========================================
{
        uchar   NumIrrigCtr;	//0
        uchar   IsIrrigFlow;
        uchar   SumDrainPoint;
        uchar   rSubIdent;
        uchar   rIdent;
//-----------------------------------
        uchar   AverageTime;	//5
        uchar   SamplTime;		//6
        int     DrainFlowScale[2];	//7
		char	IrrigFlowScale[2];	//11
		int		DrainPlantSum[2];	//13
		int		IrrigPlantSum[2];	//17
		uchar   TimeCountTime;		//21
}
const
  posIrrigFlowScale=12;
  posDrainFlowScale=9;
  posIrrigPlantSum=15;
  posDrainPlantSum=17;
  posNumIrrigValve=6;

var NameControlDrain_2:array [1..18] of TNameConst=(
(Name:'Номер контроллера полива,поставляющего дренаж';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:0; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Наличие счетчиков поливочного раствора';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:1; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Наличие сенсоров климата и состояния';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:2; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Модификация программы';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:3; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Тип дренажного контроллера';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:4; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
//5
(Name:'Номер клапана полива для точки дренажа 1';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:22; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Номер клапана полива для точки дренажа 2';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:23; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Время импульса слива дренажа';Frm:SS;Ed:'/64сек';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:6; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Объем на импульс слива дренажа 1';Frm:SSSpS;Ed:'мл';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:7; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
//10
(Name:'Объем на импульс слива дренажа 2';Frm:SSSpS;Ed:'мл';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:9; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Время измерения ЕС и рН после импульса слива';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:5; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Объем на импульс счетчика полива 1';Frm:SS;Ed:'л';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:11; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Объем на импульс счетчика полива 2';Frm:SS;Ed:'л';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:12; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Счет времени полива после импульса счетчика';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:21; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
//15
(Name:'Количество поливаемых растений в точке 1';Frm:SSSS;Ed:'шт';TipSens:TipCalc;Min:2;Max:30000;Def:NO_MIN_MAX;
  Index:17;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Количество поливаемых растений в точке 2';Frm:SSSS;Ed:'шт';TipSens:TipCalc;Min:0;Max:30000;Def:NO_MIN_MAX;
  Index:19;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Колич растений для сбора дренажа 1';Frm:SSSS;Ed:'шт';TipSens:TipCalibr;Min:0;Max:30000;Def:NO_MIN_MAX;
  Index:13;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Колич растений для сбора дренажа 2';Frm:SSSS;Ed:'шт';TipSens:TipCalibr;Min:0;Max:30000;Def:NO_MIN_MAX;
  Index:15;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
  );

procedure TControlDrain_2.Init;
begin
     CountX:=1;
     CountY:=18;
     SizeCol:=0;    //30;
     FullSize:=30;  //SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[198]; //'Параметры';
     NameBlock:=ProgMess[199]; //'Параметры управления';
     FixRow:=1;
     ConstNames:=Addr(NameControlDrain_2[1]);
     Translator:=CountY;  //CountConstNames;
end;

const cCountY=3;
      pozConfNumValve=1;
      pozConfNumPlant=2;
      pozConfNumTest=3;
      pozConfScaleFlow=4;
      cSizePoint=9;
var
NameConfDrain:array [1..cCountY] of TNameConst=(
    (Name:'Номер клапана полива, с которого собирается дренаж';Frm:SS;Ed:'';TipSens:TipCalc;Min:1;Max:64;Def:NO_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Количество растений в зоне клапана';Frm:SSSS;Ed:'шт';TipSens:TipCalc;Min:2;Max:30000;Def:NO_MIN_MAX;
      Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Колич растений для сбора дренажа';Frm:SSSS;Ed:'шт';TipSens:TipCalibr;Min:2;Max:30000;Def:NO_MIN_MAX;
      Index:6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER)
  );

procedure TConfigDrain.Init;//override;
begin
     CountY:=cCountY;
     CountX:=REAL_SUM_DRAIN_POINT;
     SizeCol:=cSizePoint;
     FullSize:=SizeCol*MAX_SUM_DRAIN_POINT_404;
     SendByte:=0;
     Pref:=ProgMess[193];       //'Конфигурация';
     NameBlock:=ProgMess[194];  //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(NameConfDrain[1]);
end;

function TConfigDrain.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pConf:PByteArray;
begin
     pConf:=Adr;
     Result:=ValX;
     if ValY=0 then
        begin
        if ValX=0 then Txt:=ParentCtr.CtrName
        else Txt:=ParentCtr.GetTextZona(ValX,ValY);
        Exit;
        end;
     Result:=Convers(NameConfDrain[ValY].Name,
            Addr(pConf^[NameConfDrain[ValY].Index+round(NameConfDrain[ValY].Min*(ValX-1))])
            ,NameConfDrain[ValY].Frm
            ,vInBlock,ValX,ValY,Txt,NameConfDrain[ValY].Ed);
end;

//-----------------------------------------------------------------------------
{        uchar   News;     0
		uint	PC_SR;           1
		uchar 	PolSunRCS;     3
		uint	PC_SumSR;        4
		uint 	Time;            6
		uint 	Data;            8
		uchar 	Year;          10
        uint    SumSun;     11
		int		WaterCount[MAX_DREN_POINT];	//13+8
        int     FlowScale[MAX_DREN_POINT];	//21+8
        int     OverFlowTime[MAX_DREN_POINT]; //29+8
		int		Midl[SUM_MIDL_CHAN];		//37+2*10
        eChan   Chan[NumChan];				//57+3*12
        uchar   CopyRegLEV;					//93

    %drain                  94
    TimeIrr                 78
    SIZE_HOT_DRAIN=78+5*8=118
    }

const
      iPC_SR=1;
      iSunRCS=3;
      iPC_SumSR=4;
      iTime=6;
      SizeSendSun=6;
      SizeSendTime=12;

      iHotDrainCount405  =13;
      iHotIrrigCount405  =17;
      iHotDrainScale405  =21;
      iWaterScale405     =25;
      iIrrigFlow405      =27;
      iIrrigCtr405       =28;
      iIrrigTimeCtr405   =33;
      iHotSensors        =57;
      iSunSensor         =iHotSensors+15; //72;
      iHotClimSensors    =57+3*8;

      RESEIVE_SIZE        = 124;
      iHOT_IRRIG_EC       = RESEIVE_SIZE;
      iHOT_IRR_ACHIVE     = iHOT_IRRIG_EC+8;  //132;
      iHOT_ACH_WATER_SCALE= iHOT_IRR_ACHIVE+8;
      SIZE_1ARX           = 10;
      SIZE_ARX_IRRIG      = SIZE_1ARX*(MAX_SUM_DRAIN_ZONE+1);  //10*20
      SIZE_HOT_DRAIN      = iHOT_IRR_ACHIVE+SIZE_ARX_IRRIG;

//      iArxScaleWater        =8;

      posArxTimeIrrigVal    =1;
      posArxVolumeIrrigVal  =2;
      posArxIrrigEC         =3;
      posHotProcDrain405        =1;
      posHotDrainImpul405       =2;
      posHotDrainScale405       =3;
      posHotDrainVolum405       =4;
      posHotDrainPlantSum405       =5;
//      posHotVolumePriv405       =6;
      posHotDrainVolumePlant405 =6;
      posHotDrainEC405          =7;

      posHotIrrigValNum405        =11;
      posHotTimeIrrig405        =12;
      posHotIrrigImpul405       =13;
      posHotIrrigScale405       =14;
      posHotIrrigVolume405      =15;
      posHotIrrigPlantSum405    =16;
      posHotIrrigVolumePlant405 =17;
      posHotIrrigEC405          =18;
      COUNT_Y_HOT_DRAIN_405   =19;
      COUNT_Y_HOT_SENS_405   =10;
//-----------------------------------------------------------------------------

var
NameHotDrain405:array [1..COUNT_Y_HOT_DRAIN_405+COUNT_Y_HOT_SENS_405] of TNameConst=(
    (Name:'Процент дренажа';Frm:SS;Ed:'%.0f%%';TipSens:TipCalibr;Min:1;Max:0;Def:NO_MIN_MAX;
      Index:-1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Количество импульсов измерителя';Frm:SSSS;Ed:'имп';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:13;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Объем на импульс измерителя';Frm:SSSpS;Ed:'мл';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:21;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Собранный объем';Frm:SSSpS;Ed:'%-.2f л';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:-1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Количество растений';Frm:SSSS;Ed:'шт';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:47;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//    (Name:'Дренаж - Приведенный объем';Frm:SSpSS;Ed:'м3';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
//      Index:iHOT_DRAIN_VOL_PRIV;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//6
    (Name:'Дренаж - Объем с растения';Frm:SSSS;Ed:'%.0f мл';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:-1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Текущее ЕС';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:3;Max:0;Def:NO_MIN_MAX;
      Index:iHotSensors;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Среднее ЕС';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:37;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Текущее рН';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:3;Max:0;Def:NO_MIN_MAX;
      Index:iHotSensors+6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Среднее рН';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:41;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//11
    (Name:'Полив - Номер клапана';Frm:SS;Ed:'клап';TipSens:TipCalc;Min:1;Max:0;Def:NO_MIN_MAX;
      Index:55;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Время';Frm:SShSSm_12;Ed:'ч:м';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iIrrigTimeCtr405;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Количество импульсов счетчика';Frm:SSSS;Ed:'имп';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHotIrrigCount405;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Объем на импульс счетчика';Frm:SS;Ed:'л';TipSens:TipProg;Min:1;Max:0;Def:NO_MIN_MAX;
      Index:iWaterScale405;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Объем поданного раствора';Frm:SSpSS;Ed:'%.0f л';TipSens:TipCalibr;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:-1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Количество растений';Frm:SSSS;Ed:'шт';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:51;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Объем на растение';Frm:SSSS;Ed:'%.0f мл';TipSens:TipCalibr;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:-1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Среднее ЕС раствора';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_IRRIG_EC;Mech:cfIrrigCtrNum;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Среднее рН раствора';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_IRRIG_EC+4;Mech:cfIrrigCtrNum;AccessR:RW_GUEST;AccessW:RW_USER),
//20
    (Name:'Мощность солнца';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iSunSensor;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Накопленное солнце';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:11;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Температура воздуха';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iHotClimSensors;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Влажность воздуха';Frm:SSpSS;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iHotClimSensors+3;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Концентрация СО2';Frm:SSSS;Ed:'ppm';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iHotClimSensors+6;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Температура листа';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iHotClimSensors+9;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Влажность листа';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:120;Def:NO_MIN_MAX;
      Index:iHotClimSensors+12;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Диаметр стебля';Frm:SSSS;Ed:'мм';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iHotClimSensors+15;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Диаметр плода';Frm:SSSS;Ed:'мм';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iHotClimSensors+18;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Влажность почвы';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:iHotClimSensors+21;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER)
//    (Name:'Сокодвижение';Frm:SSpSS;Ed:'г/час';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
//      Index:iHotClimSensors+21;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER)
  );

procedure THotDrain405.Init;//override;
var i:integer;
begin
     CountY:=COUNT_Y_HOT_DRAIN_405+COUNT_Y_HOT_SENS_405;
     CountX:=2; //REAL_SUM_DRAIN_POINT;
     SizeCol:=SIZE_HOT_DRAIN;
     FullSize:=SizeCol+SIZE_ARX_IRRIG;
     ReceiveByte:=RESEIVE_SIZE;
     SendByte:=6;               //SizeCol;
     Pref:=ProgMess[336];       //'Дренаж';
     NameBlock:=ProgMess[335];  //'Данные полива и дренажа';
     FixRow:=1;
     ConstNames:=Addr(NameHotDrain405[1]);
     Translator:=CountY;        //CountConstNames;
     for i:=0 to SIZE_ARX_IRRIG-1 do IrrigAchCopy[i]:=0;
     ResieveIrrigTime:=0;
end;

function THotDrain405.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pZoneDrain:PByteArray;
    st:string;
    VirtualValue:Boolean;
begin
  Result:=ValX;
  if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        Exit;
        end;
  pZoneDrain:=Adr;
  if(ValX>1) and (ConstNames[ValY].Min=0) then
        begin
        Txt:=''; Exit;
        end;

  VirtualValue:=False;
  if ValX >=1 then
  try
     case ValY of
     posHotDrainVolum405:  begin
        Result:=LoadXY(cOutBlock,ValX,posHotDrainImpul405,st)
            * LoadXY(cOutBlock,ValX,posHotDrainScale405,st)
            /1000; //'л'
        VirtualValue:=True;
        end;
     posHotDrainVolumePlant405:  begin
        Result:=LoadXY(cOutBlock,ValX,posHotDrainImpul405,st)
            * LoadXY(cOutBlock,ValX,posHotDrainScale405,st)
            /LoadXY(cOutBlock,ValX,posHotDrainPlantSum405,st); //'mл'
        VirtualValue:=True;
        end;
     posHotProcDrain405:  begin
        Result:=LoadXY(cOutBlock,ValX,posHotDrainVolumePlant405,st)*100
            / LoadXY(cOutBlock,ValX,posHotIrrigVolumePlant405,st);
        if (Result <= 0) or (Result > 100) then Result:=0;
        VirtualValue:=True;
        end;

     posHotIrrigVolume405:  begin
        Result:=LoadXY(cOutBlock,ValX,posHotIrrigImpul405,st)
            * LoadXY(cOutBlock,ValX,posHotIrrigScale405,st); //'л'
        VirtualValue:=True;
        end;
     posHotIrrigVolumePlant405:  begin
        Result:=LoadXY(cOutBlock,ValX,posHotIrrigImpul405,st)
            * LoadXY(cOutBlock,ValX,posHotIrrigScale405,st)*1000
            /LoadXY(cOutBlock,ValX,posHotIrrigPlantSum405,st); //'mл'
        VirtualValue:=True;
        end;
     end;
  except
     Txt:=ProgMess[52]; //'error';
     Result:=0;
     Exit;
  end;
  if VirtualValue then
          begin;
//          if vInBlock=cOutBlock then
          Txt:=Format(ConstNames[ValY].Ed,[Result]);
          Exit;
          end
     else begin
          pZoneDrain:=Addr(pZoneDrain^[ConstNames[ValY].Index+round(ConstNames[ValY].Min)*(ValX-1)]);
          Result:=Convers(ConstNames[ValY].Name,pZoneDrain,
            ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
          end;
//   ConfigExist:= cfExistTrue;
end;

procedure THotDrain405.AddIrrig;
var
    pHot:PByteArray;
    st:string;
    Valve,DrainPoint,i:integer;
begin
//  pHotIrrig:=addr(PByteArray(Adr)[iHOT_IRR_ACHIVE]);
  if ResieveIrrigTime < (Now-10*cMin) then Exit;
  pHot:=Adr;
  for i:=0 to SIZE_ARX_IRRIG-1 do pHot^[i+iHOT_IRR_ACHIVE]:=IrrigAchCopy[i];
  pHot^[iWaterScale405]:=pHot^[iHOT_ACH_WATER_SCALE];    //vScaleWater
  pHot^[iWaterScale405+1]:=pHot^[iWaterScale405];
  for DrainPoint:=1 to 2 do
      begin
      Valve:=round(LoadXY(cOutBlock,DrainPoint,posHotIrrigValNum405,st));
      if (Valve <= 0) or (Valve > 20) then continue;
// --- переписать импульсы счетчика
      pHot^[iHotIrrigCount405+(DrainPoint-1)*2]:=pHot^[iHOT_IRR_ACHIVE+Valve*SIZE_1ARX+2];
      pHot^[iHotIrrigCount405+(DrainPoint-1)*2+1]:=pHot^[iHOT_IRR_ACHIVE+Valve*SIZE_1ARX+3];

      (ParentCtr as TFDrain).ArchiveBlock.LoadXY(cOutBlock,Valve+1,posArxTimeIrrigVal,st);
      LoadXY(cInBlock,DrainPoint,posHotTimeIrrig405,st);
      (ParentCtr as TFDrain).ArchiveBlock.LoadXY(cOutBlock,Valve+1,posArxIrrigEC,st);
      LoadXY(cInBlock,DrainPoint,posHotIrrigEC405,st);
      (ParentCtr as TFDrain).ArchiveBlock.LoadXY(cOutBlock,Valve+1,posArxIrrigEC+1,st);
      LoadXY(cInBlock,DrainPoint,posHotIrrigEC405+1,st);

      end;
end;

procedure THotDrain405.PostPortRead;
var pHot:PByteArray;
    CopySend:integer;
begin
  if Not Ready then Exit;
  pHot:=Adr;
  ParentCtr.IdentCtr[cfIrrigCtrNum]:=pHot^[iIrrigCtr405];
  ParentCtr.IdentCtr[cfIsIrrigFlow]:=pHot^[iIrrigFlow405];
  if (pHot^[iIrrigCtr405] > 0)
    and (ParentCtr.DataPath = '') then AddIrrig;
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
  if ((pHot[iSunRCS] and 1) = 0) and ((pHot[iPC_SR]+pHot[iPC_SR+1])>2) then
// если датчик подсоединен и измеряет и не 0, то его в общие данные
      begin
      mMeteo[comSun].IZ[0]:=pHot[iPC_SR];
      mMeteo[comSun].IZ[1]:=pHot[iPC_SR+1];
      mMeteo[comSun].RCS:=pHot[iSunRCS];
      mMeteo[comSumSun].IZ[0]:=pHot[iPC_SumSR];
      mMeteo[comSumSun].IZ[1]:=pHot[iPC_SumSR+1];
      mMeteo[comSun].TimeRes:=BlDate;
      end
   else
      if FMain.mnTransferSun.Checked
         and (ParentCtr.DataPath = '')
         and (Now > mMeteo[comSun].TimeRes)
         and (Now < (mMeteo[comSun].TimeRes+3*cMin)) then
          begin
          pHot[iPC_SR]:=mMeteo[comSun].IZ[0];
          pHot[iPC_SR+1]:=mMeteo[comSun].IZ[1];
          pHot[iSunSensor]:=pHot[iPC_SR];
          pHot[iSunSensor+1]:=pHot[iPC_SR+1];
          pHot[iPC_SumSR]:=mMeteo[comSumSun].IZ[0];
          pHot[iPC_SumSR+1]:=mMeteo[comSumSun].IZ[1];
          pHot[iSunRCS]:=$81;
          pHot[0]:=0;
          CopySend:=SendByte;
          SendByte:=SizeSendSun;  //6
          FPort.Send(Self,IN_UNIT,0,nil);
          SendByte:=CopySend;
          end;
  inherited; // записать блок в файл
end;

procedure THotDrain405.SetTree(var Tree:TTreeView);
var //vSt:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i:word;    //,nTemp
    nSens:word;
begin
   with ParentCtr as TFDrain,Tree do begin
    Items.BeginUpdate;
    Param.X:=0;
    Param.Y:=0;
    if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else begin
          Param.Block:=Self;
          NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
          end;
    for i:=1 to CountX do
      begin
// Заполнение дренажа
      Param.Y:=0;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,GetTextZona(i,0),Param.Ptr); //'Измерения '
      Param.X:=i;
      for nSens:=1 to COUNT_Y_HOT_DRAIN_405 do
             begin
             {if Not GetExist(i,nSens) or }
             if GetReadAccess(i,nSens)>=NowAccess then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=imRasch;
//                :=TipSensToImage(ConstNames[nSens].TipSens);
             end;
      end;
// Заполнение измерений
      Param.Y:=0;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Измерения ',Param.Ptr); //'Измерения '
      Param.X:=1;
      for nSens:=COUNT_Y_HOT_DRAIN_405+1 to COUNT_Y_HOT_DRAIN_405+COUNT_Y_HOT_SENS_405 do begin
             {if Not GetExist(i,nSens) or }
             if GetReadAccess(1,nSens)>=NowAccess then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=imRasch;
//                :=TipSensToImage(ConstNames[nSens].TipSens);
             end;
   Items.EndUpdate;
   NodeHead.Expand(False);
   end;
end;

{        uchar   rNumCtrIrrig;   //0
        uchar   resScaleRasx;     1
        uchar   rSumPoint;
        uchar   rSubIdent;
        uchar   rIdent;            4
//-----------------------------------
        uchar   TimeImpul;         5
        uchar   SamplTime;         6
        int     FlowScale[MAX_DREN_POINT];  7
		char    Language; }
var
NameCtrDrain:array [1..7] of TNameConst=(
(Name:'Дренаж контроллер - тип';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:4; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Модификация программы';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:3; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Номер контроллера полива,поставляющего дренаж';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:0; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Время импульса слива дренажа';Frm:SS;Ed:'/64сек';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:6; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Объем на импульс слива дренажа 1';Frm:SSSpS;Ed:'мл';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:7; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Объем на импульс слива дренажа 2';Frm:SSSpS;Ed:'мл';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:9; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER),
(Name:'Время измерения ЕС и рН после импульса';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:5; Mech:0; AccessR:RW_GUEST;AccessW:RW_USER)
  );

procedure TControlDrain.Init;
begin
     CountX:=1;
     CountY:=7;
     SizeCol:=15;
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[198]; //'Параметры';
     NameBlock:=ProgMess[199]; //'Параметры управления';
     FixRow:=1;
     ConstNames:=Addr(NameCtrDrain[1]);
     Translator:=CountY;  //CountConstNames;
end;

//----------------- Achive Irrigation ------------------------------------------------------------
var
NameArxIrrig:array [1..5] of TNameConst=(
    (Name:'Время полива';Frm:SShSSm_12;Ed:'ч:м';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Расход поливочного раствора';Frm:SSpSS;Ed:'м3';TipSens:TipCalibr;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Среднее ЕС поливочного раствора';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Среднее рН поливочного раствора';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Средняя Т поливочного раствора';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:8;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER));

procedure THotArxIrrig.Init;
begin
     CountX := MAX_SUM_DRAIN_ZONE+1;
     CountY := 5;
     SizeCol := ParentCtr.Block[0].SizeCol;
     FullSize := ParentCtr.Block[0].FullSize;;
     ReceiveByte := 0;    //SIZE_ARX_IRRIG;
     SendByte := 0;
     Pref := ProgMess[206]; //'АрхПолива';
     NameBlock := ProgMess[206]; //'Архив полива';
     ConstNames:=Addr(NameArxIrrig[1]);
//     CountConstNames:=CountY;
     bProperty := bHowHot;
     Translator:=CountY;  //CountConstNames;
end;

function THotArxIrrig.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pArx:PByteArray;
    Index,vScaleWater, vVol:integer;
    Vol51:InInt;
begin
     pArx:=Adr;
     Result:=ValX;
     if ValY=0 then
        begin
        if ValX=0 then Txt:=ParentCtr.CtrName
        else if ValX=1 then
            Txt:=ProgMess[337]  //'Всего'
            else Txt:=ProgMess[185]+' '+IntToStr(ValX-1);  //Клапан ;
        Exit;
        end;

//----------------------------------------------------------------------------
//     pArx:=Adr;
     vScaleWater:=pArx^[iHOT_ACH_WATER_SCALE];
     Index:=ConstNames[ValY].Index+iHOT_IRR_ACHIVE+(ValX-1)*SIZE_1ARX;
     if ValX=1 then
        begin
        Index:=Index+2;
        if ValY>2 then begin Txt:=''; Exit; end;
        end;
     pArx:=Addr(pArx^[Index]);
     if ValY = posArxVolumeIrrigVal then
          begin
          vVol:=pArx^[0]*256+pArx^[1];
     //умножено на един расходомера и приведено к 10 л
          vVol:=vVol*vScaleWater div 10;
          Vol51[0]:=vVol div 256;
          Vol51[1]:=vVol mod 256;
          pArx:=Addr(Vol51);
          end;
     Result:=Convers(ConstNames[ValY].Name,pArx,
            ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
//----------------------------------------------------------------------------
//     if (Result=0) and (ValX > 0) then Txt:='';
end;

//----------КАНАЛЫ Drain ------------------
const NameChanDrain:array [1..11] of string[6]=(
     'EC1','EC2','EC3','EC4','pH1','pH2','pH3','pH4',
     'Тем 1','Тем 2','Sun');
    EdChanDrain:array [1..11] of string[4]=(
     'мСм','мСм','мСм','мСм','','','','',
     '°C','°C','Вт');
    FrmChanDrain:array [1..11] of TSFormat=(
     SSpSS,SSpSS,SSpSS,SSpSS,SSpSS,SSpSS,SSpSS,SSpSS,
     SSpSS,SSpSS,SSSS);
        {
      MAX_SUM_DRAIN_POINT     = 4;
      REAL_SUM_DRAIN_POINT= 2;
0        int     fk[2];
4        int     kk[2];
8        int     GL;
10        uchar   TimeAlarm;
11        uchar   ResetAlarm;
12        char    TimeCtrl;
13        char    RezConstCtrl;
14        uchar   RezMaxRegul;
        }
const   cCountYChanel=4;
        cSizeColChanel=12;
var NameChanelDrain:array [1..cCountYChanel] of TNameConst=(
    (Name:'Эталон 1';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Частота эталона 1';Frm:SSSS;Ed:'Гц';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Эталон 2';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Частота эталона 2';Frm:SSSS;Ed:'Гц';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER));

procedure TChanelDrain.Init;        //override;
begin
     CountX:=REAL_SUM_DRAIN_POINT*2+3;  //11;
     CountY:=cCountYChanel;
     SizeCol:=cSizeColChanel;
     FullSize:=SizeCol*(MAX_SUM_DRAIN_POINT_404*2+3);
     SendByte:=FullSize;
     Pref:=ProgMess[203];                       //'Калибровки';
     NameBlock:=ProgMess[204];                  //'Калибровка датчиков';
     ConstNames:=Addr(NameChanelDrain[1]);
     Translator:=CountY;                        //CountConstNames;
end;

function TChanelDrain.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;      //override;
var ADat:PByteArray;
  vEd:string; vFrm:TSFormat;
begin
     ADat:=Adr;
		 if (ValX > REAL_SUM_DRAIN_POINT) then ValX:=VALX+(MAX_SUM_DRAIN_POINT_404-REAL_SUM_DRAIN_POINT);
		 if (ValX > (MAX_SUM_DRAIN_POINT_404+REAL_SUM_DRAIN_POINT))
        then ValX:=VALX+(MAX_SUM_DRAIN_POINT_404-REAL_SUM_DRAIN_POINT);
     Result:=ValX;
     vFrm:=ConstNames[ValY].Frm;
     vEd:=ConstNames[ValY].Ed;
     case ValY of
     0:   begin
          if ValX=0 then Txt:=ParentCtr.CtrName
          else Txt:=NameChanDrain[ValX];
          Exit;
          end;
     1,3: begin
          vFrm:=FrmChanDrain[ValX];
          vEd:=EdChanDrain[ValX];
          end;
//     2,4: begin
//          vFrm:=ConstNames[ValY].Frm;
//          vEd:=ConstNames[ValY].Ed;
//          end;
     end;
     Result:=Convers(ConstNames[ValY].Name,
        Addr(ADat^[ConstNames[ValY].Index+SizeCol*(ValX-1)]),vFrm,InBlock,ValX,ValY,Txt,vEd);
end;
//----------END КАНАЛЫ Drain ------------------
//----------TDrainSensors ------------------
        {
      MAX_SUM_DRAIN_POINT     = 4;
      REAL_SUM_DRAIN_POINT= 2;
0        int     fk[2];
4        int     kk[2];
8        int     GL;
10        uchar   TimeAlarm;
11        uchar   ResetAlarm;
12        char    TimeCtrl;
13        char    RezConstCtrl;
14        uchar   RezMaxRegul;
        }
const   cCountYChanel405=13;
        c1SensorSize=12;
        cSizeColChanel405=24*c1SensorSize;   //8rezerve

var DrainXName:array [1..5] of TNameConst=(
    (Name:'Эталон 1';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:4;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Напряжение эталона 1';Frm:SSSS;Ed:'мВ';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Эталон 2';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:6;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Напряжение эталона 2';Frm:SSSS;Ed:'мВ';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Номер порта';Frm:SS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
        Def:0;Index:11;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER));

var DrainSensorsName:array [1..cCountYChanel405] of TNameConst=(
    (Name:'Дренаж - ЕС точки 1';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:3;Max:0;Def:NO_MIN_MAX;
      Index:0;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - ЕС точки 2';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:3;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*1;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - рН точки 1';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:3;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*2;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - рН точки 2';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*3;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Мощность солнца';Frm:SSSS;Ed:'Вт/м2';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*5;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Температура воздуха';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*8;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Влажность воздуха';Frm:SSpSS;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*9;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Концентрация СО2';Frm:SSSS;Ed:'ppm';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*10;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Температура листа';Frm:SSpSS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*11;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Влажность листа';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*12;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Диаметр стебля';Frm:SSSS;Ed:'мм';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*13;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Диаметр плода';Frm:SSSS;Ed:'мм';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*14;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Влажность почвы';Frm:SSpS0;Ed:'%';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
      Index:c1SensorSize*15;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER)
//    (Name:'Сокодвижение';Frm:SSpSS;Ed:'г/час';TipSens:TipCalc;Min:0;Max:0;Def:NO_MIN_MAX;
//      Index:c1SensorSize*15;Mech:cfIsSensors;AccessR:RW_GUEST;AccessW:RW_USER)
  );
procedure TDrainSensors.Init;        //override;
begin
     CountX:=5;
     CountY:=cCountYChanel405;
     SizeCol:=cSizeColChanel405;
     FullSize:=cSizeColChanel405;
     SendByte:=FullSize;
     Pref:=ProgMess[203];                       //'Калибровки';
     NameBlock:=ProgMess[204];                  //'Калибровка датчиков';
     ConstNames:=Addr(DrainSensorsName[1]);
//     Translator:=CountY;                      //CountConstNames;
end;

function TDrainSensors.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;      //override;
var ADat:PByteArray;
  vEd:string; vFrm:TSFormat;
begin
     ADat:=Adr;
     Result:=ValX;
     case ValX of
     0:   begin
          if ValY=0 then Txt:=ParentCtr.CtrName
          else Txt:=ConstNames[ValY].Name;
          Exit;
          end;
     2,4,5: begin
          if ValY=0 then begin Txt:=DrainXName[ValX].Name; Exit; end;
          vFrm:=DrainXName[ValX].Frm;
          vEd:=DrainXName[ValX].Ed;
          end;
     1,3: begin
          if ValY=0 then begin Txt:=DrainXName[ValX].Name; Exit; end;
          vFrm:=ConstNames[ValY].Frm;
          vEd:=ConstNames[ValY].Ed;
          end;
     end;
     Result:=Convers('',
        Addr(ADat^[ConstNames[ValY].Index+DrainXName[ValX].Index]),vFrm,InBlock,ValX,ValY,Txt,vEd);
//     ConfigExist:= cfExistTrue;
end;
//----------END Sensors Drain ------------------

procedure TFDrain.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
     Design:='Drain';
     Period:=60;
     TimeView:=5;
     THotDrain405.Create(Self);
//     if Model >= 5 then  THotDrain405.Create(Self)
//     else THotDrain.Create(Self);      // 0
     if Model > 2 then
        begin
        ConfigBlock:=TControlDrain_2.Create(Self);  // 1
        TDrainSensors.Create(Self);   // 2   TChanelDrain
        ArchiveBlock:=THotArxIrrig.Create(Self);      // 3
        end
      else
        begin
        TControlDrain.Create(Self);  // 1
        TChanelDrain.Create(Self);   // 2
        ArchiveBlock:=THotArxIrrig.Create(Self);      // 3
        ConfigBlock:=TConfigDrain.Create(Self);   // 4
        end;
//     TAchivePC.Create(Self);                    //5
     AuditBlock:=TAudit.Create(Self);
     LoadImageSkin(DrainImage,'Drain405.bmp');
end;

{function TFDrain.CtrFromFile(const NameFile:string):Boolean;
begin
     result:=inherited CtrFromFile(NameFile);
//     LCtr.Caption:=CtrName;
     LoadImageSkin(DrainImage,'Drain405.bmp');
end;}

procedure TFDrain.SetPicCtr;
var   IrrigCtr:TFController;// i:Byte;
begin
 inherited;
 FPZone.Visible:=IdentCtr[cfIrrigCtrNum] > 0;
 if DataPath='' then
    begin
    if(IdentCtr[cfIrrigCtrNum] > 0) then
        begin
        IrrigCtr:=FMain.GetCtrFromListCtr('',IdentCtr[cfIrrigCtrNum]);
        if IrrigCtr <> nil then
            FPort.ArrayRead(
            False, IrrigCtr.CtrNum,         // номер контр полива
            7,                              // номер блока в контр полива
            IrrigCtr.PortName,              // имя порта контр полива
            IrrigCtr.BaudRate,              // скорость передачи
            addr((Block[0] as THotDrain405).IrrigAchCopy),
//        addr(PByteArray(Block[0].Adr)[SIZE_HOT_DRAIN]),  // указатель на массив данных
            SIZE_ARX_IRRIG,                 // размер передачи
            SetResieveIrrig)                // функция после передачи
         else  begin
              PSost.Caption:=ProgMess[338];   //'Не найден полив';
              PSost.Color:=clRed;
              end;
        end;
    end;
  if FPZone.Visible then BlockToGrid(ArchiveBlock,ArxivGrid);
  BlockToGrid(Block[0],xHotGrid);
  xHotGrid.EndDrag(False);
end;

procedure TFDrain.SetResieveIrrig;
begin
  (Block[0] as THotDrain405).ResieveIrrigTime:=Now;
   ArchiveBlock.Ready:=True;
end;

const
      iHotDrainCount  =13;
      iHotDrainScale  =21;
      iIrrigFlow      =27;
      iIrrigCtr       =28;
      iIrrigTimeCtr   =33;

      posHotProcDrain        =1;
      posHotDrainImpul       =2;
      posHotDrainScale       =3;
      posHotDrainVolum       =4;
      posHotVolumePriv       =5;
      posHotDrainVolumePlant =6;
      posHotDrainEC          =7;

      posHotTimeIrrig        =11;
      posHotIrrigImpul       =12;//!!!
      posHotIrrigVolume      =13;
      posHotIrrigVolumePlant =14;
      posHotIrrigEC          =15;
//      posHotIrrigScale       =12;//!!!
      COUNT_Y_HOT_DRAIN_404   =16;
//-----------------------------------------------------------------------------

{var
NameHotDrain404:array [1..COUNT_Y_HOT_DRAIN_404] of TNameConst=(
    (Name:'Процент дренажа';Frm:SS;Ed:'%';TipSens:TipCalibr;Min:1;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_DRAIN_PROC;Mech:-2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Количество импульсов измерителя';Frm:SSSS;Ed:'имп';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:13;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Объем на импульс измерителя';Frm:SSSpS;Ed:'мл';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:21;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Собранный объем';Frm:SSSpS;Ed:'л';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_DRAIN_VOLUME;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Приведенный объем';Frm:SSpSS;Ed:'м3';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_DRAIN_VOL_PRIV;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Объем с растения';Frm:SSSS;Ed:'мл';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iDrainOnPlant;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Текущее ЕС';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:3;Max:0;Def:NO_MIN_MAX;
      Index:57;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Среднее ЕС';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:37;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Текущее рН';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:3;Max:0;Def:NO_MIN_MAX;
      Index:60;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Дренаж - Среднее рН';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:39;Mech:0;AccessR:RW_GUEST;AccessW:RW_USER),
//11
    (Name:'Время полива';Frm:SShSSm_12;Ed:'ч:м';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_IRRIG_DRAIN;Mech:-2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Количество импульсов счетчика';Frm:SSSS;Ed:'имп';TipSens:TipProg;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:17;Mech:-3;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Объем поданного раствора';Frm:SSpSS;Ed:'м3';TipSens:TipCalibr;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_IRRIG_DRAIN+4;Mech:-2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Объем на растение';Frm:SSSS;Ed:'мл';TipSens:TipCalibr;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iIrrigOnPlant;Mech:-2;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Среднее ЕС раствора';Frm:SSpSS;Ed:'мсм/см2';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_IRRIG_DRAIN+8;Mech:-1;AccessR:RW_GUEST;AccessW:RW_USER),
    (Name:'Полив - Среднее рН раствора';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:2;Max:0;Def:NO_MIN_MAX;
      Index:iHOT_IRRIG_DRAIN+12;Mech:-1;AccessR:RW_GUEST;AccessW:RW_USER)
  );
}
{procedure THotDrain.Init;//override;
var i:integer;
begin
     CountY:=COUNT_Y_HOT_DRAIN_404;
     CountX:=2; //REAL_SUM_DRAIN_POINT;
     SizeCol:=SIZE_HOT_DRAIN;
     FullSize:=SizeCol+SIZE_ARX_IRRIG;
     ReceiveByte:=RESEIVE_SIZE;
     SendByte:=6;               //SizeCol;
     Pref:=ProgMess[336];       //'Дренаж';
     NameBlock:=ProgMess[335];  //'Данные полива и дренажа';
     FixRow:=1;
     ConstNames:=Addr(NameHotDrain404[1]);
     Translator:=CountY;        //CountConstNames;
     for i:=0 to SIZE_ARX_IRRIG-1 do IrrigAchCopy[i]:=0;
end;

function THotDrain.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pZoneDrain:PByteArray;    //,p
begin
     Result:=ValX;
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        Exit;
        end;
     pZoneDrain:=Adr;
     if(ValX>1) and (ConstNames[ValY].Min=0) then
        begin
        Txt:=''; Exit;
        end;
     pZoneDrain:=Addr(pZoneDrain^[ConstNames[ValY].Index+round(ConstNames[ValY].Min)*(ValX-1)]);
     Result:=Convers(ConstNames[ValY].Name,pZoneDrain,
            ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
end;

procedure THotDrain.PostPortRead;
var pHot:PByteArray;
begin
  if Not Ready then Exit;
  pHot:=Adr;
  ParentCtr.IdentCtr[cfIsIrrigCtr]:=pHot^[iIrrigCtr];
  ParentCtr.IdentCtr[cfIsIrrigFlow]:=pHot^[iIrrigFlow];
  if pHot^[iIrrigCtr] > 0 then CalcProcDrainPC;
  if pHot^[iIrrigFlow] > 0 then CalcProcDrainCtr;
  inherited; // записать блок в файл
end;

procedure THotDrain.CalcProcDrainCtr;
var DrainPoint:integer;
    st:string;
    DrainVolPrived, DrainProc, IrrigVolume, VolumeDrain,Imp,FlowScale:Double;
    pHot:PByteArray;
begin
  pHot:=Adr;
  for DrainPoint:=1 to REAL_SUM_DRAIN_POINT do
    begin
//--- рассчет времени полива
    pHot^[iHOT_IRRIG_DRAIN]:=pHot^[iIrrigTimeCtr];
    pHot^[iHOT_IRRIG_DRAIN+1]:=pHot^[iIrrigTimeCtr+1];
    pHot^[iHOT_IRRIG_DRAIN+2]:=pHot^[iIrrigTimeCtr+2];
    pHot^[iHOT_IRRIG_DRAIN+3]:=pHot^[iIrrigTimeCtr+3];
//--- рассчет объема полива
    ParentCtr.Block[1].SetEndRecord;
    Imp:=LoadXY(cOutBlock,DrainPoint,posHotIrrigImpul,st);  //количество импульсов
    FlowScale:=ParentCtr.Block[1].LoadXY(cOutBlock,1,posIrrigFlowScale+DrainPoint-1,st);  //цена импульса в л

    IrrigVolume:= Imp*FlowScale*1000
      / ParentCtr.Block[1].LoadXY(cOutBlock,1,posIrrigPlantSum+DrainPoint-1,st);
    st:=FloatToStr(IrrigVolume);
    LoadXY(cInBlock,DrainPoint,posHotIrrigVolumePlant,st);

    IrrigVolume:= Imp*FlowScale / 1000;   //10 litr
    st:=FloatToStr(IrrigVolume);
    LoadXY(cInBlock,DrainPoint,posHotIrrigVolume,st);

//--- рассчет объема дренажа
    Imp:=LoadXY(cOutBlock,DrainPoint,posHotDrainImpul,st);  //количество импульсов
    FlowScale:=LoadXY(cOutBlock,DrainPoint,posHotDrainScale,st);  //цена импульса в 0.1мл

    VolumeDrain:= Imp*FlowScale    //0.1 ml
      / ParentCtr.Block[1].LoadXY(cOutBlock,1,posDrainPlantSum+DrainPoint-1,st)/10;
    st:=FloatToStr(VolumeDrain);
    LoadXY(cInBlock,DrainPoint,posHotDrainVolumePlant,st);

    VolumeDrain:= Imp*FlowScale / 1000;   //0.1 litr
    st:=FloatToStr(VolumeDrain);
    LoadXY(cInBlock,DrainPoint,posHotDrainVolum,st);

//---- умножить на общее колич растен и разделить на колич измеряемых
    try
    DrainVolPrived:=VolumeDrain/1000*
      ParentCtr.Block[1].LoadXY(cOutBlock,1,posIrrigPlantSum+DrainPoint-1,st)/
      ParentCtr.Block[1].LoadXY(cOutBlock,1,posDrainPlantSum+DrainPoint-1,st);
    except DrainVolPrived:=0;end;
    st:=FloatToStr(DrainVolPrived);
    LoadXY(cInBlock,DrainPoint,posHotVolumePriv,st);
//--- рассчет процента дренажа
    if IrrigVolume <= DrainVolPrived then DrainProc:= 0
    else
    try
    DrainProc:= DrainVolPrived*100/IrrigVolume;
    except DrainProc:=0;end;
    st:=IntToStr(round(DrainProc));
    LoadXY(cInBlock,DrainPoint,posHotProcDrain,st);
  end;
end;

procedure THotDrain.CalcProcDrainPC;
var Valve,DrainPoint,i:integer;
    st:string;
    DrainVolPrived, DrainProc,  VolumeDrain, Imp,FlowScale:Double; //IrrVolume,
    pHotIrrig:PByteArray;
begin
//--- Восстановить архив ирригации
  pHotIrrig:=addr(PByteArray(Adr)[iHOT_IRR_ACHIVE]);
  for i:=0 to SIZE_ARX_IRRIG-1 do pHotIrrig^[i]:=IrrigAchCopy[i];
  for DrainPoint:=1 to REAL_SUM_DRAIN_POINT do
    begin
    if ParentCtr.ConfigBlock <> nil then
      begin
      ParentCtr.ConfigBlock.SetEndRecord;
      Valve:=round(ParentCtr.ConfigBlock.LoadXY(cOutBlock,DrainPoint,pozConfNumValve,st));
      end
    else
      begin
      ParentCtr.Block[1].SetEndRecord;
      Valve:=round(ParentCtr.Block[1].LoadXY(cOutBlock,1,posNumIrrigValve+DrainPoint-1,st));
      end;
    for i:=0 to 3 do    // без температуры сохраняем данные полива из архива для нужного клапана
      begin
      if (Valve <= 0) or (Valve > 20) or (ResieveIrrigTime < (Now-10*cMin)) then st:=''
      else (ParentCtr as TFDrain).ArchiveBlock.LoadXY(cOutBlock,Valve+1,posArxTimeIrrigVal+i,st);
      LoadXY(cInBlock,DrainPoint,posHotTimeIrrig+i,st);
      end;
    Imp:=LoadXY(cOutBlock,DrainPoint,posHotDrainImpul,st);  //количество импульсов
    FlowScale:=LoadXY(cOutBlock,DrainPoint,posHotDrainScale,st);  //цена импульса в 0.1мл
    VolumeDrain:= Imp*FlowScale / 1000;   //0.1 litr
    st:=FloatToStr(VolumeDrain);
    LoadXY(cInBlock,DrainPoint,posHotDrainVolum,st);

      //умножить на общее колич растен и разделить на колич измеряемых
    try
    if ParentCtr.ConfigBlock <> nil then
        DrainVolPrived:=VolumeDrain/1000*
           ParentCtr.ConfigBlock.LoadXY(cOutBlock,DrainPoint,pozConfNumPlant,st)/
           ParentCtr.ConfigBlock.LoadXY(cOutBlock,DrainPoint,pozConfNumTest,st)
    else DrainVolPrived:=VolumeDrain/1000*
           ParentCtr.Block[1].LoadXY(cOutBlock,1,posIrrigPlantSum+DrainPoint-1,st)/
           ParentCtr.Block[1].LoadXY(cOutBlock,1,posDrainPlantSum+DrainPoint-1,st);
    except DrainVolPrived:=0;end;
    try
    DrainProc:= DrainVolPrived*100/LoadXY(cOutBlock,DrainPoint,posHotIrrigVolume,st);
    except DrainProc:=0;end;

    st:=FloatToStr(DrainVolPrived);
    LoadXY(cInBlock,DrainPoint,posHotVolumePriv,st);

    if (ResieveIrrigTime < (Now-10*cMin)) or
     (DrainProc <=0) or (DrainProc > 100) then DrainProc:=0;
    st:=IntToStr(round(DrainProc));
    LoadXY(cInBlock,DrainPoint,posHotProcDrain,st);
  end;
end;

procedure THotDrain.SetTree(var Tree:TTreeView);
var
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i:word;
    nSens:word;
begin
   with ParentCtr as TFDrain,Tree do begin
    Items.BeginUpdate;
    Param.X:=0;
    Param.Y:=0;
    if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else begin
          Param.Block:=Self;
          NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
          end;
    for i:=1 to CountX do
      begin
// Заполнение измерений
      Param.Y:=0;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,GetTextZona(i,0),Param.Ptr); //'Измерения '
      Param.X:=i;
      for nSens:=1 to COUNT_Y_HOT_DRAIN_404 do begin
//             if Not GetExist(i,nSens) or 
             if GetReadAccess(i,nSens)>=NowAccess then continue;
             Param.Y:=nSens;
             (Items.AddChildObject(Node1,ConstNames[nSens].Name,Param.Ptr)).ImageIndex:=imRasch;
//                :=TipSensToImage(ConstNames[nSens].TipSens);
             end;
      end;
   Items.EndUpdate;
   NodeHead.Expand(False);
   end;
end;
}

function TFDrain.GetTextZona(x,y:integer):string;
begin
  if (x=0) and (y=0) then begin Result:=CtrName; Exit; end;
  if (x > 0) then Result:=Format(ProgMess[313],[x]); //'Точка %d ';
end;

const
     cCountXAchPC=REAL_SUM_DRAIN_POINT;//+1;
     cCountYAchPC=COUNT_Y_HOT_DRAIN_405;  //9;
type DoubleArray=array[1..cCountXAchPC,1..cCountYAchPC] of Double;

{
procedure TAchivePC.Init;
begin
     CountX:=cCountXAchPC;
     CountY:=cCountYAchPC;
     SizeCol:=ParentCtr.Block[0].SizeCol;// SizeOf(Double)*CountY;
     FullSize:=ParentCtr.Block[0].FullSize;//SizeCol*CountX;
     SendByte:=0;
     Pref:=ProgMess[207];  //'АрхивПК';
     NameBlock:=ProgMess[207];  //8-'Архив Полива ПК';
     ConstNames:=Addr(NameHotDrain405[1]);
end;

function TAchivePC.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pZoneDrain:PByteArray;
begin
     Result:=ValX;
     if Int(DateTest) <> Int(Now) then CalcAllArxPC(Now);
     if ValY=0 then
        begin
        Txt:=ParentCtr.GetTextZona(ValX,ValY);
        Exit;
        end;
     pZoneDrain:=Adr;
     pZoneDrain:=Addr(pZoneDrain^[ConstNames[ValY].Index+round(ConstNames[ValY].Min)*(ValX-1)]);
     Result:=Convers(ConstNames[ValY].Name,pZoneDrain,
            ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
     if (Result=0) and (ValX > 0) then Txt:='';
     if ValX > 0 then AccessW:=RW_NOEDIT;
end;

//------------------------------------------------------------
function TAchivePC.CalcDayArxPC(var ArxDate:TDateTime):Boolean;
var
 vData:double;
 x:integer;
 st:string;
begin
Result:=False;
with ParentCtr do
  begin
  if not Block[0].LoadFileCycle(ArxDate) then Exit;
  repeat
    for x:=1 to CountX-1 do
      begin
      // чтение времени полива
      vData:=Block[0].LoadXY(cOutBlock,x,posHotTimeIrrig,st);
      if vData <= 0 then continue;
      // чтение объема полива
      vData:=Block[0].LoadXY(cOutBlock,x,posHotIrrigVolume,st);
      if vData <= 0 then continue;
      // чтение объема дренажа
      vData:=Block[0].LoadXY(cOutBlock,x,posHotDrainVolum,st);
      if vData <= 0 then continue;
      // чтение процента дренажа
      vData:=Block[0].LoadXY(cOutBlock,x,posHotProcDrain,st);
      if vData <= 0 then continue;
//      if (vData > MaxProcDrain ) then
            begin
//            MaxProcDrain:=vData;
            BlDate:=Block[0].BlDate;
            Ready:=True;
            Result:=True;
            CopyMemory(Adr,ParentCtr.Block[0].Adr,FullSize);
            end;
      end;
  until Not Block[0].LoadFileCycle(ArxDate);
  end;
end;

function TAchivePC.CalcAllArxPC(StartDate:TDateTime):Boolean;
var  Save_Cursor:TCursor;
begin
 ShowProgress;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    // Show hourglass cursor
 try
 if LoadFileByDate(Now,dEnd) then StartDate:=BlDate+1
      else  StartDate:=EncodeDate(YearOf(Now),1,1);
 while DayOfTheYear(StartDate) < DayOfTheYear(Now) do
      begin
      if CalcDayArxPC(StartDate) then SaveToFile;
      StartDate:=StartDate+1;
      end;
  finally
    Screen.Cursor := Save_Cursor;  // Always restore to normal
    HideProgress;
  end;
  DateTest:=Now;
end;
}
//---- END АРХИВ  ------------------

procedure TFDrain.xHotGridEndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  inherited;
  xHotGrid.EndDrag(False);
end;

procedure TFDrain.xHotGridCellChanged(Sender: TObject; OldCol, NewCol,
  OldRow, NewRow: Integer);
begin
  inherited;
  xHotGrid.BeginDrag(False,10);
end;

end.
