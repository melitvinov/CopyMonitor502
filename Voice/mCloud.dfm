object FSetCloud: TFSetCloud
  Left = 360
  Top = 307
  Width = 1392
  Height = 720
  Caption = 'FSetCloud'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PBlock: TPanel
    Left = 0
    Top = 0
    Width = 1384
    Height = 33
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object bTest: TSpeedButton
      Left = 1272
      Top = 8
      Width = 41
      Height = 22
      Caption = 'Test'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = bTestClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 624
    Width = 1384
    Height = 62
    Align = alBottom
    TabOrder = 1
    object bOk: TBitBtn
      Left = 360
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = bOkClick
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 568
      Top = 16
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object AliasGrid: TtsGrid
    Left = 0
    Top = 33
    Width = 1384
    Height = 591
    Align = alClient
    CheckBoxStyle = stCheck
    Cols = 5
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
    TabOrder = 2
    Version = '3.01.07'
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    OnCellEdit = AliasGridCellEdit
    ColProperties = <
      item
        DataCol = 1
        Col.Heading = 'Name'
        Col.ReadOnly = True
        Col.Width = 332
      end
      item
        DataCol = 2
        Col.Heading = 'Alias'
        Col.Width = 264
      end
      item
        DataCol = 3
        Col.Heading = 'Unit'
      end
      item
        DataCol = 4
        Col.Heading = 'xy'
        Col.ReadOnly = True
        Col.Width = 40
      end
      item
        DataCol = 5
        Col.Heading = 'Mode'
        Col.Width = 38
      end>
    Data = {
      0100000001000000010000000003000000050000000000000001000000000000
      000000000000}
  end
end
