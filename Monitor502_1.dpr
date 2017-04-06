program Monitor502;
{$DEFINE VOICESERVIS}

uses
  Forms,
  Windows,
  Dialogs,
  Controls,
  inifiles,
  SysUtils,
  PicCtr in 'PicCtr.pas' {FPicCtr},
  FController in 'FController.pas',
  Port in 'Port.pas' {FPort},
  NewCtr in 'NewCtr.pas' {FNewCtr},
  SetGrid in 'SetGrid.pas' {FSetGrid},
  GGraf in 'GGraf.pas' {FMain},
  Mixer501 in 'Mixer501.pas' {FMixer501},
  About in 'About.pas' {FAbout},
  Report in 'Report.pas' {FReport},
  Salat in 'Salat.pas' {FSalat},
  MSiod in 'MSiod.pas',
  ClimCalc in 'ClimCalc.pas',
  Climat403 in 'Climat403.pas' {FClimat403},
  FGrafGrid in 'FGrafGrid.pas' {FGridGraf},
  HandClim in 'HandClim.pas' {FHandClim},
  MessageU in 'MessageU.pas',
  DefineClim403 in 'DefineClim403.pas',
  Meteo in 'Meteo.pas' {FMeteo},
  FConstType in 'FConstType.pas',
  audit in 'Audit.pas',
  FormulEdit in 'FormulEdit.pas' {FormulForm},
  FormulUtil in 'FormulUtil.pas',
  Supplay501 in 'Supplay501.pas' {FSupplay501},
  WindSon in 'WindSon.pas' {FWindSonic},
  FCDP in 'FCDP.pas',
  FSetInter in 'FSetInter.pas' {FSetInternet},
  WaterReady in 'WaterReady.pas' {FWater},
  BoilerIPC in 'BoilerIPC.pas' {FBoilerIPC},
  Climat65 in 'Climat65.pas' {FClimat65},
  Mixer04 in 'Mixer04.pas' {FMixer04},
  DefineBoil in 'DefineBoil.pas',
  TxtCtr405 in 'TxtCtr405.pas' {FTxtCtr},
  Desinf in 'Desinf.pas' {FDesinf},
  Drain501 in 'Drain501.pas' {FDrain501},
  DesinfDig in 'DesinfDig.pas' {FDisinfDig},
  ServerZ in 'ServerZ.pas' {FServerZ},
  Voice in 'Voice.pas' {FVoice},
  FHotGraf in 'FHotGraf.pas' {HotGraf},
  BoilConfig in 'BoilConfig.pas',
  FTopMes in 'FTopMes.pas' {TopMesForm},
  FSetChart in 'FSetChart.pas' {SetChartF},
  EAbout in 'EAbout.pas' {FEAbout},
  PaswordDlg in 'PaswordDlg.pas' {PasswordDlg},
  Aphrodite in 'Aphrodite.pas' {FAphrodite},
  Drain405 in 'Drain405.pas' {FDrain405},
  DefineClim510 in 'DefineClim510.pas',
  Climat501S in 'Climat501S.pas' {FClimat501S},
  Mixer403 in 'Mixer403.pas' {FMixer403},
  UVDisinf in 'UVDisinf.pas' {FUVDisinf},
  DefMeteo in 'DefMeteo.pas',
  Climat502 in 'Climat502.pas' {FClimat502: Climat510},
  Stg in 'Stg.pas' {StgFrame: TFrame},
  DefineClim502 in 'DefineClim502.pas',
  Port502 in 'Port502.pas',
  PortStatus in 'PortStatus.pas' {FPortStatus},
  CalcStg in 'CalcStg.pas' {CalcStgFrame: TFrame},
  StgBlock in 'StgBlock.pas',
  Translate502 in 'Translate502.pas',
  UnitPasw in 'UnitPasw.pas',
  Cloud502 in 'Cloud502.pas' {FSetCloud},
  FBlockAccessDlg in 'FBlockAccessDlg.pas' {FBlockAccess},
  FActionsDlg in 'FActionsDlg.pas' {FActionDlg},
  Subr in 'Subr.pas',
  Calc502 in 'Calc502.pas',
  Climat501U in 'Climat501U.pas' {FClimat501U},
  DefineClim501S in 'DefineClim501S.pas',
  Strategy501U in 'Strategy501U.pas' {FStrategy501U},
  CellChart in 'CellChart.pas' {FrCellChart: TFrame};

{$R *.RES}
var hwndPrev:HWND;
  inilng:integer;
//    s: array[0..40] of Char;//AnsiString;
//    CopyNumber:integer;
begin
  MonCopyNumber:=0;
  hwndPrev:=FindWindow('TFPort',PORT_FORM_TITLE);
  if hwndPrev<>0 then
    begin
    MonCopyNumber:=1;
//####    hwndPrev:=FindWindow('TFPort',PORT_FORM_TITLE+'-2');
//####    if hwndPrev <> 0 then begin SetForegroundWindow(hwndPrev); Halt; end;
     end;
  Application.Initialize;
  inilng:=InitLanguage(INI_FILE_NAME);
  LoadMessagesLanguage(@ProgMess,SumMessages);
//  FAbout:=TFAbout.Create(Application);
//  LoadFormLanguage(FAbout,FAbout.Name);
//  FAbout.Show;      //!!!
//  try
//  FAbout.Update;    //!!!
  Application.Title := 'Monitor';
  Application.HelpFile := 'Monitor.hlp'; //HELP_FILE_NAME; //
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TFStrategy501U, FStrategy501U);
  //  Application.CreateForm(TFMixer501, FMixer501);
//  Application.CreateForm(TFAphrodite, FAphrodite);
//  Application.CreateForm(TFDrain405, FDrain405);
  try
  {if inilng > 1 then
      begin
      Application.CreateForm(TFEAbout, FEAbout);
      FEAbout.Show;
      FEAbout.Update;
      end
  else }begin
      Application.CreateForm(TFAbout, FAbout);
      LoadFormLanguage(FAbout,FAbout.Name);
      FAbout.Show;      //!!!
      FAbout.Update;    //!!!
      end;
   Application.CreateForm(TFPort, FPort);
  Application.CreateForm(TFNewCtr, FNewCtr);
  Application.CreateForm(TFSetGrid, FSetGrid);
  Application.CreateForm(TFReport, FReport);
  Application.CreateForm(TFGridGraf, FGridGraf);
  Application.CreateForm(TFHandClim, FHandClim);
  Application.CreateForm(TFormulForm, FormulForm);
//  Application.CreateForm(TFProgress, FProgress);
  Application.CreateForm(TFWindSonic, FWindSonic);
  Application.CreateForm(TFSetInternet, FSetInternet);
  Application.CreateForm(TFVoice, FVoice);
//  Application.CreateForm(TFHandPanel, FHandPanel);
  Application.CreateForm(THotGraf, HotGraf);
  Application.CreateForm(TTopMesForm, TopMesForm);
  Application.CreateForm(TSetChartF, SetChartF);
  LoadFormLanguage(FMain,FMain.Name);
  LoadLangsMenu(FMain.mnLanguage);
  LoadFormLanguage(FPort,FPort.Name);
  LoadFormLanguage(FNewCtr,FNewCtr.Name);
  LoadFormLanguage(FSetGrid,FSetGrid.Name);
  LoadFormLanguage(FReport,FReport.Name);
//  LoadFormLanguage(FDBSet);
  LoadFormLanguage(FGridGraf,FGridGraf.Name);
  LoadFormLanguage(FHandClim,FHandClim.Name);
  LoadFormLanguage(FormulForm,FormulForm.Name);
  LoadFormLanguage(FWindSonic,FWindSonic.Name);
  LoadFormLanguage(FSetInternet,FSetInternet.Name);
  LoadFormLanguage(FVoice,FVoice.Name);
  LoadFormLanguage(HotGraf,HotGraf.Name);
  LoadFormLanguage(TopMesForm,TopMesForm.Name);
  LoadFormLanguage(SetChartF,SetChartF.Name);
  FMain.Init(MonCopyNumber);
  finally {if inilng > 1 then FEAbout.Hide else }FAbout.Hide; end;
  Application.Run;
end.

