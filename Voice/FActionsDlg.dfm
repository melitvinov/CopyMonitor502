object FActionDlg: TFActionDlg
  Left = 322
  Top = 254
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1076#1077#1081#1089#1090#1074#1080#1103#1084
  ClientHeight = 437
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 328
    Height = 104
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object LNowAcc: TLabel
      Tag = 10000000
      Left = 24
      Top = 16
      Width = 132
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1091#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
    end
    object Bevel1: TBevel
      Left = 8
      Top = 56
      Width = 313
      Height = 3
    end
    object ButOK: TBitBtn
      Left = 80
      Top = 64
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object ButCancel: TBitBtn
      Left = 200
      Top = 64
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
    object ButHelp: TBitBtn
      Left = 248
      Top = 10
      Width = 75
      Height = 25
      TabOrder = 2
      OnClick = ButHelpClick
      Kind = bkHelp
    end
    object SENowLevel: TSpinEdit
      Left = 168
      Top = 12
      Width = 65
      Height = 22
      Enabled = False
      MaxValue = 30
      MinValue = 4
      TabOrder = 3
      Value = 4
      OnChange = SENowLevelChange
    end
  end
  object ActGrid: TtsGrid
    Left = 0
    Top = 0
    Width = 328
    Height = 333
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
    TabOrder = 1
    Version = '3.01.07'
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    OnEndCellEdit = ActGridEndCellEdit
    Data = {03000000020000000001000000000000000000000000}
  end
end
