unit Salat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls,DateUtils,
  StdCtrls,Chart,GanttCh,ComCtrls,
  FConstType, PicCtr,FController, Gauges,MSiod,ClimCalc, FBox, FPicLabel; //DefIrrig,
const
    t325=128;  { 7 бит=1(128), то контроллер 325(кор по солнцу ПАРАМ и ЗАДАНИЕ) }
    t332=128;  { 7 бит=1(128), то контроллер 325(кор по солнцу ПАРАМ и ЗАДАНИЕ) }
    t326=32;   { бит=1(32), то контроллер 326( новое задание полива) }
    t326Pr=8;  //#define t326Pr  8  /* 3 если=1(8), то контр с пропорциями 1-100 */
//    NumChan=8;
    NumChanU=2;
//    NumChanArx=3;
    SumContrChan=5;
    NumChanPul=2;
    cNumMat=3;
    cNumMat324=2;
    nmSR=6;
    Temp1=9;
    Hum1=13;
//  Состояние канала дозатора- GD.SostPol.Chan[].RCS
        ActChan=	  0;
        YesZD=		  1;
        LowLevErr=	4;
        HiLevErr=	  5;
        LevErr=     $30;
const    NameChanSalat:array [1..17] of string[6]=(
     'EC1','pH1','Тем','EC2','pH2','Сол','УрА','УрВ',
     'Темп1','Темп2','Темп3','Темп4','Влаж1','Влаж2','Влаж3','Влаж4',
     'Порт 1');
const    FrmChanSalat:array [1..17] of TSFormat=
    (SSpSS,SSpSS,SSpS0,SSpSS,SSpSS,SSSS,SSSpS,SSSpS,
     SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSpS0,SSSS);
const    EdChanSalat:array [1..17] of string[7]=(
     'мСм/см','','°C','мСм/см','','Вт/м2','см','см',
     '°C','°C','°C','°C','%','%','%','%','коэф');
type
   TFSalat = class(TFPicCtr)
    Label8: TLabel;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Gauge1: TGauge;
    C: TLabel;
    Label9: TLabel;
    Panel6: TPanel;
    A: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    BotLev: TShape;
    WorkLev: TShape;
    TopLev: TShape;
    PaPro: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    LMes: TLabel;
    Image32: TImage;
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
    Label23: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FBox12: TFBox;
    FBox14: TFBox;
    FBox13: TFBox;
    FBox18: TFBox;
    FBox17: TFBox;
    FBox16: TFBox;
    FBox15: TFBox;
    FBox6: TFBox;
    FBox5: TFBox;
    FBox2: TFBox;
    FBox1: TFBox;
    FBox7: TFBox;
    FBox3: TFBox;
    FBox4: TFBox;
    FBox8: TFBox;
    FBox19: TFBox;
    FBox25: TFBox;
    FBox26: TFBox;
    FBox27: TFBox;
    FBox20: TFBox;
    FBox21: TFBox;
    FBox22: TFBox;
    FBox23: TFBox;
    FBox24: TFBox;
    FBox28: TFBox;
    Gauge5: TGauge;
    Bevel2: TBevel;
    FBox29: TFBox;
    Label5: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label7: TLabel;
    Gauge6: TGauge;
    Bevel1: TBevel;
    FBox10: TFBox;
    Shape1: TShape;
    FBox11: TFBox;
    Bevel5: TBevel;
    FPicLabel1: TFPicLabel;
    FPicLabel3: TFPicLabel;
    FPicLabel2: TFPicLabel;
    FPicLabel4: TFPicLabel;
    FPicLabel5: TFPicLabel;
    FPicLabel9: TFPicLabel;
    FPicLabel6: TFPicLabel;
    FPicLabel7: TFPicLabel;
    FPicLabel8: TFPicLabel;
    FPicLabel10: TFPicLabel;
    FPicLabel11: TFPicLabel;
    FPicLabel13: TFPicLabel;
    procedure SBECaClick(Sender: TObject);
  private
    { Private declarations }
     ScaleRasxod:TSFormat;
     NumDozEC:Byte;
     property NumChan:Byte read IdentCtr[ident2] write IdentCtr[ident2];
     property SizeArx:Byte read IdentCtr[ident3] write IdentCtr[ident3];
  public
    { Public declarations }
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
//    function CtrFromFile(const NameFile:string):Boolean;override;
    procedure SetPicCtr; override;
  end;
type THotSalat=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
        var Txt:String):Double;override;
     procedure SetTree(var Tree:TTreeView); override;
end;
type THotSalat326=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
        var Txt:String):Double;override;
//     procedure RandBlock; override;
     procedure SetTree(var Tree:TTreeView); override;
     procedure PostPortRead; override;
     function SendTime:Boolean;
end;

type TControlSalat=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;
type TControlSalat325=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TTimerSalat=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     function SetAny(x,y:WORD;var Any:TAny):double;override;
end;
type TTimerSalat326=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     function SetAny(x,y:WORD;var Any:TAny):double;override;
end;

type TTimerSalat332=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     function SetAny(x,y:WORD;var Any:TAny):double;override;
end;

type TChanelSalat=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TArxivSalat=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

implementation

uses SetGrid,GGraf, {SetSer,} Port;

{$R *.DFM}
const cNameIdentSalat=173;
{var cNameIdentSalat:TNameIdent=(
     'Количество клапанов',
     'Количество датчиков',
     'Размер архива',
     'Модификация',
     'Тип контроллера');
}
procedure TFSalat.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
     if (SubTip and cRasxod100)>0 then
       ScaleRasxod:=SSSpS else ScaleRasxod:=SSpSS;
     NumDozEC:=CtrTip mod 10 -3;
     if (NumDozEC < 2) or (NumDozEC > 4) then NumDozEC:=2;
     CtrName:='Салат '+IntToStr(CtrTip)+'-'+IntToStr(IdentCtr[idSubTip]);
     Period:=30;
     TimeView:=10;
     if(vIdentCtr[idTip]=76) then
        begin
       NameIdent:=cNameIdentSalat;
       THotSalat326.Create(Self);
       TControlSalat325.Create(Self);
       TChanelSalat.Create(Self);
       TTimerSalat332.Create(Self);
       TTimerSiod22.Create(Self);
       TTimerKamera.Create(Self);
       TArxivSalat.Create(Self);
       TArxivSiod.Create(Self);
        LoadImageSkin(Image32,'Salat325.jpg');
        Exit;
        end;
{/* адреса передачи данных */
        AdrGD[0]=&GD.HotPol;
        AdrGD[1]=&GD.Control;
        AdrGD[2]=&GD.Chanel[0];
        AdrGD[3]=&GD.Timer[0];
        AdrGD[4]=&GD.TimerSiod[0];
        AdrGD[5]=&GD.TimerKamera[0];
        AdrGD[6]=&GD.Arx[0];
        AdrGD[7]=&GD.ArxSiod[0]; }

     if ((SubTip and t326Pr)>0) or ((SubTip and t332)>0) then
       begin
       NameIdent:=cNameIdentSalat;
       THotSalat326.Create(Self);
       TControlSalat325.Create(Self);
       TChanelSalat.Create(Self);
       TTimerSalat326.Create(Self);
       TTimerSiod22.Create(Self);
       TTimerKamera.Create(Self);
       TArxivSalat.Create(Self);
       TArxivSiod.Create(Self);
       end
     else
       begin
       THotSalat.Create(Self);
       TControlSalat.Create(Self);
       TChanelSalat.Create(Self);
       TTimerSalat.Create(Self);
       TTimerKamera.Create(Self);
       TArxivSalat.Create(Self);
       TArxivSiod.Create(Self);
       end;
    LoadImageSkin(Image32,'Salat325.jpg');
end;

{function TFSalat.CtrFromFile(const NameFile:string):Boolean;
//var
//    OutFile:TextFile;
//    i:word;
//    nF:string;
begin
    result:=inherited CtrFromFile(NameFile);
//    LoadViewFromFile(GetViewNameFile);
    LCtr.Caption:=CtrName;
//     Image1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName)+'\'+'Tip3.bmp');
end;
}
procedure TFSalat.SBECaClick(Sender: TObject);
begin
end;
//-- СОСТОЯНИЕ САЛАТ ------------------
type rTChanSalat=record
     RCS:Byte;
     IZ:InInt;
     IZcor:InInt;
     ZD:InInt;
     CopyReg:Byte;
     TimeReg:Byte;
     end;
type rTHotSalat=record
     News:Byte;
     Hand:Byte;
     Cycle:Byte;
     OutReg:InInt;
     InReg:Byte;
     TipError:Byte;
     NumPoliv:Byte;
     tTime:InInt;
     RCSDoz:Byte;
     RCSRasx:Byte;
     TecRasxod:InInt;
     tVolValve:InInt;
     OutRegExt:Byte;
     Work:Byte;
     Pause:Byte;
     Propor:Byte;
     Chan:Array [1..17]of rTChanSalat;
     CycleRein:Byte;
     tTimeRein:InInt;
     end;
procedure THotSalat.Init;
begin
     CountX:=1;
     CountY:=36+17;//(ParentCtr as TCtrPoliv).NumChan+2;
     SizeCol:=SizeOf(rTHotSalat);
     FullSize:=SizeCol;
     SendByte:=2;
     Pref:='Состояние';
     NameBlock:='Состояние полива';
end;

function THotSalat.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pSost:^rTHotSalat;
    NumV,StartVal,bValve:Byte;
    NKran:Integer;
    Prop:word;
begin
 pSost:=Adr;
 StartVal:=(ParentCtr as TFPicCtr).CtrTip mod 10;
 Result:=mlInform;
 case ValY of
 0:  begin
     if ValX=0 then begin Txt:=ParentCtr.CtrName;Exit;end;
     if pSost^.Hand>0 then begin
      Txt:='Ручное управление';
      Result:=mlAlarm;
      Exit;
      end;
     case pSost^.Cycle of
      0: Txt:='ПОЛИВА НЕТ';
      3..4: Txt:='ПОЛИВ';
      2: Txt:='ПАУЗА';
      else
       begin
       case  pSost^.TipError of
         0:    Txt:='Нет воды';
         1..4: Txt:='Авария '+NameChanSalat[pSost^.TipError];
         32:   Txt:='Авария расхода';
         64:   Txt:='Нет показаний ЕС';
         else  Txt:='Авария';
         end;
       Result:=mlAlarm;
       end;
      end;
     end;
 1 :  begin
      Result:=Convers('Ручное управление',
        Addr(pSost^.Hand),SS,InBlock,ValX,ValY,Txt,'');
      end;
 2..17: begin
      ValY:=ValY-1;
      Result:=Convers('Измерено '+NameChanSalat[ValY],
        Addr(pSost^.Chan[ValY].IZ),
        FrmChanSalat[ValY],InBlock,ValX,ValY,Txt,EdChanSalat[ValY]);
      end;
 18..20:  begin
        ValY:=ValY-17;
        Result:=Convers('Задано '+NameChanSalat[ValY],
         Addr(pSost^.Chan[ValY].ZD),
         FrmChanSalat[ValY],InBlock,ValX,ValY,Txt,EdChanSalat[ValY]);
        end;
  21:   case (ParentCtr as TFSalat).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(pSost^.Propor),SdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Растворы А:В:C',
            Addr(pSost^.Propor),SdSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Растворы А:В:C:D',
            Addr(pSost^.Propor),SdSdSdS,InBlock,ValX,ValY,Txt,'');
        end;
  22:   begin
        NKran:=pSost^.Chan[1].CopyReg;
        Result:=Convers('Краны ЕС',
         Addr(NKran),SS,InBlock,ValX,ValY,Txt,'/8 сек');
        end;
 23..24:    begin
        NumV:=ValY-22;
        ValY:=ValY-23;
        if (ParentCtr as TFSalat).NumDozEC>2 then begin
           NKran:=-1;
           bValve:=pSost^.Propor;
           repeat
           NKran:=NKran+1;
           Prop:=bValve and 3;
           bValve:=bValve shr 2;
           if Prop>0 then NumV:=NumV-1;
           until ((Prop>0)and(NumV=0)) or ((NKran-ValY)>1);
        end else begin
           NKran:=ValY;
           if(pSost^.Propor=0) then Prop:=1
             else if NKran>0 then Prop:=pSost^.Propor mod 6
                             else Prop:=pSost^.Propor div 6;
           end;
        Prop:=Prop*pSost^.Chan[1].CopyReg;
        Result:=Convers('Кран '+char(ord('A')+NKran),
            Addr(Prop),SS,InBlock,ValX,ValY,Txt,'/8 сек');
        end;
 25:    begin
        NumV:=pSost^.Chan[2].CopyReg;
        Result:=Convers('Кран pH',
         Addr(NumV),SS,InBlock,ValX,ValY,Txt,'/8 сек');
        end;
 26:  Result:=Convers('Время полива',
        Addr(pSost^.Work),SS,InBlock,ValX,ValY,Txt,'мин');
 27:  Result:=Convers('Время паузы',
        Addr(pSost^.Pause),SS,InBlock,ValX,ValY,Txt,'мин');
{ 18:  Result:=Convers('Текущий расход',
        Addr(pSost^.TecRasxod),(ParentCtr as TCtrPoliv).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3/час');
 19:  Result:=Convers('Прошло раствора',
        Addr(pSost^.tVolValve),(ParentCtr as TCtrPoliv).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
}
 28:  Result:=Convers('Осталось времени',
        Addr(pSost^.tTime),SSmSSs,InBlock,ValX,ValY,Txt,'');
 29:  Result:=Convers('Номер программы',
        Addr(pSost^.NumPoliv),SS,InBlock,ValX,ValY,Txt,'');
 30:  begin
      Result:=Convers('Клапан дождевания',
        Addr(pSost^.CycleRein),SS,InBlock,ValX,ValY,Txt,'');
      if (Result<1) or (Result>30) then begin
         Result:=0;
         Txt:='~';
         end;
      end;
  31:  Result:=Convers('Сегодня света ',
          Addr(pSost^.Chan[5].IZcor),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
else  begin
       if ValY>=1000 then ValY:=ValY mod 1000
         else ValY:=ValY-31;
       if ValY>20 then begin
         ValY:=ValY-20;
         case ValY of
// номера 52
           1: Result:=Convers('Задана темпер в камере',
              Addr(pSost^.Chan[Temp1].ZD),
              FrmChanSalat[Temp1],InBlock,ValX,ValY,Txt,EdChanSalat[Temp1]);
           2: Result:=Convers('Задана влажность в камере',
              Addr(pSost^.Chan[Hum1].ZD),
              FrmChanSalat[Hum1],InBlock,ValX,ValY,Txt,EdChanSalat[Hum1]);
           end;
           Exit;
         end;
         case ValY of
            0: begin
               if ValX=0 then  Txt:='Параметры'
               else Txt:='Значение';
               end;
// с 1 го выборка с номера 32
            1: Result:=ConversBit('Насос полива', //Номер 32
               Addr(pSost^.OutReg[1]),
               0,OnOff,InBlock,ValX,Txt);
            2: Result:=ConversBit('Клапан воды',
               Addr(pSost^.OutReg[1]),
               StartVal,OnOff,InBlock,ValX,Txt);
            3:  Result:=ConversBit('Насос воды',
               Addr(pSost^.OutReg[1]),
               1,OnOff,InBlock,ValX,Txt);
            4:  Result:=ConversBit('Авария',
               Addr(pSost^.OutReg[1]),
               1,YesNo,InBlock,ValX,Txt);
            5..8:  Result:=ConversBit('Уровень '+IntToStr(ValY-4),//Номер 36
               Addr(pSost^.InReg),
               ValY-5,YesNo,InBlock,ValX,Txt);
            9..11:  Result:=ConversBit('Дозатор '+NameChanSalat[ValY-8],
               Addr(pSost^.Chan[ValY-8].RCS),
               ActChan,OnOff,InBlock,ValX,Txt);
            12..15:  Result:=ConversBit(NameChanSalat[ValY-11]+' меньше допуска',
               Addr(pSost^.Chan[ValY-11].RCS),
               LowLevErr,YesNo,InBlock,ValX,Txt);
            16..19:  Result:=ConversBit(NameChanSalat[ValY-15]+' больше допуска',
               Addr(pSost^.Chan[ValY-15].RCS),
               HiLevErr,YesNo,InBlock,ValX,Txt);
            20:  Result:=ConversBit('Клапан полива',
               Addr(pSost^.RCSRasx),
               0,OnOff,InBlock,ValX,Txt);
            else  Result:=0;  //cEndCol;
       end;
   end;
 end;
end;

procedure THotSalat.SetTree(var Tree:TTreeView);
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
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Измерения',Param.Ptr);
      Param.X:=1;
      for nSens:=2 to 17 do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             Items.AddChildObject(Node1,st,Param.Ptr);
             end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Задания',Param.Ptr);
      Param.X:=1;
      for nSens:=18 to 21 do begin
        Param.Y:=nSens;
        LoadXY(cOutBlock,0,nSens,st);
        Items.AddChildObject(Node1,st,Param.Ptr);
        end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Состояние',Param.Ptr);
      Param.X:=1;
      for nSens:=22 to CountY do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             Items.AddChildObject(Node1,st,Param.Ptr);
             end;
      Items.EndUpdate;
//      NodeHead.Expand(False);
      end;
end;

//---------- END СОСТОЯНИЕ ПОЛИВА Ob7 ------------------
//-- СОСТОЯНИЕ САЛАТ 326 ------------------
{      SalatChan326
        int     IZ;
        uchar   RCS;
//        int     IZcor;
//        int     ZD;
//        char    CopyReg;
//        char    TimeReg;
        }
type rTChanSalat326=record
      IZ:InInt;
      RCS:Byte;
      end;
{        uchar   News;
		uint 	Time;
		uint 	Data;
		uchar 	Year;
        uchar   Hand;
		int		PC_SR;
		uchar 	PolSunRCS;
		int		PC_SumSR;
        char    Cycle;
        int     OutReg;
        uchar   cRegLEV;
        uchar   TipError;
        uchar   NumPoliv;
        int     tTime;
        uchar   RCSDoz;
        uchar   RCSRasx;
        int     TecRasxod;
        int     tVolValve;
        uchar   OutRegExt;
        uchar   Work;
        uchar   Pause;
        uchar   Propor;
        eChan   Chan[NumChan];
        char    CycleRein;
        int     tTimeRein;
        char    TimeValRein[2];
        int     RegKamera;
        char    nTimerKamera;
        uchar   TimeWorkHum;
        uchar   TimeWorkTem;
        int     TimePauseHum;
        int     TimePauseTem;

        char    CycleSiod;
        char    ActValSiod;
        int     RegSiod;
        int     BitValSiod;
        char    tTimeFazaSiod;
        eProgValSiod ProgValSiod[14];
        uint    TimeStart;
        }
        {
        uchar   News;
		int		PC_SR;   //7
		uchar 	PolSunRCS;
		int		PC_SumSR;
		uint 	Time;
		uint 	Data;
		uchar 	Year;

        uint    rRez;
        uchar   Hand;
        uchar   NumPoliv;
        uchar   RCSDozO;
        uchar   RCSRasx;
        uchar   OutRegExt;
        uchar   cRegLEV;
        int     OutReg;
        char    Cycle;
        uchar   TipError;
        int     tTime;
        int     TecRasxod;
        int     tVolValve;
        uchar   Work;
        uchar   Pause;
        int     FilPul[NumChanPul];
        eChan   Chan[NumChan];
        uchar   Prop[4];
        int     TaskNow[8];
        char    CopyRegEC;
        char    CopyRegPH;
        char    CycleRein;
        int     tTimeRein;
        char    TimeValRein[2];
}
const   iTime=6;
        SizeSendTime=14;
        SizeSendSun=6;
type rTHotSalat326=record
     News:Byte;    //0
		 PC_Sun:InInt;
     PC_SunRCS:Byte;
		 PC_SumSun:InInt;
		 Time:InInt;      //6
		 Data:InInt;
		 Year:Byte;
     Rez:InInt;
     Hand:Byte;       //13
     NumPoliv:Byte;
     RCSDoz:Byte;
     RCSRasx:Byte;
     OutRegExt:Byte;
     cRegLEV:Byte;
     OutReg:InInt;
     Cycle:Byte;
     TipError:Byte;
     tTime:InInt;
     TecRasxod:InInt;
     tVolValve:InInt;
     Work:Byte;
     Pause:Byte;
     FilPul:array [1..NumChanPul] of InInt;
     Chan:Array [1..17]of rTChanSalat326;
     Prop:array [1..4] of Byte;
     TaskNow:array[1..8] of InInt;
     CopyRegEC:Byte;
     CopyRegPH:Byte;
     CycleSiod:Byte;
     CycleRein:Byte;
     TaskRHKamer:InInt;
     TaskTKamer:InInt;
     tTimeRein:InInt;
     TimeValRein:array[1..2] of Byte;
     end;
{
        char    CopyRegPH;
        char    CycleSiod;
        char    CycleRein;
        int     TaskRHKamer;
        int     TaskTKamer;
        int     tTimeRein;
        char    TimeValRein[2];
        }
procedure THotSalat326.Init;
begin
//     Num:=blHotBlock;
     CountX:=1;
     CountY:=55;//(ParentCtr as TCtrPoliv).NumChan+2;
     SizeCol:=SizeOf(rTHotSalat326);
     FullSize:=SizeCol;
     SendByte:=SizeSendTime;
     Pref:='Состояние';
     NameBlock:='Состояние полива';
end;

function THotSalat326.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pSost:^rTHotSalat326;
    NumV,StartVal:Byte;
    NKran:Integer;
//    Prop:word;
begin
 pSost:=Adr;
 StartVal:=(ParentCtr as TFPicCtr).CtrTip mod 10;
 Result:=mlInform;
 case ValY of
 0:  begin
     if ValX=0 then begin Txt:=ParentCtr.CtrName;Exit;end;
     if pSost^.Hand>0 then begin
      Txt:='Ручное управление';
      Result:=mlAlarm;
      Exit;
      end;
     case pSost^.Cycle of
      0: Txt:='ПОЛИВА НЕТ';
      2: Txt:='ПАУЗА';
      3..4: Txt:='ПОЛИВ';
      1:begin
         case  pSost^.TipError of
          0:    Txt:='Нет воды';
          1..4: Txt:='Авария '+NameChanSalat[pSost^.TipError];
          32:   Txt:='Авария расхода';
          64:   Txt:='Нет показаний ЕС';
          else  Txt:='Авария';
         end;
        Result:=mlAlarm;
        end;
      end;
     end;
 1 :  begin
      Result:=Convers('Ручное управление',
        Addr(pSost^.Hand),SS,InBlock,ValX,ValY,Txt,'');
      end;
 2..17: begin
      ValY:=ValY-1;
      Result:=Convers('Измерено '+NameChanSalat[ValY],
        Addr(pSost^.Chan[ValY].IZ),
        FrmChanSalat[ValY],InBlock,ValX,ValY,Txt,EdChanSalat[ValY]);
      end;
 18..20:  begin
        ValY:=ValY-17;
        Result:=Convers('Задано '+NameChanSalat[ValY],
         Addr(pSost^.TaskNow[ValY]),
         FrmChanSalat[ValY],InBlock,ValX,ValY,Txt,EdChanSalat[ValY]);
        end;
  21:   begin
          Result:=Convers('Пропорции _А:_В:_C:_D',
            Addr(pSost^.Prop[1]),mSdS,InBlock,ValX,ValY,Txt,'');
          Txt:=Copy(Txt,1,Length(Txt)-(4-(ParentCtr as TFSalat).NumDozEC)*3);
          end;
  22:   begin
        NKran:=100*pSost^.CopyRegEC div 36;
        Result:=Convers('Краны ЕС',
         Addr(NKran),SS,InBlock,ValX,ValY,Txt,'%');
        end;
  23:   begin
        NKran:=pSost^.Prop[1];
        if NKran<pSost^.Prop[2] then NKran:=pSost^.Prop[2];
        if NKran>0 then NKran:=100*pSost^.CopyRegEC*pSost^.Prop[1] div (NKran*36);
        Result:=Convers('Кран А',
         Addr(NKran),SS,InBlock,ValX,ValY,Txt,'%');
        end;
  24:   begin
        NKran:=pSost^.Prop[1];
        if NKran<pSost^.Prop[2] then NKran:=pSost^.Prop[2];
        if NKran>0 then NKran:=100*pSost^.CopyRegEC*pSost^.Prop[2] div (NKran*36);
        Result:=Convers('Кран Б',
         Addr(NKran),SS,InBlock,ValX,ValY,Txt,'%');
        end;
 25:    begin
        NumV:=100*pSost^.CopyRegPH div 36;
        Result:=Convers('Кран pH',
         Addr(NumV),SS,InBlock,ValX,ValY,Txt,'%');
        end;
 26:  Result:=Convers('Время полива',
        Addr(pSost^.Work),SS,InBlock,ValX,ValY,Txt,'мин');
 27:  Result:=Convers('Время паузы',
        Addr(pSost^.Pause),SS,InBlock,ValX,ValY,Txt,'мин');
{ 18:  Result:=Convers('Текущий расход',
        Addr(pSost^.TecRasxod),(ParentCtr as TCtrPoliv).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3/час');
 19:  Result:=Convers('Прошло раствора',
        Addr(pSost^.tVolValve),(ParentCtr as TCtrPoliv).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
}
 28:  Result:=Convers('Осталось времени',
        Addr(pSost^.tTime),SSmSSs,InBlock,ValX,ValY,Txt,'');
 29:  Result:=Convers('Номер программы',
        Addr(pSost^.NumPoliv),SS,InBlock,ValX,ValY,Txt,'');
 30:  begin
      Result:=Convers('Клапан дождевания',
        Addr(pSost^.CycleRein),SS,InBlock,ValX,ValY,Txt,'');
      if (Result<1) or (Result>30) then begin
         Result:=0;
         Txt:='~';
         end;
      end;
  31:  Result:=Convers('Сегодня света ',
          Addr(pSost^.PC_SumSun),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
  32:  Result:=ConversBit('Насос полива', //Номер 32
               Addr(pSost^.OutReg[1]),
               0,OnOff,InBlock,ValX,Txt);
  33:  Result:=ConversBit('Клапан воды',
               Addr(pSost^.OutReg[1]),
               StartVal,OnOff,InBlock,ValX,Txt);
  34:  Result:=ConversBit('Насос воды',
               Addr(pSost^.OutReg[1]),
               1,OnOff,InBlock,ValX,Txt);
  35:  Result:=ConversBit('Авария',
               Addr(pSost^.OutReg[1]),
               1,YesNo,InBlock,ValX,Txt);
  36..39:  Result:=ConversBit('Уровень '+IntToStr(ValY-35),//Номер 36
               Addr(pSost^.cRegLev),
               ValY-36,YesNo,InBlock,ValX,Txt);
  40..42:  Result:=ConversBit('Дозатор '+NameChanSalat[ValY-39],
               Addr(pSost^.Chan[ValY-39].RCS),
               ActChan,OnOff,InBlock,ValX,Txt);
  43..46:  Result:=ConversBit(NameChanSalat[ValY-42]+' меньше допуска',
               Addr(pSost^.Chan[ValY-42].RCS),
               LowLevErr,YesNo,InBlock,ValX,Txt);
  47..50:  Result:=ConversBit(NameChanSalat[ValY-46]+' больше допуска',
               Addr(pSost^.Chan[ValY-46].RCS),
               HiLevErr,YesNo,InBlock,ValX,Txt);
  51:  Result:=ConversBit('Клапан полива',
               Addr(pSost^.RCSRasx),
               0,OnOff,InBlock,ValX,Txt);
  52:  Result:=Convers('Задана темпер в камере',
              Addr(pSost^.TaskTKamer),
              FrmChanSalat[Temp1],InBlock,ValX,ValY,Txt,EdChanSalat[Temp1]);
  53: Result:=Convers('Задана влажность в камере',
              Addr(pSost^.TaskRHKamer),
              FrmChanSalat[Hum1],InBlock,ValX,ValY,Txt,EdChanSalat[Hum1]);
  54:  Result:=Convers('Время в контроллере',
               Addr(pSost^.Time),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
  55:  Result:=Convers('Дата в контроллере',
               Addr(pSost^.Data),SSsSS,InBlock,ValX,ValY,Txt,'');
  else  Result:=0;  //cEndCol;
 end;
end;

procedure THotSalat326.PostPortRead;
var pHot:^rTHotSalat326;
begin
 if Not Ready  then Exit;
 pHot:=Adr;
//  младш бит 0x01=выключен;  бит 0x20-вне диапазона
 if ((pHot^.PC_SunRCS and 1) = 0) and ((pHot^.PC_Sun[0]+pHot^.PC_Sun[1])>0) then
// если датчик подсоединен и измеряет и не 0, то его в общие данные
      begin
      mMeteo[comSun].Val51[0]:=pHot^.PC_Sun[0];
      mMeteo[comSun].Val51[1]:=pHot^.PC_Sun[1];
//##     mMeteo[comSun].RCS:=pHot^.PC_SunRCS;
      mMeteo[comSumSun].Val51[0]:=pHot^.PC_SumSun[0];
      mMeteo[comSumSun].Val51[1]:=pHot^.PC_SumSun[1];
      mMeteo[comSun].UpdateTime:=BlDate;
      end
      else
      if (Now-mMeteo[comSun].UpdateTime)<3*cMin then
          begin
          if (ParentCtr.DataPath<>'') then Exit;
          pHot^.PC_Sun[0]:=mMeteo[comSun].Val51[0];
          pHot^.PC_Sun[1]:=mMeteo[comSun].Val51[1];
          pHot^.Chan[nmSR].IZ[0]:=pHot^.PC_Sun[0];
          pHot^.Chan[nmSR].IZ[1]:=pHot^.PC_Sun[1];
          pHot^.PC_SumSun[0]:=mMeteo[comSumSun].Val51[0];
          pHot^.PC_SumSun[1]:=mMeteo[comSumSun].Val51[1];

          pHot^.PC_SunRCS:=$81;
          pHot^.News:=0;
          SendByte:=SizeSendSun;
          FPort.BlockSend(Self,IN_UNIT,0,nil);
          SendByte:=SizeSendTime;
          end;
end;

function THotSalat326.SendTime:Boolean;
var pHotPol:pByteArray; //    TByteArray = array[0..32767] of Byte;
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

{function THotSalat326.SendToPort:Boolean;
var pHotPol:pByteArray; //    TByteArray = array[0..32767] of Byte;
    Minut:word;
begin
 pHotPol:=Adr;
 pHotPol^[0]:=$80;
 Minut:=MinuteOfTheDay(Now);
 pHotPol^[iTime]:=Minut div 256;
 pHotPol^[iTime+1]:=Minut mod 256;
 pHotPol^[iTime+2]:=MonthOfTheYear(Now);
 pHotPol^[iTime+3]:=DayOfTheMonth(Now);
 pHotPol^[iTime+4]:=YearOf(Now)-2000;
 Result:=inherited SendToPort;
end; }

procedure THotSalat326.SetTree(var Tree:TTreeView);
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
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Измерения',Param.Ptr);
      Param.X:=1;
      for nSens:=2 to 17 do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             Items.AddChildObject(Node1,st,Param.Ptr);
             end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Задания',Param.Ptr);
      Param.X:=1;
      for nSens:=18 to 21 do begin
        Param.Y:=nSens;
        LoadXY(cOutBlock,0,nSens,st);
        Items.AddChildObject(Node1,st,Param.Ptr);
        end;
      Param.Block:=Self;
      Node1:=Items.AddChildObject(NodeHead,'Состояние',Param.Ptr);
      Param.X:=1;
      for nSens:=22 to CountY do begin
             Param.Y:=nSens;
             LoadXY(cOutBlock,0,nSens,st);
             Items.AddChildObject(Node1,st,Param.Ptr);
             end;
      Items.EndUpdate;
//      NodeHead.Expand(False);
      end;
end;
//---------------------end состояние салатной 325

procedure TFSalat.SetPicCtr;
var vRes:Integer;
    txt,sLine2,txt2:string;
    pHot326:PByteArray;
    n,nMes,nLine2:integer;
begin
  if Not Block[0].Ready then Exit;
  if (DataPath='') and ((SubTip and t326Pr)>0) then
        begin
        pHot326:=Block[0].Adr;
        n:=MinuteOfTheDay(Now);
        nMes:=pHot326^[iTime]*256+pHot326^[iTime+1];
        if (n>15)
          and (n<(24*60-15))
          and (((nMes+15)<n) or((nMes-15)> n))
          then (Block[0] as THotSalat326).SendTime;
        end;
  BotLev.Visible:= Block[0].LoadXY(cOutBlock,1,36,txt)=0;
  WorkLev.Visible:= Block[0].LoadXY(cOutBlock,1,38,txt)=0;
  TopLev.Visible:= Block[0].LoadXY(cOutBlock,1,37,txt)=0;
  sLine2:='';
  nLine2:=0;
  for nMes:=32 to 50 do begin
    if(Block[0].LoadXY(cOutBlock,1,nMes,txt)>0) then begin
                   Block[0].LoadXY(cOutBlock,0,nMes,txt2);
                   if (nLine2>0) then sLine2:=sLine2+#13#10;
                   sLine2:=sLine2+txt2+' '+txt;
                   nLine2:=nLine2+1;
                   end;
    end;
  LMes.Caption:=sLine2;
//  ADat:=Block[0].Adr;
//  TErr:=ADat^.TipError;
  vRes:=round (Block[0].LoadXY(cOutBlock,1,0,txt));
  PSost.Caption:=txt;
  if vRes<=mlAlarm then begin PSost.Color:=clRed end
    else PSost.Color:=clBlue;

end;
//---------- ПАРАМЕТРЫ Ob7 ------------------
        {
        uchar   rNumVal;
        uchar   rNumChan;
        uchar   rSizeArx;
        uchar   rSubIdent;
        uchar   rIdent;
        uint    Time;
        uint    Data;
        uchar   Year;
/*-- начало сохраняемых данных, размер 30 байт*/
        uchar   NFCtr;
        uchar   DelayBot1;
        uchar   ContrNasEC;
        uchar   FullBak;
        uchar   Turbo;
        uchar   ReadyMix;
        uchar   CompAB;
        int     SBak[NumMat];
        char    ReinToNas;
        int     PauseHum;
        int     PauseTem;
        char    WorkHum;
        char    WorkTem;
        uchar   TimeAlarmRas;
        uchar   ResetAlarmRas;
        int     MinRasxod;
        int     MaxRasxod;
        char    AlarmStop;
        int     Rez1;
      }

type rTControlSalat=record
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
     ContrNasEC:Byte;
     FullBak:Byte;
     Turbo:Byte;
     ReadyMix:Byte;
     CompAB:Byte;
     SBak:Array [1..3]of InInt;
     ReinToNas:Byte;
     PauseHum:InInt;
     PauseTem:InInt;
     WorkHum:Byte;
     WorkTem:Byte;
     TimeAlarmRas:Byte;   // ранее было TimeErTemp:Byte;
     ResetAlarmRas:Byte;  // ранее было ResetFatal:Byte;
     MinRasxod:InInt;     // ранее не было
     MaxRasxod:InInt;     // ранее не было
     AlarmStop:Byte;
     end;
procedure TControlSalat.Init;//override;
begin
     CountX:=1;
     CountY:=25;
     SizeCol:=SizeOf(rTControlSalat);
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:='Параметры';
     NameBlock:='Параметры контроллера';
     FixRow:=5;
     StartRow:=0;
end;

function TControlSalat.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:^rTControlSalat;
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
     8:  Result:=Convers('Авария воды',
          Addr(ADat^.DelayBot1),SS,InBlock,ValX,ValY,Txt,'сек');
     9:  Result:=Convers('Авария по ЕС',
          Addr(ADat^.ContrNasEC),SS,InBlock,ValX,ValY,Txt,'сек');
     10:  Result:=Convers('Остановка по аварии',
          Addr(ADat^.AlarmStop),SS,InBlock,ValX,ValY,Txt,'');
     11:  Result:=Convers('Дождевание при поливе',
          Addr(ADat^.ReinToNas),SS,InBlock,ValX,ValY,Txt,'');
     12:  Result:=Convers('Камера-Время форсунок',
          Addr(ADat^.WorkHum),SS,InBlock,ValX,ValY,Txt,'сек');
     13:  Result:=Convers('Камера-Пауза форсунок',
          Addr(ADat^.PauseHum),SSmSSs,InBlock,ValX,ValY,Txt,'м:с');
     14:  Result:=Convers('Камера-Время нагрева',
          Addr(ADat^.WorkTem),SS,InBlock,ValX,ValY,Txt,'сек');
     15:  Result:=Convers('Камера-Пауза в нагреве',
          Addr(ADat^.PauseTem),SSmSSs,InBlock,ValX,ValY,Txt,'м:с');
     16:  Result:=Convers('Минимальный расход',
          Addr(ADat^.MinRasxod),(ParentCtr as TFSalat).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
     17:  Result:=Convers('Максимальный расход',
          Addr(ADat^.MaxRasxod),(ParentCtr as TFSalat).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
     18:  Result:=Convers('Авария расхода',
          Addr(ADat^.TimeAlarmRas),SS,InBlock,ValX,ValY,Txt,'сек');
     19:  Result:=Convers('Повтор от аварии расхода',
          Addr(ADat^.ResetAlarmRas),SS,InBlock,ValX,ValY,Txt,'мин');
     20:  Result:=Convers('Подготовка раствора',
          Addr(ADat^.ReadyMix),SS,InBlock,ValX,ValY,Txt,'');
     21:  Result:=Convers('Максимум дозатора',
          Addr(ADat^.Turbo),SS,InBlock,ValX,ValY,Txt,'');
     22:  Result:=Convers('Равнять А и В',
          Addr(ADat^.CompAB),SS,InBlock,ValX,ValY,Txt,'');
    23..24:  Result:=Convers('Площадь бака '+char(ord('A')+ValY-23),
          Addr(ADat^.SBak[ValY-22]),SSSpS,InBlock,ValX,ValY,Txt,'дм2');
       else Result:=0;  //cEndCol;
    end;
end;
//--------- END ПАРАМЕТРЫ Salat ------------------
var
NameParSalat325:array [1..33] of TNameConst=(
(Name:'Насос полива при освобождении бака встает через';Frm:SS;Ed:'сек';TipSens:TipControl;Min:3;Max:25;Def:8;Index:5),
(Name:'Насос полива при нулевом показании ЕС встает через';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:45;Def:10;Index:6),
(Name:'Останавливать полив при аварии дозатора (0-нет, 1-да)';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:1;Def:1;Index:24),
(Name:'Держать бак наполненным до 3 уровня (0-нет, 1-да)';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:1;Def:0;Index:7),
(Name:'Максимальная производительность дозатора';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:1;Def:0;Index:8),
//(Name:'Время паузы при переключении клапанов полива';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:20;Def:4;Index:6),

(Name:'Управлять ЕС по датчику (0-ЕС1, 1-ЕС2, 2-по среднему)';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:2;Def:0;Index:27),
(Name:'Управлять рН по датчику (0-рН1, 1-рН2, 2-по среднему)';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:2;Def:0;Index:28),
(Name:'Номер входа датчика температуры воды';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:8;Def:0;Index:29),
(Name:'Константа управления ЕС';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:20;Def:7;Index:52),
(Name:'Максимум дозатора ЕС';Frm:SS;Ed:'%';TipSens:TipControl;Min:10;Max:100;Def:100;Index:53),
(Name:'Константа управления рН';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:35;Def:14;Index:54),
(Name:'Максимум дозатора рН';Frm:SS;Ed:'%';TipSens:TipControl;Min:10;Max:100;Def:50;Index:55),

(Name:'Количество клапанов дождевания';Frm:SS;Ed:'шт';TipSens:TipControl;Min:0;Max:5;Def:2;Index:10),
(Name:'Разрешить дождевание при выключенном насосе полива (0-нет, 1-да)';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:1;Def:0;Index:11),
(Name:'Включить насос СИОД вперед клапана на';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:15;Def:3;Index:26),
(Name:'Время паузы при переключении клапанов СИОД';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:15;Def:3;Index:25),

(Name:'Камера - время работы туманообразующих форсунок';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:50;Def:10;Index:16),
(Name:'Камера - время паузы туманообразующих форсунок';Frm:SSmSSs;Ed:'мин:сек';TipSens:TipControl;Min:0;Max:3600;Def:90;Index:12),
(Name:'Камера - время работы нагревателя';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:127;Def:40;Index:17),
(Name:'Камера - время паузы нагревателя';Frm:SSmSSs;Ed:'мин:сек';TipSens:TipControl;Min:0;Max:3600;Def:0;Index:14),
//(Name:'Подготовка раствора';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:0;Index:9),
(Name:'Минимально допустимый расход раствора';Frm:SSSpS;Ed:'м3/час';TipSens:TipControl;Min:0;Max:10;Def:6;Index:20),
(Name:'Максимально допустимый расход раствора';Frm:SSSpS;Ed:'м3/час';TipSens:TipControl;Min:0;Max:60;Def:16;Index:22),
(Name:'При расходе вне допуска остановить полив через';Frm:SS;Ed:'сек';TipSens:TipControl;Min:0;Max:120;Def:0;Index:18),
(Name:'Возобновить полив после аварии расхода через';Frm:SS;Ed:'мин';TipSens:TipControl;Min:0;Max:30;Def:3;Index:19),

(Name:'Время паузы - солнце начинает влиять при';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:200;Def:50;Index:35),
(Name:'Время паузы - солнце влияет до';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:300;Max:2000;Def:500;Index:37),
(Name:'Время паузы - солнце уменьшает на';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:10;Index:39),
(Name:'Задание ЕС - солнце начинает влиять при';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:0;Max:200;Def:50;Index:30),
(Name:'Задание ЕС - солнце влияет до';Frm:SSSS;Ed:'Дж/см2';TipSens:TipCalc;Min:300;Max:2000;Def:500;Index:32),
(Name:'Задание ЕС - солнце уменьшает на';Frm:SS;Ed:'%';TipSens:TipCalc;Min:0;Max:50;Def:0;Index:34),


(Name:'Время,через которое промыть фильтр';Frm:SShSSm;Ed:'час:мин';TipSens:TipControl;Min:0;Max:0;Def:0;Index:41),
(Name:'Объем воды,после которого промыть фильтр';Frm:SSSpS;Ed:'м3';TipSens:TipControl;Min:0;Max:300;Def:50;Index:43),
(Name:'Время промывки фильтра';Frm:SS;Ed:'мин';TipSens:TipControl;Min:0;Max:30;Def:5;Index:40)

//(Name:'Равнять уровни в баках А и В';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:3;Def:0;Index:10),
//(Name:'Площадь бака A';Frm:SSSpS;Ed:'дм2';TipSens:TipControl;Min:30;Max:150;Def:45;Index:45),
//(Name:'Площадь бака B';Frm:SSSpS;Ed:'дм2';TipSens:TipControl;Min:30;Max:150;Def:45;Index:47)
);
procedure TControlSalat325.Init;
begin
     CountX:=1;
     CountY:=34;
     SizeCol:=60;
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:='Параметры';
     NameBlock:='Параметры контроллера';
     FixRow:=1;
     StartRow:=0;
     ConstNames:=Addr(NameParSalat325[1]);
end;

function TControlSalat325.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
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
     Result:=Convers(ConstNames[ValY].Name,
            Addr(ADat^[ConstNames[ValY].Index+SizeCol*(ValX-1)]),ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
//     Result:=Convers(ConstNames[ValY].Name+Format(' (от %g до %g, типовое: %g ',[ConstNames[ValY].Min,ConstNames[ValY].Max,ConstNames[ValY].Def])+ConstNames[ValY].Ed+')',
//            Addr(ADat^[ConstNames[ValY].Index+SizeCol*(ValX-1)]),ConstNames[ValY].Frm,vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
//     if (ValX>0) and ((Result< ConstNames[ValY].Min) or (Result>ConstNames[ValY].Max )) then Txt:='!Вне диапазона '+Txt;
end;
//--------- END ПАРАМЕТРЫ S325 ------------------
//--------- ЗАДАНИЕ НА СУТКИ Salat ------------------
{        uint    DataStart;
        uint    DataEnd;
        uint    TimeStart;
        uchar   Work;
        uchar   Pause;
        uchar   Propor;
        uint    LevSR;
        int     ZD[NumChanU];
        uint    DataStartRein;
        uint    DataEndRein;
        uint    TimeStartRein;
        char    TimeValRein[2];
}
type rT1TimerSalat=record
     DataStart:InInt;
     DataEnd:InInt;
     TimeStart:InInt;
     Work:Byte;
     Pause:Byte;
     Propor:Byte;
     LevSR:InInt;
     ZD:array [1..3] of InInt;
     DataStartRein:InInt;
     DataEndRein:InInt;
     TimeStartRein:InInt;
     TimeValRein:array[1..2] of Byte;
     end;
procedure TTimerSalat.Init;//override;
begin
     CountX:=30;//(ParentCtr as TCtrPoliv).NumTimer;
     CountY:=15;
     SizeCol:=SizeOf(rT1TimerSalat);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
//     EEPSize:=SizeCol*5;
     Pref:='ПрогПолива';
     NameBlock:='Программы Полива';
end;

function TTimerSalat.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
     var Txt:String):Double;//override;
var  ADat:PByteArray;
     pTimer:^rT1TimerSalat;
begin
  ADat:=Adr;
  Result:=ValX;
  ADat:=Addr(ADat^[SizeCol*(ValX-1)]);
  pTimer:=pointer(ADat);
  case ValY of
   0: begin if ValX=0 then Txt:='Номер програм'
         else  Txt:='Програм N'+IntToStr(ValX);
      end;
   1: begin
      Result:=Convers('Программа действует с',
        Addr(pTimer^.TimeStart),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   2: begin
      Result:=Convers('Время полива',
        Addr(pTimer^.Work),SS,InBlock,ValX,ValY,Txt,'мин');
      end;
   3: begin
      Result:=Convers('Время паузы',
        Addr(pTimer^.Pause),SS,InBlock,ValX,ValY,Txt,'мин');
      end;
   4: Result:=Convers('Задано ЕС',
        Addr(pTimer^.ZD[1]),SSpSS,InBlock,ValX,ValY,Txt,'мСм/см');
   5: case (ParentCtr as TFSalat).NumDozEC of
        2: Result:=Convers('Пропорции А:В',
            Addr(pTimer^.Propor),SdS,InBlock,ValX,ValY,Txt,'');
        3: Result:=Convers('Пропорции А:В:C',
            Addr(pTimer^.Propor),SdSdS,InBlock,ValX,ValY,Txt,'');
        4: Result:=Convers('Пропорции А:В:C:D',
            Addr(pTimer^.Propor),SdSdSdS,InBlock,ValX,ValY,Txt,'');
      end;
   6: Result:=Convers('Задано рН',
        Addr(pTimer^.ZD[2]),SSpS0,InBlock,ValX,ValY,Txt,'');
   7: Result:=Convers('Задана Температура',
        Addr(pTimer^.ZD[3]),SSpS0,InBlock,ValX,ValY,Txt,'');
   8: begin
      Result:=Convers('Коррекция по солнцу',
        Addr(pTimer^.LevSR),SSSS,InBlock,ValX,ValY,Txt,'');
      end;
   9: begin
      Result:=Convers('Дата начала',
        Addr(pTimer^.DataStart),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   10: begin
      Result:=Convers('Дата окончания',
        Addr(pTimer^.DataEnd),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   11: begin
      Result:=Convers('Включить дождевание в',
        Addr(pTimer^.TimeStartRein),SShSSm,InBlock,ValX,ValY,Txt,'час:мин');
      end;
   12: begin
      Result:=Convers('Клапан 1 включить',
        Addr(pTimer^.TimeValRein[1]),SS,InBlock,ValX,ValY,Txt,'мин');
      end;
   13: begin
      Result:=Convers('Клапан 2 включить',
        Addr(pTimer^.TimeValRein[2]),SS,InBlock,ValX,ValY,Txt,'мин');
      end;
   14: begin
      Result:=Convers('Дата начала дождевания',
        Addr(pTimer^.DataStartRein),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   15: begin
      Result:=Convers('Дата окончания дождевания',
        Addr(pTimer^.DataEndRein),SSsSS,InBlock,ValX,ValY,Txt,'');
      end;
   end;
end;
//--------- END ЗАДАНИЕ НА СУТКИ Salat ------------------

//----------Программы полива Салат326 ------------------
        {
        uint    TimeStart;
        uchar   Work;
        uchar   Pause;
        uchar   TaskEC;   4
        uchar   Prop[4];   5
    		uchar	TaskPH;
    		uchar	TaskT;
        char    KorSR;
        uint    DataStart;
        uint    DataEnd;
        uint    TimeStartRein;
        char    TimeValRein[2];
        uint    DataStartRein;
        uint    DataEndRein;   22
        uint    Rez;           24    =26
        }
const posRein=11;
var
NameTimerSalat326:array [1..17] of TNameConst=(
(Name:'Программа действует с';Frm:SShSSm;Ed:'час:мин';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:0),
(Name:'Время полива';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:2),
(Name:'Время паузы';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:3),
(Name:'Задано ЕС';Frm:SpS;Ed:'мСм/см';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:4),
(Name:'Пропорции А:В:_C:_D';Frm:mSdS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:5),
(Name:'Задано рН';Frm:SpS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:9),
(Name:'Задана Температура';Frm:SS;Ed:'°C';TipSens:TipTimer;Min:0;Max:30;Def:0;Index:10),
(Name:'Коррекция по солнцу';Frm:SS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:11),
(Name:'Дата начала';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:12),
(Name:'Дата окончания';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:14),
(Name:'Включить дождевание в';Frm:SShSSm;Ed:'час:мин';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:16),
(Name:'Номер клапана дождя';Frm:SS;Ed:'';TipSens:TipTimer;Min:0;Max:5;Def:0;Index:18; Mech:0; AccessR:RW_USER;AccessW:RW_USER),
(Name:'Клапан дождя включить';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:19; Mech:0; AccessR:RW_USER;AccessW:RW_USER),
(Name:'Клапан 1 включить';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:18; Mech:0; AccessR:RW_USER;AccessW:RW_USER),
(Name:'Клапан 2 включить';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:19; Mech:0; AccessR:RW_USER;AccessW:RW_USER),
(Name:'Дата начала дождевания';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:20),
(Name:'Дата окончания дождевания';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:22)
);

procedure TTimerSalat326.Init;//override;
begin
     CountX:=30;//(ParentCtr as TCtrPoliv).NumTimer;
     CountY:=17;
     SizeCol:=26;//SizeOf(rT1TimerSalat);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:='ПрогПолива';
     NameBlock:='Программы Полива';
     ConstNames:=Addr(NameTimerSalat326[1]);
     if ((ParentCtr.SubTip and t332)>0) then // or ((ParentCtr.SubTip and t326Pr)=0)
          begin
          NameTimerSalat326[posRein+3].AccessR:=RW_INVISIBLE;
          NameTimerSalat326[posRein+4].AccessR:=RW_INVISIBLE;
          end
     else begin
          NameTimerSalat326[posRein+1].AccessR:=RW_INVISIBLE;
          NameTimerSalat326[posRein+2].AccessR:=RW_INVISIBLE;
          end;

end;

function TTimerSalat326.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var ADat:PByteArray;
begin
     ADat:=Adr;
     Result:=ValX;
     if ValY=0 then
       begin
       if ValX=0 then Txt:={'Номер програмы'+}ParentCtr.CtrName
         else Txt:='Програм N'+IntToStr(ValX);
       Exit;
       end;
     Result:=Convers(ConstNames[ValY].Name,//+Format(' (от %g до %g, типовое: %g ',[NameTimerSalat326[ValY].Min,NameTimerSalat326[ValY].Max,NameTimerSalat326[ValY].Def])+NameTimerSalat326[ValY].Ed+')',
            Addr(ADat^[ConstNames[ValY].Index+SizeCol*(ValX-1)]),ConstNames[ValY].Frm,InBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
     if ConstNames[ValY].Frm=mSdS then
          Txt:=Copy(Txt,1,Length(Txt)-(4-(ParentCtr as TFSalat).NumDozEC)*3);
//            Txt:=Copy(Txt,1,Length(Txt)-(4-(ParentCtr.CtrTip mod 10)-3)*3);
//     if (ValX>0) and ((Result< NameTimerSalat326[ValY].Min) or (Result>NameTimerSalat326[ValY].Max )) then Txt:='!Вне диапазона '+Txt;
end;
//--------- END ПРОГРАММА САЛАТ 326 ------------------

var
NameTimerSalat332:array [1..17] of TNameConst=(
(Name:'Номер зоны полива';Frm:SS;Ed:'зона';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:26),
(Name:'Начало программы в';Frm:SShSSm;Ed:'час:мин';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:0),
(Name:'Окончание программы в';Frm:SShSSm;Ed:'час:мин';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:24),
(Name:'Время полива';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:2),
(Name:'Время паузы';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:3),
(Name:'Задано ЕС';Frm:SpS;Ed:'мСм/см';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:4),
(Name:'Пропорции А:В:_C:_D';Frm:mSdS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:5),
(Name:'Задано рН';Frm:SpS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:9),
(Name:'Задана Температура';Frm:SS;Ed:'°C';TipSens:TipTimer;Min:0;Max:30;Def:0;Index:10),
(Name:'Коррекция по солнцу';Frm:SS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:11),
(Name:'Дата начала';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:12),
(Name:'Дата окончания';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:14),
(Name:'Включить дождевание в';Frm:SShSSm;Ed:'час:мин';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:16),
(Name:'Номер клапана дождя';Frm:SS;Ed:'';TipSens:TipTimer;Min:0;Max:9;Def:0;Index:18; Mech:0; AccessR:RW_USER;AccessW:RW_USER),
(Name:'Клапан дождя включить';Frm:SS;Ed:'мин';TipSens:TipTimer;Min:0;Max:255;Def:0;Index:19; Mech:0; AccessR:RW_USER;AccessW:RW_USER),
(Name:'Дата начала дождевания';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:20),
(Name:'Дата окончания дождевания';Frm:SSsSS;Ed:'';TipSens:TipTimer;Min:0;Max:0;Def:0;Index:22)
);

var XNamesTimer:array [1..1] of TXNames=(
    (Name:'Задание';Frm:None;Ed:'';Index:30;Cfg:0;Kind:0)
     );

procedure TTimerSalat332.Init;//override;
begin
     CountX:=30;//(ParentCtr as TCtrPoliv).NumTimer;
     CountY:=17;
     SizeCol:=30;//SizeOf(rT1TimerSalat);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:='ПрогПолива';
     NameBlock:='Программы Полива';
     ConstNames:=Addr(NameTimerSalat332[1]);
     XNames:=Addr(XNamesTimer[1]);
     XNamesCount:=1;
     XNames[1].Index:=SizeCol;
end;

function TTimerSalat332.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var ADat:PByteArray;
begin
     ADat:=Adr;
     Result:=inherited LoadXYvirt(InBlock,ValX,ValY,Txt);
     if(ValY>0) and (ValX>0) and (ConstNames[ValY].Frm=mSdS) then
          Txt:=Copy(Txt,1,Length(Txt)-(4-(ParentCtr as TFSalat).NumDozEC)*3);
end;
//--------- END ПРОГРАММА САЛАТ 332 ------------------

//----------КАНАЛЫ ДОЗАЦИИ Salat ------------------
type rT1ChanelSalat=record
     Fk1:InInt;
     Fk2:InInt;
     Kk1:InInt;
     Kk2:InInt;
     GL:InInt;
     TimeAlarm:Byte;
     ResetAlarm:Byte;
     TimeCtrl:Byte;
     ConstCtrl:Byte;
     MaxReg:Byte;
     end;
type rTChanelSalat=array[1..17] of rT1ChanelSalat;

procedure TChanelSalat.Init;//override;
begin
     CountX:=17;//(ParentCtr as TFSalat).NumChan;//8;
     CountY:=7;
     SizeCol:=SizeOf(rT1ChanelSalat);
     FullSize:=SizeCol*CountX;
     SendByte:=FullSize;
     Pref:='Калибровки';
     NameBlock:='Калибровка датчиков';
end;

function TChanelSalat.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var ADat:^rTChanelSalat;
    ScCal:string[4];
begin
    ADat:=Adr;
     Result:=ValX;
     if ValX>8 then ScCal:='мВ' else ScCal:='Гц';
     case ValY of
     0: if ValX=0 then Txt:='Датчики'
                  else Txt:=NameChanSalat[ValX];
     1: Result:=Convers('Калибр значение 1',
             Addr(ADat^[ValX].Fk1),SSSS,InBlock,ValX,ValY,Txt,ScCal);
     2: Result:=Convers('Эталон 1',
          Addr(ADat^[ValX].Kk1),FrmChanSalat[ValX],InBlock,ValX,ValY,Txt,EdChanSalat[ValX]);
     3: Result:=Convers('Калибр значение 2',
          Addr(ADat^[ValX].Fk2),SSSS,InBlock,ValX,ValY,Txt,ScCal);
     4: Result:=Convers('Эталон 2',
          Addr(ADat^[ValX].Kk2),FrmChanSalat[ValX],InBlock,ValX,ValY,Txt,EdChanSalat[ValX]);
     5: Result:=Convers('Допуск',
          Addr(ADat^[ValX].GL),FrmChanSalat[ValX],InBlock,ValX,ValY,Txt,EdChanSalat[ValX]);
     6: if ValX>=nmSR then begin Result:=0; Txt:='';end else
          Result:=Convers('Время до аварии допуска',
          Addr(ADat^[ValX].TimeAlarm),SS,InBlock,ValX,ValY,Txt,'сек');
     7: if ValX>=nmSR then begin Result:=0; Txt:='';end else
        Result:=Convers('Время до повтора после аварии',
          Addr(ADat^[ValX].ResetAlarm),SS,InBlock,ValX,ValY,Txt,'мин');
//     8: if ValX>NumChanU then begin Result:=0; Txt:='';end else
//        Result:=Convers('Константа управления',
//          Addr(ADat^[ValX].ConstCtrl),SS,InBlock,ValX,ValY,Txt,'');
//     9: if ValX>NumChanU then begin Result:=0; Txt:='';end else
//        Result:=Convers('Максимальное время крана',
//          Addr(ADat^[ValX].MaxReg),SS,InBlock,ValX,ValY,Txt,'/8 сек');
     else Result:=0;  //cEndCol;
     end;
end;
//----------END КАНАЛЫ ДОЗАЦИИ Salat ------------------
//--------- АРХИВ Salat ------------------
{typedef struct  eeHourArx
        int     Time;
        int     Vol;
        int     Midl[NumChanArx];
      eHourArx;
}
type rTHourArxSalat=record
     Time:InInt;
     Vol:InInt;
     Midl:array[1..SumContrChan] of InInt;   //NumChanArx 8/2005
     end;
{        int      Data;
        uint     PolTime;
        uint     PolVol;
        uint     SolRad;
        uint     TimeMat[NumMat];
        uint     RasMat[NumMat];
        uint     TimeValRein[2];
        eHourArx Hour[24];
}
type rT1ArxSalat=record
     Data:InInt;
     PolTime:InInt;
     PolVol:InInt;
     SolRad:InInt;
     TimeMat:array [1..cNumMat] of InInt;
     RasMat:array [1..cNumMat] of InInt;
     TimeValRein:array [1..2] of InInt;
     Hour:array[1..24] of rTHourArxSalat;
     end;

procedure TArxivSalat.Init;//override;
begin
//     NumV:=(ParentCtr as TCtrPoliv).NumValve;
     CountX:=(ParentCtr as TFSalat).SizeArx;
      CountY:=5+cNumMat324*2+24*7; //8/2005 CountY:=5+cNumMat324*2+24*5;
     SizeCol:=SizeOf(rT1ArxSalat);
     if (4095 div SizeCol) < CountX then CountX:=4095 div SizeCol;
     FullSize:=SizeCol*CountX;//SizeArxD;
     SendByte:=FullSize;
     FixRow:=2;
     Pref:='АрхивПолив';
     NameBlock:='Архив Полива';
end;

function TArxivSalat.LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var    ADat:PByteArray;
       pArx:^rT1ArxSalat;
       vHour,Cas:Word;
begin
  ADat:=Adr;
//  NumV:=(ParentCtr as TCtrPoliv).NumValve;
  Result:=ValX;
  ADat:=Addr(ADat^[SizeCol*(ValX-1)]);
  pArx:=pointer(ADat);
  if (ValY>0) and (ValX>0) then
        begin
        if (pArx^.Data[0]<=0) or (pArx^.Data[0]>12)or
         (pArx^.Data[1]<=0) or (pArx^.Data[1]>31)then
            begin
            txt:='~';
            Result:=0; Exit;
            end;
        end;
    case ValY of
    0: if ValX=0 then Txt:='Номер архива'
                  else Txt:='АРХИВ N'+IntToStr(ValX);
    1: Result:=Convers('Дата',
          Addr(pArx^.Data),SSsSS,InBlock,ValX,ValY,Txt,'');
    2: Result:=Convers('Полив за день',
          Addr(pArx^.PolTime),SShSSm_12,InBlock,ValX,ValY,Txt,'час:мин');
    3: Result:=Convers('Расход за день',
          Addr(pArx^.PolVol),(ParentCtr as TFSalat).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
    4: Result:=Convers('Света за день',
          Addr(pArx^.SolRad),SSSS,InBlock,ValX,ValY,Txt,'Дж/см2');
    5: Result:=Convers('Дождь 1 клапан',
          Addr(pArx^.TimeValRein[1]),SShSSm_12,InBlock,ValX,ValY,Txt,'час:мин');
    6: Result:=Convers('Дождь 2 клапан',
          Addr(pArx^.TimeValRein[2]),SShSSm_12,InBlock,ValX,ValY,Txt,'час:мин');
     else begin
      Cas:=ValY-7;
      vHour:=(Cas div 7)+1; // 8/2005 Номер часа с 1
      if vHour>24 then begin
        Cas:=Cas-24*7;     //Номер пункта после часов

       case Cas of
           0: Result:=Convers('Дозатор А работал',
                Addr(pArx^.TimeMat[1]),SSSS,InBlock,ValX,ValY,Txt,'сек');
           1: Result:=Convers('Дозатор В работал',
                Addr(pArx^.TimeMat[2]),SSSS,InBlock,ValX,ValY,Txt,'сек');
           2: Result:=Convers('Дозатор рН работал',
                Addr(pArx^.TimeMat[3]),SSSS,InBlock,ValX,ValY,Txt,'сек');
           end;


{       NKl:=(Cas div 2);   //Номер маточного клапана с 0
        if NKl>=cNumMat324 then begin Result:=cEndCol;Exit;end;
        Cas:=Cas mod 2;
        case Cas of
         0: Result:=Convers('Дозатор '+char(ord('A')+NKl)+' работал',
           Addr(pArx^.TimeMat[NKl+1]),SSmSSs,InBlock,ValX,ValY,Txt,'мин:сек');
         1: Result:=Convers('Маточный '+char(ord('A')+NKl)+' расход',
           Addr(pArx^.RasMat[NKl+1]),SSSpS,InBlock,ValX,ValY,Txt,'см');
         end; }
         Exit;
        end;
      Cas:=Cas mod 7;     //Параметр в часе с 0
      case Cas of
        0: Result:=Convers('C '+IntToStr(vHour-1)+' до '+IntToStr(vHour)+' часа Полив',
          Addr(pArx^.Hour[vHour].Time),SShSSm_12,InBlock,ValX,ValY,Txt,'час:мин');
        1: Result:=Convers('C '+IntToStr(vHour-1)+' до '+IntToStr(vHour)+' часа Расход',
          Addr(pArx^.Hour[vHour].Vol),(ParentCtr as TFSalat).ScaleRasxod,InBlock,ValX,ValY,Txt,'м3');
        2..6: Result:=Convers('C '+IntToStr(vHour-1)+' до '+IntToStr(vHour)+' часа Среднее '+NameChanSalat[Cas-1],
          Addr(pArx^.Hour[vHour].Midl[Cas-1]),SSpSS,InBlock,ValX,ValY,Txt,EdChanSalat[Cas-1]);
        end;
      end;
    end;
    if (ValX>0) and (ValY>0) and(Result=0) then Txt:='~';
end;

//---- END АРХИВ Salat ------------------

end.
