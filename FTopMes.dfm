object TopMesForm: TTopMesForm
  Left = 216
  Top = 142
  BorderStyle = bsDialog
  Caption = 'TopMesForm'
  ClientHeight = 88
  ClientWidth = 279
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MesL: TLabel
    Left = 0
    Top = 8
    Width = 273
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = '.'
    WordWrap = True
  end
  object vLabel: TLabel
    Left = 8
    Top = 32
    Width = 265
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Start'
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 56
    Width = 89
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
end
