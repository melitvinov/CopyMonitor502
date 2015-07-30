unit F101;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FConstType, FController, PicCtr, SetGrid, MessageU, Grids_ts, TSGrid;

type THot=Class(TBlock)
public
     procedure Init;override;
//     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
//        var Txt:String):Double;override;
     procedure PostPortRead; override;
end;

type TConfig=Class(TBlock)
public
     procedure Init;override;
//     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
//       var Txt:String):Double;override;
//     procedure PostPortRead; override;
end;
type TCalibr=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     procedure PostPortRead; override;
end;

type
  TForm101 = class(TFPicCtr)
    xGrid: TtsGrid;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
  end;

var
  Form101: TForm101;

implementation

{$R *.dfm}
uses audit;

const
        cSizeColHot=60; //размер Hot блока
        cCountYHot=19;//41
var NameHot:array [1..cCountYHot] of TNameConst=(
//(Name:'Текущая фаза';Frm:SSSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
//   Def:HIDE_MIN_MAX;Index:0;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'EC1';Frm:SSpSS;Ed:'mS';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:2;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'pH1';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:4;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'EC2';Frm:SSpSS;Ed:'mS';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:6;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'pH2';Frm:SSpSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:8;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'EC3';Frm:SSpSS;Ed:'mS';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:10;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Sun';Frm:SSSS;Ed:'Wt';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:12;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'T-EC1';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:18;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'T-EC2';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:20;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'T-EC3';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:22;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Lev1';Frm:SSSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:34;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Lev2';Frm:SSSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:36;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Lev3';Frm:SSSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:38;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Lev4';Frm:SSSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:40;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'AD592';Frm:SSSpS;Ed:'°C';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:24;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Вес';Frm:SSpSS;Ed:'кГ';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:26;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'0-5V';Frm:SSSpS;Ed:'mV';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:32;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Correc EC1';Frm:SSSS;Ed:'';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:50;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Объем';Frm:SSpSS;Ed:'м3';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:44;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST),
(Name:'Расход';Frm:SSSS;Ed:'л/час';TipSens:TipCalc;Min:0;Max:0;
   Def:HIDE_MIN_MAX;Index:42;Mech:3;AccessR:RW_GUEST;AccessW:RW_GUEST)
   );

var XNamesHot:array [1..2] of TXNames=(
    (Name:'Вычислено';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0),
    (Name:'Принято';Frm:SSSS;Ed:'mV';Index:cSizeColHot;Cfg:0;Kind:0)
    );


procedure THot.Init;
begin
     CountX:=2;
     CountY:=cCountYHot;
     SizeCol:=cSizeColHot;
     FullSize:=SizeCol*2;
     SendByte:=1;
     ReceiveByte:=SizeCol;
     Pref:=ProgMess[196]; //'Состояние';
     NameBlock:=ProgMess[196]; //'Состояние полива';
     FixRow:=1;
     Translator:=CountY;
     ConstNames:=Addr(NameHot[1]);
     XNames:=Addr(XNamesHot[1]);
     XNamesCount:=CountX;
end;

procedure THot.PostPortRead;
var i:integer; pHot:PByteArray; tx:string;
begin
  pHot:=Adr;
  ParentCtr.Block[2].SetEndRecord;
  for i:=1 to CountY do
    begin
    pHot^[ConstNames[i].Index+SizeCol]:=pHot^[ConstNames[i].Index];
    pHot^[ConstNames[i].Index+SizeCol+1]:=pHot^[ConstNames[i].Index+1];
    ParentCtr.Block[2].LoadXYvirt(cOutBlock,6,i,tx);
    LoadXYvirt(cInBlock,1,i,tx);
    end;
end;

//===============================================
const V1=1;S1=2;V2=3;S2=4;mV=5;Cal=6;

var XNamesCalibr:array [1..6] of TXNames=(
    (Name:'Напряжение 1';Frm:SSSS;Ed:'mV';Index:0;Cfg:0;Kind:0),
    (Name:'Эталон 1';Frm:None;Ed:'';Index:cSizeColHot;Cfg:0;Kind:0),
    (Name:'Напряжение 2';Frm:SSSS;Ed:'mV';Index:cSizeColHot*2;Cfg:0;Kind:0),
    (Name:'Эталон 2';Frm:None;Ed:'';Index:cSizeColHot*3;Cfg:0;Kind:0),
    (Name:'Принято';Frm:SSSS;Ed:'mV';Index:0;Cfg:0;Kind:0),
    (Name:'Вычислено';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0)
    );

procedure TCalibr.Init;
begin
     CountX:=6;
     CountY:=cCountYHot;
     SizeCol:=cSizeColHot;
     FullSize:=SizeCol*4;
     SendByte:=0;
     Pref:=ProgMess[203]; //'Калибровки';
     NameBlock:=ProgMess[204]; //'Калибровка датчиков';
     FixRow:=1;
     Translator:=CountY;
     ConstNames:=Addr(NameHot[1]);
     XNames:=Addr(XNamesCalibr[1]);
     XNamesCount:=CountX;
end;

function TCalibr.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var vV1,vS1:double; tx:string;
begin
    if (ValX=Cal) and (ValY>0) then
      begin
      vV1:=LoadXYvirt(cOutBlock,V1,ValY,tx);
      vS1:=LoadXYvirt(cOutBlock,S1,ValY,tx);
      try
      Result:=vS1+(ParentCtr.Block[0].LoadXYvirt(cOutBlock,2,ValY,tx)-vV1)
      /(LoadXYvirt(cOutBlock,V2,ValY,tx)-vV1)
      *(LoadXYvirt(cOutBlock,S2,ValY,tx)-vS1);
      Txt:=FormatFloat('0.##',Result);
      except Result:=0; Txt:='~'; end;  //'error'
      Exit;
      end;
    if (ValX=mV) then
      begin
      if (ValY>0) then ParentCtr.Block[0].LoadXYvirt(cOutBlock,2,ValY,Txt)
      else Txt:=TimeToStr(ParentCtr.Block[0].BlDate);
      Exit;
      end;
    Result:= inherited  LoadXYvirt(vInBlock,ValX,ValY,Txt);
end;
//=======================================================================
const
  SUM_NAME_CONFIG	 =2; //
  cSizeColConf     =100;//10;

var NameConfig:array [1..SUM_NAME_CONFIG] of TNameConst=(
(Name:'Тип контроллера';Frm:SS;Ed:'';TipSens:TipControl;Min:1;Max:110;Def:HIDE_MIN_MAX;
  Index:4; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT),
(Name:'Модификация контроллера';Frm:SS;Ed:'';TipSens:TipControl;Min:0;Max:0;Def:HIDE_MIN_MAX;
  Index:3; Mech:0; AccessR:RW_GUEST;AccessW:RW_NOEDIT));

procedure TConfig.Init;//override;
begin
     CountY:=SUM_NAME_CONFIG;
     CountX:=1;
     SizeCol:=cSizeColConf;
     FullSize:=SizeCol;
     SendByte:=FullSize;
     Pref:=ProgMess[193]; //'Конфигурация';
     NameBlock:=ProgMess[194]; //'Конфигурация оборудования';
     FixRow:=1;
     Translator:=CountY;
     ConstNames:=Addr(NameConfig[1]);
//     XNames:=Addr(XNamesConf[1]);
//     XNamesCount:=CountX;
end;



procedure TForm101.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
     Design:='F101';
     IsIPC:=true;
     THot.Create(Self);      //0
     TConfig.Create(Self);         //ConfigBlock:=
     TCalibr.Create(Self);                      //2
//     TTimer.Create(Self);                       //3
//     TControl.Create(Self);  //1
//     BlockArxMC:=TArxivDez.Create(Self);           //7      BlockArxiv:=
     AuditBlock:=TAudit.Create(Self);
//     if IdentCtr[1]=0 then Bevel1.Width:=0 else
//     LoadImageSkin(Image1,'UVDisinf.jpg');
end;

procedure TForm101.SetPicCtr;
//var   //pHot:PByteArray;
//      Txt:string;
begin
  BlockToGrid(Block[0],xGrid);
//  pHot:=Block[0].Adr;
  if Not Block[0].Ready then Exit;
//          Block[0].LoadXY(cOutBlock,1,1,Txt);
          PSost.Caption:='В работе';//Txt;
          PSost.Color:=clGreen;
end;

end.
