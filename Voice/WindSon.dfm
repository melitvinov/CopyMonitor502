object FWindSonic: TFWindSonic
  Tag = 10000000
  Left = 1210
  Top = 534
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1072#1090#1095#1080#1082' '#1074#1077#1090#1088#1072' WindSonic'
  ClientHeight = 107
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 275
    Top = 16
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Tag = 10000000
    Left = 8
    Top = 14
    Width = 81
    Height = 13
    Caption = #1048#1084#1103' '#1057#1054#1052' '#1087#1086#1088#1090#1072
  end
  object Label3: TLabel
    Tag = 10000000
    Left = 8
    Top = 44
    Width = 33
    Height = 13
    Caption = #1042#1088#1077#1084#1103
  end
  object CBPortName: TComboBox
    Left = 96
    Top = 10
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'COM1'
    Items.Strings = (
      'COM1'
      'COM2'
      'COM3'
      'COM4'
      'COM5'
      'COM6'
      'COM7'
      'COM8'
      'COM9'
      'COM10'
      'COM11'
      'COM12'
      'COM13'
      'COM14'
      'COM15'
      'COM16')
  end
  object BOpen: TBitBtn
    Tag = 10000000
    Left = 192
    Top = 8
    Width = 65
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = BOpenClick
  end
  object Panel1: TPanel
    Left = 56
    Top = 40
    Width = 89
    Height = 25
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 160
    Top = 40
    Width = 329
    Height = 25
    BevelOuter = bvLowered
    TabOrder = 3
  end
  object Label4: TLabeledEdit
    Tag = 10000000
    Left = 56
    Top = 72
    Width = 433
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = #1042#1077#1090#1077#1088':'
    LabelPosition = lpLeft
    TabOrder = 4
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 344
    Top = 8
  end
end
