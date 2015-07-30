object FPortStatus: TFPortStatus
  Left = 279
  Top = 235
  Width = 758
  Height = 266
  Caption = 'FPortStatus'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 435
    Top = 25
    Width = 5
    Height = 188
    Align = alRight
  end
  object PortsGrid: TtsGrid
    Left = 0
    Top = 25
    Width = 435
    Height = 188
    Align = alClient
    CheckBoxStyle = stCheck
    Cols = 4
    ExportDelimiter = ','
    HeadingFont.Charset = DEFAULT_CHARSET
    HeadingFont.Color = clWindowText
    HeadingFont.Height = -11
    HeadingFont.Name = 'MS Sans Serif'
    HeadingFont.Style = []
    ParentShowHint = False
    Rows = 4
    ShowHint = False
    StoreData = True
    TabOrder = 0
    Version = '3.01.07'
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    OnCellEdit = PortsGridCellEdit
    Data = {010000000100000001000000000000000000000000}
  end
  object StatusGrid: TtsGrid
    Left = 440
    Top = 25
    Width = 310
    Height = 188
    Align = alRight
    CheckBoxStyle = stCheck
    Cols = 4
    ExportDelimiter = ','
    HeadingFont.Charset = DEFAULT_CHARSET
    HeadingFont.Color = clWindowText
    HeadingFont.Height = -11
    HeadingFont.Name = 'MS Sans Serif'
    HeadingFont.Style = []
    ParentShowHint = False
    Rows = 4
    ShowHint = False
    StoreData = True
    TabOrder = 1
    Version = '3.01.07'
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    ColProperties = <
      item
        DataCol = 4
        Col.Width = 93
      end>
    Data = {01000000010000000104000000312C20310000000000000000}
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 750
    Height = 25
    ButtonHeight = 13
    Caption = 'ToolBar1'
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 2
      Width = 152
      Height = 13
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1086#1073#1084#1077#1085#1072' RS485 '#1085#1072'  '
    end
    object ViewTimeL: TLabel
      Left = 152
      Top = 2
      Width = 52
      Height = 13
      Caption = 'ViewTimeL'
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 213
    Width = 750
    Height = 19
    Panels = <>
  end
  object TimerView: TTimer
    Interval = 5000
    OnTimer = TimerViewTimer
    Left = 312
    Top = 128
  end
  object XPManifest1: TXPManifest
    Left = 240
    Top = 144
  end
end
