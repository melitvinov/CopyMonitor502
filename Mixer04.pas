unit Mixer04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls,DateUtils,
  StdCtrls,Chart,Series,TeEngine, GanttCh,ComCtrls,
  FConstType, FController,PicCtr,DefIrrig,ClimCalc, Gauges,MSiod, FBox,
  FPanel, GIFDef, GIFComponent, FPicLabel;
const
    t325=128;  { 7 бит=1(128), то контроллер 325(кор по солнцу ПАРАМ и ЗАДАНИЕ) }
    t326=32;   { бит=1(32), то контроллер 326( новое задание полива) }
    t326Pr=8;  //#define t326Pr  8  /* 3 если=1(8), то контр с пропорциями 1-100 */
    NumChan=8;
    NumChanU=2;
    NumChanArx=4;
    NumChanPul=2;
    cNumMat=3;
    cNumMat324=2;
    nmSR=6;
    Temp1=9;
    Hum1=13;
    cNumTimer=30;
    bTOborot=4;
    blChanel=2;

type
   TFMixer04 = class(TFPicCtr)
    Label8: TLabel;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Gauge1: TGauge;
    C: TLabel;
    Label9: TLabel;
    Panel6: TPanel;
    Panel3: TPanel;
    BotLev: TShape;
    WorkLev: TShape;
    TopLev: TShape;
    PaPro: TPanel;
    Bevel5: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    LMes: TLabel;
    ImagePoliv: TImage;
    Label17: TLabel;
    Label18: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label26: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label24: TLabel;
    LCtr: TLabel;
    Label3: TLabel;
    GIFSShow1: TGIFSShow;
    GIFSShow2: TGIFSShow;
    FBox1: TFBox;
    FBox2: TFBox;
    FBox3: TFBox;
    FBox4: TFBox;
    FBox5: TFBox;
    FBox6: TFBox;
    FBox7: TFBox;
    FBox8: TFBox;
    FBox9: TFBox;
    FBox10: TFBox;
    FBox11: TFBox;
    FBox12: TFBox;
    FBox13: TFBox;
    FBox14: TFBox;
    FBox15: TFBox;
    FBox16: TFBox;
    FBox17: TFBox;
    FBox18: TFBox;
    FBox19: TFBox;
    FBox20: TFBox;
    FBox21: TFBox;
    FBox22: TFBox;
    FBox23: TFBox;
    FBox24: TFBox;
    FBox25: TFBox;
    FBox26: TFBox;
    FBox27: TFBox;
    FBox28: TFBox;
    FPanel1: TFPanel;
    Label5: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Shape1: TShape;
    Gauge4: TGauge;
    Label30: TLabel;
    Bevel1: TBevel;
    Shape2: TShape;
    Gauge6: TGauge;
    Label7: TLabel;
    Bevel2: TBevel;
    Shape3: TShape;
    FBox29: TFBox;
    FPicLabel1: TFPicLabel;
    FPicLabel13: TFPicLabel;
    FPicLabel6: TFPicLabel;
    FPicLabel2: TFPicLabel;
    FPicLabel3: TFPicLabel;
    FPicLabel4: TFPicLabel;
    FPicLabel5: TFPicLabel;
    FPicLabel7: TFPicLabel;
    FPicLabel8: TFPicLabel;
    FPicLabel9: TFPicLabel;
    FPicLabel10: TFPicLabel;
    FPicLabel11: TFPicLabel;
    FPicLabel12: TFPicLabel;
    procedure SBECaClick(Sender: TObject);
  private
    { Private declarations }
     ScaleRasxod:TSFormat;
     NumDozEC:Byte;
     BlArxMC:TBlock;
     BlockHoum:Byte;
     function GetTipOborot:Boolean;
     property NumChan:Byte read IdentCtr[ident2] write IdentCtr[ident2];
     property SizeArx:Byte read IdentCtr[ident3] write IdentCtr[ident3];
     property NumValve:Byte read IdentCtr[idModific] write IdentCtr[idModific];
     function CustLoadXY(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String; pData:Pointer{;NumV:word;FrmRas:TSFormat}):Double;
//     property Oborot:Boolean read ((SubTip and bTOborot)>0)];
  public
    { Public declarations }
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    function CtrFromFile(NameFile:string):Boolean;override;
    procedure SetPicCtr; override;
  end;
  
type TSostPolD4=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
        var Txt:String):Double;override;
     procedure SetTree(var Tree:TTreeView); override;
end;

type THotPol325=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
        var Txt:String):Double;override;
//     procedure RandBlock; override;
//     function BitLoadXY(ValY:Integer;
//       var vRes:Integer; var vPrefStr:String; var PointDiagnos:TPtDiagnos):Boolean;override;
     procedure PostPortRead; override;
     procedure SetTree(var Tree:TTreeView); override;
     function SendTime:Boolean;
end;

type TControlD4=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TControl325=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TTimerD4=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
end;

type TTimerD7=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
end;

type TTimer326=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function GetTimer325(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
     function GetTimer326(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
     function SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;override;
     function GetChart325(x,y:WORD;var Any:TAny):Integer;
     function GetChart326(x,y:WORD;var Any:TAny):Integer;
end;

{type TTimerD9=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     function SetAny(x,y:WORD;var Any:TAny):double;override;
end;
}
type TChanelD4=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TArxivD4=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TIrrArxPC=Class(TBlock)
private
DateTest:TDateTime;
//BlArxMC:TBlock;
function CalcDayArxPC(var ArxDate:TDateTime):Boolean;
function CalcAllArxPC(StartDate:TDateTime):Boolean;

public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type THoum=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

//var vBlArxMC:TBlock;

implementation

uses SetGrid,GGraf, {SetSer,} Port;

{$R *.DFM}
const cNameIdentD4=173;
{var cNameIdentD4:TNameIdent=(
     'Количество клапанов',
     'Количество датчиков',
     'Размер архива',
     'Модификация',
     'Тип контроллера');
}
function TFMixer04.GetTipOborot:Boolean;
begin result:=(SubTip and bTOborot)>0;
end;

function TFMixer04.CtrFromFile(NameFile:string):Boolean;
begin
     result:=inherited CtrFromFile(NameFile);
     Block[BlockHoum].LoadFileByDate(Now,dEnd);
     LCtr.Caption:=CtrName;
//     LoadViewFromFile(GetViewNameFile);
end;

procedure TFMixer04.SBECaClick(Sender: TObject);
begin
end;
//-- СОСТОЯНИЕ ПОЛИВА D-04 ------------------
type rTChan4=record
     RCS:Byte;
     IZ:InInt;
     IZcor:InInt;
     ZD:InInt;
     CopyReg:Byte;
     TimeReg:Byte;
     end;
type rTSostPolD5=record
     News:Byte;
{		 Time:InInt;
		 Data:InInt;
		 Year:Byte;}
     Hand:Byte;
     Cycle:Byte;
     OutReg:InInt;
     InReg:Byte;
// 0-норма,1..4-авария дозатора,
// 5- авария расхода, 6-авария насоса воды
     TipError:Byte; // ранее было Error
     NumPoliv:Byte;
     SelValve:Byte;
     tTimeValve:InInt;
     RCSDoz:Byte;
     RCSRas:Byte;
     TecRasxod:InInt;
     tVolValve:InInt;
     OutRegExt:Byte;
     TecSol:InInt;
     Propor:Byte;
     Rezept:Byte;
     MirrorVal:Byte;
     Chan:Array [1..8]of rTChan4;
//	TimeValve:array [1..NumValve] of Byte;
     end;

procedure TSostPolD4.Init;
begin
//     Num:=blHotBlock;
     CountX:=1;
     CountY:=60;//43+(ParentCtr as TFMixer04).NumValve+(ParentCtr as TFMixer04).NumChan;
     SizeCol:=SizeOf(rTSostPolD5);
     if (ParentCtr as TFMixer04).NumChan>8 then
       SizeCol:=SizeCol+SizeOf(rTChan4)*((ParentCtr as TFMixer04).NumChan-8);
     FullSize:=SizeCol;
     SendByte:=2;
//     EEPSize:=0;
     Pref:='Состояние';
     NameBlock:='Состояние полива';
end;

function TSostPolD4.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:^rTSostPolD5;
    NumV,StartVal,bValve:Byte;
    NKran:integer;
    Prop:word;
begin
 ADat:=Adr;
 NumV:=(ParentCtr as TFMixer04).NumValve;
 StartVal:=(ParentCtr as TFMixer04).CtrTip mod 10;
 Result:=ValX;
 imNum:=0;
 case ValY of
 0:    if ValX=0 then  Txt:='Параметры'
          else Txt:='';//'Значение';
 1 :  begin
      Result:=Convers('Ручное управление',
        Addr(ADat^.Hand),SS,InBlock,ValX,ValY,Txt,'');
      end;
 2..17: begin
      ValY:=ValY-1;
      if ValY<=NumChanPul then
        Result:=Convers('Измерено '+NameChan324[ValY],
        Addr(ADat^.Chan[ValY].IZcor),
        FrmChan324[ValY],InBlock,ValX,ValY,Txt,EdChan324[ValY])
      else Result:=Convers('Измерено '+NameChan324[ValY],
        Addr(ADat^.Chan[ValY].IZ),
        FrmChan324[ValY],InBlock,ValX,ValY,Txt,EdChan324[ValY]);
      if (Result<=0) or (Result>200) then imNum:=imNoRealPC;
      end;
 18..20:  begin
//        imNum:=0;imProg;
        ValY:=ValY-17;
        Result:=Convers('Задано '+NameChan324[ValY],
         Addr(ADat^.Chan[ValY].ZD),
         FrmChan324[ValY],InBlock,ValX,ValY,Txt,EdChan324[ValY]);
         if Result<=0 then imNum:=imAlarmLow;
        end;
  21:   case (ParentCtr as TFMixer04).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(ADat^.Propor),SdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Растворы А:В:C',
            Addr(ADat^.Propor),SdSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Растворы А:В:C:D',
            Addr(ADat^.Propor),SdSdSdS,InBlock,ValX,ValY,Txt,'');
        end;
  22:   begin
//        imNum:=0;//imRasch;
        NumV:=ADat^.Chan[1].CopyReg;
        Result:=Convers('Краны ЕС',
         Addr(NumV),SS,InBlock,ValX,ValY,Txt,'/8 сек');
        end;
 23..24:    begin
//        imNum:=0;//imRasch;
        NumV:=ValY-22;
        ValY:=ValY-23;
        if (ParentCtr as TFMixer04).NumDozEC>2 then
           begin
           NKran:=-1;
           bValve:=ADat^.Propor;
           repeat
           NKran:=NKran+1;
           Prop:=bValve and 3;
           bValve:=bValve shr 2;
           if Prop>0 then NumV:=NumV-1;
           until ((Prop>0)and(NumV=0)) or ((NKran-ValY)>1);
           end
        else
           begin
           NKran:=ValY;
           if(ADat^.Propor=0) then Prop:=1
             else if NKran>0 then Prop:=ADat^.Propor mod 6
                             else Prop:=ADat^.Propor div 6;
           end;
        Prop:=Prop*ADat^.Chan[1].CopyReg;
        Result:=Convers('Кран '+char(ord('A')+NKran),
            Addr(Prop),SS,InBlock,ValX,ValY,Txt,'/8 сек');
        end;
 25:    begin
//        imNum:=0;//imRasch;
        NumV:=ADat^.Chan[2].CopyReg;
        Result:=Convers('Кран pH',
         Addr(NumV),SS,InBlock,ValX,ValY,Txt,'/8 сек');
        end;
 26:  Result:=Convers('Текущий расход',
        Addr(ADat^.TecRasxod),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3/час');
 27:  Result:=Convers('Прошло раствора',
        Addr(ADat^.tVolValve),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
 28:  Result:=Convers('Осталось времени',
        Addr(ADat^.tTimeValve),SSmSSs,InBlock,ValX,ValY,Txt,'');
 29:  Result:=Convers('Номер полива',
        Addr(ADat^.NumPoliv),SS,InBlock,ValX,ValY,Txt,'');
 30:  begin
      StartVal:=ADat^.SelValve+1;
      Result:=Convers('Включен клапан',
        Addr(StartVal),SS,InBlock,ValX,ValY,Txt,'');
      StartVal:=ADat^.MirrorVal;
      if StartVal>0 then Txt:=Txt+'+'+IntToStr(StartVal);
      if (Result<1) or (Result>30) then begin
         Result:=0;
         Txt:='~';
         end;
      end;
 31..36:  begin
        ValY:=ValY-30;
        Result:=Convers('Корректор '+NameChan324[ValY],
         Addr(ADat^.Chan[ValY].IZ),
         FrmChan324[ValY],InBlock,ValX,ValY,Txt,EdChan324[ValY]);
        if Result<=0 then imNum:=imNoRealPC;
        end;
 37:  begin
      Result:=Convers('Сегодня света ',
          Addr(ADat^.Chan[nmSR].IZcor),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      imNum:=imSun;
      end;
else  begin
       if ValY>=1000 then ValY:=ValY mod 1000
         else ValY:=ValY-37;
         case ValY of
            0: begin
               if ValX=0 then  Txt:='Параметры'
               else Txt:='Значение';
               end;
            1: Result:=ConversBit('Насос полива', //Номер 38
               Addr(ADat^.OutReg[1]),
               0,OnOff,InBlock,ValX,Txt);
            2: Result:=ConversBit('Клапан воды',
               Addr(ADat^.OutReg[1]),
               StartVal,OnOff,InBlock,ValX,Txt);
            3:  Result:=ConversBit('Насос воды',
               Addr(ADat^.OutReg[1]),
               1,OnOff,InBlock,ValX,Txt);
            4..7:  Result:=ConversBit('Уровень '+IntToStr(ValY-3),//Номер 42
               Addr(ADat^.InReg),
               ValY-4,YesNo,InBlock,ValX,Txt);
            8..10:  Result:=ConversBit('Дозатор '+NameChan324[ValY-7],
               Addr(ADat^.Chan[ValY-7].RCS),
               YesZD,OnOff,InBlock,ValX,Txt);
            11..15:  Result:=ConversBit(NameChan324[ValY-10]+' меньше допуска',
               Addr(ADat^.Chan[ValY-10].RCS),
               LowLevErr,YesNo,InBlock,ValX,Txt);
            16..20:  Result:=ConversBit(NameChan324[ValY-15]+' больше допуска',
               Addr(ADat^.Chan[ValY-15].RCS),
               HiLevErr,YesNo,InBlock,ValX,Txt);
            21:  Result:=ConversBit('Клапан полива',
               Addr(ADat^.RCSRas),
               0,OnOff,InBlock,ValX,Txt);
            22:  Result:=Convers('Состояние полива',
               Addr(ADat^.Cycle),SS,InBlock,ValX,ValY,Txt,'');
            23:  Result:=Convers('Тип аварии',
               Addr(ADat^.TipError),SS,InBlock,ValX,ValY,Txt,'');
            else begin
               ValY:=ValY-23;
               if ValY <= NumV then begin
               bValve:=ValY+StartVal;
                if bValve>=16 then
                  Result:=ConversBit('Клапан '+IntToStr(ValY),
                  Addr(ADat^.OutRegExt),
                  bValve-16,OnOff,InBlock,ValX,Txt)
                else Result:=ConversBit('Клапан '+IntToStr(ValY),
                  Addr(ADat^.OutReg[1-(bValve div 8)]),
                  bValve mod 8,OnOff,InBlock,ValX,Txt);
               end;
               end;
            end;
       end;
 end;
end;

procedure TSostPolD4.SetTree(var Tree:TTreeView);
var st:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    nSens:word;
begin
   with Tree do begin
      Items.BeginUpdate;
      Param.Block:=Self;
      if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
// Заполнение измерений
      Param.X:=1;
      Param.Y:=1;
      Node1:=Items.AddChildObject(NodeHead,'Ручное управление',Param.Ptr);
      Node1.ImageIndex:=imNorm;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Измерения',Param.Ptr);
      Param.X:=1;
      for nSens:=2 to 17 do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             (Items.AddChildObject(Node1,st,Param.Ptr)).ImageIndex:=imIzmer;//imNum;
             end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Задания',Param.Ptr);
      Param.X:=1;
      for nSens:=18 to 21 do begin
        Param.Y:=nSens;
        LoadXY(cOutBlock,0,nSens,st);
        (Items.AddChildObject(Node1,st,Param.Ptr)).ImageIndex:=imTimer;//imNum;
        end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Состояние',Param.Ptr);
      Param.X:=1;
      for nSens:=22 to CountY do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             (Items.AddChildObject(Node1,st,Param.Ptr)).ImageIndex:=imIzmer;//imNum;
             end;
      Items.EndUpdate;
//      NodeHead.Expand(False);
      end;
end;

//---------- END СОСТОЯНИЕ ПОЛИВА D-04 ------------------

//-- СОСТОЯНИЕ ПОЛИВА D325 ------------------
const   iTime=6;
        SizeSendTime=14;
        SizeSendSun=6;
type rTChan325=record
     IZ:InInt;
     RCS:Byte;
//     IZcor:InInt;
//     ZD:InInt;
//     CopyReg:Byte;
//     TimeReg:Byte;
     end;
type rHotPol=record
     News:Byte;    //0
		 PolSun:InInt;
     PolSunRCS:Byte;
		 PolSumSun:InInt;
		 Time:InInt;      //6
		 Data:InInt;
		 Year:Byte;
     Rez:InInt;
     Hand:Byte;       //13
     Rezept:Byte;
     NumPoliv:Byte;   //15
     RCSDoz:Byte;
     RCSRas:Byte;
     OutRegExt:Byte;
     InReg:Byte;      //19
     OutReg:InInt;
     Cycle:Byte;      //22
// 0-норма,1..4-авария дозатора,
// 5- авария расхода, 6-авария насоса воды
     TipError:Byte;   // ранее было Error
     SelValve:Byte;   //24
     tTimeValve:InInt;
     TecRasxod:InInt;
     tVolValve:InInt;
     Propor:Byte;    //Zona:Byte;   
     MirrorVal:Byte;
		 FilPul:Array [1..NumChanPul]of InInt;
     Chan:Array [1..17]of rTChan325;
     CopyRegEC:Byte;
     CopyRegPH:Byte;
     Task:Array [1..8]of InInt;
     CycleSiod:Byte;
     BoilerMix:Byte;
     Prop:array [1..4] of Byte;
     tFilterPeriod:InInt;
//     tFilterClean:InInt;
//     tFilterVolume:InInt;
//     Task:Array [1..5]of InInt;  В контроллере 8 подряд
//	TimeValve:array [1..NumValve] of Byte;
     end;
const SumIrrigDiag325=4;
var
IrrigDiagnos325:array [1..SumIrrigDiag325] of TDiagnos=(
   (Name:'Ручное управление';ShowPozition:28;LevelAlarm:alHand;
      PosInHot:1;Frm:SS;Oper:BGT;OperValue:0;Color:clRed;Voice:'HandControl'),
   (Name:'По программе полив';ShowPozition:-2;LevelAlarm:alMessig;
      PosInHot:59;Frm:SS;Oper:BGT;OperValue:0;Color:clGreen),
   (Name:'Насос полива';ShowPozition:-5;LevelAlarm:alMessig;
      PosInHot:38;Frm:SS;Oper:BGT;OperValue:0;Color:clBlue),
   (Name:'Авария';ShowPozition:-1;LevelAlarm:alFatal;
      PosInHot:60;Frm:SS;Oper:BGT;OperValue:0;Color:clRed)
   );
procedure THotPol325.Init;
begin
     CountX:=1;
     CountY:=65;
     SizeCol:=SizeOf(rHotPol);
     FullSize:=SizeCol;
     SendByte:=SizeSendTime;
     Pref:='Состояние';
     NameBlock:='Состояние полива';
     FixRow:=1;
     Diagnosis:=Addr(IrrigDiagnos325[1]);
     CountDiagnosis:=SumIrrigDiag325;
end;

function THotPol325.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pHotPol:^rHotPol;
    StartVal,bValve:Byte;
    NumV,NKran:integer;
    Prop:word;
    pt:Pointer;
begin
 pHotPol:=Adr;
 NumV:=(ParentCtr as TFMixer04).NumValve;
 StartVal:=(ParentCtr as TFMixer04).CtrTip mod 10;
 Result:=ValX;
 imNum:=0;
 case ValY of
 0:    if ValX=0 then  Txt:='Параметры'
          else Txt:='';//'Значение';
 1 :  begin
      Result:=Convers('Ручное управление',
        Addr(pHotPol^.Hand),SS,InBlock,ValX,ValY,Txt,'');
      end;
 2..17: begin
      ValY:=ValY-1;
      if ValY<=NumChanPul then  pt:=Addr(pHotPol^.FilPul[ValY])
        else  pt:=Addr(pHotPol^.Chan[ValY].IZ);
      Result:=Convers('Измерено '+NameChan324[ValY],
        pt,FrmChan324[ValY],InBlock,ValX,ValY,Txt,EdChan324[ValY]);
      if (Result<=0) or (Result>500) then imNum:=imNoRealPC;
      end;
 18..20:  begin
//        imNum:=0;imProg;
        ValY:=ValY-17;
        Result:=Convers('Задано '+NameChan324[ValY],
         Addr(pHotPol^.Task[ValY]),
         FrmChan324[ValY],InBlock,ValX,ValY,Txt,EdChan324[ValY]);
         if Result<=0 then imNum:=imAlarmLow;
        end;
  21: if (ParentCtr.SubTip and t326Pr)>0 then
          begin
          Result:=Convers('Пропорции _А:_В:_C:_D',
            Addr(pHotPol^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
          Txt:=Copy(Txt,1,Length(Txt)-(4-(ParentCtr as TFMixer04).NumDozEC)*3);
          end
      else
       case (ParentCtr as TFMixer04).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(pHotPol^.Propor),SdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Растворы А:В:C',
            Addr(pHotPol^.Propor),SdSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Растворы А:В:C:D',
            Addr(pHotPol^.Propor),SdSdSdS,InBlock,ValX,ValY,Txt,'');
        end;
  22:   begin
//        imNum:=0;//imRasch;
        NumV:=100*pHotPol^.CopyRegEC div 36;
        Result:=Convers('Краны ЕС',
         Addr(NumV),SS,InBlock,ValX,ValY,Txt,'%');
        end;
 23..24:    begin
//        imNum:=0;//imRasch;
        NumV:=ValY-22;
        ValY:=ValY-23;
        if (ParentCtr as TFMixer04).NumDozEC>2 then
           begin
           NKran:=-1;
           repeat
           NKran:=NKran+1;
           Prop:=pHotPol^.Prop[NKran+1];//bValve and 3;
           if Prop>0 then NumV:=NumV-1;
           until ((Prop>0)and(NumV=0)) or ((NKran-ValY)>1);
           end
        else
           begin
           NKran:=ValY;
           if NKran>0 then Prop:=pHotPol^.Prop[2]
                             else Prop:=pHotPol^.Prop[1];
           end;
        bValve:=0;
        for NumV:=1 to 4 do if pHotPol^.Prop[NumV]>bValve then bValve:=pHotPol^.Prop[NumV];
        if bValve>0 then Prop:=100*Prop*pHotPol^.CopyRegEC div (36*bValve)
          else Prop:=0;
        Result:=Convers('Кран '+char(ord('A')+NKran),
            Addr(Prop),SS,InBlock,ValX,ValY,Txt,'%');
        end;
 25:    begin
//        imNum:=0;//imRasch;
        NumV:=100*pHotPol^.CopyRegPH div 36;
        Result:=Convers('Кран pH',
         Addr(NumV),SS,InBlock,ValX,ValY,Txt,'%');
        end;
 26:  Result:=Convers('Текущий расход',
        Addr(pHotPol^.TecRasxod),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3/час');
 27:  Result:=Convers('Прошло раствора',
        Addr(pHotPol^.tVolValve),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
 28:  Result:=Convers('Осталось времени',
        Addr(pHotPol^.tTimeValve),SSmSSs,InBlock,ValX,ValY,Txt,'')/cMin;
 29:  Result:=Convers('Номер программы',
        Addr(pHotPol^.NumPoliv),SS,InBlock,ValX,ValY,Txt,'');
 30:  begin
      StartVal:=pHotPol^.SelValve+1;
      Result:=Convers('Включен клапан',
        Addr(StartVal),SS,InBlock,ValX,ValY,Txt,'');
      StartVal:=pHotPol^.MirrorVal;
      if StartVal>0 then Txt:=Txt+'+'+IntToStr(StartVal);
      if (Result<1) or (Result>30) then begin
         Result:=0;
         Txt:='~';
         end;
      end;
 31..35:  begin
        ValY:=ValY-30;
        Result:=Convers('Корректор '+NameChan324[ValY],
         Addr(pHotPol^.Chan[ValY].IZ),
         FrmChan324[ValY],InBlock,ValX,ValY,Txt,EdChan324[ValY]);
        if Result<=0 then imNum:=imNoRealPC;
        end;
 36:  begin
        Result:=Convers('Смесь ',
          Addr(pHotPol^.Propor),SS,InBlock,ValX,ValY,Txt,'');
      end;
 37:  begin
      Result:=Convers('Сегодня света ',
          Addr(pHotPol^.PolSumSun),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      imNum:=imSun;
      end;
 38: Result:=ConversBit('Насос полива', //Номер 38
               Addr(pHotPol^.OutReg[1]),
               0,OnOff,InBlock,ValX,Txt);
 39: Result:=ConversBit('Клапан воды',
               Addr(pHotPol^.OutReg[1]),
              StartVal,OnOff,InBlock,ValX,Txt);
 40:  Result:=ConversBit('Насос воды',
               Addr(pHotPol^.OutReg[1]),
               1,OnOff,InBlock,ValX,Txt);
 41..44:  Result:=ConversBit('Уровень '+IntToStr(ValY-40),//Номер 42
               Addr(pHotPol^.InReg),
               ValY-41,YesNo,InBlock,ValX,Txt);
 45..47:  Result:=ConversBit('Дозатор '+NameChan324[ValY-44],
               Addr(pHotPol^.Chan[ValY-44].RCS),
               YesZD,OnOff,InBlock,ValX,Txt);
 48..52:  Result:=ConversBit(NameChan324[ValY-47]+' меньше допуска',
               Addr(pHotPol^.Chan[ValY-47].RCS),
               LowLevErr,YesNo,InBlock,ValX,Txt);
 53..57:  Result:=ConversBit(NameChan324[ValY-52]+' больше допуска',
               Addr(pHotPol^.Chan[ValY-52].RCS),
               HiLevErr,YesNo,InBlock,ValX,Txt);
 58:  Result:=ConversBit('Клапан полива',
               Addr(pHotPol^.RCSRas),
               0,OnOff,InBlock,ValX,Txt);
 59:  Result:=Convers('Состояние полива',
               Addr(pHotPol^.Cycle),SS,InBlock,ValX,ValY,Txt,'');
 60:  Result:=Convers('Тип аварии',
               Addr(pHotPol^.TipError),SS,InBlock,ValX,ValY,Txt,'');
 61:  Result:=Convers('Состояние СИОД',
               Addr(pHotPol^.CycleSiod),SS,InBlock,ValX,ValY,Txt,'');
 62:  Result:=Convers('Бойлер-смес клапан',
               Addr(pHotPol^.BoilerMix),SS,InBlock,ValX,ValY,Txt,'%');
 63:  Result:=Convers('Фильтр - время от промывки',
               Addr(pHotPol^.tFilterPeriod),SShSSm_12,InBlock,ValX,ValY,Txt,'час:мин')/cMin;
{ 64:  Result:=Convers('Фильтр - объем от промывки',
               Addr(pHotPol^.tFilterVolume),SSSpS,InBlock,ValX,ValY,Txt,'м3');
 65:  Result:=Convers('Фильтр - промывка',
               Addr(pHotPol^.tFilterClean),SSmSSs,InBlock,ValX,ValY,Txt,'мин:сек')/cMin;
}
 64:  Result:=Convers('Время в контроллере',
               Addr(pHotPol^.Time),SShSSm,InBlock,ValX,ValY,Txt,'час:мин')/cMin;
 65:  Result:=Convers('Дата в контроллере',
               Addr(pHotPol^.Data),SSsSS,InBlock,ValX,ValY,Txt,'');
    end;
end;

{function THotPol325.BitLoadXY(ValY:Integer;
       var vRes:Integer; var vPrefStr:String; var PointDiagnos:TPtDiagnos):Boolean;
var pHot:PByteArray;
//    Val:Double;
//    vStr:string;
//    YPoz:integer;
begin
if (ValY<1) or (ValY > SumIrrigDiag) then begin Result:=False; Exit; end;
PointDiagnos:=Addr(IrrigDiagnos[ValY]);
Result:=True;
vRes:=0;
vPrefStr:='';
pHot:=Adr;
case ValY of
  1:begin
    if Not Ready  then vRes:=PointDiagnos^.ShowPozition;
    end;
//  if Not Ready  then begin Result:=False; Exit; end;
  2:begin
    if Ready and ((pHot^[6+4] and $80)>0) then vRes:=PointDiagnos^.ShowPozition;
    end;
  3:begin
    if Ready and (pHot^[PointDiagnos^.IndByte]>0) then vRes:=PointDiagnos^.ShowPozition;
    end;
  else
    begin
//    ValY:=ValY-3;
//  if Ready and (vDiagnos.ShowPozition<>0) then YPoz:=vDiagnos.ShowPozition+nZona*2 else YPoz:=0;
    if GetOper(PointDiagnos^.Oper,pHot^[PointDiagnos^.IndByte],PointDiagnos^.OperValue)
       then vRes:=PointDiagnos^.ShowPozition
    else vRes:=0;
    end;
  end;
end; }

procedure THotPol325.PostPortRead;
var pHot:^rHotPol;
begin
 if Not Ready  then Exit;
{ pHot:=Adr;
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
 if ((pHot^.PolSunRCS and 1) = 0) and ((pHot^.PolSun[0]+pHot^.PolSun[1]) > 10) then
// если датчик подсоединен и измеряет и не 0, то его в общие данные
      begin
      mMeteo[comSun].IZ[0]:=pHot^.PolSun[0];
      mMeteo[comSun].IZ[1]:=pHot^.PolSun[1];
//      mMeteo[comSun].RCS:=pHot^.PolSunRCS;
      mMeteo[comSun].TimeRes:=BlDate;
      mMeteo[comSumSun].IZ[0]:=pHot^.PolSumSun[0];
      mMeteo[comSumSun].IZ[1]:=pHot^.PolSumSun[1];
      mMeteo[comSumSun].TimeRes:=BlDate;
      end
 else
      if FMain.mnTransferSun.Checked
         and (ParentCtr.DataPath = '')
         and (Now > mMeteo[comSun].TimeRes)
         and (Now < (mMeteo[comSun].TimeRes+3*cMin)) then
          begin
          if (ParentCtr.DataPath <> '') then Exit;
          pHot^.PolSun[0]:=mMeteo[comSun].IZ[0];
          pHot^.PolSun[1]:=mMeteo[comSun].IZ[1];
          pHot^.Chan[nmSR].IZ[0]:=pHot^.PolSun[0];
          pHot^.Chan[nmSR].IZ[1]:=pHot^.PolSun[1];
          pHot^.PolSumSun[0]:=mMeteo[comSumSun].IZ[0];
          pHot^.PolSumSun[1]:=mMeteo[comSumSun].IZ[1];

          pHot^.PolSunRCS:=$81;
          pHot^.News:=0;
          SendByte:=SizeSendSun;
          FPort.BlockSend(Self,IN_UNIT,0,nil);
          SendByte:=SizeSendTime;
          end; }
 inherited; // записать блок в файл
end;

function THotPol325.SendTime:Boolean;
var pHotPol:pByteArray;
    Minut:word;
begin
if FormFalseTime then Exit;
FormFalseTime:=True;
 if FMain.mnAutoSynxTime.Checked or (MessageDlg('Внимание! Время контроллера "'+ParentCtr.CtrName
     +'" отличается от ПК. Синхронизировать?'
       ,mtWarning,[mbYes, mbNo],0)= mrYes) then
 begin
 pHotPol:=Adr;
 pHotPol^[0]:=$80;  //признак, что переданы часы
 Minut:=MinuteOfTheDay(Now);
 pHotPol^[iTime]:=Minut div 256;
 pHotPol^[iTime+1]:=Minut mod 256;
 pHotPol^[iTime+2]:=MonthOfTheYear(Now);
 pHotPol^[iTime+3]:=DayOfTheMonth(Now);
 pHotPol^[iTime+4]:=YearOf(Now)-2000;
 SendByte:=SizeSendTime;
 Result:=SendToPort(nil);
 end;
FormFalseTime:=False;
end;

procedure THotPol325.SetTree(var Tree:TTreeView);
var st:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    nSens:word;
begin
   with Tree do begin
      Items.BeginUpdate;
      Param.Block:=Self;
      if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
// Заполнение измерений
      Param.X:=1;
      Param.Y:=1;
      Node1:=Items.AddChildObject(NodeHead,'Ручное управление',Param.Ptr);
      Node1.ImageIndex:=imNorm;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Измерения',Param.Ptr);
      Param.X:=1;
      for nSens:=2 to 17 do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             (Items.AddChildObject(Node1,st,Param.Ptr)).ImageIndex:=imIzmer;//imNum;
             end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Задания',Param.Ptr);
      Param.X:=1;
      for nSens:=18 to 21 do begin
        Param.Y:=nSens;
        LoadXY(cOutBlock,0,nSens,st);
        (Items.AddChildObject(Node1,st,Param.Ptr)).ImageIndex:=imTimer;//imNum;
        end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Состояние',Param.Ptr);
      Param.X:=1;
      for nSens:=22 to CountY do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             (Items.AddChildObject(Node1,st,Param.Ptr)).ImageIndex:=imIzmer;//imNum;
             end;
      Items.EndUpdate;
      NodeHead.Expand(False);
      end;
end;
// end HotPol

procedure TFMixer04.SetPicCtr;
var// ADat:^rTSostPolD4;
    TErr:Byte;
    txt2,txt:string;
    n,nMes:integer;
    nLine2:word;
    sLine2:string;
    pHot:PByteArray;
//    Color:TColor;
begin
  if Not Block[0].Ready then Exit;
  if (DataPath='') and ((SubTip and T325)>0) then
        begin
        pHot:=Block[0].Adr;
        n:=MinuteOfTheDay(Now);
        nMes:=pHot^[iTime]*256+pHot^[iTime+1];
        if (n>15)
          and (n<(24*60-15))
          and (((nMes+15)<n) or((nMes-15)> n))
          then (Block[0] as THotPol325).SendTime;
        end;
  BotLev.Visible:= Block[0].LoadXY(cOutBlock,1,41,txt)=0;
  TopLev.Visible:= Block[0].LoadXY(cOutBlock,1,42,txt)=0;
  WorkLev.Visible:= Block[0].LoadXY(cOutBlock,1,43,txt)=0;
//  ADat:=Block[0].Adr;
  TErr:=round(Block[0].LoadXY(cOutBlock,1,60,txt));//ADat^.TipError;
  sLine2:='';
  nLine2:=0;
  for nMes:=38 to 38+20 do begin
    if(Block[0].LoadXY(cOutBlock,1,nMes,txt)>0) then begin
                   Block[0].LoadXY(cOutBlock,0,nMes,txt2);
                   if (nLine2>0) then sLine2:=sLine2+#13#10;
                   sLine2:=sLine2+txt2+' '+txt;
                   nLine2:=nLine2+1;
                   end;
    end;
  LMes.Caption:=sLine2;
  if round(Block[0].LoadXY(cOutBlock,1,1{Hand},txt))>0 then begin
      SetVoice('HandControl',0);
      PSost.Caption:='Ручное управление';
      PSost.Color:=clRed;
      end
    else
    case round(Block[0].LoadXY(cOutBlock,1,59,txt)) of //ADat^.Cycle of
      0: begin
         PSost.Caption:='ПОЛИВА НЕТ';
         PSost.Color:=clBlue;
         end;
      1: begin
         SetVoice('АварияПолив',alFatal);
         case TErr of
         1..4: PSost.Caption:='Авария '+NameChan324[TErr];
         cErRasxod: PSost.Caption:='Авария расхода';
//         cErVAC:    PSost.Caption:='Нет питания 24В';
         bErOutMat: PSost.Caption:='Нет маточных';
         cErNasWater: PSost.Caption:='Стоп насос воды';
         else PSost.Caption:='Авария';
         end;
         PSost.Color:=clRed;
         end;
      2: begin
         PSost.Caption:='Вода в бак';//ActionMes;
         PSost.Color:=clRed;
         end;
      3: begin
         PSost.Caption:='Готовим раствор';//ActionMes;
         PSost.Color:=$003FFF00;
         end;
      4: begin
         PSost.Caption:='ПОЛИВ';//ActionMes;
         PSost.Color:=$000FF0F;
         end;
      end;
end;

//---------- ПАРАМЕТРЫ D325 ------------------
{type rTControl325=record
     rNumVal:Byte;
     rNumChan:Byte;
     rSizeArx:Byte;
     rSubIdent:Byte;
     rIdent:Byte;
//     Time:InInt;
//     Data:InInt;
//     Year:Byte;
//*-- начало сохраняемых данных, размер 20 байт*/
//     NFCtr:Byte;
     DelayBot1:Byte; //5
     SleepVal:Byte;
     FullBak:Byte;
     Turbo:Byte;
     ReadyMix:Byte;
     TimeAlarmRas:Byte;   // 10
     ResetAlarmRas:Byte;  // 11
     MinRasxod:InInt;     // 12
     MaxRasxod:InInt;     // 14
     CompAB:Byte;         // 16
     SBak:Array [1..3]of InInt; //17
     SleepValSiod:Byte;   //23
     ForvNasSiod:Byte;
     NSensEC:Byte;
     NSensPH:Byte;
		 Acid_P:Byte;
     ECStSR:InInt;        //28
     ECEndSR:InInt;
     ECKorSR:Byte;        //32
     RasStSR:InInt;       //33
     RasEndSR:InInt;
     RasKorSR:Byte;       //37
     TimeClFil:Byte;      //39
     TimePerFil:InInt;
     VolPerFil:InInt;
     BoilerP:InInt;
     BoilerI:InInt;
     BoilerRez:Byte;
     BoilerPause:Byte;
     BoilerTimeVal:InInt;
		 ConstEC:Byte;
		 MaxRegulEC:Byte;
		 ConstPH:Byte;
		 MaxRegulPH:Byte;
     CtrLevMat:Byte;
		 Rez:array[1..7] of Byte; }       //40
{    SleepValSiod:Byte;     //char    SleepValSiod;
     ForvNasSiod:Byte;      //char    ForvNasSiod;
     NSensEC:Byte;          //char	NSensEC;
     NSensPH:Byte;          //char	NSensPH;
		 Acid_P:Byte;           //char	Acid_P
     Rez:Array [1..30] of Byte;//   char    Rez[30];
     end;  }
const
     iMinRasx=6;
     iMaxRasx=7;
     iFilRasx=25;
var
NameParUpr25:array [1..33] of TNameConst=(
(Name:'Насос полива при освобождении миксера работает';Frm:SS;Ed:'сек';TipSens:TipControl;Min:3;Max:15;Def:6;Index:5),
(Name:'Держать миксер полным (0-нет, 1-да)';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:1;Def:1;Index:7),
(Name:'Контроль маточных (0-нет, 1-да)';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:1;Def:1;Index:55),
(Name:'Время паузы при переключении клапанов полива';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:20;Def:4;Index:6),
(Name:'Максимальная производительность дозатора';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:1;Def:1;Index:8),

//(Name:'Подготовка раствора';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:0;Index:9),
(Name:'Минимально допустимый расход раствора';Frm:SSSpS;Ed:'м3/час';TipSens:TipControl;Min:0;Max:10;Def:6;Index:12),
(Name:'Максимально допустимый расход раствора';Frm:SSSpS;Ed:'м3/час';TipSens:TipControl;Min:0;Max:60;Def:30;Index:14),
(Name:'При расходе вне допуска остановить полив через';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:120;Def:40;Index:10),
(Name:'Возобновить полив после аварии расхода через';Frm:SS;Ed:'мин';TipSens:TipControl;Min:0;Max:30;Def:3;Index:11),

(Name:'Управлять ЕС по датчику';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:2;Def:0;Index:25),
(Name:'Управлять рН по датчику';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:2;Def:0;Index:26),
(Name:'Константа управления ЕС';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:6;Def:1;Index:51),
(Name:'Максимум дозатора ЕС';Frm:SS;Ed:'%';TipSens:TipControl;Min:0;Max:100;Def:100;Index:52),
(Name:'Константа управления рН';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:15;Def:4;Index:53),
(Name:'Максимум дозатора рН';Frm:SS;Ed:'%';TipSens:TipControl;Min:0;Max:100;Def:50;Index:54),

(Name:'Задание расхода - солнце начинает влиять при';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:200;Def:50;Index:33),
(Name:'Задание расхода - солнце влияет до';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:300;Max:2000;Def:500;Index:35),
(Name:'Задание расхода - солнце увеличивает на';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:10;Index:37),
(Name:'Задание ЕС - солнце начинает влиять при';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:200;Def:50;Index:28),
(Name:'Задание ЕС - солнце влияет до';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:300;Max:2000;Def:500;Index:30),
(Name:'Задание ЕС - солнце уменьшает на';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:10;Index:32),

(Name:'Включить насос СИОД вперед клапана на';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:15;Def:3;Index:24),
(Name:'Время паузы при переключении клапанов СИОД';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:15;Def:3;Index:23),

(Name:'Время,через которое промыть фильтр';Frm:SShSSm;Ed:'час:мин';TipSens:TipControl;Min:0;Max:100*60;Def:10*60;Index:39),
(Name:'Объем воды,после которого промыть фильтр';Frm:SSSpS;Ed:'м3';TipSens:TipControl;Min:0;Max:300;Def:50;Index:41),
(Name:'Время промывки фильтра';Frm:SS;Ed:'мин';TipSens:TipControl;Min:0;Max:30;Def:5;Index:38),

(Name:'Бойлер-пропорц коэф';Frm:SSpSS;Ed:'%/°C';TipSens:TipCalc;Min:0.3;Max:5;Def:1;Index:43),
(Name:'Бойлер-интегр коэф';Frm:SSpSS;Ed:'%/°C';TipSens:TipCalc;Min:0.05;Max:2;Def:0.1;Index:45),
//(Name:'Бойлер-диффер коэф';Frm:SSpSS;Ed:'%/°C';TipSens:TipCalc;Min:0;Max:3;Def:0;Index:47),
(Name:'Бойлер-ход смесит клапана';Frm:SSSS;Ed:'сек';TipSens:TipCalc;Min:20;Max:800;Def:60;Index:49),
(Name:'Бойлер-пауза при смене направления';Frm:SS;Ed:'сек';TipSens:TipCalc;Min:2;Max:60;Def:5;Index:48),

(Name:'Равнять уровни в баках А и В';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:3;Def:0;Index:16),
(Name:'Площадь бака A';Frm:SSSpS;Ed:'дм2';TipSens:TipControl;Min:30;Max:150;Def:45;Index:17),
(Name:'Площадь бака B';Frm:SSSpS;Ed:'дм2';TipSens:TipControl;Min:30;Max:150;Def:45;Index:19)
);
procedure TControl325.Init;
begin
     CountX:=1;
     CountY:=33;
     SizeCol:=63;//SizeOf(rTControl325);
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:='Параметры';
     NameBlock:='Параметры контроллера';
     FixRow:=1;
//     StartRow:=0;
end;

function TControl325.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:PByteArray;
//    Minut:word;
begin
     ADat:=Adr;
     Result:=ValX;
     if ValY=0 then
       begin
       if ValX=0 then Txt:='Контроллер '+ParentCtr.CtrName
         else Txt:='Значение';
       Exit;
       end;
     Result:=Convers(NameParUpr25[ValY].Name+Format(' (от %g до %g, типовое: %g ',[NameParUpr25[ValY].Min,NameParUpr25[ValY].Max,NameParUpr25[ValY].Def])+NameParUpr25[ValY].Ed+')',
            Addr(ADat^[NameParUpr25[ValY].Index+SizeCol*(ValX-1)]),NameParUpr25[ValY].Frm,vInBlock,ValX,ValY,Txt,NameParUpr25[ValY].Ed);
           if (ValX>0) and ((Result< NameParUpr25[ValY].Min) or (Result>NameParUpr25[ValY].Max )) then Txt:='!Вне диапазона '+Txt;
end;
//--------- END ПАРАМЕТРЫ D325 ------------------
//---------- ПАРАМЕТРЫ D-04 ------------------
type rTControlD4=record
     rNumVal:Byte;
     rNumChan:Byte;
     rSizeArx:Byte;
     rSubIdent:Byte;
     rIdent:Byte;
     Time:InInt;
     Data:InInt;
     Year:Byte;
//*-- начало сохраняемых данных, размер 20 байт*/
     NFCtr:Byte;
     DelayBot1:Byte;
     SleepVal:Byte;
     FullBak:Byte;
     Turbo:Byte;
     ReadyMix:Byte;
     TimeAlarmRas:Byte;   // ранее было TimeErTemp:Byte;
     ResetAlarmRas:Byte;  // ранее было ResetFatal:Byte;
     MinRasxod:InInt;     // ранее не было
     MaxRasxod:InInt;     // ранее не было
     CompAB:Byte;
     SBak:Array [1..3]of InInt;
{    SleepValSiod:Byte;     //char    SleepValSiod;
     ForvNasSiod:Byte;      //char    ForvNasSiod;
     NSensEC:Byte;          //char	NSensEC;
     NSensPH:Byte;          //char	NSensPH;
		 Acid_P:Byte;           //char	Acid_P
     Rez:Array [1..30] of Byte;//   char    Rez[30];
}     end;

procedure TControlD4.Init;//override;
begin
     CountX:=1;
     CountY:=20;
     SizeCol:=SizeOf(rTControlD4);
     FullSize:=SizeCol;
     SendByte:=FullSize;
//     EEPSize:=FullSize;
     Pref:='Параметры';
     NameBlock:='Параметры контроллера';
     FixRow:=5;
     StartRow:=0;
end;

function TControlD4.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:^rTControlD4;
    Minut:word;
begin
     ADat:=Adr;
     Result:=ValX;
     if InBlock=cInBlock then begin
         Minut:=MinuteOfTheDay(Now);
         ADat^.Time[0]:=Minut div 256;
         ADat^.Time[1]:=Minut mod 256;
         ADat^.Data[0]:=MonthOfTheYear(Now);
         ADat^.Data[1]:=DayOfTheMonth(Now);
         end;
     case ValY of
     0:  Result:=Convers('Количество клапанов',
          Addr(ADat^.rNumVal),SS,InBlock,ValX,ValY,Txt,'');
     1:  Result:=Convers('Количество датчиков',
          Addr(ADat^.rNumChan),SS,InBlock,ValX,ValY,Txt,'');
     2:  Result:=Convers('Размер архива',
          Addr(ADat^.rSizeArx),SS,InBlock,ValX,ValY,Txt,'дней');
     3:  Result:=Convers('Модификация',
          Addr(ADat^.rSubIdent),SS,InBlock,ValX,ValY,Txt,'');
     4:  Result:=Convers('Тип контролера',
          Addr(ADat^.rIdent),SS,InBlock,ValX,ValY,Txt,'');
     5:  Result:=Convers('Номер контролера',
          Addr(ADat^.NFCtr),SS,InBlock,ValX,ValY,Txt,'');
     6:  Result:=Convers('Время контроллера',
          Addr(ADat^.Time),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
     7:  Result:=Convers('Дата контроллера',
          Addr(ADat^.Data),SSsSS,InBlock,ValX,ValY,Txt,'');
     8:  Result:=Convers('Минимальный расход',
          Addr(ADat^.MinRasxod),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
     9:  Result:=Convers('Максимальный расход',
          Addr(ADat^.MaxRasxod),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
    10:  Result:=Convers('Авария расхода через',
          Addr(ADat^.TimeAlarmRas),SS,InBlock,ValX,ValY,Txt,'сек');
    11:  Result:=Convers('Повтор от аварии расхода',
          Addr(ADat^.ResetAlarmRas),SS,InBlock,ValX,ValY,Txt,'мин');
    12:  Result:=Convers('Авария воды',
          Addr(ADat^.DelayBot1),SS,InBlock,ValX,ValY,Txt,'сек');
    13:  Result:=Convers('Тип наполнения воды',
          Addr(ADat^.FullBak),SS,InBlock,ValX,ValY,Txt,'');
    14:  Result:=Convers('Время между клапанами',
          Addr(ADat^.SleepVal),SS,InBlock,ValX,ValY,Txt,'сек');
    15:  Result:=Convers('Максимум дозатора',
          Addr(ADat^.Turbo),SS,InBlock,ValX,ValY,Txt,'');
    16:  Result:=Convers('Подготовка раствора',
          Addr(ADat^.ReadyMix),SS,InBlock,ValX,ValY,Txt,'');
    17:  Result:=Convers('Равнять А и В',
          Addr(ADat^.CompAB),SS,InBlock,ValX,ValY,Txt,'');
    18..19:  Result:=Convers('Площадь бака '+char(ord('A')+ValY-18),
          Addr(ADat^.SBak[ValY-17]),SSSpS,InBlock,ValX,ValY,Txt,'дм2');
       else Result:=cEndCol;
    end;
end;
//--------- END ПАРАМЕТРЫ D-04 ------------------
//--------- ЗАДАНИЕ НА СУТКИ D-04 ------------------
type rTTimerD4=record
     Time:Byte;
     Vol:InInt;
     end;
type rT1TimerD4=record
     DataStart:InInt;
     DataEnd:InInt;
     TimeStart:InInt;
     Cycle:Byte;
     PastCycle:Byte;
     Period:InInt;
     Propor:Byte;
//     Rezept:Byte;
//     Tepl:Byte;
     TaskT:InInt;
     KorSR:InInt;
//     RezSR:Byte;
     ZD:array [1..2] of InInt;
     Valve:array [1..1] of rTTimerD4;
     end;
     
procedure TTimerD4.Init;//override;
var NumV:Byte;
begin
     NumV:=(ParentCtr as TFMixer04).NumValve;
     CountX:=cNumTimer;//(ParentCtr as TFMixer04).NumTimer;
     CountY:=11+NumV*3;
     SizeCol:=SizeOf(rT1TimerD4)+SizeOf(rTTimerD4)*(NumV-1);
     if (4095 div SizeCol) < CountX then CountX:=4095 div SizeCol;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
//     EEPSize:=SizeCol*5;
     Pref:='ПрогПолива';
     NameBlock:='Программы полива';
     FixRow:=1;
end;

function TTimerD4.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;//override;
var  ADat:PByteArray;
     pTimer:^rT1TimerD4;
     NumV,SelVal,Int:integer;
     NumRast,RDrip:double;
     VolRast:InInt;
     st:string;
begin
  NumV:=(ParentCtr as TFMixer04).NumValve;
  ADat:=Adr;
  Result:=ValX;
  ADat:=Addr(ADat^[SizeCol*(ValX-1)]);
  pTimer:=pointer(ADat);
  case ValY of
   0: begin if ValX=0 then Txt:='Номер программы'
         else  Txt:='Прогр N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Время старта',
        Addr(pTimer^.TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   2: begin
      Result:=Convers('Задано повторов',
        Addr(pTimer^.Cycle),SS,InBlock,ValX,ValY,Txt,'раз');
      end;
   3: begin
      Result:=Convers('Выполнено повторов',
        Addr(pTimer^.PastCycle),SS,InBlock,ValX,ValY,Txt,'раз');
      end;
   4: begin
      Result:=Convers('Период повтора',
        Addr(pTimer^.Period),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   5: begin
      if (ParentCtr.SubTip and YesT325)>0  then
        begin
        if (pTimer^.KorSR[0]*256+pTimer^.KorSR[1])>3 then st:='Дж/см2'
         else st:='';
        Result:=Convers('Коррекция по солнцу',
          Addr(pTimer^.KorSR),SSSS,InBlock,ValX,ValY,Txt,st);
        end
      else
        Result:=Convers('Включать,если света',
          Addr(pTimer^.KorSR),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      end;
   6: begin
      Result:=Convers('Дата начала',
        Addr(pTimer^.DataStart),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   7: begin
      Result:=Convers('Дата окончания',
        Addr(pTimer^.DataEnd),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   8: Result:=Convers('Задание ЕС раствора',
        Addr(pTimer^.ZD[1]),SSpSS,InBlock,ValX,ValY,Txt,'мСм/см');
   9: case (ParentCtr as TFMixer04).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(pTimer^.Propor),SdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Пропорции А:В:C',
            Addr(pTimer^.Propor),SdSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Пропорции А:В:C:D',
            Addr(pTimer^.Propor),SdSdSdS,InBlock,ValX,ValY,Txt,'');
      end;
   10: Result:=Convers('Задание рН раствора',
        Addr(pTimer^.ZD[2]),SSpSS,InBlock,ValX,ValY,Txt,'');
   11: Result:=Convers('Задание Темпер воды',
        Addr(pTimer^.TaskT),SSpS0,InBlock,ValX,ValY,Txt,'°C');
   else begin
        ValY:=ValY-12;
        SelVal:=ValY mod 3;
        ValY:=(ValY div 3)+1;
        if ValY> NumV then begin Result:=cEndCol;Exit;end;
        case SelVal of
        0:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' время полива',
           Addr(pTimer^.Valve[ValY].Time),SS,InBlock,ValX,ValY,Txt,'мин');
        1:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' объем раствора',
           Addr(pTimer^.Valve[ValY].Vol),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
        2: begin
          Int:=pTimer^.Valve[ValY].Vol[1]
            +256*pTimer^.Valve[ValY].Vol[0];
          with ParentCtr as TFMixer04 do
             begin
             NumRast:=Block[BlockHoum].LoadXY(cOutBlock,ValY,1,st);
             RDrip:=Block[BlockHoum].LoadXY(cOutBlock,ValY,2,st);
             if ScaleRasxod=SSpSS then NumRast:=NumRast*10;
             end;
          if NumRast>0 then Int:=Round((100000/NumRast)*Int) else Int:=0;
          VolRast[1]:=Int mod 256;
          VolRast[0]:=Int div 256;
          if RDrip>0 and (pTimer^.Valve[ValY].Time) then
            if (60.0*Int/(RDrip*1000.0))>pTimer^.Valve[ValY].Time then
               ActionMes:='Заданный расход не пройдет за заданное время!';
          Result:=Convers('Клапан N'+IntToStr(ValY)+' на растение',
           Addr(VolRast),SSSS,InBlock,ValX,ValY,Txt,'мл');
          if(ValX>0) and (InBlock=cInBlock) and (NumRast>0) then
             begin
             Int:=VolRast[1]+256*VolRast[0];
             Int:=Round(NumRast*Int/100000);
             pTimer^.Valve[ValY].Vol[1]:=Int mod 256;
             pTimer^.Valve[ValY].Vol[0]:=Int div 256;
             end;
           end;
        end;
    end;// end case set Valve
   end;
end;
//--------- Заполнение прогноза полива для D-04
function TTimerD4.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
var ChartBl:TChart;
    NumV,iX,iY,yG:integer;
    dbStart,dbEnd,dbDlit:Double;
    st:string;
    ADat:PByteArray;
    pTimer:^rT1TimerD4;

begin
 ActionMes:='';
 NumV:=(ParentCtr as TFMixer04).NumValve;
 ChartBl:=Any.Ptr;
 with ChartBl do begin
  (Series[0]as TGanttSeries).Clear;
  Series[1].Clear;
  yG:=0;
  for iX:=1 to CountX do begin
   ADat:=Adr;
   ADat:=Addr(ADat^[SizeCol*(iX-1)]);
   pTimer:=pointer(ADat);
   dbStart:=((pTimer^.TimeStart[0]*256+pTimer^.TimeStart[1])
            +pTimer^.PastCycle
            *(pTimer^.Period[0]*256+pTimer^.Period[1]))*cMin;
   if dbStart>0 then begin
     dbDlit:=0;
     for iY:=1 to NumV do
         begin
         LoadXY(cOutBlock,iX,10+(iY*3),st);
         dbDlit:=dbDlit+pTimer^.Valve[iY].Time;
         end;
     for iY:=pTimer^.PastCycle+1 to pTimer^.Cycle do begin
       dbEnd:=dbStart+dbDlit*cMin;
       with (Series[0]as TGanttSeries) do
         NextTask[AddGanttColor(dbStart,dbEnd,yG,'Прог '+IntToStr(iX),RGB(iY*32+(iY div 8),iX*64+(iX div 4),200))]:=0;
       dbStart:=dbStart+(pTimer^.Period[0]*256+pTimer^.Period[1])*cMin;
       if(dbStart<=dbEnd) then dbStart:=dbEnd;
       end;
     yG:=yG+10;
     end;
  end;
  dbEnd:=0;
  with (Series[0]as TGanttSeries) do begin
   repeat begin  //повторять пока не проверятся все
    yG:=-1;
    dbStart:=Now+10;
    for iX:=0 to count-1 do begin //найти самый ранний непроверенный старт
      if NextTask[iX]<0 then continue;
      if StartValues[iX]<dbStart then begin dbStart:=StartValues[iX];yG:=iX;end;
      end;
    if yG>=0 then begin  //если нашли непроверенный
     dbDlit:=dbStart-dbEnd; //время от конца провер интервала
     if(dbDlit<0) then begin //если персекает то сдвинуть
        StartValues[yG]:=StartValues[yG]-dbDlit;
        EndValues[yG]:=EndValues[yG]-dbDlit;
        end;
     dbEnd:=EndValues[yG]; //уточнить конец проверенных таймеров
     NextTask[yG]:=-1;  // пометить что проверен
     end;
    end until yG<0;
   end;
 end;
 if ActionMes='' then Result:=1 else Result:=101;
end;
//--------- END ЗАДАНИЕ НА СУТКИ D-04 ------------------
//--------- ЗАДАНИЕ НА СУТКИ D-07 ------------------
type rTDoubleVal=record
     Time:Byte;
     Vol:InInt;
     MirrorVal:Byte;
     end;
type rT1TimerD7=record
     DataStart:InInt;
     DataEnd:InInt;
     TimeStart:InInt;
     Cycle:Byte;
     PastCycle:Byte;
     Period:InInt;
     Propor:Byte;
//     Rezept:Byte;
//     Tepl:Byte;
     TaskT:InInt;
     KorSR:InInt;
//     RezSR:Byte;
     TaskEC:InInt;
     TaskPH:InInt;
//     ZD:array [1..2] of InInt;
     Valve:array [1..1] of rTDoubleVal;
     end;
procedure TTimerD7.Init;//override;
var NumV:Byte;
begin
     NumV:=(ParentCtr as TFMixer04).NumValve;
     CountX:=cNumTimer;   //(ParentCtr as TFMixer04).NumTimer;
     CountY:=11+NumV*4;
     SizeCol:=SizeOf(rT1TimerD7)+SizeOf(rTDoubleVal)*(NumV-1);
     if (4095 div SizeCol) < CountX then CountX:=4095 div SizeCol;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
//     EEPSize:=SizeCol*5;
     Pref:='Задание';
     NameBlock:='Задание на сутки';
     FixRow:=1;
end;

function TTimerD7.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  ADat:PByteArray;
     pTimer:^rT1TimerD7;
     NumV,SelVal,Int:integer;
     NumRast,Driper:double;
     VolRast:InInt;
     st:string;
begin
  NumV:=(ParentCtr as TFMixer04).NumValve;
  ADat:=Adr;
  Result:=ValX;
  ADat:=Addr(ADat^[SizeCol*(ValX-1)]);
  pTimer:=pointer(ADat);
  case ValY of
   0: begin if ValX=0 then Txt:='Номер программы'
         else  Txt:='Прогр N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Время старта',
        Addr(pTimer^.TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   2: begin
      Result:=Convers('Задано повторов',
        Addr(pTimer^.Cycle),SS,InBlock,ValX,ValY,Txt,'раз');
      end;
   3: begin
      Result:=Convers('Выполнено повторов',
        Addr(pTimer^.PastCycle),SS,InBlock,ValX,ValY,Txt,'раз');
      end;
   4: begin
      Result:=Convers('Период повтора',
        Addr(pTimer^.Period),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   5: begin
      Result:=Convers('Дата начала',
        Addr(pTimer^.DataStart),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   6: begin
      Result:=Convers('Дата окончания',
        Addr(pTimer^.DataEnd),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   7: Result:=Convers('Задание ЕС раствора',
        Addr(pTimer^.TaskEC),SSpSS,InBlock,ValX,ValY,Txt,'мСм/см');
   8: case (ParentCtr as TFMixer04).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(pTimer^.Propor),SdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Пропорции А:В:C',
            Addr(pTimer^.Propor),SdSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Пропорции А:В:C:D',
            Addr(pTimer^.Propor),SdSdSdS,InBlock,ValX,ValY,Txt,'');
      end;
   9: Result:=Convers('Задание рН раствора',
        Addr(pTimer^.TaskPH),SSpS0,InBlock,ValX,ValY,Txt,'');
   10: Result:=Convers('Задание Темпер воды',
        Addr(pTimer^.TaskT),SSpS0,InBlock,ValX,ValY,Txt,'°C');
   11:begin
      if (ParentCtr.SubTip and YesT325)>0  then
        begin
        if (pTimer^.KorSR[0]*256+pTimer^.KorSR[1])>3 then st:='Дж/см2'
         else st:='';
        Result:=Convers('Коррекция по солнцу',
          Addr(pTimer^.KorSR),SSSS,InBlock,ValX,ValY,Txt,st);
        end
      else
        Result:=Convers('Включать,если света',
          Addr(pTimer^.KorSR),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      end;
  else begin
        SelVal:=(ValY-12) mod 4;
        ValY:=(ValY-12) div 4+1;
        if ValY> NumV then begin Result:=cEndCol;Exit;end;
        case SelVal of
        0:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' вместе с кл ',
           Addr(pTimer^.Valve[ValY].MirrorVal),SS,InBlock,ValX,ValY,Txt,'');
        1:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' время полива',
           Addr(pTimer^.Valve[ValY].Time),SS,InBlock,ValX,ValY,Txt,'мин');
        2:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' объем раствора',
           Addr(pTimer^.Valve[ValY].Vol),SSSpS,InBlock,ValX,ValY,Txt,'м3');
        3: begin
           with ParentCtr as TFMixer04 do
              begin
              NumRast:=Block[BlockHoum].LoadXY(cOutBlock,ValY,1,st);
              Driper:=Block[BlockHoum].LoadXY(cOutBlock,ValY,2,st);
              Int:=pTimer^.Valve[ValY].MirrorVal;
              if Int>0 then NumRast:=NumRast+Block[BlockHoum].LoadXY(cOutBlock,Int,1,st);
              if ScaleRasxod=SSpSS then NumRast:=NumRast*10;
              end;
           Int:=pTimer^.Valve[ValY].Vol[1]+256*pTimer^.Valve[ValY].Vol[0];   //Объем в м3
           if NumRast>0 then Int:=Round((100000/NumRast)*Int) else Int:=0;
           VolRast[1]:=Int mod 256;                                          //Расход на растение
           VolRast[0]:=Int div 256;
           Result:=Convers('Клапан N'+IntToStr(ValY)+' на растение',
                  Addr(VolRast),SSSS,InBlock,ValX,ValY,Txt,'мл');
           if(ValX>0) and (Driper>0.2) then
              if (1.19*Int*0.06/(Driper)>pTimer^.Valve[ValY].Time) then
                  begin
                  Txt:='!Мало время'+Txt;
                  ActionMes:='Прог'+IntToStr(ValX)+' Клап'+IntToStr(ValY)+' Мало время';
//                  MesColor:=clRed;
                  end;
           if(ValX>0) and (InBlock=cInBlock) and (NumRast>0) then
              begin
              Int:=VolRast[1]+256*VolRast[0];     //Объем в мл на растение
              Int:=Round(NumRast*Int/100000);     //Объем в м3 на клапан
              pTimer^.Valve[ValY].Vol[1]:=Int mod 256;
              pTimer^.Valve[ValY].Vol[0]:=Int div 256;
              end;
           end;
        end;
    end;// end case set Valve
   end;
end;
//--------- END ЗАДАНИЕ НА СУТКИ D-07 ------------------
//--------- Заполнение прогноза полива для D-07
function TTimerD7.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
var ChartBl:TChart;
    NumV,iX,iY,yG:integer;
    dbStart,dbEnd,dbDlit:Double;
//    Txt:string;
    ADat:PByteArray;
    pTimer:^rT1TimerD7;

begin
Result:=1;
// ActionMes:='';
NumV:=(ParentCtr as TFMixer04).NumValve;
ChartBl:=Any.Ptr;
with ChartBl do
  begin
  (Series[0]as TGanttSeries).Clear;
  Series[1].Clear;
  yG:=0;
  for iX:=1 to CountX do
   begin
   ADat:=Adr;
   ADat:=Addr(ADat^[SizeCol*(iX-1)]);
   pTimer:=pointer(ADat);
   dbStart:=((pTimer^.TimeStart[0]*256+pTimer^.TimeStart[1])
            +pTimer^.PastCycle
            *(pTimer^.Period[0]*256+pTimer^.Period[1]))*cMin;
   if dbStart>0 then
     begin
     dbDlit:=0;
     for iY:=1 to NumV do
         begin
         dbDlit:=dbDlit+pTimer^.Valve[iY].Time;
         end;
     for iY:=pTimer^.PastCycle+1 to pTimer^.Cycle do
          begin
          dbEnd:=dbStart+dbDlit*cMin;
          with (Series[0]as TGanttSeries) do
            NextTask[AddGanttColor(dbStart,dbEnd,yG,'Прог '+IntToStr(iX),RGB(iY*32+(iY div 8),iX*64+(iX div 4),200))]:=0;
          dbStart:=dbStart+(pTimer^.Period[0]*256+pTimer^.Period[1])*cMin;
          if(dbStart<=dbEnd) then dbStart:=dbEnd;
          end;
     yG:=yG+10;
     end;
  end;

// dbStart:=0;
 dbEnd:=0;
 with (Series[0]as TGanttSeries) do
  begin
  repeat
    begin  //повторять пока не проверятся все
    yG:=-1;
    dbStart:=Now+10;
    for iX:=0 to count-1 do
          begin //найти самый ранний непроверенный старт
          if NextTask[iX]<0 then continue;
          if StartValues[iX]<dbStart then begin dbStart:=StartValues[iX];yG:=iX;end;
          end;
    if yG>=0 then
          begin  //если нашли непроверенный
          dbDlit:=dbStart-dbEnd; //время от конца провер интервала
          if(dbDlit<0) then
              begin //если персекает то сдвинуть
              StartValues[yG]:=StartValues[yG]-dbDlit;
              EndValues[yG]:=EndValues[yG]-dbDlit;
              end;
          dbEnd:=EndValues[yG]; //уточнить конец проверенных таймеров
          NextTask[yG]:=-1;  // пометить что проверен
          end;
    end until yG<0;
  end;
// Visible:=True;
 end;
end;

//--------- ЗАДАНИЕ НА СУТКИ D326 ------------------
//typedef struct  eeTimer326
 {
        uint    DataStart;
        uint    DataEnd;
        uint    TimeStart;
        uint    TimeEnd;
        uint    MaxPeriod;	//Period;
        char    RezB;
        uint    StartSR_KorSR325;	//KorSR325;
        uint    MinPeriod;
        uint    EndSR;
        uchar   AddTimeEnd_Cycle;	//Cycle;
        uchar   LowEC_PastC;		//PastCycle;
        uchar   Propor;
        int     TaskEC;
        int     TaskPH;
        int     TaskT;
        eValveZD  Valve[NumValve];
        }
type rT1Timer326=record
     DataStart:InInt;
     DataEnd:InInt;
     TimeStart:InInt;
     TimeEnd:InInt;
     MaxPeriod:InInt;
     Zona:Byte; //RezB:Byte;
     StartSR_KorSR325:InInt;
     MinPeriod:InInt;
     EndSR:InInt;
     AddTimeEnd_Cycle:Byte;
     LowEC_PastC:Byte;
//     Propor:Byte;
     TProp:array [1..4] of Byte;
     TTaskEC:Byte;
     TTaskPH:Byte;
     TTaskT:Byte;
//     TaskEC:InInt;
//     TaskPH:InInt;
//     TaskT:InInt;
     Valve:array [1..1] of rTDoubleVal;
     end;
procedure TTimer326.Init;//override;
var NumV:Byte;
begin
     NumV:=(ParentCtr as TFMixer04).NumValve;
     CountX:=cNumTimer;   //(ParentCtr as TFMixer04).NumTimer;
     CountY:=14+NumV*4;
     if (ParentCtr as TFMixer04).GetTipOborot  then CountY:=CountY+1;
     SizeCol:=SizeOf(rT1Timer326)+SizeOf(rTDoubleVal)*(NumV-1);
     if (4095 div SizeCol) < CountX then CountX:=4095 div SizeCol;
     FullSize:=SizeCol*CountX+1;
     SendByte:=FullSize;
     Pref:='Задание';
     NameBlock:='Задание на сутки';
     FixRow:=1;
end;

function TTimer326.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  ADat:PByteArray;
begin
  ADat:=Adr;
  CountY:=(ParentCtr as TFMixer04).NumValve*4;
  if (ParentCtr as TFMixer04).GetTipOborot then CountY:=CountY+1;
  if ADat[0]=0 then    //программа типа 0
    begin
    CountY:=CountY+11; //+(ParentCtr as TFMixer04).NumValve*4;
    Result:=GetTimer325(InBlock,ValX,ValY,Txt);
    end
  else
    begin              //программа типа 1
    CountY:=CountY+14;  //+(ParentCtr as TFMixer04).NumValve*4;
    Result:=GetTimer326(InBlock,ValX,ValY,Txt);
    end;
end;

function TTimer326.GetTimer326(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  ADat:PByteArray;
     pTimer:^rT1Timer326;
     NumV,SelVal,Int:integer;
     NumRast,Driper:double;
     VolRast:InInt;
     st:string;
begin
  NumV:=(ParentCtr as TFMixer04).NumValve;
  ADat:=Adr;
  ADat:=Addr(ADat^[1]);
  Result:=ValX;
  ADat:=Addr(ADat^[SizeCol*(ValX-1)]);
  pTimer:=pointer(ADat);
  if (ParentCtr as TFMixer04).GetTipOborot and (ValY >2) then
      begin
      if ValY>3 then ValY:=ValY-1
      else begin
        Result:=Convers('Смесь (0-раствор из свежей воды)',
          Addr(pTimer^.Zona),SS,InBlock,ValX,ValY,Txt,'');
        Exit;
        end;
      end;
  case ValY of
   0: begin if ValX=0 then Txt:='Номер программы'
         else  Txt:='Прогр N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Время начала полива',
        Addr(pTimer^.TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   2: begin
      Result:=Convers('Время окончания полива',
        Addr(pTimer^.TimeEnd),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   3: Result:=Convers('Задание ЕС раствора',
        Addr(pTimer^.TTaskEC),SpS,InBlock,ValX,ValY,Txt,'мСм/см');
   4: begin
       Result:=Convers('Пропорции _А:_В:_C:_D',
            Addr(pTimer^.TProp[1]),mSdS,InBlock,ValX,ValY,Txt,'');
       Txt:=Copy(Txt,1,Length(Txt)-(4-(ParentCtr as TFMixer04).NumDozEC)*3);
      end;
{   4: case (ParentCtr as TFMixer04).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(pTimer^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Пропорции А:В:C',
            Addr(pTimer^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Пропорции А:В:C:D',
            Addr(pTimer^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
      end;  }
   5: Result:=Convers('Задание рН раствора',
        Addr(pTimer^.TTaskPH),SpS,InBlock,ValX,ValY,Txt,'');
   6: Result:=Convers('Задание Темпер воды',
        Addr(pTimer^.TTaskT),SS,InBlock,ValX,ValY,Txt,'°C');
   7: begin
      Result:=Convers('Обязательный повтор полива через',
        Addr(pTimer^.MaxPeriod),SSSS,InBlock,ValX,ValY,Txt,'мин');
      end;
   8: begin
      Result:=Convers('Обязательная пауза между поливами',
        Addr(pTimer^.MinPeriod),SSSS,InBlock,ValX,ValY,Txt,'мин');
      end;
   9: begin
      Result:=Convers('Накопленное солнце при котором начинать коррекцию',
        Addr(pTimer^.StartSR_KorSR325),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      end;
   10: begin
      Result:=Convers('Накопленное солнце при котором коррекция максимальна',
        Addr(pTimer^.EndSR),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
      end;
   11: begin
      Result:=Convers('Уменьшить задание ЕС при максимальном солнце',
        Addr(pTimer^.LowEC_PastC),pSS,InBlock,ValX,ValY,Txt,'мСм');
      end;
   12: begin
       Result:=Convers('Отложить окончание полива при максимальном солнце',
        Addr(pTimer^.AddTimeEnd_Cycle),SS,InBlock,ValX,ValY,Txt,'мин');
       end;
   13: begin
       Result:=Convers('Дата начала действия программы',
        Addr(pTimer^.DataStart),SSsSS,InBlock,ValX,ValY,Txt,'');
       end;
   14: begin
       Result:=Convers('Дата окончания действия программы',
        Addr(pTimer^.DataEnd),SSsSS,InBlock,ValX,ValY,Txt,'');
       end;
  else begin
        SelVal:=(ValY-15) mod 4;
        ValY:=(ValY-15) div 4+1;
        if ValY> NumV then begin Result:=cEndCol;Exit;end;
        case SelVal of
        0:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' вместе с кл ',
           Addr(pTimer^.Valve[ValY].MirrorVal),SS,InBlock,ValX,ValY,Txt,'');
        1:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' время полива',
           Addr(pTimer^.Valve[ValY].Time),SS,InBlock,ValX,ValY,Txt,'мин');
        2:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' объем раствора',
           Addr(pTimer^.Valve[ValY].Vol),SSSpS,InBlock,ValX,ValY,Txt,'м3');
        3: begin
           with ParentCtr as TFMixer04 do
              begin
              NumRast:=Block[BlockHoum].LoadXY(cOutBlock,ValY,1,st);
              Driper:=Block[BlockHoum].LoadXY(cOutBlock,ValY,2,st);
              Int:=pTimer^.Valve[ValY].MirrorVal;
              if Int>0 then NumRast:=NumRast+Block[BlockHoum].LoadXY(cOutBlock,Int,1,st);
              if ScaleRasxod=SSpSS then NumRast:=NumRast*10;
              end;
           Int:=pTimer^.Valve[ValY].Vol[1]+256*pTimer^.Valve[ValY].Vol[0];   //Объем в м3
           if NumRast>0 then Int:=Round((100000/NumRast)*Int) else Int:=0;
           VolRast[1]:=Int mod 256;                                          //Расход на растение
           VolRast[0]:=Int div 256;
           Result:=Convers('Клапан N'+IntToStr(ValY)+' на растение',
                  Addr(VolRast),SSSS,InBlock,ValX,ValY,Txt,'мл');
           if(ValX>0) and (Driper>0.2) then
              if (1.19*Int*0.06/(Driper)>pTimer^.Valve[ValY].Time) then
                  begin
                  Txt:='!Мало время'+Txt;
                  ActionMes:='Прог'+IntToStr(ValX)+' Клап'+IntToStr(ValY)+' Мало время';
//                  MesColor:=clRed;
                  end;
           if(ValX>0) and (InBlock=cInBlock) and (NumRast>0) then
              begin
              Int:=VolRast[1]+256*VolRast[0];     //Объем в мл на растение
              Int:=Round(NumRast*Int/100000);     //Объем в м3 на клапан
              pTimer^.Valve[ValY].Vol[1]:=Int mod 256;
              pTimer^.Valve[ValY].Vol[0]:=Int div 256;
              end;
           end;
        end;
    end;// end case set Valve
   end;
end;

function TTimer326.GetTimer325(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;
var  ADat:PByteArray;
     pTimer:^rT1Timer326;
     NumV,SelVal,Int:integer;
     NumRast,Driper:double;
     VolRast:InInt;
     st:string;
begin
  NumV:=(ParentCtr as TFMixer04).NumValve;
  ADat:=Adr;
  ADat:=Addr(ADat^[1]);
  Result:=ValX;
  ADat:=Addr(ADat^[SizeCol*(ValX-1)]);
  pTimer:=pointer(ADat);
  if (ParentCtr as TFMixer04).GetTipOborot and (ValY >2) then
      begin
      if ValY>3 then ValY:=ValY-1
      else begin
        Result:=Convers('Смесь (0-раствор из свежей воды)',
          Addr(pTimer^.Zona),SS,InBlock,ValX,ValY,Txt,'');
        Exit;
        end;
      end;
  case ValY of
   0: begin if ValX=0 then Txt:='Номер программы'
         else  Txt:='Прогр N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Время старта',
        Addr(pTimer^.TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   2: begin
      Result:=Convers('Задано повторов',
        Addr(pTimer^.AddTimeEnd_Cycle),SS,InBlock,ValX,ValY,Txt,'раз');
      end;
   3: begin
      Result:=Convers('Выполнено повторов',
        Addr(pTimer^.LowEC_PastC),SS,InBlock,ValX,ValY,Txt,'раз');
      end;
   4: begin
      Result:=Convers('Период повтора',
        Addr(pTimer^.MaxPeriod),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   5: begin
      Result:=Convers('Дата начала',
        Addr(pTimer^.DataStart),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   6: begin
      Result:=Convers('Дата окончания',
        Addr(pTimer^.DataEnd),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   7: Result:=Convers('Задание ЕС раствора',
        Addr(pTimer^.TTaskEC),SpS,InBlock,ValX,ValY,Txt,'мСм/см');
   8: begin
//       Int:=(ParentCtr as TFMixer04).NumDozEC;
//       if ValX>0 then ValX:=Int;
       Result:=Convers('Пропорции _А:_В:_C:_D',
            Addr(pTimer^.TProp[1]),mSdS,InBlock,ValX,ValY,Txt,'');
       Txt:=Copy(Txt,1,Length(Txt)-(4-(ParentCtr as TFMixer04).NumDozEC)*3);
      end;
{   8: case (ParentCtr as TFMixer04).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(pTimer^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Пропорции А:В:C',
            Addr(pTimer^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Пропорции А:В:C:D',
            Addr(pTimer^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
      end; }
   9:  Result:=Convers('Задание рН раствора',
        Addr(pTimer^.TTaskPH),SpS,InBlock,ValX,ValY,Txt,'');
   10: Result:=Convers('Задание Темпер воды',
        Addr(pTimer^.TTaskT),SS,InBlock,ValX,ValY,Txt,'°C');
   11: begin
        if (ParentCtr.SubTip and YesT325)>0  then
          begin
          if (pTimer^.StartSR_KorSR325[0]*256+pTimer^.StartSR_KorSR325[1])>3 then st:='Дж/см2'
            else st:='';
          Result:=Convers('Коррекция по солнцу',
            Addr(pTimer^.StartSR_KorSR325),SSSS,InBlock,ValX,ValY,Txt,st);
          end
          else
             Result:=Convers('Включать,если света',
                Addr(pTimer^.StartSR_KorSR325),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
       end;
  else begin
        SelVal:=(ValY-12) mod 4;
        ValY:=(ValY-12) div 4+1;
        if ValY> NumV then begin Result:=cEndCol;Exit;end;
        case SelVal of
        0:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' вместе с кл ',
           Addr(pTimer^.Valve[ValY].MirrorVal),SS,InBlock,ValX,ValY,Txt,'');
        1:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' время полива',
           Addr(pTimer^.Valve[ValY].Time),SS,InBlock,ValX,ValY,Txt,'мин');
        2:
          Result:=Convers('Клапан N'+IntToStr(ValY)+' объем раствора',
           Addr(pTimer^.Valve[ValY].Vol),(ParentCtr as TFMixer04).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
        3: begin
           with ParentCtr as TFMixer04 do
              begin
              NumRast:=Block[BlockHoum].LoadXY(cOutBlock,ValY,1,st);
              Driper:=Block[BlockHoum].LoadXY(cOutBlock,ValY,2,st);
              Int:=pTimer^.Valve[ValY].MirrorVal;
              if Int>0 then NumRast:=NumRast+Block[BlockHoum].LoadXY(cOutBlock,Int,1,st);
              if ScaleRasxod=SSpSS then NumRast:=NumRast*10;
              end;
           Int:=pTimer^.Valve[ValY].Vol[1]+256*pTimer^.Valve[ValY].Vol[0];   //Объем в м3
           if NumRast>0 then Int:=Round((100000/NumRast)*Int) else Int:=0;
           VolRast[1]:=Int mod 256;                                          //Расход на растение
           VolRast[0]:=Int div 256;
           Result:=Convers('Клапан N'+IntToStr(ValY)+' на растение',
                  Addr(VolRast),SSSS,InBlock,ValX,ValY,Txt,'мл');
           if(ValX>0) and (Driper>0.2) then
              if (1.19*Int*0.06/(Driper)>pTimer^.Valve[ValY].Time) then
                  begin
                  Txt:='!Мало время'+Txt;
                  ActionMes:='Прог'+IntToStr(ValX)+' Клап'+IntToStr(ValY)+' Мало время';
//                  MesColor:=clRed;
                  end;
           if(ValX>0) and (InBlock=cInBlock) and (NumRast>0) then
              begin
              Int:=VolRast[1]+256*VolRast[0];     //Объем в мл на растение
              Int:=Round(NumRast*Int/100000);     //Объем в м3 на клапан
              pTimer^.Valve[ValY].Vol[1]:=Int mod 256;
              pTimer^.Valve[ValY].Vol[0]:=Int div 256;
              end;
           end;
        end;
    end;// end case set Valve
   end;
end;
//--------- END ЗАДАНИЕ НА СУТКИ D326 ------------------
//--------- Заполнение прогноза полива для D326
function TTimer326.SetAny(Col,Row,x,y:integer;var Any:TAny):Integer;
var  ADat:PByteArray;
begin
  ADat:=Adr;
  if ADat[0]=0 then
    begin
//    CountY:=11+(ParentCtr as TFMixer04).NumValve*4;
    Result:=GetChart325(x,y,Any);
    end
  else
    begin
//    CountY:=14+(ParentCtr as TFMixer04).NumValve*4;
    Result:=GetChart326(x,y,Any);
    end;
end;
//--------- Заполнение прогноза полива для D326
function TTimer326.GetChart326(x,y:WORD;var Any:TAny):Integer;
type eSostTimer=record
        LastStart:Integer;
        LastSR:Integer;
        LongTimeEnd:Integer;
        PastCycle:Byte;
        end;
var ChartBl:TChart;
    NumV,CtrTime,LngX:integer;
    ByteY:Byte;
    SostTimer:array [0..50] of eSostTimer;

function NewColor(const p1,p2:integer):TColor;
begin
Result:=RGB(p1*32+(p1 div 8),p2*64+(p2 div 4),200)
end;

function TestTimer:Integer;
var
  ByteX,ByteY:Byte;
  StartSR,EndSR,tSR,MinPer,CalcPer,tPer,AbsMaxPer
   ,tCor,TimeStart,TimeEnd:Integer;
//  dbDan:double;
  pTimer,pTimerFind:^rT1Timer326;
  ADat:PByteArray;
begin
Result:=0;
ByteY:=255;
AbsMaxPer:=0;
for ByteX:=0 to CountX-1 do
    begin
    ADat:=Adr;
    ADat:=Addr(ADat^[1]);
    ADat:=Addr(ADat^[SizeCol*ByteX]);
    pTimer:=pointer(ADat);
    TimeStart:=(pTimer^.TimeStart[0]*256+pTimer^.TimeStart[1]);
		if(TimeStart=0) then continue;
    TimeEnd:=(pTimer^.TimeEnd[0]*256+pTimer^.TimeEnd[1]);
    if((TimeStart > CtrTime) or ((TimeEnd+SostTimer[ByteX].LongTimeEnd) <= CtrTime)) then continue;
//        if((CtrData  < GD.Timer[ByteX].DataStart)||
//           (CtrData  > GD.Timer[ByteX].DataEnd)) continue;
		CalcPer:=pTimer^.MaxPeriod[0]*256+pTimer^.MaxPeriod[1];
		if CalcPer=0 then continue;
    tPer:=CtrTime-SostTimer[ByteX].LastStart;
		MinPer:=pTimer^.MinPeriod[0]*256+pTimer^.MinPeriod[1];
		if(tPer<MinPer) then continue;                           //пропуск если меньше минимума
		tSR:=0;//GD.Arx[0].SolRad-GD.HotPol.SostTimer[ByteX].LastSR;
		StartSR:=pTimer^.StartSR_KorSR325[0]*256+pTimer^.StartSR_KorSR325[1];
		EndSR:=pTimer^.EndSR[0]*256+pTimer^.EndSR[1];
		if EndSR>StartSR then LngX:=(tSR-StartSR)*50 div (EndSR-StartSR);
		if (tSR>=EndSR) then LngX:=50;
		if ((EndSR<=StartSR)or(tSR<StartSR)) then LngX:=0;
		CalcPer:=CalcPer-LngX*(CalcPer-MinPer) div 50;
		if(tPer<CalcPer) then continue;                          //пропуск если период меньше рассчетного
		if(tPer {CalcPer} >AbsMaxPer) then                       //поиск того, кто дольше не поливал
       begin pTimerFind:=pTimer; AbsMaxPer:=tPer; ByteY:=ByteX;tCor:=LngX;end;
    end;
// Если программа не найдена то выйти
if(ByteY=255) then Exit;
// Иначе Установить найденную программу
for ByteX:=1 to NumV do Result:=Result+pTimerFind^.Valve[ByteX].Time;
if Result=0 then Exit;
SostTimer[ByteY].LastStart:=CtrTime;
SostTimer[ByteY].LastSR:=0;//GD.Arx[0].SolRad;
SostTimer[ByteY].PastCycle:=SostTimer[ByteY].PastCycle+1;
SostTimer[ByteY].LongTimeEnd:=SostTimer[ByteY].LongTimeEnd+tCor*pTimerFind^.AddTimeEnd_Cycle div 50;
if(SostTimer[ByteY].LongTimeEnd>120) then SostTimer[ByteY].LongTimeEnd:=120;
if(pTimerFind^.AddTimeEnd_Cycle=0) then SostTimer[ByteY].LongTimeEnd:=0;
//dbDan:=(pTimerFind^.TaskEC[0]*256+pTimerFind^.TaskEC[1])-pTimerFind^.LowEC_PastC*tCor div 50;
with ChartBl do
  begin
  with (Series[0]as TGanttSeries) do
       NextTask[AddGanttColor(cMin*CtrTime,cMin*(CtrTime+Result),(ByteY+1),
       'Прог '+IntToStr(ByteY+1),NewColor(SostTimer[ByteY].PastCycle,ByteY+1))]:=-1;
{  with (Series[1]as TFastLineSeries) do
           begin
           AddXY(cMin*CtrTime,dbDan,'',clTeeColor);
           AddXY(cMin*(CtrTime+Result),dbDan,'',clTeeColor);
           end;   }
  end;
CtrTime:=CtrTime+Result-1;
end;

begin
Result:=1;
// ActionMes:='';
NumV:=(ParentCtr as TFMixer04).NumValve;
ChartBl:=Any.Ptr;
//uTimer:=Adr;
for ByteY:=0 to CountX-1 do
  begin
  SostTimer[ByteY].LastStart:=0;
  SostTimer[ByteY].LastSR:=0;
  SostTimer[ByteY].PastCycle:=0;
  SostTimer[ByteY].LongTimeEnd:=0;
  end;
with ChartBl do
  begin
  (Series[0]as TGanttSeries).Clear;
  Series[1].Clear;
  CtrTime:=0;
  while CtrTime < 24*60 do
    begin
    TestTimer;
    CtrTime:=CtrTime+1;
    end;
  end;
end;

//--------- Заполнение прогноза полива для D-325
function TTimer326.GetChart325(x,y:WORD;var Any:TAny):Integer;
var ChartBl:TChart;
    NumV,iX,iY,yG:integer;
    dbStart,dbEnd,dbDlit:Double;
//    Txt:string;
    ADat:PByteArray;
    pTimer:^rT1Timer326;

begin
Result:=1;
// ActionMes:='';
NumV:=(ParentCtr as TFMixer04).NumValve;
ChartBl:=Any.Ptr;
with ChartBl do
  begin
  (Series[0]as TGanttSeries).Clear;
  Series[1].Clear;
  yG:=0;
  for iX:=1 to CountX do
   begin
   ADat:=Adr;
   ADat:=Addr(ADat^[1]);
   ADat:=Addr(ADat^[SizeCol*(iX-1)]);
   pTimer:=pointer(ADat);
   dbStart:=((pTimer^.TimeStart[0]*256+pTimer^.TimeStart[1])
            +pTimer^.LowEC_PastC
            *(pTimer^.MaxPeriod[0]*256+pTimer^.MaxPeriod[1]))*cMin;
   if dbStart>0 then
     begin
     dbDlit:=0;
     for iY:=1 to NumV do
         begin
         dbDlit:=dbDlit+pTimer^.Valve[iY].Time;
         end;
     for iY:=pTimer^.LowEC_PastC+1 to pTimer^.AddTimeEnd_Cycle do
          begin
          dbEnd:=dbStart+dbDlit*cMin;
          with (Series[0]as TGanttSeries) do
            NextTask[AddGanttColor(dbStart,dbEnd,yG,'Прог '+IntToStr(iX),RGB(iY*32+(iY div 8),iX*64+(iX div 4),200))]:=0;
          dbStart:=dbStart+(pTimer^.MaxPeriod[0]*256+pTimer^.MaxPeriod[1])*cMin;
          if(dbStart<=dbEnd) then dbStart:=dbEnd;
          end;
     yG:=yG+10;
     end;
  end;

// dbStart:=0;
 dbEnd:=0;
 with (Series[0]as TGanttSeries) do
  begin
  repeat
    begin  //повторять пока не проверятся все
    yG:=-1;
    dbStart:=Now+10;
    for iX:=0 to count-1 do
          begin //найти самый ранний непроверенный старт
          if NextTask[iX]<0 then continue;
          if StartValues[iX]<dbStart then begin dbStart:=StartValues[iX];yG:=iX;end;
          end;
    if yG>=0 then
          begin  //если нашли непроверенный
          dbDlit:=dbStart-dbEnd; //время от конца провер интервала
          if(dbDlit<0) then
              begin //если персекает то сдвинуть
              StartValues[yG]:=StartValues[yG]-dbDlit;
              EndValues[yG]:=EndValues[yG]-dbDlit;
              end;
          dbEnd:=EndValues[yG]; //уточнить конец проверенных таймеров
          NextTask[yG]:=-1;  // пометить что проверен
          end;
    end until yG<0;
  end;
// Visible:=True;
 end;
end;

//----------КАНАЛЫ ДОЗАЦИИ D-04 ------------------
type rT1ChanelD4=record
     Fk1:InInt;
     Fk2:InInt;
     Kk1:InInt;
     Kk2:InInt;
     GL:InInt;
     TimeAlarm:Byte;
     ResetAlarm:Byte;
     TimeCtrl:Byte;
     RezConstCtrl:Byte;
     RezMaxReg:Byte;
     end;
type rTChanelD4=array[1..8] of rT1ChanelD4;

procedure TChanelD4.Init;//override;
begin
     CountX:=(ParentCtr as TFMixer04).NumChan;//8;
     CountY:=7;
     SizeCol:=SizeOf(rT1ChanelD4);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
//     EEPSize:=FullSize;
     Pref:='Калибровки';
     NameBlock:='Калибровка датчиков';
end;

function TChanelD4.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:^rTChanelD4;
    ScCal:string[4];
begin
    ADat:=Adr;
     Result:=ValX;
     if ValX>8 then ScCal:='мВ' else ScCal:='Гц';
     case ValY of
     0: if ValX=0 then Txt:='Параметры'
                  else Txt:=NameChan324[ValX];
     5: if ValX>16 then begin Result:=0; Txt:='';end else
        Result:=Convers('Допустимое отклонение',
          Addr(ADat^[ValX].GL),FrmChan324[ValX],InBlock,ValX,ValY,Txt,EdChan324[ValX]);
     6: if ValX>=nmSR then begin Result:=0; Txt:='';end else
          Result:=Convers('Время до аварии допуска',
          Addr(ADat^[ValX].TimeAlarm),SS,InBlock,ValX,ValY,Txt,'сек');
     7: if ValX>=nmSR then begin Result:=0; Txt:='';end else
        Result:=Convers('Время до повтора после аварии',
          Addr(ADat^[ValX].ResetAlarm),SS,InBlock,ValX,ValY,Txt,'мин');
{     8: if ValX>NumChanU then begin Result:=0; Txt:='';end else
        Result:=Convers('Константа управления',
          Addr(ADat^[ValX].ConstCtrl),SS,InBlock,ValX,ValY,Txt,'');
     9: if ValX>NumChanU then begin Result:=0; Txt:='';end else
        Result:=Convers('Максимальное время крана',
          Addr(ADat^[ValX].MaxReg),SS,InBlock,ValX,ValY,Txt,'/8 сек');
}     2: if ValX>16 then begin Result:=0; Txt:='';end else
           Result:=Convers('Частота/напряжение эталона 1',
             Addr(ADat^[ValX].Fk1),SSSS,InBlock,ValX,ValY,Txt,ScCal);
     1: Result:=Convers('Эталон 1',
          Addr(ADat^[ValX].Kk1),FrmChan324[ValX],InBlock,ValX,ValY,Txt,EdChan324[ValX]);
     4: if ValX>16 then begin Result:=0; Txt:='';end else
        Result:=Convers('Частота/напряжение эталона 2',
          Addr(ADat^[ValX].Fk2),SSSS,InBlock,ValX,ValY,Txt,ScCal);
     3: if ValX>16 then begin Result:=0; Txt:='';end else
          Result:=Convers('Эталон 2',
          Addr(ADat^[ValX].Kk2),FrmChan324[ValX],InBlock,ValX,ValY,Txt,EdChan324[ValX]);
//     10: Result:=Convers('Поправка',
//          Addr(ADat^[ValX].OS),SSpSS,InBlock,ValX,ValY,Txt,UnitDoz4(ValX));
     else Result:=cEndCol;
     end;
end;
//----------END КАНАЛЫ ДОЗАЦИИ D-04 ------------------
//--------- АРХИВ D-04 ------------------

type rTValveArxD4=record
     Time:InInt;
     Vol:InInt;
     Midl:array[1..4] of InInt;
     end;

type rT1ArxD4=record
     Data:InInt;
     PolTime:InInt;
     PolVol:InInt;
     SolRad:InInt;
     ResetTime:InInt;
     ResetVol:InInt;
     TimeMat:array [1..cNumMat] of InInt;
     RasMat:array [1..cNumMat] of InInt;
     Valve:array[1..1] of rTValveArxD4;
     end;


function TFMixer04.CustLoadXY(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String; pData:Pointer{;NumV:word;FrmRas:TSFormat}):Double;
var    ADat:PByteArray;
       pArx:^rT1ArxD4;
       NKl,Cas:Word;
       FrmRas:TSFormat;
begin
//NumValve,
//    (ParentCtr as TFMixer04).ScaleRasxod)  Result:=ValX;
  ADat:=pData;//Addr(ADat^[SizeCol*(ValX-1)]);
  pArx:=pointer(ADat);
  if (ValY>0) and (ValX>0) then
  //if (ValX>0) and (InBlock>0) then
  begin
        if (pArx^.Data[0]<=0) or (pArx^.Data[0]>12)or
         (pArx^.Data[1]<=0) or (pArx^.Data[1]>31)then begin
            txt:='~';
            Result:=0; Exit;
            end;
        end;
    with BlArxMC do
    case ValY of
    0: Result:=Convers('Дата',
          Addr(pArx^.Data),SSsSS,InBlock,ValX,ValY,Txt,'');
    1: Result:=Convers('Полив за день',
          Addr(pArx^.PolTime),SShSSm_12,InBlock,ValX,ValY,Txt,'час:мин');
    2: Result:=Convers('Расход за день',
          Addr(pArx^.PolVol),ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
    3: Result:=Convers('Света за день',
          Addr(pArx^.SolRad),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
    else begin // старт остаток
      Cas:=ValY-4;
      NKl:=(Cas div 6)+1; //Номер клапана
      if NKl<=NumValve then
       begin  // старт клапаны
       Cas:=Cas mod 6;     //Параметр в клапане
       case Cas of
        0: Result:=Convers('Клапан N'+IntToStr(NKl)+' полив',
          Addr(pArx^.Valve[NKl].Time),SShSSm_12,InBlock,ValX,ValY,Txt,'час:мин');
        1: begin
             if ScaleRasxod=SSpSS then FrmRas:=SSpSSS;
             if ScaleRasxod=SSSpS then FrmRas:=SSpSS;
             Result:=Convers('Клапан N'+IntToStr(NKl)+' расход',
              Addr(pArx^.Valve[NKl].Vol),FrmRas,InBlock,ValX,ValY,Txt,'м3');
           end;
        2..5: Result:=Convers('Клапан N'+IntToStr(NKl)+' среднее '+NameChan324[Cas-1],
          Addr(pArx^.Valve[NKl].Midl[Cas-1]),SSpSS,InBlock,ValX,ValY,Txt,EdChan324[Cas-1]);
        end;
       end    // кон клапаны
       else
       begin  // старт маточные
       Cas:=Cas-NumValve*6;

       case Cas of
           0: Result:=Convers('Дозатор А работал',
                Addr(pArx^.TimeMat[1]),SSSS,InBlock,ValX,ValY,Txt,'сек');
           1: Result:=Convers('Дозатор В работал',
                Addr(pArx^.TimeMat[2]),SSSS,InBlock,ValX,ValY,Txt,'сек');
           2: Result:=Convers('Дозатор рН работал',
                Addr(pArx^.TimeMat[3]),SSSS,InBlock,ValX,ValY,Txt,'сек');
           end;
       end; // кон маточные
     end;    // кон остаток
    end;    // кон глав case
    if (ValX>0) and (ValY>0) and(Result=0) then Txt:='~~';
end;

function TIrrArxPC.CalcDayArxPC(var ArxDate:TDateTime):Boolean;
var
// pPCArx:^rT1ArxD4;
 pB:pByteArray;
 vDate,TimeIrr,vTimeIrr:TDateTime;
 i,tDay:integer;
// vVal:Double;
 st:string;
// MinDay:word;
begin
//pPCArx:=Adr;
Result:=False;
//with ParentCtr do
  begin
  if not (ParentCtr as TFMixer04).BlArxMC.LoadFileCycle(ArxDate) then
    begin
    ArxDate:=Now;
    Exit;
    end;
//  ClearData;
//  BlDate:=0;
  TimeIrr:=0;
  repeat
    for i:=1 to (ParentCtr as TFMixer04).BlArxMC.CountX do
      begin
      vDate:=(ParentCtr as TFMixer04).BlArxMC.LoadXY(cOutBlock,i,0,st);
      if vDate=0 then continue;
      tDay:=DayOfTheYear(vDate);
      if tDay=DayOfTheYear(ArxDate) then
          begin
          vTimeIrr:=(ParentCtr as TFMixer04).BlArxMC.LoadXY(cOutBlock,i,1,st);
          if vTimeIrr > TimeIrr then
            begin
            pB:=(ParentCtr as TFMixer04).BlArxMC.Adr;
            pB:=Addr(pB^[SizeCol*(i-1)]);
            CopyByteArray(pB,Adr,SizeCol);
            BlDate:=ArxDate+1-cMin;
            Ready:=True;
            Result:=True;
            TimeIrr:=vTimeIrr;
            end;
          end;
      end;
  until Not (ParentCtr as TFMixer04).BlArxMC.LoadFileCycle(ArxDate);
  end;
end;

function TIrrArxPC.CalcAllArxPC(StartDate:TDateTime):Boolean;
var  Save_Cursor:TCursor;
begin
 if(Frac(Now) < cMin*60) or (ParentCtr.DataPath <> '') then Exit;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 try
 if LoadFileByDate(Now,dEnd) then StartDate:=BlDate+1
      else  StartDate:=EncodeDate(YearOf(Now),1,1);  // Now-ClimLongArx; //
 while DayOfTheYear(StartDate) < DayOfTheYear(Now) do  // DayOf()
      begin
      if CalcDayArxPC(StartDate) then SaveToFile;
      StartDate:=StartDate+1;
      end;
  finally
    Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
  DateTest:=Now;
end;

procedure TArxivD4.Init;//override;
var NumV:Byte;
begin
     NumV:=(ParentCtr as TFMixer04).NumValve;
     CountX:=(ParentCtr as TFMixer04).SizeArx;
     CountY:=6+NumV*6;
     SizeCol:=SizeOf(rT1ArxD4)+SizeOf(rTValveArxD4)*(NumV-1);
     if (4095 div SizeCol) < CountX then CountX:=4095 div SizeCol;
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
//     FixRow:=2;
     Pref:='АрхивПолив';
     NameBlock:='Архив Полива в РУ';
     Sort:=srNoGridGraf;
end;

function TArxivD4.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var    ADat:PByteArray;
begin
  ADat:=Adr;
//  ADat:=Addr(ADat^[SizeCol*(ValX-1)]);
  Result:=(ParentCtr as TFMixer04).CustLoadXY(InBlock,ValX,ValY,Txt,
    Addr(ADat^[SizeCol*(ValX-1)]));
  AccessW:=RW_NOEDIT;
end;

procedure TIrrArxPC.Init;
var NumV:Byte;
begin
//     BlArxMC:=vBlArxMC;
     CountX:=1;
     CountY:=(ParentCtr as TFMixer04).BlArxMC.CountY;
     SizeCol:=(ParentCtr as TFMixer04).BlArxMC.SizeCol;
     FullSize:=SizeCol;
     SendByte:=0;
     Pref:='АрхивПК';
     NameBlock:='Архив Полива ПК';
end;

function TIrrArxPC.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
begin
  if (ValY=0) and (ValX=0) and (Int(DateTest) <> Int(Now)) then CalcAllArxPC(Now);
  Result:=(ParentCtr as TFMixer04).CustLoadXY(InBlock,ValX,ValY,Txt,Adr);
  AccessW:=RW_NOEDIT;
end;


type r1Houm=record
     NumRast:InInt;
     RasxKap:InInt;
     NameRast:string[20];
     end;
type rHoum=array [1..1] of r1Houm;
procedure THoum.Init;//override;
var NumV:Byte;
begin
     NumV:=(ParentCtr as TFMixer04).NumValve;
     CountX:=NumV;
     CountY:=3;
//     FNumBlock:=ParentCtr.BlHoum;
     SizeCol:=SizeOf(r1Houm);
     FullSize:=SizeCol*NumV;
     SendByte:=0;
     Pref:='О клапанах';
     NameBlock:='Характеристики клапанов';
end;

function THoum.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var    ADat:^rHoum;
begin
     ADat:=Adr;
     Result:=ValX;
     case ValY of
     0: if ValX=0 then Txt:='Номер клапана'
                  else Txt:='Клапан '+IntToStr(ValX);
     1: Result:=Convers('Растений на клапан',
          Addr(ADat^[ValX].NumRast),SSSS,InBlock,ValX,ValY,Txt,'шт');
     2: Result:=Convers('Капельница',
          Addr(ADat^[ValX].RasxKap),SSpSS,InBlock,ValX,ValY,Txt,'л/час');
     3: if ValX=0 then Txt:='Культура' else
          if InBlock=cInBlock then ADat^[ValX].NameRast:=Txt
            else Txt:=ADat^[ValX].NameRast;
     end;
end;

procedure TFMixer04.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
//     SubTip:= SubTip or cRasxod100;     // Для казахстана с пропущенным tR100
     NameIdent:=cNameIdentD4;
     ScaleRasxod:=SSSpS;
     if (SubTip and cRasxod100)=0 then
       begin
          ScaleRasxod:=SSpSS;
          NameParUpr25[iMinRasx].Frm:=ScaleRasxod;
          NameParUpr25[iMaxRasx].Frm:=ScaleRasxod;
          NameParUpr25[iFilRasx].Frm:=ScaleRasxod;
       end;
     NumDozEC:=CtrTip mod 10 -3;
//     CtrName:='Полив '+IntToStr(CtrTip)+'-'+IntToStr(IdentCtr[idSubTip])+'-'+IntToStr(IdentCtr[idModific]);
     Period:=30;
     TimeView:=5;
     BlArxMC:=nil;
     if (SubTip and T325)>0 then
        begin
//        NameIdent:=cNameIdentD4;
        THotPol325.Create(Self);
        TControl325.Create(Self);
        end
     else
        begin
        TSostPolD4.Create(Self);
        TControlD4.Create(Self);
        end;
     TChanelD4.Create(Self);
     if (SubTip and cYesMirror)>0 then
          begin
          if ((SubTip and t326)>0) and ((SubTip and T325)>0) then
            TTimer326.Create(Self)
          else TTimerD7.Create(Self);
          end
     else TTimerD4.Create(Self);
     if ((SubTip and YesSiod22)>0) then begin
       TTimerSiod22.Create(Self);
       BlArxMC:=TArxivD4.Create(Self);
       TArxivSiod.Create(Self);
       end else
      if ((SubTip and YesSiod)>0) then
         begin
         TTimerSiod.Create(Self);
         BlArxMC:=TArxivD4.Create(Self);
         TArxivSiod.Create(Self);
         end
         else TArxivD4.Create(Self);
     if BlArxMC<>nil then
         begin
         TIrrArxPC.Create(Self);//.CalcAllArxPC(Now);
         end;
     BlockHoum:=CountBlock;
     THoum.Create(Self);
     LoadImageSkin(ImagePoliv,'Mixer325.jpg');
end;

end.
