object CalcStgFrame: TCalcStgFrame
  Left = 0
  Top = 0
  Width = 627
  Height = 136
  TabOrder = 0
  object Splitter1: TSplitter
    Left = 473
    Top = 0
    Width = 5
    Height = 136
  end
  object ResChart: TChart
    Left = 478
    Top = 0
    Width = 149
    Height = 136
    BackWall.Brush.Color = clWhite
    Gradient.Visible = True
    Title.Text.Strings = (
      '')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.LabelStyle = talValue
    BottomAxis.Maximum = 30.000000000000000000
    BottomAxis.Minimum = 10.000000000000000000
    BottomAxis.Title.Caption = #1058#1077#1084#1087#1077#1088#1072#1090#1091#1088#1072
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.LabelStyle = talValue
    LeftAxis.Maximum = 100.000000000000000000
    LeftAxis.Minimum = 30.000000000000000000
    LeftAxis.Title.Caption = #1042#1083#1072#1078#1085#1086#1089#1090#1100
    Legend.LegendStyle = lsValues
    View3D = False
    View3DOptions.Elevation = 315
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    BevelOuter = bvLowered
    Color = 16744576
    TabOrder = 0
    object Series1: TPointSeries
      ColorEachPoint = True
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.Draw3D = False
      Pointer.InflateMargins = True
      Pointer.Style = psDiamond
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 136
    Align = alLeft
    TabOrder = 1
    object CalcTB: TToolBar
      Left = 1
      Top = 1
      Width = 471
      Height = 29
      ButtonHeight = 13
      Caption = 'CalcTB'
      TabOrder = 0
      object StgNameL: TLabel
        Left = 0
        Top = 2
        Width = 50
        Height = 13
        Caption = 'StgNameL'
      end
    end
    object TaskGrid: TtsGrid
      Left = 1
      Top = 30
      Width = 471
      Height = 105
      Align = alClient
      CheckBoxStyle = stCheck
      Cols = 4
      ExportDelimiter = ','
      GridMode = gmBrowse
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
      Data = {0000000000000000}
    end
  end
end
