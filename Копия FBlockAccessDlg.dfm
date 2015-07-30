object FBlockAccess: TFBlockAccess
  Left = 524
  Top = 199
  Width = 474
  Height = 510
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1080#1075#1085#1072#1083#1086#1074
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
  object PSetAccess: TPanel
    Left = 0
    Top = 230
    Width = 466
    Height = 162
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object PValue: TPanel
      Left = 16
      Top = 8
      Width = 441
      Height = 121
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object DAL2: TLabel
        Tag = 10000000
        Left = 8
        Top = 92
        Width = 147
        Height = 13
        Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072' '#1076#1083#1103' '#1079#1072#1087#1080#1089#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DAL1: TLabel
        Tag = 10000000
        Left = 8
        Top = 52
        Width = 145
        Height = 13
        Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072' '#1076#1083#1103' '#1095#1090#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DAL3: TLabel
        Tag = 10000000
        Left = 240
        Top = 100
        Width = 127
        Height = 13
        Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DAL5: TLabel
        Tag = 10000000
        Left = 240
        Top = 76
        Width = 121
        Height = 13
        Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1086#1077' '#1079#1085#1072#1095#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DAL6: TLabel
        Tag = 10000000
        Left = 240
        Top = 52
        Width = 102
        Height = 13
        Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Tag = 10000000
        Left = 16
        Top = 8
        Width = 66
        Height = 13
        Caption = #1048#1084#1103' '#1089#1080#1075#1085#1072#1083#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LevRead: TSpinEdit
        Left = 168
        Top = 51
        Width = 49
        Height = 22
        EditorEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 99
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 1
        OnChange = LevReadChange
      end
      object LevWrite: TSpinEdit
        Left = 168
        Top = 91
        Width = 49
        Height = 22
        EditorEnabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 99
        MinValue = 0
        ParentFont = False
        TabOrder = 1
        Value = 1
        OnChange = LevWriteChange
      end
      object EEd: TEdit
        Left = 376
        Top = 48
        Width = 57
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = EEdChange
      end
      object EMin: TEdit
        Left = 376
        Top = 72
        Width = 57
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = EMinChange
      end
      object EMax: TEdit
        Left = 376
        Top = 96
        Width = 57
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = EMaxChange
      end
      object EName: TEdit
        Left = 16
        Top = 24
        Width = 417
        Height = 21
        TabOrder = 5
        OnChange = ENameChange
      end
    end
    object SaveCheck: TCheckBox
      Tag = 10000000
      Left = 32
      Top = 136
      Width = 225
      Height = 17
      Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1080#1084#1077#1085' '#1089#1080#1075#1085#1072#1083#1086#1074
      TabOrder = 1
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
      MaxValue = 99
      MinValue = 0
      TabOrder = 0
      Value = 1
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
  object ValueList: TCheckListBox
    Left = 0
    Top = 0
    Width = 466
    Height = 230
    Align = alClient
    AllowGrayed = True
    ItemHeight = 13
    TabOrder = 3
    OnClick = ValueListClick
  end
end
