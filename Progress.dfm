object FProgress: TFProgress
  Left = 863
  Top = 383
  BorderStyle = bsToolWindow
  Caption = #1047#1072#1075#1088#1091#1079#1082#1072
  ClientHeight = 123
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LParam: TLabel
    Left = 0
    Top = 16
    Width = 241
    Height = 13
    Alignment = taCenter
    AutoSize = False
  end
  object LDate: TLabel
    Left = 0
    Top = 40
    Width = 241
    Height = 13
    Alignment = taCenter
    AutoSize = False
  end
  object BCancel: TBitBtn
    Left = 80
    Top = 88
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BCancelClick
    Kind = bkCancel
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 64
    Width = 209
    Height = 17
    Max = 5
    Position = 1
    Step = 1
    TabOrder = 1
  end
end
