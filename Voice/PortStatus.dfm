object FPortStatus: TFPortStatus
  Left = 279
  Top = 235
  Width = 714
  Height = 249
  AlphaBlendValue = 200
  BorderStyle = bsSizeToolWin
  Caption = 'FPortStatus'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PortsGrid: TtsGrid
    Left = 0
    Top = 25
    Width = 706
    Height = 171
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 706
    Height = 25
    ButtonHeight = 13
    Caption = 'ToolBar1'
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 196
    Width = 706
    Height = 19
    Panels = <>
  end
  object TimerView: TTimer
    Interval = 5000
    OnTimer = TimerViewTimer
    Left = 160
    Top = 32
  end
  object XPManifest1: TXPManifest
    Left = 96
    Top = 32
  end
end
