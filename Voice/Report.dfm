object FReport: TFReport
  Left = 389
  Top = 369
  Width = 843
  Height = 562
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1054#1090#1095#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 835
    Height = 40
    ButtonHeight = 38
    ButtonWidth = 39
    Caption = 'ToolBar1'
    Flat = True
    Images = FSetGrid.ImageList1
    TabOrder = 0
    object RTB1: TToolButton
      Tag = 10000000
      Left = 0
      Top = 0
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1086#1090#1095#1077#1090
      Caption = '_Open'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = RTB1Click
    end
    object RTB2: TToolButton
      Tag = 10000000
      Left = 39
      Top = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1086#1090#1095#1077#1090#1072
      Caption = '_TB2'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = RTB2Click
    end
    object tbExcel: TToolButton
      Tag = 10000000
      Left = 78
      Top = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      ImageIndex = 10
      ParentShowHint = False
      ShowHint = True
      OnClick = tbExcelClick
    end
    object ToolButton2: TToolButton
      Left = 117
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 11
      Style = tbsSeparator
    end
    object AllCheck: TCheckBox
      Tag = 10000000
      Left = 125
      Top = 0
      Width = 131
      Height = 38
      Caption = #1042#1089#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = AllCheckClick
    end
    object NameSB: TSpeedButton
      Left = 256
      Top = 0
      Width = 297
      Height = 38
    end
    object RefreshB: TToolButton
      Left = 553
      Top = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Caption = 'RefreshB'
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = RefreshBClick
    end
  end
  object GridRep: TtsGrid
    Left = 0
    Top = 40
    Width = 835
    Height = 488
    Cursor = crHandPoint
    Align = alClient
    CheckBoxStyle = stCheck
    Cols = 4
    ColSelectMode = csNone
    ExportDelimiter = ','
    FixedColCount = 1
    GridMode = gmBrowse
    HeadingFont.Charset = DEFAULT_CHARSET
    HeadingFont.Color = clWindowText
    HeadingFont.Height = -11
    HeadingFont.Name = 'MS Sans Serif'
    HeadingFont.Style = []
    HeadingOn = False
    ParentShowHint = False
    PrintTitle = '"'#1060#1048#1058#1054'" '#1086#1090#1095#1077#1090
    PrintTotals = False
    ProvideGridMenu = True
    PrintOrientation = pmPortrait
    Rows = 4
    RowSelectMode = rsNone
    ShowHint = False
    StoreData = True
    TabOrder = 1
    Version = '3.01.07'
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    OnClickCell = GridRepClickCell
    Data = {010000000100000001000000000000000000000000}
  end
  object PrintDialog1: TPrintDialog
    Left = 336
    Top = 136
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083#1099' '#1076#1072#1085#1085#1099#1093' *.txt|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099' *.*|*.*'
    Left = 272
    Top = 136
  end
end
