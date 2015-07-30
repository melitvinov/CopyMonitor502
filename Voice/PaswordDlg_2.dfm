object PasswordDlg: TPasswordDlg
  Left = 706
  Top = 257
  Width = 509
  Height = 468
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088' '#1087#1072#1088#1086#1083#1077#1081
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
  object DPL1: TLabel
    Tag = 10000000
    Left = 80
    Top = 104
    Width = 64
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
  end
  object DPL2: TLabel
    Tag = 10000000
    Left = 232
    Top = 76
    Width = 90
    Height = 13
    Caption = #1057#1088#1086#1082' '#1083#1080#1094#1077#1085#1079#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DPL3: TLabel
    Tag = 10000000
    Left = 16
    Top = 76
    Width = 103
    Height = 13
    Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object DPL7: TLabel
    Tag = 10000000
    Left = 336
    Top = 104
    Width = 82
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
  end
  object DPL8: TLabel
    Tag = 10000000
    Left = 416
    Top = 76
    Width = 52
    Height = 13
    Caption = #1084#1077#1089#1103#1094#1077#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Hour: TSpinEdit
    Left = 356
    Top = 72
    Width = 49
    Height = 22
    MaxValue = 23
    MinValue = 1
    TabOrder = 0
    Value = 1
    OnChange = HourChange
  end
  object SELevel: TSpinEdit
    Left = 148
    Top = 72
    Width = 49
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 99
    MinValue = 1
    ParentFont = False
    TabOrder = 1
    Value = 3
    OnChange = SELevelChange
  end
  object Res: TPanel
    Left = 24
    Top = 312
    Width = 457
    Height = 9
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Tag = 10000000
    Left = 264
    Top = 400
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    Kind = bkCancel
  end
  object BitBtn2: TBitBtn
    Tag = 10000000
    Left = 136
    Top = 400
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkOK
  end
  object Panel1: TPanel
    Left = 24
    Top = 328
    Width = 457
    Height = 57
    BevelOuter = bvLowered
    TabOrder = 5
    object DPL5: TLabel
      Tag = 10000000
      Left = 64
      Top = 4
      Width = 73
      Height = 13
      Caption = #1053#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
    end
    object DPL6: TLabel
      Tag = 10000000
      Left = 296
      Top = 4
      Width = 50
      Height = 13
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072
    end
    object Password: TEdit
      Left = 8
      Top = 20
      Width = 177
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object eTest: TEdit
      Left = 200
      Top = 20
      Width = 241
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
  end
  object CalendarStart: TMonthCalendar
    Left = 8
    Top = 128
    Width = 233
    Height = 169
    Date = 38665.411477141200000000
    TabOrder = 6
    OnClick = CalendarStartClick
  end
  object CalendarEnd: TMonthCalendar
    Left = 272
    Top = 120
    Width = 222
    Height = 177
    Date = 38665.411477141200000000
    TabOrder = 7
    OnClick = CalendarEndClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 49
    Align = alTop
    TabOrder = 8
    object DPL4: TLabel
      Tag = 10000000
      Left = 200
      Top = 16
      Width = 38
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object DPL9: TLabel
      Tag = 10000000
      Left = 8
      Top = 16
      Width = 44
      Height = 13
      Caption = #1052#1086#1085#1080#1090#1086#1088
    end
    object EName: TEdit
      Left = 56
      Top = 12
      Width = 137
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object ENewPasw: TEdit
      Left = 256
      Top = 12
      Width = 161
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object BNewPasw: TBitBtn
      Left = 432
      Top = 10
      Width = 43
      Height = 25
      Default = True
      TabOrder = 2
      OnClick = BNewPaswClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
end
