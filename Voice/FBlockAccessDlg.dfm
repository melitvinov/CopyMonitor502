object FBlockAccess: TFBlockAccess
  Left = 1161
  Top = 287
  Width = 474
  Height = 510
  BorderIcons = [biSystemMenu]
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1080#1075#1085#1072#1083#1086#1074
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
  object PSetAccess: TPanel
    Left = 0
    Top = 352
    Width = 466
    Height = 40
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object SaveCheck: TCheckBox
      Tag = 10000000
      Left = 24
      Top = 8
      Width = 225
      Height = 17
      Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1074' XML'
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 435
    Width = 466
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object SetPasw: TBitBtn
      Tag = 10000000
      Left = 144
      Top = 8
      Width = 49
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BClose: TBitBtn
      Tag = 10000000
      Left = 248
      Top = 8
      Width = 97
      Height = 25
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      Kind = bkAbort
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 392
    Width = 466
    Height = 43
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object DAL4: TLabel
      Tag = 10000000
      Left = 28
      Top = 16
      Width = 132
      Height = 13
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1091#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
    end
    object Label1: TLabel
      Tag = 10000000
      Left = 256
      Top = 16
      Width = 95
      Height = 13
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1091#1088#1086#1074#1077#1085#1100
    end
    object SENowLevel: TSpinEdit
      Left = 184
      Top = 11
      Width = 49
      Height = 22
      EditorEnabled = False
      Enabled = False
      MaxValue = 30
      MinValue = 4
      TabOrder = 0
      Value = 4
      OnChange = SENowLevelChange
    end
    object GetKey: TBitBtn
      Left = 368
      Top = 10
      Width = 35
      Height = 25
      Caption = ' '
      TabOrder = 1
      OnClick = GetKeyClick
      Kind = bkHelp
    end
  end
  object SignGrid: TtsGrid
    Left = 0
    Top = 0
    Width = 466
    Height = 352
    Align = alClient
    CheckBoxStyle = stCheck
    Cols = 4
    ExportDelimiter = ','
    HeadingFont.Charset = DEFAULT_CHARSET
    HeadingFont.Color = clWindowText
    HeadingFont.Height = -11
    HeadingFont.Name = 'MS Sans Serif'
    HeadingFont.Style = []
    HeadingHeight = 32
    HeadingWordWrap = wwOn
    ParentShowHint = False
    Rows = 4
    ShowHint = False
    StoreData = True
    TabOrder = 3
    Version = '3.01.07'
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    OnEndCellEdit = SignGridEndCellEdit
    Data = {
      0100000002000000010000000001000000000200000001000000010000000000
      00000000000000}
  end
end
