object PasswordDlg: TPasswordDlg
  Left = 623
  Top = 283
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsDialog
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1091#1088#1086#1074#1085#1103' '#1076#1086#1089#1090#1091#1087#1072
  ClientHeight = 336
  ClientWidth = 400
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
  object DPL7: TLabel
    Tag = 10000000
    Left = 200
    Top = 144
    Width = 82
    Height = 13
    Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
  end
  object Label1: TLabel
    Left = 48
    Top = 168
    Width = 59
    Height = 13
    Caption = #1044#1083#1103' '#1091#1088#1086#1074#1085#1103
  end
  object Label2: TLabel
    Tag = 10000000
    Left = 64
    Top = 216
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object LNewTime: TLabel
    Left = 24
    Top = 264
    Width = 3
    Height = 13
  end
  object CalendarEnd: TMonthCalendar
    Left = 160
    Top = 160
    Width = 177
    Height = 169
    Date = 38665.652173391200000000
    TabOrder = 0
    OnClick = CalendarEndClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 81
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 1
    object DPL4: TLabel
      Tag = 10000000
      Left = 24
      Top = 8
      Width = 38
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object LTimeDo: TLabel
      Left = 16
      Top = 56
      Width = 43
      Height = 13
      Caption = 'LTimeDo'
    end
    object EdInputPasw: TEdit
      Left = 16
      Top = 28
      Width = 193
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
    end
    object BTestPasw: TBitBtn
      Tag = 10000000
      Left = 248
      Top = 26
      Width = 105
      Height = 25
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100
      Default = True
      TabOrder = 1
      OnClick = BTestPaswClick
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
    object BNew: TBitBtn
      Tag = 10000000
      Left = 320
      Top = 26
      Width = 73
      Height = 25
      Caption = #1053#1086#1074#1099#1081
      TabOrder = 2
      Visible = False
      OnClick = BNewClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 400
    Height = 41
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 2
    object DPL3: TLabel
      Tag = 10000000
      Left = 16
      Top = 12
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
    object BitBtn1: TBitBtn
      Tag = 10000000
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      Kind = bkCancel
    end
    object SELevel: TSpinEdit
      Left = 132
      Top = 11
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 30
      MinValue = 4
      ParentFont = False
      TabOrder = 1
      Value = 4
    end
    object BitBtn2: TBitBtn
      Tag = 10000000
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 2
      Kind = bkOK
    end
  end
  object SENewLev: TSpinEdit
    Left = 60
    Top = 187
    Width = 49
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 30
    MinValue = 4
    ParentFont = False
    TabOrder = 3
    Value = 4
    OnChange = SENewLevChange
  end
  object ENewPasw: TEdit
    Left = 24
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
