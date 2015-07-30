object ActionDlg: TActionDlg
  Left = 322
  Top = 254
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1076#1077#1081#1089#1090#1074#1080#1103#1084
  ClientHeight = 354
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 224
    Width = 328
    Height = 130
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object LLevAcc: TLabel
      Tag = 10000000
      Left = 24
      Top = 16
      Width = 158
      Height = 13
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072' '#1076#1083#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
    end
    object LNowAcc: TLabel
      Tag = 10000000
      Left = 24
      Top = 48
      Width = 132
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1091#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
    end
    object Bevel1: TBevel
      Left = 8
      Top = 80
      Width = 313
      Height = 3
    end
    object SpinEdit1: TSpinEdit
      Left = 216
      Top = 11
      Width = 65
      Height = 22
      MaxValue = 100
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = SpinEdit1Change
    end
    object ButOK: TBitBtn
      Left = 80
      Top = 96
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkOK
    end
    object ButCancel: TBitBtn
      Left = 192
      Top = 96
      Width = 75
      Height = 25
      TabOrder = 2
      Kind = bkCancel
    end
    object ButHelp: TBitBtn
      Left = 248
      Top = 42
      Width = 75
      Height = 25
      TabOrder = 3
      OnClick = ButHelpClick
      Kind = bkHelp
    end
    object SENowLevel: TSpinEdit
      Left = 168
      Top = 44
      Width = 65
      Height = 22
      MaxValue = 100
      MinValue = 1
      TabOrder = 4
      Value = 1
      OnChange = SENowLevelChange
    end
  end
  object ListBox1: TCheckListBox
    Left = 0
    Top = 0
    Width = 328
    Height = 224
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
end
