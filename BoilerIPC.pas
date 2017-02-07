unit BoilerIPC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, inifiles, DateUtils, ComCtrls,
  FConstType, FBox, FPanel, GGraf, FController, PicCtr, StdCtrls,  Grids, DefineBoil,
  Menus, Grids_ts, TSGrid, GIFDef, GIFComponent, ActnMan, ActnColorMaps,
  jpeg, FPicLabel, ImgList, FPicPanel, Buttons, Gauges, GIFElem;

const  cIdentBoil=396;
//------------------------------------
type THotTP=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     function GetExist(x,y:integer):TConfigExist; override;
     procedure PostPortRead;override;
     procedure TestCtrTime;
    procedure SetTree(var Tree:TTreeView); override;    
//     procedure SetCO2Tasks;
//     procedure SetTree(var Tree:TTreeView);override;
end;
type THotGroups=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
     procedure SetGroupTasks;
end;

type THotBoilers=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     procedure PostPortRead;override;
//     procedure TestCtrTime;
//     procedure SetTree(var Tree:TTreeView);override;
end;

type THotColls=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type THotBus=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type THotElGroups=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type THotPanels=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;

end;

type THotHPs=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type THotMech=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double; override;
end;


type THotAlarm=class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double; override;
end;


type THotClients=Class(TBlock)
public
     procedure Init;override;
     function  LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
      procedure CalcMax;
end;

{type THotMeteo=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
//     function SendFromPort(EndMethod: TEndPortMethod):Boolean;override;
end; }

type TControlM=Class(TBlock)
public
     procedure Init;override;
end;

type TParamsPID=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TCalSensBoilIPC=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TBoilTimer=Class(TBlock)
public
     procedure Init;override;
end;

type TBoilArx=Class(TBlock)
public
     procedure Init;override;
end;

type TBoilArxPC=Class(TBlock)
private
    WriteArchivDate:TDateTime;
    function CalcDayArxPC(var ArxDate:TDateTime):Boolean;
    function CalcAllArxPC:Boolean;
//    procedure ArchivToWeb;
public
     procedure Init;override;
//     function LoadXYvirt(InBlock:Byte;ValX,ValY:Integer;
//       var Txt:String):Double;override;
end;


type TElTimer=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;


type TBoilConfig=Class(TBlock)
public
     procedure Init;override;
//     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
//       var Txt:String):Double;override;
end;

type TPanelPlan=Class(TBlock)
public
     procedure Init;override;
     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;override;
end;

type TElGroupPlan=Class(TBlock)
public
     procedure Init;override;
end;

type THPPlan=Class(TBlock)
public
     procedure Init;override;
end;

type TBoilerPlan=Class(TBlock)
public
     procedure Init;override;
end;

type TCOPlan=Class(TBlock)
public
     procedure Init;override;
end;

type TCommonHot=Class(TBlock)
public
     procedure Init;override;
     procedure CalcComPower;
     procedure SetCO2Tasks;
     
//     function LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
//       var Txt:String):Double;override;
end;

type
  TFBoilerIPC = class(TFPicCtr)
    pcBoiler: TPageControl;
    TSBoiler: TTabSheet;
    Splitter2: TSplitter;
    FPMeteoBoil: TFPanel;
    Splitter1: TSplitter;
    FPMeteo: TFPanel;
    FPanel10: TFPanel;
    GIFSShow2: TGIFSShow;
    StringGridCommon: TtsGrid;
    FPBoils: TFPanel;
    FPanel9: TFPanel;
    GIFSShow1: TGIFSShow;
    StringGridBoiler: TtsGrid;
    FPanel1: TFPanel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    FPGroup: TFPanel;
    FPanel7: TFPanel;
    GIFSShow4: TGIFSShow;
    StringGridGroup: TtsGrid;
    FPanel6: TFPanel;
    FPanel8: TFPanel;
    GIFSShow3: TGIFSShow;
    StringGridClient: TtsGrid;
    FCogen: TFPanel;
    FPanel3: TFPanel;
    GIFSShow5: TGIFSShow;
    StringGridCL: TtsGrid;
    TSElectric: TTabSheet;
    Splitter5: TSplitter;
    FPanel2: TFPanel;
    FPanel4: TFPanel;
    FPanel5: TFPanel;
    GIFSShow6: TGIFSShow;
    StringGridPanels: TtsGrid;
    FPanel11: TFPanel;
    Splitter6: TSplitter;
    Splitter7: TSplitter;
    FPanel12: TFPanel;
    FPanel13: TFPanel;
    GIFSShow7: TGIFSShow;
    StringGridElGroup: TtsGrid;
    FPanel14: TFPanel;
    FPanel15: TFPanel;
    GIFSShow8: TGIFSShow;
    StringGridHP: TtsGrid;
    FPanel16: TFPanel;
    FPanel17: TFPanel;
    GIFSShow9: TGIFSShow;
    StringGridBus: TtsGrid;
    TSElectricView: TTabSheet;
    Panel1: TPanel;
    tsElShow: TtsGrid;
    Splitter8: TSplitter;
    FPanel118: TFPanel;
    GIFSShow10: TGIFSShow;
    LightIL: TImageList;
    FPanel18: TFPanel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    ImageDistributionBoards: TImage;
    HandPanel: TPanel;
    Panel5: TPanel;
    bbSet: TBitBtn;
    bbCancel: TBitBtn;
    FPName: TFPicPanel;
    FPMode: TFPicLabel;
    FPPos: TFPicLabel;
    FPicLabel99: TFPicLabel;
    FPicLabel98: TFPicLabel;
    FPicLabel97: TFPicLabel;
    FPicLabel96: TFPicLabel;
    FPicLabel95: TFPicLabel;
    FPicLabel94: TFPicLabel;
    FPicLabel93: TFPicLabel;
    FPicLabel92: TFPicLabel;
    FPicLabel91: TFPicLabel;
    FPicLabel90: TFPicLabel;
    FPicLabel89: TFPicLabel;
    FPicLabel88: TFPicLabel;
    FPicLabel87: TFPicLabel;
    FPicLabel86: TFPicLabel;
    FPicLabel85: TFPicLabel;
    FPicLabel84: TFPicLabel;
    FPicLabel83: TFPicLabel;
    FPicLabel82: TFPicLabel;
    FPicLabel81: TFPicLabel;
    FPicLabel80: TFPicLabel;
    FPicLabel79: TFPicLabel;
    FPicLabel78: TFPicLabel;
    FPicLabel77: TFPicLabel;
    FPicLabel76: TFPicLabel;
    FPicLabel75: TFPicLabel;
    FPicLabel74: TFPicLabel;
    FPicLabel73: TFPicLabel;
    FPicLabel72: TFPicLabel;
    FPicLabel71: TFPicLabel;
    FPicLabel70: TFPicLabel;
    FPicLabel69: TFPicLabel;
    FPicLabel68: TFPicLabel;
    FPicLabel67: TFPicLabel;
    FPicLabel66: TFPicLabel;
    FPicLabel65: TFPicLabel;
    FPicLabel64: TFPicLabel;
    FPicLabel63: TFPicLabel;
    FPicLabel62: TFPicLabel;
    FPicLabel61: TFPicLabel;
    FPicLabel60: TFPicLabel;
    FPicLabel59: TFPicLabel;
    FPicLabel58: TFPicLabel;
    FPicLabel57: TFPicLabel;
    FPicLabel56: TFPicLabel;
    FPicLabel55: TFPicLabel;
    FPicLabel54: TFPicLabel;
    FPicLabel53: TFPicLabel;
    FPicLabel52: TFPicLabel;
    FPicLabel51: TFPicLabel;
    FPicLabel50: TFPicLabel;
    FPicLabel49: TFPicLabel;
    FPicLabel48: TFPicLabel;
    FPicLabel47: TFPicLabel;
    FPicLabel46: TFPicLabel;
    FPicLabel45: TFPicLabel;
    FPicLabel44: TFPicLabel;
    FPicLabel43: TFPicLabel;
    FPicLabel42: TFPicLabel;
    FPicLabel41: TFPicLabel;
    FPicLabel140: TFPicLabel;
    FPicLabel139: TFPicLabel;
    FPicLabel138: TFPicLabel;
    FPicLabel137: TFPicLabel;
    FPicLabel136: TFPicLabel;
    FPicLabel135: TFPicLabel;
    FPicLabel134: TFPicLabel;
    FPicLabel133: TFPicLabel;
    FPicLabel132: TFPicLabel;
    FPicLabel131: TFPicLabel;
    FPicLabel130: TFPicLabel;
    FPicLabel129: TFPicLabel;
    FPicLabel128: TFPicLabel;
    FPicLabel127: TFPicLabel;
    FPicLabel126: TFPicLabel;
    FPicLabel125: TFPicLabel;
    FPicLabel123: TFPicLabel;
    FPicLabel122: TFPicLabel;
    FPicLabel121: TFPicLabel;
    FPicLabel120: TFPicLabel;
    FPicLabel119: TFPicLabel;
    FPicLabel118: TFPicLabel;
    FPicLabel117: TFPicLabel;
    FPicLabel116: TFPicLabel;
    FPicLabel115: TFPicLabel;
    FPicLabel114: TFPicLabel;
    FPicLabel113: TFPicLabel;
    FPicLabel112: TFPicLabel;
    FPicLabel111: TFPicLabel;
    FPicLabel110: TFPicLabel;
    FPicLabel109: TFPicLabel;
    FPicLabel108: TFPicLabel;
    FPicLabel107: TFPicLabel;
    FPicLabel106: TFPicLabel;
    FPicLabel105: TFPicLabel;
    FPicLabel104: TFPicLabel;
    FPicLabel103: TFPicLabel;
    FPicLabel102: TFPicLabel;
    FPicLabel101: TFPicLabel;
    FPicLabel100: TFPicLabel;
    FPanel119: TFPanel;
    GIFSShow11: TGIFSShow;
    TSBoilerView: TTabSheet;
    Panel2: TPanel;
    StringGridAlarm: TtsGrid;
    FPanel19: TFPanel;
    GIFSShow12: TGIFSShow;
    FPanel20: TFPanel;
    Splitter9: TSplitter;
    ImageBoilRoom: TImage;
    Gauge2: TGauge;
    Gauge13: TGauge;
    Gauge3: TGauge;
    Gauge4: TGauge;
    Gauge5: TGauge;
    Gauge6: TGauge;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Gauge8: TGauge;
    Gauge9: TGauge;
    Gauge10: TGauge;
    Gauge11: TGauge;
    Gauge12: TGauge;
    GIFSShow14: TGIFSShow;
    GIFSShow15: TGIFSShow;
    GIFSShow16: TGIFSShow;
    GIFSShow17: TGIFSShow;
    GIFSShow18: TGIFSShow;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Gauge14: TGauge;
    Label51: TLabel;
    Label52: TLabel;
    Gauge15: TGauge;
    Gauge16: TGauge;
    Gauge17: TGauge;
    Gauge18: TGauge;
    Gauge19: TGauge;
    Gauge20: TGauge;
    Gauge21: TGauge;
    Gauge22: TGauge;
    Gauge23: TGauge;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Panel3: TPanel;
    Label71: TLabel;
    Label78: TLabel;
    Label72: TLabel;
    Panel4: TPanel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Panel6: TPanel;
    Label76: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    ILBoil: TImageList;
    FPicLabel3: TFPicLabel;
    FPicLabel4: TFPicLabel;
    FPicLabel5: TFPicLabel;
    Label80: TLabel;
    Label81: TLabel;
    Gauge24: TGauge;
    Label82: TLabel;
    Label83: TLabel;
    Gauge25: TGauge;
    FPicLabel1: TFPicLabel;
    FPicLabel2: TFPicLabel;
    GIFSShow19: TGIFSShow;
    FPicLabel6: TFPicLabel;
    FPicLabel7: TFPicLabel;
    FPicLabel8: TFPicLabel;
    FPicLabel9: TFPicLabel;
    FPicLabel10: TFPicLabel;
    FPicLabel11: TFPicLabel;
    FPicLabel12: TFPicLabel;
    FPicLabel13: TFPicLabel;
    FPicLabel14: TFPicLabel;
    FPicLabel15: TFPicLabel;
    FPicLabel16: TFPicLabel;
    FPicLabel17: TFPicLabel;
    FPicLabel18: TFPicLabel;
    ILGroup: TImageList;
    FPicLabel19: TFPicLabel;
    FPicLabel20: TFPicLabel;
    FPicLabel21: TFPicLabel;
    FPicLabel22: TFPicLabel;
    FPicLabel23: TFPicLabel;
    FPicLabel24: TFPicLabel;
    FPicLabel25: TFPicLabel;
    FPicLabel26: TFPicLabel;
    FPicLabel27: TFPicLabel;
    FPicLabel28: TFPicLabel;
    FPicLabel29: TFPicLabel;
    FPicLabel30: TFPicLabel;
    FPicLabel31: TFPicLabel;
    FPicLabel32: TFPicLabel;
    FPicLabel33: TFPicLabel;
    FPicLabel34: TFPicLabel;
    FPicLabel35: TFPicLabel;
    FPicLabel36: TFPicLabel;
    FPicLabel37: TFPicLabel;
    FPicLabel38: TFPicLabel;
    TSHPs: TTabSheet;
    FPanel21: TFPanel;
    ImageCoGen: TImage;
    Gauge1: TGauge;
    Label11: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    FPicLabel173: TFPicLabel;
    Panel10: TPanel;
    StringGridAlarm2: TtsGrid;
    FPanel22: TFPanel;
    GIFSShow25: TGIFSShow;
    Splitter10: TSplitter;
    FPicLabel39: TFPicLabel;
    ILHPs: TImageList;
    FPicLabel40: TFPicLabel;
    FPicLabel141: TFPicLabel;
    FPicLabel142: TFPicLabel;
    FPicLabel143: TFPicLabel;
    FPicLabel144: TFPicLabel;
    FPicLabel145: TFPicLabel;
    FPicLabel146: TFPicLabel;
    FPicLabel147: TFPicLabel;
    FPicLabel148: TFPicLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    FPicLabel149: TFPicLabel;
    FPicLabel150: TFPicLabel;
    FPicLabel151: TFPicLabel;
    FPicLabel152: TFPicLabel;
    FPicLabel153: TFPicLabel;
    FPicLabel154: TFPicLabel;
    FPicLabel155: TFPicLabel;
    FPicLabel156: TFPicLabel;
    FPicLabel157: TFPicLabel;
    ILElectrGr: TImageList;
    FPicLabel158: TFPicLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    FPicLabel159: TFPicLabel;
    FPicLabel160: TFPicLabel;
    FPicLabel161: TFPicLabel;
    FPicLabel162: TFPicLabel;
    FPicLabel163: TFPicLabel;
    FPicLabel164: TFPicLabel;
    FPicLabel165: TFPicLabel;
    FPicLabel166: TFPicLabel;
    FPicLabel167: TFPicLabel;
    FPicLabel168: TFPicLabel;
    FPicLabel169: TFPicLabel;
    FPicLabel170: TFPicLabel;
    FPicLabel171: TFPicLabel;
    FPicLabel172: TFPicLabel;
    FPicLabel174: TFPicLabel;
    FPicLabel175: TFPicLabel;
    FPicLabel176: TFPicLabel;
    FPicLabel177: TFPicLabel;
    FPicLabel178: TFPicLabel;
    Gauge34: TGauge;
    Gauge33: TGauge;
    Gauge32: TGauge;
    Gauge31: TGauge;
    Gauge30: TGauge;
    Gauge29: TGauge;
    Gauge28: TGauge;
    Gauge27: TGauge;
    Gauge26: TGauge;
    Gauge7: TGauge;
    Label151: TLabel;
    Label152: TLabel;
    Gauge35: TGauge;
    Gauge36: TGauge;
    Gauge37: TGauge;
    Gauge38: TGauge;
    Gauge39: TGauge;
    Gauge40: TGauge;
    FPicLabel179: TFPicLabel;
    FPicLabel180: TFPicLabel;
    FPicLabel181: TFPicLabel;
    FPicLabel182: TFPicLabel;
    FPicLabel183: TFPicLabel;
    FPicLabel184: TFPicLabel;
    FPicLabel185: TFPicLabel;
    FPicLabel186: TFPicLabel;
    FPicLabel187: TFPicLabel;
    FPicLabel188: TFPicLabel;
    FPicLabel189: TFPicLabel;
    FPicLabel190: TFPicLabel;
    FPicLabel191: TFPicLabel;
    FPicLabel192: TFPicLabel;
    FPicLabel193: TFPicLabel;
    FPicLabel194: TFPicLabel;
    FPicLabel195: TFPicLabel;
    FPicLabel196: TFPicLabel;
    FPicLabel197: TFPicLabel;
    FPicLabel198: TFPicLabel;
    Label153: TLabel;
    FPicLabel199: TFPicLabel;
    FPicLabel200: TFPicLabel;
    FPicLabel201: TFPicLabel;
    FPicLabel202: TFPicLabel;
    FPicLabel203: TFPicLabel;
    FPicLabel204: TFPicLabel;
    FPicLabel205: TFPicLabel;
    FPicLabel206: TFPicLabel;
    FPicLabel207: TFPicLabel;
    FPicLabel208: TFPicLabel;
    FPicLabel209: TFPicLabel;
    FPicLabel210: TFPicLabel;
    FPicLabel211: TFPicLabel;
    FPicLabel212: TFPicLabel;
    FPicLabel213: TFPicLabel;
    FPicLabel214: TFPicLabel;
    FPicLabel215: TFPicLabel;
    FPicLabel216: TFPicLabel;
    FPicLabel217: TFPicLabel;
    FPicLabel218: TFPicLabel;
    FPicLabel219: TFPicLabel;
    FPicLabel220: TFPicLabel;
    FPicLabel221: TFPicLabel;
    FPicLabel222: TFPicLabel;
    FPicLabel223: TFPicLabel;
    FPicLabel224: TFPicLabel;
    FPicLabel225: TFPicLabel;
    FPicLabel226: TFPicLabel;
    FPicLabel227: TFPicLabel;
    FPicLabel228: TFPicLabel;
    Label173: TLabel;
    Label174: TLabel;
    FPicLabel124: TFPicLabel;
    Label175: TLabel;
    Label176: TLabel;
    procedure pmAutoFormatClick(Sender: TObject);
    procedure FPicLabel102Click(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure bbSetClick(Sender: TObject);
    procedure FPModeClick(Sender: TObject);
    procedure FPanel18DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FPanel18DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ImageDistributionBoardsMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pcBoilerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FPanel18MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    HotClients:THotClients;
    HotBoilers:THotBoilers;
    HotGroups:THotGroups;

    HotCollect:THotColls;

    HotElGroups:THotElGroups;
    HotHP:THotHPs;
    HotBus:THotBus;
    PanelPlan: TPanelPlan;
    ElGroupPlan:TElGroupPlan;
    CommonHot:TCommonHot;
    AlarmHot:THotAlarm;
    procedure SetControl;
    procedure TurnBackValues;

//    NetMeteo:TBlock;
  public
    HotMech:THotMech;
    HotPanels:THotPanels;
    { Public declarations }
//    HotMeteo:TBlock;
    BlockArxMC:TBlock;   //,BlockArxPC
    procedure InitCtr(vIdentCtr:TIdentCtr);override;
    procedure SetPicCtr; override;
    procedure SetElectricView;
    function CtrToFile:string;override;
    function CtrFromFile(CtrNameFile:string):Boolean;override;
    function TagToSens(vTag:Longint):Integer;override;
    function TagToDirect(vTag:Longint):Integer;override;
  end;

//procedure SetGridFromBlock(vStringGrid:TtsGrid;vBlock:TBlock);
procedure GridFromFile(const NameFile:string;Grid:TtsGrid);
function GetColorStatus(x:integer):TColor; //override;


implementation

{$R *.dfm}
uses DefineClim65, Port, ClimCalc, HandClim, MessageU, Audit,
      Climat403, DefineClim403, BoilConfig, SetGrid, HandPanel,FTopMes, Climat510, Climat501U, Climat501S,
  FHotGraf;  //, AddBoiler

var BoilerCountX, BoilerCountY, GroupCountY,CollCountY,
    HPCountY,PanelCountY,ElGroupCountX,ElGroupCountY,BusCountY,ssx,ssy:integer;
    LastRectangle: TRect;
    isDrawing:boolean;


function GetColorStatus(x:integer):TColor; //override;
begin
    case x of
    1: Result:=$0018ADF5;
    2: Result:=$008AE083;
    3: Result:=clAqua;
    4..20: Result:=clRed;
    else Result:=clNone;
    end;
end;

function GetColorGroup(x:integer):TColor; //override;
begin
    case x of
    1: Result:=$00BBF8FD;
    2: Result:=$00FFFFCE;
    3: Result:=$00BBFFBB;
    4: Result:=$00FFC6FF;
    5: Result:=$00BFBFFF;
    6: Result:=$00D6D6D6;
    7: Result:=$0097CBFF;
    8: Result:=$00FFBFBF;
    9: Result:=$00FFC1FF;
    10: Result:=clMoneyGreen;    
    11: Result:=$00BBF8FD;
    12: Result:=$00FFFFCE;
    13: Result:=$00BBFFBB;
    14: Result:=$00FFC6FF;
    15: Result:=$00BFBFFF;
    16: Result:=$00D6D6D6;
    17: Result:=$0097CBFF;
    18: Result:=$00FFBFBF;
    19: Result:=$00FFC1FF;
    20: Result:=clMoneyGreen;

    else Result:=clNone;
    end;
end;

function GetPanelStatus(hand,cond:integer):TColor; //override;
begin
    Result:=clNone;
    if (cond>0) then
      Result:=$0011D206;
    if (hand>0) then
    begin
      Result:=$00ABD1F3;
      if (cond>0) then
        Result:=$001D82DC;
    end;
end;

const  idSumBoils=1; idSumElGr=2;


var XNamesOneLine:array [1..1] of TXNames=(
    (Name:'Значение';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0)
     );

procedure TFBoilerIPC.InitCtr(vIdentCtr:TIdentCtr);
begin
     inherited;
     NameIdent:=cIdentBoil;
     Design:='Boilers';
     IPAddress:='нет';
     IsIPC:=true;     
     BoilerCountX:=vIdentCtr[idSumBoils];  // котлы
     BoilerCountY:=SumValYHotBoilers;
     GroupCountY:=SumValHotGroups;
     CollCountY:=SumValYHotCL;
     HPCountY:=SumValYHotHP;
     PanelCountY:=SumValYHotPanels;
     ElGroupCountX:=vIdentCtr[idSumElGr];
     ElGroupCountY:=SumValYHotElGroups;
     BusCountY:=SumValYHotBus;     // Создание блоков данных в порядке как в контроллере
     THotTP.Create(Self);
     ConfigBlock:=TBoilConfig.Create(Self);         //6
     TCalSensBoilIPC.Create(Self);
     if (BoilerCountX>0) then
       TBoilTimer.Create(Self);
     if (ElGroupCountX>0) then
       TElTimer.Create(Self);
     TParamsPID.Create(Self);
     TControlM.Create(Self);
     if (BoilerCountX>0) then
       TBoilerPlan.Create(Self);
     if (BoilerCountX>0) then
       TCOPlan.Create(Self);
     if (ElGroupCountX>0) then
       PanelPlan:=TPanelPlan.Create(Self);
     if (ElGroupCountX>0) then
       ElGroupPlan:=TElGroupPlan.Create(Self);
     if (ElGroupCountX>0) then
       THPPlan.Create(Self);
     BlockArxMC:=TBoilArx.Create(Self);
     blPCArchive:=TBoilArxPC.Create(Self);
//-------------------------------------------------
//     HotMeteo:=THotMeteo.Create(Self);
//     NetMeteo:=TNetMeteo.Create(Self);
     HotClients:=THotClients.Create(Self);
     HotBoilers:=THotBoilers.Create(Self);
     HotGroups:=THotGroups.Create(Self);
     HotCollect:=THotColls.Create(Self);
     HotPanels:=THotPanels.Create(Self);
     HotElGroups:=THotElGroups.Create(Self);
     HotHP:=THotHPs.Create(Self);
     HotBus:=THotBus.Create(Self);
     CommonHot:=TCommonHot.Create(Self);
     HotMech:=THotMech.Create(Self);
     AlarmHot:=THotAlarm.Create(Self);
     pcBoiler.Pages[0].TabVisible:=true;
     pcBoiler.Pages[1].TabVisible:=true;
     pcBoiler.Pages[2].TabVisible:=true;
     pcBoiler.Pages[3].TabVisible:=true;
     pcBoiler.Pages[4].TabVisible:=true;

     if (BoilerCountX=0) then
     begin
       pcBoiler.ActivePageIndex:=1;
       pcBoiler.Pages[0].TabVisible:=false;
       pcBoiler.Pages[1].TabVisible:=false;
     end;
     if (ElGroupCountX=0) then
     begin
       pcBoiler.Pages[2].TabVisible:=false;
       pcBoiler.Pages[3].TabVisible:=false;
       pcBoiler.Pages[4].TabVisible:=false;
     end;

     LoadImageSkin(ImageBoilRoom,'BoilerRoomIPC.jpg');
     LoadImageSkin(ImageCoGen,'ElectricRoomIPC.jpg');
     LoadImageSkin(ImageDistributionBoards,'ElectricRoomIPC.jpg');    //  task 68 !!!

     AuditBlock:=TAudit.Create(Self);
end;

function TFBoilerIPC.TagToSens(vTag:integer):integer;
begin
  Result:=vTag mod 10000;
end;

function TFBoilerIPC.TagToDirect(vTag:Longint):Integer;
begin
  Result:=(vTag div 10000) mod 100;;
end;
{procedure SetGridFromBlock(vStringGrid:TtsGrid;vBlock:TBlock);
var X,Y,SizeTx,tw:WORD;
    st:String;
begin
vStringGrid.BeginUpdate;
try
  with vStringGrid do
  begin
    with vBlock do
    begin
      Cols := CountX + 1;
      Rows := CountY + 1;
    end;
    for X := 0 to Cols - 1 do
    begin
      SizeTx := 0;
      for Y := 1 to Rows do
      begin
        vBlock.LoadXY(cOutBlock,X,Y-1,st);
        if ConfigExist=cfExistFalse then       //cfExistNone,cfExistTrue,cfExistFalse
            begin
            st:='';
//            GridCellColor:=clGrayText;
//            Grid.CellParentFont[X+1,Y] := false;
//            Grid.CellFont[X+1,Y].Color := clGrayText; //imColor;
            end;
        Cell[X+1,Y]:=st;
        tw := vStringGrid.Canvas.TextWidth(st);
        if tw > SizeTx then
          SizeTx := tw;
      end;
    end;
  end;
finally
    vStringGrid.EndUpdate;
end;
end;
}

procedure TFBoilerIPC.SetElectricView;
var i,j,currRow,currCol:integer;
  txt,txt1: string;
begin
  tsElShow.Cols:=2;
  tsElShow.Rows:=1;
  if ElGroupCountX=0 then exit;
  currRow:=1;
  for i:=1 to eSumElGroups do
  begin
    HotElGroups.LoadXY(cOutBlock,i,0,txt);
    tsElShow.Cell[1,currRow]:=txt+#13;
    HotElGroups.LoadXY(cOutBlock,i,DEG_Proc,txt);
    HotElGroups.LoadXY(cOutBlock,i,DEG_Time,txt1);
    tsElShow.Cell[1,currRow]:=tsElShow.Cell[1,currRow]+txt+' - '+txt1;
    tsElShow.CellTag[1,currRow]:=i;
    tsElShow.CellColor[1,currRow]:=GetColorGroup(i);
    currCol:=2;
    for j:=1 to eSumPanels do
    begin
      if PanelPlan.LoadXY(cOutBlock,j,DPP_NumGrp,txt)=i then with HotPanels do
      begin
        LoadXY(cOutBlock,j,0,txt);
        LoadXY(cOutBlock,j,DHP_Time,txt1);
        tsElShow.Cell[currCol,currRow]:=txt+#13+txt1;
        tsElShow.CellColor[currCol,currRow]:=GetPanelStatus(round(HotMech.LoadXY(cOutBlock,1,DMH_PanelStart+j*2-2,txt1)),round(HotMech.LoadXY(cOutBlock,1,DMH_PanelStart+j*2-1,txt1)));

        currCol:=currCol+1;
        if currCol>tsElShow.Cols then
          tsElShow.Cols:=tsElShow.Cols+1;
        if currCol>11 then
        begin
          currRow:=currRow+1;
          tsElShow.Rows:=tsElShow.Rows+1;
          tsElShow.Cell[1,currRow]:=tsElShow.Cell[1,currRow-1];
          tsElShow.CellTag[1,currRow]:=i;          
          tsElShow.CellColor[1,currRow]:=GetColorGroup(i);
          currCol:=2;
        end;
      end;
    end;
    if currCol>2 then
    begin
      currRow:=currRow+1;
      tsElShow.Rows:=tsElShow.Rows+1;
    end;
  end;
  tsElShow.Cols:=tsElShow.Cols-1;
  tsElShow.Rows:=tsElShow.Rows-1;

end;

procedure TFBoilerIPC.SetPicCtr;
var Y:integer;
    st,err:string;

begin
//  HotGroups.SetGroupTasks;   //!!!!       (ParentCtr as TFBoiler).
//try
  (blPCArchive as TBoilArxPC).CalcAllArxPC;
  HotClients.CountX:=SumClimatClients+1;
//  Caption:=DataPath+CtrName+FormatDateTime(LongDateFormat+' '+LongTimeFormat,Block[0].BlDate);
  BlockToGrid(HotClients,StringGridClient);    ///killIPC

  if (BoilerCountX>0) then
  begin
    BlockToGrid(HotBoilers,StringGridBoiler);
    BlockToGrid(HotGroups,StringGridGroup);
    BlockToGrid(HotCollect,StringGridCL);
    BlockToGrid(AlarmHot,StringGridAlarm);
  end;
  if (ElGroupCountX>0) then
  begin
    BlockToGrid(HotPanels,StringGridPanels);
    BlockToGrid(HotElGroups,StringGridElGroup);
    BlockToGrid(HotHP,StringGridHP);
    BlockToGrid(HotBus,StringGridBus);
    BlockToGrid(AlarmHot,StringGridAlarm2);
    SetElectricView;
  end;
  BlockToGrid(CommonHot,StringGridCommon);

  if Not Block[0].Ready  then Exit;
  PSost.Caption:='Управляет';//Авария управления';
  PSost.Color:=clGreen;
  st:='';
  for Y:=0 to AlarmHot.CountY do
  begin
    if AlarmHot.LoadXY(cOutBlock,1,Y,err)>faAlarm then
      begin
      AlarmHot.LoadXY(cOutBlock,0,Y,st);
      if PSost.Color = clGreen then
          begin
          PSost.Caption:=st+' '+err;
          PSost.Color:=clRed;
          continue;
          //MessageDlg('Внимание! Обнаружена авария: '+st+'-'+err+'. Примите меры!',mtError,[mbOk],0);   ё
          end;
      HotMessage(CtrName,st+' '+err,clNone,clPurple);
//      break;
      end;
  end;
//except HotMessage(CtrName,'Invalid data',clNone,clPurple); end;
//  if st<>'' then
//  MessageBeep(MB_ICONASTERISK);

//  SetGridFromBlock(StringGridClient,HotClients);
//  SetGridFromBlock(StringGridBoiler,HotBoilers);
//  SetGridFromBlock(StringGridGroup,HotGroups);
//  SetGridFromBlock(StringGridCommon,CommonHot);
//  SetGridBoiler(StringGridMeteo,NetMeteo);
{  with StringGridMeteo,NetMeteo do
    begin
    Cols := 3;
    Rows := CountY + 1;
    for X := 1 to 3 do
      begin
      XX:=X-1;
      if XX=1 then XX:=3;
//      if XX=2 then XX:=3;
      for Y := 1 to Rows do
        begin
        LoadXY(cOutBlock,XX,Y-1,st);
        Cell[X,Y]:=st;
        end;
      end;
    end; }
end;


procedure THotAlarm.Init;
begin
     CountX := 1; //sumGroups;
     CountY := SumValYAlarmHot;
     SizeCol := cHotFullSize;
     FullSize := SizeCol;
     SendByte := 1;
     Pref := 'Аварии';
     NameBlock := 'Аварии';
     ConstNames:=Addr(AlarmHotName[1]);
     Sort := srHowHot;
     XNames:=Addr(XNamesOneLine[1]);
     XNamesCount:=CountX;
end;

function THotAlarm.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;

begin
    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
    if ((ValX=0)or(ValY=0)) then exit;

    GridCellColor:=GetColorStatus(round(Result));
end;

procedure THotMech.Init;
begin
     CountX := 1; //sumGroups;
     CountY := SumValYMechHot;
     SizeCol := cHotFullSize;
     FullSize := SizeCol;
     StartSend:=iPIDPos;
     SendByte := eMAX_SUM_PID*2+eMAX_SUM_PUMP;
     Pref := 'Ввод-вывод';
     NameBlock := 'Ввод-вывод';
     ConstNames:=Addr(MechHotName[1]);
     Sort := srHowHot;
     XNames:=Addr(XNamesOneLine[1]);
     XNamesCount:=CountX;
end;

function THotMech.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
begin
  Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
  if (ValX=0)and (ValY>=DMH_PanelStart) and (ValY<DMH_PanelStart+eSumPanels*2) then
  begin
    ParentCtr.ConfigBlock.LoadXY(cOutBlock,0,DZM_PANELON1+((ValY-DMH_PanelStart) div 2),Txt);
    if ((ValY+1) mod 2 =0) then Txt:=Txt+' - режим'
    else Txt:=Txt+' - состояние';
  end;
end;


var XNamesCommonHot:array [1..1] of TXNames=(
    (Name:'Значение';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0)
     );
procedure TCommonHot.Init;
begin
     CountX := 1; //sumGroups;
     CountY := SumValYCommonHot;
     SizeCol := cHotFullSize;
     FullSize := SizeCol;
     SendByte := 1;
     Pref := 'Общие';
     NameBlock := 'Общие';
     ConstNames:=Addr(CommonHotName[1]);
     Sort := srHowHot;
     XNames:=Addr(XNamesOneLine[1]);
     XNamesCount:=CountX;
end;

procedure TCommonHot.CalcComPower;
var   nClient:word;
      vComPower: double;
      st:string;
begin
//  Ready:=False;
  if SumClimatClients < 1 then Exit;
  vComPower:=0;
  for nClient:=1 to SumClimatClients do
  begin
      if ClimatClient[nClient].Ctr is TFClimat403 then
       with ClimatClient[nClient].Ctr as TFClimat403 do
        begin
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
      if ClimatClient[nClient].Ctr is TFClimat510 then
       with ClimatClient[nClient].Ctr as TFClimat510 do
        begin
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
      if ClimatClient[nClient].Ctr is TFClimat501S then
       with ClimatClient[nClient].Ctr as TFClimat501S do
        begin
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
      if ClimatClient[nClient].Ctr is TFClimat501U then
       with ClimatClient[nClient].Ctr as TFClimat501U do
        begin
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
  end;
  st:=FloatToStr(vComPower);
  LoadXY(cInBlock,1,posComPower,st);
//  Ready:=True;
//  ParentCtr.Block[0].Ready := True;
end;

procedure GridFromFile(const NameFile:string;Grid:TtsGrid);
begin
  if FileExists(NameFile) then
    Grid.LoadFromFile(NameFile, cmaNone);
end;

function TFBoilerIPC.CtrFromFile(CtrNameFile:string):Boolean;
var IniFile:TIniFile;
begin
    result:=inherited CtrFromFile(CtrNameFile);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'ClientsTabl.dsg',StringGridClient);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'CommonTabl.dsg',StringGridCommon);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'GroupTabl.dsg',StringGridGroup);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'BoilersTabl.dsg',StringGridBoiler);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'CLTabl.dsg',StringGridCL);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'PanelsTabl.dsg',StringGridPanels);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'HPTabl.dsg',StringGridHP);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'BusTabl.dsg',StringGridBus);
    GridFromFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'ElGroupTabl.dsg',StringGridElGroup);

    IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Monitor.ini');
    FPMeteoBoil.Width:=IniFile.ReadInteger(CtrName,'MeteoWidth',513);
    FPBoils.Height:=IniFile.ReadInteger(CtrName,'BoilsHeight',394);
    FPGroup.Height:=IniFile.ReadInteger(CtrName,'GroupHeight',300);
    IniFile.Free;
    with Block[0] do Ready:=TestEquDate(BlDate,Now,5);
    SetPicCtr;
end;

function TFBoilerIPC.CtrToFile:string;
var IniFile:TIniFile;
begin
    result:=inherited CtrToFile;
    StringGridClient.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'ClientsTabl.dsg', False);
    StringGridCommon.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'CommonTabl.dsg', False);
    StringGridGroup.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'GroupTabl.dsg', False);
    StringGridBoiler.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'BoilersTabl.dsg', False);
    StringGridCL.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'CLTabl.dsg', False);
    StringGridPanels.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'PanelsTabl.dsg', False);
    StringGridHP.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'HPTabl.dsg', False);
    StringGridBus.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'BusTabl.dsg', False);
    StringGridElGroup.SaveToFile(ExtractFilePath(Application.ExeName)+ProgMess[7]+'/'+CtrName+'ElGroupTabl.dsg', False);

    IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Monitor.ini');
    IniFile.WriteInteger(CtrName,'MeteoWidth',FPMeteoBoil.Width);
    IniFile.WriteInteger(CtrName,'BoilsHeight',FPBoils.Height);
    IniFile.WriteInteger(CtrName,'GroupHeight',FPGroup.Height);
    IniFile.Free;
end;

procedure TFBoilerIPC.pmAutoFormatClick(Sender: TObject);
begin
end;
//   ********************************************************************************************************************************
//*********************************************************************
//***************** ТЕКУЩИЕ СОСТОЯНИЯ КЛИЕНТОВ ************************
//*********************************************************************
const
      SumClientsData = 25;
//      ClientsPozY:array[1..SumClientsData] of word=
//        (21,39,130,22,41,69,70,77,78,85,86,93,94,101,102,111,112,138,   //42
//        142,146,150,154,158,160,174);

      ClientsPozY:array[1..SumClientsData] of word=
        (21,39,130,22,41,69,70,77,78,85,86,93,94,101,102,111,112,138,   //42
        142,146,150,154,158,160,174);

      ClientsPozY501S:array[1..SumClientsData] of word=
        (27,51,138,25,53,77,78,85,86,93,94,101,102,109,110,119,120,146,   //42
        150,154,158,162,166,168,182);

      ClientsPozY501U:array[1..SumClientsData] of word=
        (31,58,149,27,60,88,89,96,97,104,105,112,113,120,121,130,131,157,   //42
        161,165,169,173,177,179,193);

procedure THotClients.Init;
begin
  CountX := 1;
  CountY := SumClientsData;
  SizeCol := ParentCtr.Block[0].FullSize;
  FullSize:=ParentCtr.Block[0].FullSize;
  SendByte := 0;//HotBeginByte; // посылка в контроллер
  Pref := 'Потребители';
  NameBlock := 'Запросы потребителей';
  Sort := srHowHot;
  EnableXML:=False;
//  bProperty := bNoGridGraf;
end;

function THotClients.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var nClient,nZone,RealY:integer;
    vConstNames:PTArrayNameConst;
begin
    Ready:=Ready or ParentCtr.Block[0].Ready;
    AccessW:=RW_NOEDIT;
    Result := 0;
    if ValY = 0 then
        begin
        if ValX = 0 then Txt := Pref //ParentCtr.CtrName
        else
          if ValX=1 then Txt := 'Максимум' else
              begin
              with ClimatClient[ValX-1] do
              Txt := Ctr.CtrName+' '+Ctr.GetTextZona(Zone,ValY);
              end;
        Exit;
        end;

    RealY:=ClientsPozY[ValY];
    if ValX=0 then
      begin
        Txt:=DZ_cDefineHot[RealY].Name;
        Exit;
      end;
    if ValX=1 then
      begin
        Result:=Convers('',Addr(PByteArray(Adr)^[iClientsData+(ValY-1)*2]),
        DZ_cDefineHot[RealY].Frm ,vInBlock,ValX,ValY,Txt,DZ_cDefineHot[RealY].Ed);
        Exit;
      end;
    if SumClimatClients <=0 then Exit;
    nClient:=ValX-1; nZone:=ClimatClient[nClient].Zone;

    if (ClimatClient[nClient].Ctr is TFClimat501U) then
  //      if (ClimatClient[nClient].Ctr as TFClimat510U).FansHot<>nil then
         RealY:=ClientsPozY501U[ValY];
    if (ClimatClient[nClient].Ctr is TFClimat501S) then
  //      if (ClimatClient[nClient].Ctr as TFClimat510U).FansHot<>nil then
         RealY:=ClientsPozY501S[ValY];

    Result := ClimatClient[nClient].Ctr.Block[0].LoadXY(vInBlock,nZone,RealY,Txt);
end;

procedure THotClients.CalcMax;
var x,y:integer;
  Txt,TxtMax:string;
  vData,MaxData:double;
//  iMax:integer;
begin
  CountX := 1;
  if ParentCtr.DataPath = '' then CountX:=CountX+SumClimatClients;
  Ready:=ParentCtr.Block[0].Ready;
  if CountX <=1 then Exit;
  Ready:=True;
  ParentCtr.Block[0].Ready:=True;
  BlDate:=Now;
  for y:=1 to CountY do
    begin
    MaxData:=-22222222;
//    iMax:=0;
    TxtMax:='0';
    for x:=1 to SumClimatClients do
      begin
      vData:=LoadXY(cOutBlock,x+1,y,Txt);
      if  RealSensor(imNum)        //((imNum=0) or ((imNum >= imNorm) and (imNum <= imNoCalibr)))
          and ((Now-ClimatClient[x].Ctr.Block[0].BlDate)<(6*cMin))
          and (vData > MaxData) then
            begin
            MaxData:=vData;
//            iMax:=x;
            TxtMax:=Txt;
            end;
      end;
    LoadXY(cInBlock,1,y,TxtMax);
    end;
end;

procedure TCommonHot.SetCO2Tasks;
var StMax :string;
  nBoil, nClient: integer;
  MaxCO2: double;
begin
  if SumClimatClients < 1 then Exit;
  for nBoil:=1 to eSumCO2Units do
      begin
      MaxCO2:=0;
      StMax:='0';
      for nClient:=1 to SumClimatClients do
      begin
        if ClimatClient[nClient].Ctr is TFClimat403 then
          with ClimatClient[nClient].Ctr as TFClimat403 do
            WarmGroupConfig.FindCO2Max(ClimatClient[nClient].Zone,nBoil,MaxCO2,StMax);
        if ClimatClient[nClient].Ctr is TFClimat510 then
          with ClimatClient[nClient].Ctr as TFClimat510 do
            WarmGroupConfig.FindCO2Max(ClimatClient[nClient].Zone,nBoil,MaxCO2,StMax);
        if ClimatClient[nClient].Ctr is TFClimat501S then
          with ClimatClient[nClient].Ctr as TFClimat501S do
            WarmGroupConfig.FindCO2Max(ClimatClient[nClient].Zone,nBoil,MaxCO2,StMax);
        if ClimatClient[nClient].Ctr is TFClimat501U then
          with ClimatClient[nClient].Ctr as TFClimat501U do
            WarmGroupConfig.FindCO2Max(ClimatClient[nClient].Zone,nBoil,MaxCO2,StMax);
      end;
//      StMax:=IntToStr(nBoil*10);   //Убрать
      LoadXY(cInBlock,1,posCO2Task+nBoil,StMax);
      end;
   Ready:=True;
end;

procedure THotTP.PostPortRead;
var SendCopy:integer;
//  StMax :string;
//  nBoil, nClient: integer;
//  MaxCO2: double;
  pHot:pByteArray;
begin
  if ParentCtr.DataPath <> '' then Exit;
  with (ParentCtr as TFBoilerIPC) do
    begin                          
    HotGroups.SetGroupTasks;
    //HotClients.CalcMax;
    CommonHot.SetCO2Tasks;
    CommonHot.CalcComPower;
    end;
//----  Отсылка заданий групп в контроллер
  if Not Ready then Exit;
  SendCopy := SendByte;
  SendByte := 18 * 2 + 1;
  // 1 Byte актуальности (абсолютное смещение iValidData)
  // 10*2 Byte задания воды для групп
  // 6*2 Byte задания СО2
  // 1*2 Byte Мощность теплиц
  // 1*2 Byte Солнце (абсолютное смещение iPCSun)
  pHot := Adr;
  if TestEquDate(mMeteo[comSun].UpdateTime,Now,10) then
            begin
            pHot^[iPCSun+1]:=mMeteo[comSun].Val51[0];
            pHot^[iPCSun]:=mMeteo[comSun].Val51[1];
//раскомментировать если надо передавать накопленную
//            pHot^[iPCSunSum+1]:=mMeteo[comSumSun].Val51[0];
//            pHot^[iPCSunSum]:=mMeteo[comSumSun].Val51[1];
            end else
            begin
//раскомментировать для обнуления если нет данных солнца
//           pHot^[iPCSun+1]:=0;
//            pHot^[iPCSun]:=0;
            end;
  FPort.BlockSend(Self,IN_UNIT,iValidData{DefBoilGroup[pozGroupTask].Index},nil);
//----  восстановить размер передачи по умолчанию
  SendByte := SendCopy;
  TestCtrTime;
end;

{procedure THotClients.SetTree(var Tree:TTreeView);
var// st:string;
    Node1,NodeHead:TTreeNode;
    Param:Txy;
    i,nTemp:word;
    nSens:word;
    Txt:string;
begin
  with ParentCtr as TCtrBoiler,Tree do
  begin
    Items.BeginUpdate;
    // Items.Clear;
    Param.X := 0;
    Param.Y := 0;
    if Items.Count = 0 then
      NodeHead := Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
    else
      NodeHead := Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
    // Заполнение внешних измерений
    Param.X := 1;
    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Общие данные',Param.Ptr);
    for nSens := 1 to SumDataBoilMeteo do
    begin
      Param.Y := nSens + 1000;
      Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
      (Items.AddChildObject(Node1,Txt,Param.Ptr)).ImageIndex := 2;//GetState(cDefineHotV1[nSens].TipSens);
    end;
    // заполнение измерений котлов
    Param.X := 1;
    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Измерения в котельной',Param.Ptr);
    for i := 1 to SumBoilKot do
    begin
      for nSens := 1 to SumKotSens do
      begin
        Param.Y := 1000*(i+1) + nSens;
        Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
        (Items.AddChildObject(Node1,'Котел ' + IntToStr(i) + ' - ' + Txt,Param.Ptr)).ImageIndex := 2;//GetState(cDefineHotV1[nSens].TipSens);
      end;
    end;
    // заполнение измерений групп
    Param.X := 1;
    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Измерения тепловых групп',Param.Ptr);
    for i := 1 to SumBoilGroup do
    begin
      for nSens := 1 to SumGroupSens do
      begin
        Param.Y := 1000 * (i + 1 + SumBoilKot) + nSens;
        Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
        (Items.AddChildObject(Node1,'Группа ' + IntToStr(i) + ' - ' + Txt,Param.Ptr)).ImageIndex := 2;//GetState(cDefineHotV1[nSens].TipSens);
      end;
    end;

    Param.Y := 0;
    Node1 := Items.AddChildObject(NodeHead,'Обогрев',Param.Ptr);
    nTemp := NumTaskGrParam - NumTaskGrParRez + NumKonturPar - NumKonturParRez - (SumGroupSens - 1);
    for i := 1 to SumBoilGroup do
    begin
      for nSens := 1 to nTemp  do
      begin
        Param.Y := 1000 * (i + 1 + SumBoilKot) + SumGroupSens + nSens;
        Block[0].LoadXY(cOutBlock,0,Param.Y,Txt);
        (Items.AddChildObject(Node1,'Группа ' + IntToStr(i) + ' - ' + Txt,Param.Ptr)).ImageIndex := 2;
      end;
    end;

   Items.EndUpdate;
   NodeHead.Expand(False);
   end;

end;  }

//*********************************************************************
//******************* END СОСТОЯНИЕ КЛИЕНТОВ **************************
//*********************************************************************
procedure THotTP.Init;
begin
  CountX := 1;//ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := eSumBoilers * BoilerCountY + eSumGroups * GroupCountY+SumValYCommonHot+eSumCollector * CollCountY+SumValYMechHot
  +  eSumPanels * PanelCountY + eSumElGroups * ElGroupCountY+eSumHPUnits * HPCountY+eSumBuses*BusCountY;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref :=  'Котельная'; //'Состояние';
  NameBlock := 'Состояние котельной'; //'Состояние';
  EnableXML:=False;
//  ConstNames:=Addr(DefHotBoilers[1]);
//  bProperty := bHowHot;
end;

function THotTP.GetExist(x,y:integer):TConfigExist;
var sb,sumgr,sumcom,sumcl,sumhp,sumelgr,sumpan,sumbus,vx,vy:integer;

begin
  if (x=0) or (y=0) then
  begin
    ConfigExist:=cfExistNone;
    Result:=ConfigExist;
    Exit;
  end;
  sb:=eSumBoilers * BoilerCountY;
  if y <= sb then with(ParentCtr as TFBoilerIPC).HotBoilers do
      begin
      vx:=(y-1) div BoilerCountY+1;
      vy:=(y-1) mod BoilerCountY+1;
      Result := GetExist(vx,vy);
      if GetReadAccess(vx,vy)>=NowAccess then Result:=cfExistFalse;
      Exit;
      end;
  sumgr:=sb+eSumGroups * GroupCountY;
  if y <= sumgr then with (ParentCtr as TFBoilerIPC).HotGroups do
      begin
      vx:=(y-sb-1) div GroupCountY+1;
      vy:=(y-sb-1) mod GroupCountY+1;
      Result := GetExist(vx,vy);
      if GetReadAccess(vx,vy)>=NowAccess then Result:=cfExistFalse;
      Exit;
      end;
  sumcl:=sumgr+eSumCollector * CollCountY;
  if y <= sumcl then with (ParentCtr as TFBoilerIPC).HotCollect do
      begin
      vx:=(y-sumgr-1) div CollCountY+1;
      vy:=(y-sumgr-1) mod CollCountY+1;
      Result := GetExist(vx,vy);
      if GetReadAccess(vx,vy)>=NowAccess then Result:=cfExistFalse;
      Exit;
      end;
  sumhp:=sumcl+eSumHPUnits * HPCountY;
  if y <= sumhp then with (ParentCtr as TFBoilerIPC).HotHP do
      begin
      vx:=(y-sumcl-1) div HPCountY+1;
      vy:=(y-sumcl-1) mod HPCountY+1;
      Result := GetExist(vx,vy);
      if GetReadAccess(vx,vy)>=NowAccess then Result:=cfExistFalse;
      Exit;
      end;
  sumelgr:=sumhp+eSumElGroups * ElGroupCountY;
  if y <= sumelgr then with (ParentCtr as TFBoilerIPC).HotElGroups do
      begin
      vx:=(Y-sumhp-1) div ElGroupCountY+1;
      vy:=(Y-sumhp-1) mod ElGroupCountY+1;
      Result := GetExist(vx,vy);
      if GetReadAccess(vx,vy)>=NowAccess then Result:=cfExistFalse;
      Exit;
      end;
  sumbus:=sumelgr+eSumBuses * BusCountY;
  if Y <= sumbus then with (ParentCtr as TFBoilerIPC).HotBus do
      begin
      vx:=(Y-sumelgr-1) div BusCountY+1;
      vy:=(Y-sumelgr-1) mod BusCountY+1;
      Result := GetExist(vx,vy);
      if GetReadAccess(vx,vy)>=NowAccess then Result:=cfExistFalse;
      Exit;
      end;
  sumpan:=sumbus+eSumPanels * PanelCountY;
  if Y <= sumpan then with (ParentCtr as TFBoilerIPC).HotPanels do
      begin
      vx:=(Y-sumbus-1) div PanelCountY+1;
      vy:=(Y-sumbus-1) mod PanelCountY+1;
      Result := GetExist(vx,vy);
      if GetReadAccess(vx,vy)>=NowAccess then Result:=cfExistFalse;
      Exit;
      end;
  sumcom:=sumpan+SumValYCommonHot;
  if Y<= sumcom then
  begin
    Result := (ParentCtr as TFBoilerIPC).CommonHot.GetExist(X,Y-sumpan);
    if (ParentCtr as TFBoilerIPC).CommonHot.GetReadAccess(X,Y-sumpan)>=NowAccess then Result:=cfExistFalse;
    exit;
  end;
  Result := (ParentCtr as TFBoilerIPC).HotMech.GetExist(X,Y-sumcom);
  if (ParentCtr as TFBoilerIPC).HotMech.GetReadAccess(X,Y-sumcom)>=NowAccess then Result:=cfExistFalse;

end;

procedure THotTP.SetTree(var Tree:TTreeView);
var vSt:string;
    Node1,NodeHead:TTreeNode;
    Param,ParamXY:Txy;
    //i,nTemp:word;
    nSens:word;
    sb,sumgr,sumcom,sumcl,sumhp,sumelgr,sumpan,sumbus:integer;
procedure AddToTree(num:integer);
begin
  with Tree do begin
    ParamXY.Y:=num;
    if (GetExist(1,num) = cfExistFalse) or (GetReadAccess(1,num)>=NowAccess) then exit;
    LoadXY(cOutBlock,0,num,vSt);
    Items.AddChildObject(Node1,vSt,ParamXY.Ptr);
  end;
end;
begin

  sb:=eSumBoilers * BoilerCountY;
  sumgr:=sb+eSumGroups * GroupCountY;
  sumcl:=sumgr+eSumCollector * CollCountY;
  sumhp:=sumcl+eSumHPUnits * HPCountY;
  sumelgr:=sumhp+eSumElGroups * ElGroupCountY;
  sumbus:=sumelgr+eSumBuses * BusCountY;
  sumpan:=sumbus+eSumPanels * PanelCountY;
  sumcom:=sumpan+SumValYCommonHot;



   with ParentCtr as TFBoilerIPC,Tree do begin
//    NetMeteo.SetEndRecord;
    Items.BeginUpdate;
    Param.Block:=Self;
    if Items.Count=0 then
        NodeHead:=Items.AddChildObject(nil,ParentCtr.CtrName,Param.Ptr)
      else begin
          Param.Block:=Self;
          NodeHead:=Items.AddChildObject(Items.Item[0],ParentCtr.CtrName,Param.Ptr);
          end;
// Заполнение внешних измерений
      Param.Block:=Self;
      ParamXY.X:=1;
      Node1:=Items.AddChildObject(NodeHead,'Общие данные',Param.Ptr);      //'Общие данные'
      for nSens:=sumpan+1 to sumcom do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Котлы',Param.Ptr);      //'Общие данные'
      for nSens:=1 to sb do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Группы отопления',Param.Ptr);      //'Общие данные'
      for nSens:=sb+1 to sumgr do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Коллектора СО2',Param.Ptr);      //'Общие данные'
      for nSens:=sumgr+1 to sumcl do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Газопоршневые машины',Param.Ptr);      //'Общие данные'
      for nSens:=sumcl+1 to sumhp do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Электрогруппы',Param.Ptr);      //'Общие данные'
      for nSens:=sumhp+1 to sumelgr do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Электрические шины',Param.Ptr);      //'Общие данные'
      for nSens:=sumelgr+1 to sumbus do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Щиты досветки',Param.Ptr);      //'Общие данные'
      for nSens:=sumbus+1 to sumpan do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
      Node1:=Items.AddChildObject(NodeHead,'Исполнительные механизмы',Param.Ptr);      //'Общие данные'
      for nSens:=sumcom+1 to CountY do
      begin
        AddToTree(nSens);
      end;
      if Not Node1.HasChildren  then Node1.Delete;
     Items.EndUpdate;
//   NodeHead.Expand(False);
   end;
end;

function THotTP.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var sb,sumgr,sumcom,sumcl,sumhp,sumelgr,sumpan,sumbus,x,y:integer;
    NameX:string;
begin
  Result := ValX;
  if ValY = 0 then
  begin
    if ValX = 0 then Txt := ParentCtr.CtrName
    else Txt := 'Значение' + IntToStr(ValX);
    Exit;
  end;
  sb:=eSumBoilers * BoilerCountY;
  if ValY <= sb then with (ParentCtr as TFBoilerIPC).HotBoilers do
      begin
      x:=(ValY-1) div BoilerCountY+1;
      y:=(ValY-1) mod BoilerCountY+1;

      if ValX = 0 then
          begin
          LoadXYvirt(vInBlock,x,0,NameX);
          LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
        else Result := LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumgr:=sb+eSumGroups * GroupCountY;
  if ValY <= sumgr then with (ParentCtr as TFBoilerIPC).HotGroups do
      begin
      x:=(ValY-sb-1) div GroupCountY+1;
      y:=(ValY-sb-1) mod GroupCountY+1;
      if ValX = 0 then
          begin
          LoadXYvirt(vInBlock,x,0,NameX);
          LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
      else Result := LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumcl:=sumgr+eSumCollector * CollCountY;
  if ValY <= sumcl then with (ParentCtr as TFBoilerIPC).HotCollect do
      begin
      x:=(ValY-sumgr-1) div CollCountY+1;
      y:=(ValY-sumgr-1) mod CollCountY+1;
      if ValX = 0 then
          begin
          LoadXYvirt(vInBlock,x,0,NameX);
          LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
      else Result := LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumhp:=sumcl+eSumHPUnits * HPCountY;
  if ValY <= sumhp then with (ParentCtr as TFBoilerIPC).HotHP do
      begin
      x:=(ValY-sumcl-1) div HPCountY+1;
      y:=(ValY-sumcl-1) mod HPCountY+1;
      if ValX = 0 then
          begin
          LoadXYvirt(vInBlock,x,0,NameX);
          LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
      else Result := LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumelgr:=sumhp+eSumElGroups * ElGroupCountY;
  if ValY <= sumelgr then with (ParentCtr as TFBoilerIPC).HotElGroups do
      begin
      x:=(ValY-sumhp-1) div ElGroupCountY+1;
      y:=(ValY-sumhp-1) mod ElGroupCountY+1;
      if ValX = 0 then
          begin
          LoadXYvirt(vInBlock,x,0,NameX);
          LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
      else Result := LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumbus:=sumelgr+eSumBuses * BusCountY;
  if ValY <= sumbus then with (ParentCtr as TFBoilerIPC).HotBus do
      begin
      x:=(ValY-sumelgr-1) div BusCountY+1;
      y:=(ValY-sumelgr-1) mod BusCountY+1;
      if ValX = 0 then
          begin
          LoadXYvirt(vInBlock,x,0,NameX);
          LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
      else Result := LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumpan:=sumbus+eSumPanels * PanelCountY;
  if ValY <= sumpan then with (ParentCtr as TFBoilerIPC).HotPanels do
      begin
      x:=(ValY-sumbus-1) div PanelCountY+1;
      y:=(ValY-sumbus-1) mod PanelCountY+1;
      if ValX = 0 then
          begin
          LoadXYvirt(vInBlock,x,0,NameX);
          LoadXYvirt(vInBlock,0,y,Txt);
          Txt:=NameX+' '+Txt;
          end
      else Result := LoadXYvirt(vInBlock,x,y,Txt);
      Exit;
      end;
  sumcom:=sumpan+SumValYCommonHot;
  if ValY<= sumcom then
  begin
    Result := (ParentCtr as TFBoilerIPC).CommonHot.LoadXYvirt(vInBlock,ValX,ValY-sumpan,Txt);
    exit;
  end;
  Result := (ParentCtr as TFBoilerIPC).HotMech.LoadXYvirt(vInBlock,ValX,ValY-sumcom,Txt);

end;

//*********************************************************************
//******************* ТЕКУЩИЕ ДАННЫЕ КОТЕЛЬНОЙ  ***********************
//*********************************************************************
//const iSumBoils =0;
var XNamesHotBoilers:array [1..1] of TXNames=(
    (Name:'Котел';Frm:None;Ed:'';Index:0;Cfg:1;Kind:0)
    );

procedure THotBoilers.Init;
begin
  CountX := eSumBoilers;//BoilerCountX; //ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := BoilerCountY; //SumValYHotBoilers;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref := 'Котлы';
  NameBlock := 'Состояние котлов';
  ConstNames:=Addr(DefHotBoilers[1]);
  Sort := srHowHot;
  XNames:=Addr(XNamesHotBoilers[1]);
  XNamesCount:=1;
end;

function THotBoilers.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pTArray: PByteArray;
begin
    pTArray:=Adr;
    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
    if ((ValX=0)or(ValY=0)) then exit;
    GridCellColor:=GetColorStatus(pTArray^[(ValX-1)*2+iBoilStatus]);
end;


//*********************************************************************
//******************* ТЕКУЩИЕ ДАННЫЕ ГПУ  ***********************
//*********************************************************************
//const iSumBoils =0;
var XNamesHotCLs:array [1..1] of TXNames=(
    (Name:'Коллектор';Frm:None;Ed:'';Index:0;Cfg:1;Kind:0)
    );

procedure THotColls.Init;
begin
  CountX := eSumCollector; //ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := CollCountY; //SumValYHotBoilers;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref := 'Коллекторы';
  NameBlock := 'Коллекторы тепла';
  ConstNames:=Addr(DefHotCLs[1]);
  Sort := srHowHot;
  XNames:=Addr(XNamesHotCLs[1]);
  XNamesCount:=1;
end;

function THotColls.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pTArray: PByteArray;
begin
    pTArray:=Adr;

    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);

    if (ValY=0) then
    begin
      if(ValX=0) then Txt := 'Коллекторы' else
                if (ValX=1) then Txt:='Утилизация'
                else
                if (ValX=2) then Txt:='Без СО2'
                else Txt := 'Коллектор ' + IntToStr(ValX-2);
      exit;
    end;
    if (ValX>0)and (pTArray^[(ValX-1)*2+iClNBoils]>0) then
       GridCellColor:=$008AE083;


end;
//*********************************************************************
//*************** END ТЕКУЩИЕ ДАННЫЕ КОТЕЛЬНОЙ  ***********************
//*********************************************************************
var XNamesHotBus:array [1..1] of TXNames=(
    (Name:'Шина';Frm:None;Ed:'';Index:0;Cfg:1;Kind:0)
    );

procedure THotBus.Init;
begin
  CountX := eSumBuses;//BusCountX; //ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := BusCountY; //SumValYHotBoilers;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref := 'Шины';
  NameBlock := 'Электрические шины';
  ConstNames:=Addr(DefHotBus[1]);
  Sort := srHowHot;
  XNames:=Addr(XNamesHotBus[1]);
  XNamesCount:=1;
end;

function THotBus.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pTArray: PByteArray;
begin
    pTArray:=Adr;

    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);

    if (ValY=0) then
    begin
      if(ValX=0) then Txt := 'Шины' else
              if (ValX=1) then Txt:='Сеть'
                else Txt := 'Шина ' + IntToStr(ValX-1);
      exit;
    end;
    if (ValX>0)and (pTArray^[(ValX-1)*2+iBusNHPs]>0) then
       GridCellColor:=$008AE083;


end;



//*********************************************************************
//*************** ТЕКУЩИЕ ДАННЫЕ ГРУПП ОТОПЛЕНИЯ **********************
//*********************************************************************
const iSumGroups =1;
var XNamesGroups:array [1..1] of TXNames=(
    (Name:'Группа';Frm:None;Ed:'';Index:0;Cfg:1;Kind:0)
     );

procedure THotGroups.Init;
begin
     CountX := eSumGroups;//GroupCountX; // * ;ParentCtr.IdentCtr[iSumGroups+1];  // eSumGroups;
     CountY := GroupCountY; //SumValHotGroups;
     SizeCol := cHotFullSize;
     FullSize := SizeCol;
//     StartSend:=DZ_iMechanic;
//     SendByte:=DZ_sizeHand;       //*DZ_MAX_SUM_ZONE;
     SendByte := 0;
     Pref := 'Теплогруппы';
     NameBlock := 'Состояние тепловых групп';
     ConstNames:=Addr(DefBoilGroup[1]);
     Sort := srHowHot;
     XNames:=Addr(XNamesGroups[1]);
     XNamesCount:=1;
end;

function THotGroups.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pTArray: PByteArray;
begin
    pTArray:=Adr;

    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);

    if ((ValX=0)or(ValY=0)) then exit;
    GridCellColor:=GetColorStatus(pTArray^[(ValX-1)*2+iGroupStatus]);

end;
{function THotGroups.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pHot:pByteArray;
begin
  Ready:=Ready or ParentCtr.Block[0].Ready;
  pHot := Adr;
  Result := ValX;
  if ValY = 0 then
  begin
    if ValX = 0 then Txt := 'Группы отопления'
                else Txt := 'Группа' + IntToStr(ValX);
    Exit;
  end;
//  GetExist(1,ValY);
  Result := Convers(ConstNames[ValY].Name,    //DefBoilGroup
             Addr(pHot^[DefBoilGroup[ValY].Index + DefBoilGroup[ValY].Tag*(ValX-1)]),
             DefBoilGroup[ValY].Frm,
             vInBlock,ValX,ValY,Txt,ConstNames[ValY].Ed);
end;  }

procedure THotGroups.SetGroupTasks;
var   nClient, nGroup:word;
      Max,vComPower: double;
      st:string;
begin
//  Ready:=False;
  Ready:=True;
  ParentCtr.Block[0].Ready := True;
  if SumClimatClients < 1 then Exit;
  vComPower:=0;
  for nGroup:=1 to CountX do
    begin
    Max:=0;
    st:='0';
    for nClient:=1 to SumClimatClients do
    begin
      if ClimatClient[nClient].Ctr is TFClimat403 then
       with ClimatClient[nClient].Ctr as TFClimat403 do
        begin
        WarmGroupConfig.FindWarmMax(ClimatClient[nClient].Zone,nGroup,Max,st);
        if (Max=0) then
          Max:=-1;
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
      if ClimatClient[nClient].Ctr is TFClimat510 then
       with ClimatClient[nClient].Ctr as TFClimat510 do
        begin
        if (not WarmGroupConfig.FindWarmMax(ClimatClient[nClient].Zone,nGroup,Max,st)) and (Max=0) then
          Max:=-1;
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
      if ClimatClient[nClient].Ctr is TFClimat501S then
       with ClimatClient[nClient].Ctr as TFClimat501S do
        begin
        if (not WarmGroupConfig.FindWarmMax(ClimatClient[nClient].Zone,nGroup,Max,st)) and (Max=0) then
          Max:=-1;
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;
      if ClimatClient[nClient].Ctr is TFClimat501U then
       with ClimatClient[nClient].Ctr as TFClimat501U do
        begin
        if (not WarmGroupConfig.FindWarmMax(ClimatClient[nClient].Zone,nGroup,Max,st)) and (Max=0) then
          Max:=-1;
        vComPower:=vComPower+ZonePower[ClimatClient[nClient].Zone];
        end;

    end;
    if (Max>=0) then
      LoadXY(cInBlock,nGroup,pozGroupTask,st);
    end;
  st:=FloatToStr(vComPower);
  (ParentCtr as TFBoilerIPC).CommonHot.LoadXY(cInBlock,1,posComPower,st);

end;



//*********************************************************************
//*************** END ТЕКУЩИЕ ДАННЫЕ ГРУПП ОТОПЛЕНИЯ ******************
//*********************************************************************

var XNamesHotPanels:array [1..1] of TXNames=(
    (Name:'Щит';Frm:None;Ed:'';Index:0;Cfg:1;Kind:0)
    );

procedure THotPanels.Init;
begin
  CountX := eSumPanels; //ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := PanelCountY; //SumValYHotBoilers;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref := 'Щиты';
  NameBlock := 'Состояние щитов';
  ConstNames:=Addr(DefHotPanels[1]);
  Sort := srHowHot;
  XNames:=Addr(XNamesHotPanels[1]);
  XNamesCount:=1;
end;

function THotPanels.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pTArray: PByteArray;
begin
    pTArray:=Adr;

    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
    if (ValX=0) then exit;
    if (ValY=0) then
    begin
      Result:=ParentCtr.ConfigBlock.LoadXY(cOutBlock,0,ValX+DZM_PANELON1-1,Txt);
      exit;
    end;
    if ((pTArray^[(ValX-1)+iRlPanelOn])mod 2)<>0 then
       GridCellColor:=$008AE083;
end;


//*********************************************************************
//******************* ТЕКУЩИЕ ДАННЫЕ ГПУ  ***********************
//*********************************************************************
//const iSumBoils =0;
var XNamesHotHPs:array [1..1] of TXNames=(
    (Name:'ГПУ';Frm:None;Ed:'';Index:0;Cfg:1;Kind:0)
    );

procedure THotHPs.Init;
begin
  CountX := eSumHPUnits; //ParentCtr.IdentCtr[iSumBoils+1];  // котлы
  CountY := HPCountY; //SumValYHotBoilers;
  SizeCol := cHotFullSize; // передача всего Hot блока
  FullSize := cHotFullSize;
  ReceiveByte := cHotRecieveSize;
  SendByte := 1; //iTepl;
  Pref := 'ГПУ';
  NameBlock := 'Состояние ГПУ';
  ConstNames:=Addr(DefHotHPs[1]);
  Sort := srHowHot;
  XNames:=Addr(XNamesHotHPs[1]);
  XNamesCount:=1;
end;

function THotHPs.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pTArray: PByteArray;
begin
    pTArray:=Adr;

    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);

    if ((ValX=0)or(ValY=0)) then exit;
    GridCellColor:=GetColorStatus(pTArray^[(ValX-1)*2+iHPStatus]);
end;
//*********************************************************************
//*************** END ТЕКУЩИЕ ДАННЫЕ КОТЕЛЬНОЙ  ***********************
//*********************************************************************

//*********************************************************************
//*************** ТЕКУЩИЕ ДАННЫЕ ГРУПП ОТОПЛЕНИЯ **********************
//*********************************************************************
const iSumElGroups =1;
var XNamesElGroups:array [1..1] of TXNames=(
    (Name:'Электрогруппа';Frm:None;Ed:'';Index:0;Cfg:1;Kind:0)
     );

procedure THotElGroups.Init;
begin
     CountX := eSumElGroups;//ElGroupCountX; // * ;ParentCtr.IdentCtr[iSumGroups+1];  // eSumGroups;
     CountY := ELGroupCountY; //SumValHotGroups;
     SizeCol := cHotFullSize;
     FullSize := SizeCol;
//     StartSend:=DZ_iMechanic;
//     SendByte:=DZ_sizeHand;       //*DZ_MAX_SUM_ZONE;
     SendByte := 0;
     Pref := 'Электрогруппы';
     NameBlock := 'Состояние групп досветки';
     ConstNames:=Addr(DefElGroups[1]);
     Sort := srHowHot;
     XNames:=Addr(XNamesELGroups[1]);
     XNamesCount:=1;
end;

function THotElGroups.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var pTArray: PByteArray;
begin
    pTArray:=Adr;

    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);

    if ((ValX=0)or(ValY=0)) then exit;
    GridCellColor:=GetColorStatus(pTArray^[(ValX-1)*2+iElGroupStatus]);
end;

//*********************************************************************
//************************* ТЕКУЩИЕ ДАННЫЕ МЕТЕО **********************
//*********************************************************************
{procedure THotMeteo.Init;
begin
  CountX := 1;
  CountY := 14;//CountYNetMeteo;
  SizeCol := iTepl;//SizeOf(TrGlobalHot);
  FullSize := SizeCol;
//  ReceiveByte := SizeOf(TrGlobalHot) - sizeAdd;
  SendByte:=0;
//  Pref :='Метео';
  NameBlock := 'Общие данные';
  ConstNames:=Addr(cDefineHotV1[1]);
  bProperty := bHowHot;
end;

function THotMeteo.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
var nClient,nZone:integer;
begin
     if ValY=0 then
        begin
        if ValX=0 then Txt:='Общие данные'
          else Txt:='Значение';
        Exit;
        end;
     if SumClimatClients <=0 then Exit;
//     if (ValX=0) and (ValY=3) then
//         CopyMemory(Adr,ClientsPC[1].ClimCtr.Block[0].Adr,FullSize);
      nClient:=ValX;
      nZone:=ClimatClient[ValX].Zone;
      if nClient=0 then begin nClient:=1; nZone:=0; end;
      Result := ClimatClient[nClient].Ctr.Block[0].LoadXY(vInBlock,nZone,ValY,Txt);
end;
}
//*********************************************************************
//******************** END ТЕКУЩИЕ ДАННЫЕ МЕТЕО ***********************
//*********************************************************************

var XNamesPlanPanels:array [1..1] of TXNames=(
    (Name:'Щит';Frm:None;Ed:'';Index:2;Cfg:1;Kind:0)
    );

//*********************************************************************
//********************** ПЛАН ЩИТОВ ДОСВЕТКИ **************************
//*********************************************************************

procedure TPanelPlan.Init;
begin
  CountX := eSumPanels;
  CountY := sumValYPlanPanels;
  SizeCol := sumValYPlanPanels*eSumPanels*2;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'План щитов';
  NameBlock := 'Конфигурация щитов';
  FixRow := 1;
  ConstNames:=Addr(DefPlanPanels[1]);
  XNames:=Addr(XNamesHotPanels[1]);
  XNamesCount:=1;
end;

function TPanelPlan.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;
begin

    Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
    if ValX=0 then exit;
    if (ValY=0) then
      ParentCtr.ConfigBlock.LoadXY(cOutBlock,0,ValX+DZM_PANELON1-1,Txt);
end;


//*********************************************************************
//****************** END ПЛАН ЩИТОВ ДОСВЕТКИ **************************
//*********************************************************************
var XNamesPlanBoilers:array [1..1] of TXNames=(
    (Name:'Котел';Frm:None;Ed:'';Index:2;Cfg:1;Kind:0)
    );
//*********************************************************************
//********************** ПЛАН КОТЛОВ **************************
//*********************************************************************

procedure TBoilerPlan.Init;
begin
  CountX := eSumBoilers;
  CountY := sumValYPlanBoilers;
  SizeCol := sumValYPlanBoilers*eSumBoilers*2;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'План котлов';
  NameBlock := 'Конфигурация котлов';
  FixRow := 1;
  ConstNames:=Addr(DefPlanBoilers[1]);
  XNames:=Addr(XNamesPlanBoilers[1]);
  XNamesCount:=1;
end;

//*********************************************************************
//****************** END ПЛАН КОТЛОВ **************************
//*********************************************************************

var XNamesPlanElGroups:array [1..1] of TXNames=(
    (Name:'Группа';Frm:None;Ed:'';Index:2;Cfg:1;Kind:0)
    );
//*********************************************************************
//********************** ПЛАН ГРУПП ЭЛ **************************
//*********************************************************************

procedure TElGroupPlan.Init;
begin
  CountX := ElGroupCountX;
  CountY := sumValYPlanElGroups;
  SizeCol := sumValYPlanElGroups*eSumElGroups*2;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'План электро';
  NameBlock := 'Конфигурация электрогрупп';
  FixRow := 1;
  ConstNames:=Addr(DefPlanElGroups[1]);
  XNames:=Addr(XNamesPlanElGroups[1]);
  XNamesCount:=1;
end;

//*********************************************************************
//****************** END ПЛАН ГРУПП ЭЛ **************************
//*********************************************************************

var XNamesPlanHPs:array [1..1] of TXNames=(
    (Name:'ГПУ';Frm:None;Ed:'';Index:2;Cfg:1;Kind:0)
    );
//*********************************************************************
//********************** ПЛАН ГПУ **************************
//*********************************************************************

procedure THPPlan.Init;
begin
  CountX := eSumHPUnits;
  CountY := sumValYPlanHPs;
  SizeCol := sumValYPlanHPs*eSumHPUnits*2;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'План ГПУ';
  NameBlock := 'Конфигурация ГПУ';
  FixRow := 1;
  ConstNames:=Addr(DefPlanHPs[1]);
  XNames:=Addr(XNamesPlanHPs[1]);
  XNamesCount:=1;
end;

//*********************************************************************
//****************** END ПЛАН ГПУ **************************
//*********************************************************************


var XNamesPlanCO:array [1..1] of TXNames=(
    (Name:'Вентилятор';Frm:None;Ed:'';Index:2;Cfg:1;Kind:0)
    );
//*********************************************************************
//********************** ПЛАН СО2 **************************
//*********************************************************************

procedure TCOPlan.Init;
begin
  CountX := eSumCO2Units;//BoilerCountX;
  CountY := sumValYPlanCO;
  SizeCol := sumValYPlanCO*eSumCO2Units*2;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'План СО2';
  NameBlock := 'Конфигурация СО2';
  FixRow := 1;
  ConstNames:=Addr(DefPlanCO[1]);
  XNames:=Addr(XNamesPlanCO[1]);
  XNamesCount:=1;
end;

//*********************************************************************
//****************** END ПЛАН СО2 **************************
//*********************************************************************


//*********************************************************************
//********************** ПАРАМЕТРЫ МЕХАНИЗМОВ **************************
//*********************************************************************
const SumParamsPID = 67;
var XNamesParamsPID:array [1..4] of TXNames=(
    (Name:'Время хода';Frm:SSSS;Ed:'сек';Index:0;Cfg:0;Kind:0),
    (Name:'П-коэффициент';Frm:Float32;Ed:'% на 1';Index:2;Cfg:0;Kind:0),
    (Name:'И-коэффициент';Frm:Float32;Ed:'% на 1';Index:6;Cfg:0;Kind:0),
    (Name:'Тип выхода';Frm:ComboSS;Ed:' ';Index:10;Cfg:0;Kind:0;Min:imsPIDMode;Max:imsPIDMode+4)
     );

procedure TParamsPID.Init;
begin
  CountX := 4;
  CountY := sumParamsPID;
  SizeCol := 12;
  FullSize := SizeCol*CountY;
  SendByte := FullSize;
  Pref := 'Регуляторы';
  NameBlock := 'Параметры регуляторов';
  FixRow := 1;
  ConstNames:=Addr(BoilNameConfig[pozCfMixValGr1]);
  XNames:=Addr(XNamesParamsPID[1]);
  XNamesCount:=CountX;
end;

function TParamsPID.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var mi,ma: double; ind:integer; frm: TSFormat; tip: TTipSens;
begin
  ma:=-22222;
  ind:=-2222;
  if (ValX>0) and (ValY>0) then
    begin
    ind:=ConstNames[ValY].Index;
    ConstNames[ValY].Index:=(ValY-1)*SizeCol;
{    if XNames[ValX].Frm=ComboSS then
        begin
        mi:=ConstNames[ValY].Min;
        ma:=ConstNames[ValY].Max;
        frm:=ConstNames[ValY].Frm;
//        tip:=ConstNames[ValY].TipSens;
        ConstNames[ValY].Min:=imsPIDMode;
        ConstNames[ValY].Max:=imsPIDMode+4;
        ConstNames[ValY].Frm:=ComboSS;
//        ConstNames[ValY].TipSens:=TipCombo;
//        ConstNames[ValY].Ed:='';
        end; }
    end;
  Result:=inherited  LoadXYvirt(vInBlock,ValX,ValY,Txt);
  if ind <> -2222 then ConstNames[ValY].Index:=ind;
{  if ma <> -22222 then
        begin
        ConstNames[ValY].Min:=mi;
        ConstNames[ValY].Max:=ma;
        ConstNames[ValY].Frm:=frm;
//        ConstNames[ValY].TipSens:=tip;
        end;  }
end;

//*********************************************************************
//****************** END ПАРАМЕТРЫ МЕХАНИЗМОВ **************************
//*********************************************************************



//*********************************************************************
//********************** ПАРАМЕТРЫ КОТЕЛЬНОЙ **************************
//*********************************************************************

procedure TControlM.Init;
begin
  CountX := 1;
  CountY := sumValYControl;
  SizeCol := sizeBoilControl;
  FullSize := SizeCol;
  SendByte := FullSize;
  Pref := 'Параметры';
  NameBlock := 'Параметры управления';
  FixRow := 1;
  ConstNames:=Addr(DefControlBoil[1]);
  XNames:=Addr(XNamesOneLine[1]);
  XNamesCount:=CountX;
end;

//*********************************************************************
//****************** END ПАРАМЕТРЫ КОТЕЛЬНОЙ **************************
//*********************************************************************

//*********************************************************************
//****************** ДАТЧИКИ КОТЕЛЬНОЙ И ГРУПП ************************
//*********************************************************************
const MAX_INP_ANAL = 32;
      cCountXSensBoil = 6;
XNamesSensBoil:array [1..cCountXSensBoil] of TXNames=(
    (Name:'Номер входа';Frm:CpMpN;Ed:'-вход';Index:16;Cfg:0;Kind:0),
    (Name:'Диапазон';Frm:ComboSS;Ed:' ';Index:18;Cfg:0;Kind:0;Min:imsDiapaz;Max:imsDiapaz+6),
    (Name:'Эталон1';Frm:Float32;Ed:'';Index:0;Cfg:0;Kind:0),
    (Name:'Напряжение1';Frm:Float32;Ed:'mV';Index:8;Cfg:0;Kind:0),
    (Name:'Эталон2';Frm:Float32;Ed:'';Index:4;Cfg:0;Kind:0),
    (Name:'Напряжение2';Frm:Float32;Ed:'mV';Index:12;Cfg:0;Kind:0)
     );

procedure TCalSensBoilIPC.Init;//override;
begin
  CountX := cCountXSensBoil;
  CountY := SumSens;
  SizeCol := 20;//sizeFullCalibr;  //eMAX_SUM_SENS * sizeCalibrSensor;
  FullSize := SizeCol*eMAX_SUM_SENS;
  SendByte := FullSize;
  Pref := 'Калибровки';
  NameBlock := 'Калибровка датчиков';
  ConstNames:=Addr(DefSensBoil[1]);
  XNames:=Addr(XNamesSensBoil[1]);
  XNamesCount:=CountX;
end;

function TCalSensBoilIPC.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var mi,ma:double; ind:integer;
begin
  ma:=-22222;
  ind:=-2222;
  if (ValY > 0) and (ValX > 0) then
    begin
    ind:=ConstNames[ValY].Index;
    ConstNames[ValY].Index:=(ValY-1)*SizeCol;
{    if XNames[ValX].Frm=ComboSS then
        begin
        mi:=ConstNames[ValY].Min;
        ma:=ConstNames[ValY].Max;
        ConstNames[ValY].Min:=imsDiapaz;
        ConstNames[ValY].Max:=imsDiapaz+6;
        end; }
    end;
  Result:=inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
  if ind <> -2222 then ConstNames[ValY].Index:=ind;
{  if ma <> -22222 then
        begin
        ConstNames[ValY].Min:=mi;
        ConstNames[ValY].Max:=ma;
        end;  }
end;
//  if (ValY>0) and (XNames[ValX].Frm=CpMpN) then
//    Result:=ParentCtr.ConfigBlock.LoadXY(vInBlock,1,ConstNames[ValY].Mech,Txt)
//    else
//    inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
//end;

//*********************************************************************
//************** END ДАТЧИКИ КОТЕЛЬНОЙ И ГРУПП ************************
//*********************************************************************

//*********************************************************************
//************************* ЗАДАНИЕ КОТЕЛЬНОЙ *************************
//*********************************************************************
var XNamesBoilTimer:array [1..1] of TXNames=(
    (Name:'Программа';Frm:None;Ed:'';Index:sizeBoilTimer;Cfg:0;Kind:0)
    );
procedure TBoilTimer.Init;
begin
     CountX := SumTask; // количество заданий
     CountY := SumValYBoilTimer;
     SizeCol := sizeBoilTimer;
     FullSize := SizeCol * CountX;
     SendByte := FullSize;
     Pref:='Задание котельной';
     NameBlock:='Программа котельной';
     FixRow:=1;
     ConstNames:=Addr(DefBoilersTimer[1]);
     XNames:=Addr(XNamesBoilTimer[1]);
     XNamesCount:=1;
end;

//*********************************************************************
//******************** END ЗАДАНИЕ КОТЕЛЬНОЙ *************************
//*********************************************************************

//*********************************************************************
//************************* ЗАДАНИЕ КОТЕЛЬНОЙ *************************
//*********************************************************************
var XNamesLightTimer:array [1..1] of TXNames=(
    (Name:'Программа';Frm:None;Ed:'';Index:sizeLightTimer;Cfg:0;Kind:0)
    );
procedure TElTimer.Init;
begin
     CountX := SumElTask; // количество заданий
     CountY := SumValYLightTimer;
     SizeCol := sizeLightTimer;
     FullSize := SizeCol * CountX;
     SendByte := FullSize;
     Pref:='Задание света';
     NameBlock:='Программа досвечивания';
     FixRow:=1;
     ConstNames:=Addr(DefLightTimer[1]);
     XNames:=Addr(XNamesLightTimer[1]);
     XNamesCount:=1;
end;

function TElTimer.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double; 
var
  pElTimer:pByteArray;
begin
//  inherited;
  Result := inherited LoadXYvirt(vInBlock,ValX,ValY,Txt);
  pElTimer:=Adr;
  if ValX>0 then
  begin
    GridCellColor:=GetZoneColor(pElTimer^[iELTaskGrNum+sizeLightTimer*(ValX-1)],ValY);
  end;
end;

//*********************************************************************
//******************** END ЗАДАНИЕ КОТЕЛЬНОЙ *************************
//*********************************************************************


//*********************************************************************
//**********************     КОНФИГУРАЦИЯ     *************************
//*********************************************************************
var XNamesBoilConfig:array [1..1] of TXNames=(
    (Name:'Значение';Frm:None;Ed:'';Index:0;Cfg:0;Kind:0)
    );

procedure TBoilConfig.Init;
begin
     CountY:=cSumValYConfig;
     CountX:=1;
     SizeCol:=1;
     FullSize:=cSizeColConf*2;
     SendByte:=FullSize;
     Pref:=ProgMess[193]; //'Конфигурация';
     NameBlock:=ProgMess[194]; //'Конфигурация оборудования';
     FixRow:=1;
     ConstNames:=Addr(BoilNameConfig[1]);
     XNames:=Addr(XNamesBoilConfig[1]);
     XNamesCount:=CountX;
end;

{function TBoilConfig.LoadXYvirt(vInBlock:Byte;ValX,ValY:Integer;
       var Txt:String):Double;//override;
var pConfig:pByteArray;
begin
  pConfig := Adr;
  if ParentCtr.IsIPC and (ValX>0) and (ValY>0) then ConstNames[ValY].Index:=ConstNames[ValY].Index*2;
  Result:=inherited  LoadXYvirt(vInBlock,ValX,ValY,Txt);
  if ParentCtr.IsIPC and (ValX>0) and (ValY>0) then ConstNames[ValY].Index:=ConstNames[ValY].Index div 2;
end; }
//*********************************************************************

//*********************************************************************

//*********************************************************************
//************************* АРХИВ *************************
//*********************************************************************
var XNamesBoilArx:array [1..1] of TXNames=(
    (Name:'День';Frm:None;Ed:'';Index:sizeBoilArx;Cfg:0;Kind:0)
    );
procedure TBoilArx.Init;
begin
     CountX := 10; // количество заданий
     CountY := SumValYBoilArx;
     SizeCol := sizeBoilArx;
     FullSize := SizeCol * CountX;
     SendByte := 1;
     Pref:='Архив';
     NameBlock:='Архив котельной';
     Sort:=srNoGridGraf;
     FixRow:=1;
     ConstNames:=Addr(DefBoilersArx[1]);
     XNames:=Addr(XNamesBoilArx[1]);
     XNamesCount:=1;
end;

//*********************************************************************
//******************** END АРХИВ КОТЕЛЬНОЙ *************************
//*********************************************************************

procedure TBoilArxPC.Init;
begin
     CountX:=1;
     CountY := SumValYBoilArx;
     SizeCol := sizeBoilArx;
     FullSize:=SizeCol;
     SendByte:=0;
     Pref:=ProgMess[207];  //'АрхивПК';
     NameBlock:='Архив котельной в ПК';//ProgMess[208];  //'Архив Полива ПК';
     ConstNames:=Addr(DefBoilersArx[1]);
//     CountConstNames:=cCountNameAchivePC;
//     Translator:=CountConstNames;
     Sort:=srPCArchive;
end;

function TBoilArxPC.CalcDayArxPC(var ArxDate:TDateTime):Boolean;
var
 pB:pByteArray;
 vDate,TimeIrr,vTimeIrr:TDateTime;
 i,tDay:integer;
 st:string;
// MinDay:word;
begin
Result:=False;
with ParentCtr as TFBoilerIPC do
  begin
  if not BlockArxMC.LoadFileCycle(ArxDate) then
    begin
    ArxDate:=Now;
    Exit;
    end;
  TimeIrr:=2; //2 часа установить минимум что не учитывать
  repeat
    if (BlockArxMC.BlDate > (ArxDate+12)) then continue;
    for i:=1 to BlockArxMC.CountX do
      begin
      vDate:=BlockArxMC.LoadXY(cOutBlock,i,1,st);
      if vDate=0 then continue;
      tDay:=DayOfTheYear(vDate);
      if tDay=DayOfTheYear(ArxDate) then
          begin
          vTimeIrr:=BlockArxMC.LoadXY(cOutBlock,i,2,st);
          if vTimeIrr > TimeIrr then
            begin
            pB:=BlockArxMC.Adr;
            pB:=Addr(pB^[SizeCol*(i-1)]);
            CopyByteArray(pB,Adr,SizeCol);
            BlDate:=int(ArxDate)+1-cMin;
            Ready:=True;
            Result:=True;
            TimeIrr:=vTimeIrr;
            end;
          end;
      end;
  until Not BlockArxMC.LoadFileCycle(ArxDate);
  end;
end;

function TBoilArxPC.CalcAllArxPC:Boolean;
var  Save_Cursor:TCursor; StartDate,sd:TDateTime;
begin
 if (Int(WriteArchivDate) = Int(Now)) or(Frac(Now) < cMin*60)
   or (ParentCtr.DataPath <> '') then  Exit;
 WriteArchivDate:=Now;
 Save_Cursor := Screen.Cursor;
 Screen.Cursor := crHourGlass;    { Show hourglass cursor }
 TopMesForm.ShowTop(ProgMess[532]);//'Идет расчет архива котельной в ПК');
 with ParentCtr as TFBoilerIPC do
 try
 if Not BlockArxMC.LoadFileByDate(Now,dBegin) then Exit;
 StartDate:=BlockArxMC.BlDate-BlockArxMC.CountX-1;    //// StartDate:=EncodeDate(YearOf(Now),1,1);
 if LoadFileByDate(Now,dEnd) then StartDate:=BlDate+1;
 sd:=EncodeDate(YearOf(Now),1,1);
 if StartDate<sd then  StartDate:=sd;
 while Int(StartDate) < Int(Now) do
      begin
      if CalcDayArxPC(StartDate) then
          begin
          SaveToFile;
//          ArchivToWeb;
          end;
      StartDate:=StartDate+1;
      end;
  finally
    TopMesForm.HideTop; Screen.Cursor := Save_Cursor;  { Always restore to normal }
  end;
end;

//*********************************************************************

//*********************************************************************
//****************** ADD BOILER FROM 20.02.2008  **********************
//*********************************************************************
procedure THotTP.TestCtrTime;
var pHot:pByteArray; //    TByteArray = array[0..32767] of Byte;
    PCTime,CtrTime,copy:word;
begin
    if (ParentCtr.DataPath <> '') then Exit;
    if FormFalseTime then Exit;
  // проверка времени контроллера
  pHot:=Adr;
  PCTime := MinuteOfTheDay(Now);
  CtrTime := pHot^[boil_iTimeBoil+1] * 256 + pHot^[boil_iTimeBoil];
  if (PCTime < 15) or (PCTime > (24 * 60 - 15))
     or (((CtrTime + 3) > PCTime) and ((CtrTime - 3) < PCTime)) then Exit;
  FormFalseTime := True;
  if FMain.mnAutoSynxTime.Checked or (MessageDlg('Внимание! Время контроллера "' + ParentCtr.CtrName
     +'" отличается от ПК. Синхронизировать?'
       ,mtWarning,[mbYes, mbNo],0) = mrYes) then
    begin
    pHot := Adr;
    pHot^[0] := $80;
    pHot^[boil_iTimeBoil+1] := PCTime div 256;
    pHot^[boil_iTimeBoil] := PCTime mod 256;
    pHot^[boil_iTimeBoil + 3] := MonthOfTheYear(Now);
    pHot^[boil_iTimeBoil + 2] := DayOfTheMonth(Now);
    pHot^[boil_iTimeBoil + 4] := YearOf(Now) - 2000;
    copy:=SendByte;
    SendByte := boil_iTimeBoil + 5;
    SendToPort(nil);
    SendByte := copy;
    end;
  FormFalseTime := False;
end;

//================================================================================
var NMech: integer;
    CurrCtr: TFBoilerIPC;
    ModeTag,PosTag: integer;

procedure TFBoilerIPC.FPicLabel102Click(Sender: TObject);
begin
  NMech:=(Sender as TFPicLabel).Tag-DSM_HOT_MECH;
  CurrCtr:=self;
  ModeTag:=NMech-1;
  PosTag:=NMech;
  SetControl;
  HandPanel.Left:=(Sender as TFPicLabel).Left+(Sender as TFPicLabel).Width;
  HandPanel.Top:=(Sender as TFPicLabel).Top+(Sender as TFPicLabel).Height;
  if HandPanel.Left > FPanel18.Width div 2 then HandPanel.Left:=HandPanel.Left-HandPanel.Width-32;
  if HandPanel.Top > FPanel18.Height div 2 then HandPanel.Top:=HandPanel.Top-HandPanel.Height-32;
  HandPanel.Visible:=true;
end;

procedure TFBoilerIPC.bbCancelClick(Sender: TObject);
begin
  HandPanel.Visible:=False;
end;

procedure TFBoilerIPC.bbSetClick(Sender: TObject);
var SaveStart: integer;
    SaveSend: integer;
begin
  with  CurrCtr.HotMech do
  begin
    SaveStart:=StartSend;
    SaveSend:=SendByte;

    StartSend:=ConstNames[ModeTag].Index;
    SendByte:=2;
    SendToPort(TurnBackValues);
    StartSend:=SaveStart;
    SendByte:=SaveSend;
  end;
end;

procedure TFBoilerIPC.SetControl;
var
  txt1: string;
begin
  FPMode.ImageIndex:=FPMode.HotImageIndex+round(CurrCtr.HotMech.LoadXY(cOutBlock,1,ModeTag,txt1));
  FPMode.Caption:=txt1;
  FPPos.ImageIndex:=FPPos.HotImageIndex+round(CurrCtr.HotMech.LoadXY(cOutBlock,1,PosTag,txt1));
  FPPos.Caption:=txt1;
  CurrCtr.ConfigBlock.LoadXY(cOutBlock,0,DZM_PANELON1+((NMech-DMH_PanelStart) div 2),txt1);
  FPName.Caption:=txt1;
end;

procedure TFBoilerIPC.TurnBackValues;
begin
//  with  CurrCtr.HotMech do
  begin
    with CurrCtr do
        begin
        with Block[0] do Ready:=TestEquDate(BlDate,Now,5);
        SetPicCtr;
        end;
  end;
  HandPanel.Visible:=False;
end;

procedure TFBoilerIPC.FPModeClick(Sender: TObject);
var
  st: string;
  ind: integer;
begin
  with (Sender as TFPicLabel) do
  begin
    ind:=(ImageIndex+1) mod 2;
    ImageIndex:=HotImageIndex+ind;
    St:=IntToStr(ind);
    if Name='FPMode' then ind:=ModeTag else ind:=PosTag;
    CurrCtr.HotMech.LoadXY(cInBlock,1,ind,St);
    Caption:=st;
  end;
end;

procedure TFBoilerIPC.FPanel18DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  Rect:TRect;
begin
//  inherited;
  Accept := (Source is TFPicLabel);
  if (not Accept) then exit;
  HotGraf.Hide;
  if (isDrawing) then
      //ImageDistributionBoards.Canvas.DrawFocusRect(LastRectangle)
    FPanel18.Canvas.DrawFocusRect(LastRectangle)
  else  with Source as TFPicLabel do
        begin
        ssx:=Left-X;
        ssy:=Top-Y;
        end;
  //-VertScrollBar.Position;;
  with (Source as TFPicLabel) do
      begin
      Rect.Left:=X+ssx;
      Rect.Top:=Y+ssy;
      Rect.Right:=Rect.Left+Width;
      Rect.Bottom:=Rect.Top+Height;
      end;
  isDrawing:=true;
  LastRectangle:=Rect;
  FPanel18.Canvas.DrawFocusRect(LastRectangle);

end;

procedure TFBoilerIPC.FPanel18DragDrop(Sender, Source: TObject; X,
  Y: Integer);
var Param:Txy;
begin
if (isDrawing) then
  begin
    //ImageDistributionBoards.Canvas.DrawFocusRect(LastRectangle);
    FPanel18.Canvas.DrawFocusRect(LastRectangle);
  end;
  isDraw:=False;
  Y:=(LastRectangle.Top div 10)*10;//+sy;
  X:=(LastRectangle.Left div 10)*10;//+sx;
  if (Source is TFPicLabel)
  then
    begin
      with (Source as TFPicLabel)  do
        begin
          Left:=X;
          Top:=Y;
      end;
    end;
end;

procedure TFBoilerIPC.ImageDistributionBoardsMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcBoiler.Canvas.DrawFocusRect(Rect(x-5,y-5,x+5,y+5));
end;

procedure TFBoilerIPC.Image2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcBoiler.Canvas.DrawFocusRect(Rect(x-5,y-5,x+5,y+5));
end;

procedure TFBoilerIPC.pcBoilerMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcBoiler.Canvas.DrawFocusRect(Rect(x-5,y-5,x+5,y+5));
end;

procedure TFBoilerIPC.FPanel18MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  pcBoiler.Canvas.DrawFocusRect(Rect(x-5,y-5,x+5,y+5));
end;

end.
