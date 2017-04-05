object FMain: TFMain
  Left = 322
  Top = 89
  Width = 1214
  Height = 732
  HelpContext = 1
  HorzScrollBar.Range = 700
  VertScrollBar.Range = 428
  AutoScroll = False
  Caption = #1052#1086#1085#1080#1090#1086#1088' APL'
  Color = clMenuBar
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000100
    0000000000000000000000000000091777777777777777777777777777770991
    00000000000000000000000000070999188FFFFFFFFFFF8FFFFFFFFFFF070999
    91888FFFFFFF8F88FFFF8FFFFF07009999187FFFFFFFF8188FFFFFFFFF0700F9
    999178FFFFFF719188FF8FFFFF0700FF9999188FFFF81999188FFFFFFF0700FF
    F9999188FF81999991888FFFF80700FFFF9999188819999999187FFF880700FF
    FFF99991819999F9999178F8180700F8F8F89999199998F899991881180700FF
    FFFF899999998FFFF9999119180700FFFFFFFF99999FFFFFFF999999180700FF
    FFFF8FF999FF8FFFFFF99999180700FFFFFFFFFF9FFFFFFFFFF999991807008F
    FFFF8FFFFFFF8FFFFF9999991F070088FFFFFFFFFFFFFFFFF99999991F070088
    88887FFFFFFF8FFFFFFF8FFFFF070000000008F8F8F8F8F8F8F8F8F8F8070000
    8FFF0FFFFFFF8FFFFFFF8FFFFF07000008FF0FFFFFFFFFFFFFFFFFFFFF070000
    008F0FFFFFFF8FFFFFFF8FFFFF07000000080FFFFFFFFFFFFFFFFFFFFF070000
    00000FFFFFFF8FFFFFFF8FFFFF07000000000FFFFFFFFFFFFFFFFFFFFF070000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFBFFFFFFF80000000800000008000
    0000800000008000000080000000800000008000000080000000800000008000
    000080000000800000008000000080000000800000008000000080000000C000
    0000E0000000F0000000F8000000FC000000FE000000FF000000FF800001FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000009777
    77777777777799000000000000070998FFFF88FFFF070F998FF8998FFF070FF9
    98899998FF0708889999889981070FFFF99FFFF999070FFFFFFFFFF9990708FF
    FFFFFF9999070000088888888807008F0FFFFFFFFF0700080FFFFFFFFF070000
    00000000000700000000000000000000000000000000FFFFFFFF0000FFF80000
    188F0000FF070000F9990000FF81000091880000F8070000FF99000088198000
    9918C0008807E000FFF9F0008199FFFF9991FFFF1807}
  KeyPreview = True
  Menu = MM1
  OldCreateOrder = True
  Position = poDefault
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 1198
    Height = 3
    Align = alTop
    Shape = bsTopLine
  end
  object ListCtr: TTabControl
    Left = 0
    Top = 43
    Width = 1198
    Height = 611
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Images = IL3
    MultiLine = True
    OwnerDraw = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    Visible = False
    OnChange = ListCtrChange
    OnDrawTab = ListCtrDrawTab
  end
  object MPwav: TMediaPlayer
    Left = 672
    Top = 147
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 1
  end
  object MainStatus: TStatusBar
    Left = 0
    Top = 654
    Width = 1198
    Height = 19
    Panels = <
      item
        Width = 240
      end
      item
        Width = 150
      end
      item
        Width = 160
      end
      item
        Width = 160
      end
      item
        Width = 2
      end>
  end
  object P1: TPanel
    Left = 0
    Top = 43
    Width = 1198
    Height = 611
    Align = alClient
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object VSplitter: TSplitter
      Left = 1
      Top = 1
      Height = 609
      Color = clHighlight
      MinSize = 1
      ParentColor = False
    end
    object P2: TPanel
      Left = 153
      Top = 1
      Width = 1044
      Height = 609
      Align = alClient
      TabOrder = 0
      object HSplitter: TSplitter
        Left = 1
        Top = 590
        Width = 1042
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clYellow
        ParentColor = False
      end
      object GChart: TChart
        Left = 1
        Top = 33
        Width = 1011
        Height = 533
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Color = 4194304
        BackWall.Pen.Color = 16711808
        BottomWall.Color = 16777088
        Gradient.Direction = gdBottomTop
        Gradient.EndColor = 4194304
        Gradient.StartColor = clBlack
        Gradient.Visible = True
        LeftWall.Pen.Color = clBlue
        MarginRight = 2
        MarginTop = 1
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clLime
        Title.Font.Height = -21
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          '')
        Title.Visible = False
        OnZoom = GChartZoom
        BackColor = 4194304
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Axis.Color = clYellow
        BottomAxis.Axis.Width = 1
        BottomAxis.AxisValuesFormat = 'hh:mm:ss'
        BottomAxis.DateTimeFormat = 'h:nn'
        BottomAxis.Grid.Color = clWhite
        BottomAxis.Increment = 0.041666666666666660
        BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
        BottomAxis.LabelsFont.Color = clYellow
        BottomAxis.LabelsFont.Height = -11
        BottomAxis.LabelsFont.Name = 'Arial'
        BottomAxis.LabelsFont.Style = []
        BottomAxis.LabelsSeparation = 20
        BottomAxis.Maximum = 25.000000000000000000
        BottomAxis.MinorTickCount = 5
        BottomAxis.MinorTickLength = 3
        BottomAxis.MinorTicks.Color = 8454143
        BottomAxis.TickInnerLength = 1
        BottomAxis.Ticks.Color = clRed
        BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
        BottomAxis.Title.Font.Color = clYellow
        BottomAxis.Title.Font.Height = -11
        BottomAxis.Title.Font.Name = 'MS Sans Serif'
        BottomAxis.Title.Font.Style = []
        Chart3DPercent = 1
        Frame.Color = 16711808
        LeftAxis.Axis.Color = 8454016
        LeftAxis.Axis.Width = 1
        LeftAxis.ExactDateTime = False
        LeftAxis.Increment = 1.000000000000000000
        LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
        LeftAxis.LabelsFont.Color = clLime
        LeftAxis.LabelsFont.Height = -11
        LeftAxis.LabelsFont.Name = 'Arial'
        LeftAxis.LabelsFont.Style = []
        LeftAxis.LabelStyle = talValue
        LeftAxis.MinorTickCount = 4
        LeftAxis.MinorTickLength = 4
        LeftAxis.MinorTicks.Color = 65408
        LeftAxis.StartPosition = 1.000000000000000000
        LeftAxis.EndPosition = 99.000000000000000000
        LeftAxis.TickInnerLength = 3
        LeftAxis.Ticks.Color = clRed
        LeftAxis.TicksInner.Color = clLime
        LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
        LeftAxis.Title.Font.Color = clLime
        LeftAxis.Title.Font.Height = -12
        LeftAxis.Title.Font.Name = 'Arial'
        LeftAxis.Title.Font.Style = []
        Legend.Alignment = laTop
        Legend.Color = clBlack
        Legend.Font.Charset = DEFAULT_CHARSET
        Legend.Font.Color = clYellow
        Legend.Font.Height = -11
        Legend.Font.Name = 'MS Sans Serif'
        Legend.Font.Style = []
        Legend.LegendStyle = lsSeries
        Legend.ShadowColor = clPurple
        Legend.Visible = False
        RightAxis.Axis.Width = 1
        RightAxis.ExactDateTime = False
        RightAxis.Grid.Visible = False
        RightAxis.Increment = 1.000000000000000000
        RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
        RightAxis.LabelsFont.Color = clYellow
        RightAxis.LabelsFont.Height = -11
        RightAxis.LabelsFont.Name = 'Arial'
        RightAxis.LabelsFont.Style = []
        RightAxis.LabelStyle = talValue
        RightAxis.TickInnerLength = 2
        RightAxis.Ticks.Color = 12615935
        RightAxis.Title.Angle = 90
        RightAxis.Title.Font.Charset = DEFAULT_CHARSET
        RightAxis.Title.Font.Color = clFuchsia
        RightAxis.Title.Font.Height = -11
        RightAxis.Title.Font.Name = 'Arial'
        RightAxis.Title.Font.Style = []
        TopAxis.DateTimeFormat = 'h:nn:ss'
        TopAxis.ExactDateTime = False
        TopAxis.Increment = 0.000347222222222222
        TopAxis.LabelsFont.Charset = DEFAULT_CHARSET
        TopAxis.LabelsFont.Color = clWhite
        TopAxis.LabelsFont.Height = -11
        TopAxis.LabelsFont.Name = 'Arial'
        TopAxis.LabelsFont.Style = []
        TopAxis.LabelStyle = talMark
        TopAxis.TickInnerLength = 4
        TopAxis.Ticks.Color = 16777088
        TopAxis.TicksInner.Color = 16777088
        OnAfterDraw = GChartAfterDraw
        Align = alClient
        BevelInner = bvLowered
        Color = clWhite
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        AutoSize = True
        OnMouseMove = GChartMouseMove
        DesignSize = (
          1011
          533)
        object Gor: TShape
          Left = 2
          Top = 272
          Width = 333
          Height = 1
          Pen.Color = clLime
          OnMouseMove = GorMouseMove
        end
        object Ver: TShape
          Left = 162
          Top = 23
          Width = 1
          Height = 260
          Pen.Color = clYellow
          OnMouseMove = VerMouseMove
        end
        object LTime: TLabel
          Left = 970
          Top = 2
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = '00:00'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object LAxisR: TLabel
          Left = 1193
          Top = 50
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = '12.12'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LAxisL: TLabel
          Left = 424
          Top = 50
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = '12.12'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LActYSer: TLabel
          Left = 354
          Top = 544
          Width = 45
          Height = 13
          Caption = 'LActYSer'
          Color = clBlack
          ParentColor = False
          Transparent = False
        end
        inline FrCellChart1: TFrCellChart
          Left = 216
          Top = 326
          Width = 320
          Height = 240
          DragKind = dkDock
          DragMode = dmAutomatic
          TabOrder = 0
        end
        object Series9: TGanttSeries
          ColorEachPoint = True
          Marks.ArrowLength = 0
          Marks.BackColor = 16711808
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clYellow
          Marks.Font.Height = -11
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = []
          Marks.Frame.Visible = False
          Marks.Transparent = True
          Marks.Visible = True
          SeriesColor = clRed
          ShowInLegend = False
          Title = 'BitSeries'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.VertSize = 10
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'Start'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          ConnectingPen.Visible = False
          StartValues.DateTime = True
          StartValues.Name = 'Start'
          StartValues.Multiplier = 1.000000000000000000
          StartValues.Order = loAscending
          EndValues.DateTime = True
          EndValues.Name = 'End'
          EndValues.Multiplier = 1.000000000000000000
          EndValues.Order = loNone
          NextTask.DateTime = False
          NextTask.Name = 'NextTask'
          NextTask.Multiplier = 1.000000000000000000
          NextTask.Order = loNone
        end
        object ASer1: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer1'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object ASer2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = clYellow
          Title = 'ASer2'
          LinePen.Color = 4259584
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object ASer3: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer3'
          LinePen.Color = clFuchsia
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object ASer4: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer4'
          LinePen.Color = clRed
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object ASer5: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer5'
          LinePen.Color = clRed
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object ASer6: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 16777088
          Title = 'ASer6'
          LinePen.Color = 16744703
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object ASer7: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer7'
          LinePen.Color = clAqua
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object ASer8: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer8'
          LinePen.Color = 16744448
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer9'
          LinePen.Color = 16744448
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series2: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer10'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series3: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer11'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series4: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer12'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series5: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer13'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series6: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer14'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series7: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer15'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series8: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = 8454143
          Title = 'ASer16'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series15: TLineSeries
          Marks.Arrow.Color = 33023
          Marks.ArrowLength = 8
          Marks.Style = smsXValue
          Marks.Visible = False
          PercentFormat = '##0.##,%'
          SeriesColor = clRed
          Title = 'ASer17'
          LinePen.Color = clAqua
          LinePen.Width = 2
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          Stairs = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
      end
      object BottomPanel: TPanel
        Left = 1
        Top = 593
        Width = 1042
        Height = 15
        Align = alBottom
        DockSite = True
        TabOrder = 1
        OnDockDrop = RightPanExDockDrop
        OnUnDock = RightPanExUnDock
      end
      object Track: TTrackBar
        Left = 1
        Top = 566
        Width = 1042
        Height = 24
        Align = alBottom
        BorderWidth = 3
        Ctl3D = False
        Max = 100
        ParentCtl3D = False
        Frequency = 0
        Position = 5
        SelEnd = 100
        TabOrder = 2
        ThumbLength = 15
        TickStyle = tsNone
        OnChange = TrackChange
      end
      object ToolBar2: TToolBar
        Left = 1012
        Top = 33
        Width = 31
        Height = 533
        Align = alRight
        ButtonHeight = 32
        ButtonWidth = 31
        Color = clMenuBar
        Flat = True
        Images = ilGrBtn
        ParentColor = False
        TabOrder = 3
        object OpenNow: TToolButton
          Tag = 10000000
          Left = 0
          Top = 0
          Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1079#1072' '#1089#1077#1075#1086#1076#1085#1103
          Caption = '_OpenNow'
          Grouped = True
          ImageIndex = 3
          ParentShowHint = False
          Wrap = True
          ShowHint = True
          Style = tbsCheck
          OnClick = OpenNowClick
        end
        object ShowLegend: TToolButton
          Tag = 10000000
          Left = 0
          Top = 32
          Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1083#1077#1075#1077#1085#1076#1091
          Caption = '_ShowLegend'
          ImageIndex = 7
          ParentShowHint = False
          Wrap = True
          ShowHint = True
          Style = tbsCheck
          OnClick = ShowLegendClick
        end
        object BPlay: TToolButton
          Tag = 10000000
          Left = 0
          Top = 64
          Hint = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1087#1088#1080' '#1087#1088#1080#1077#1084#1077
          Caption = '_BPlay'
          Grouped = True
          ImageIndex = 6
          ParentShowHint = False
          Wrap = True
          ShowHint = True
          Style = tbsCheck
          OnClick = BPlayClick
        end
        object BPause: TToolButton
          Tag = 10000000
          Left = 0
          Top = 96
          Hint = #1060#1080#1082#1089#1072#1094#1080#1103' '#1087#1086#1083#1086#1078#1077#1085#1080#1103
          Caption = '_BPause'
          Grouped = True
          ImageIndex = 5
          ParentShowHint = False
          Wrap = True
          ShowHint = True
          Style = tbsCheck
        end
        object TB1: TToolButton
          Tag = 10000000
          Left = 0
          Top = 128
          Action = aBigGraf
          AutoSize = True
          ImageIndex = 9
          ParentShowHint = False
          Wrap = True
          ShowHint = True
        end
        object TB2: TToolButton
          Tag = 10000000
          Left = 0
          Top = 160
          Action = aSmolGraf
          AutoSize = True
          ImageIndex = 10
          ParentShowHint = False
          Wrap = True
          ShowHint = True
        end
        object ToolButton6: TToolButton
          Left = 0
          Top = 192
          Action = aChartColor
          AutoSize = True
          ImageIndex = 0
          ParentShowHint = False
          Wrap = True
          ShowHint = True
        end
        object ToolButton8: TToolButton
          Left = 0
          Top = 224
          Action = aPrintScreen
          ImageIndex = 1
          ParentShowHint = False
          Wrap = True
          ShowHint = True
        end
        object Track3D: TTrackBar
          Left = 0
          Top = 256
          Width = 30
          Height = 32
          Hint = '3D'
          Max = 15
          Min = 1
          Orientation = trVertical
          ParentShowHint = False
          Frequency = 2
          Position = 1
          ShowHint = True
          TabOrder = 0
          OnChange = Track3DChange
        end
      end
      object ToolBar3: TToolBar
        Left = 1
        Top = 1
        Width = 1042
        AutoSize = True
        ButtonHeight = 30
        ButtonWidth = 31
        Flat = True
        Images = ilGrBtn
        TabOrder = 4
        object CtrCB: TComboBox
          Left = 0
          Top = 0
          Width = 261
          Height = 24
          Style = csDropDownList
          DropDownCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 16
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnChange = CtrCBChange
        end
        object ArchiveB: TSpeedButton
          Left = 261
          Top = 0
          Width = 80
          Height = 30
          Caption = #1057#1077#1075#1086#1076#1085#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = SelectPClick
        end
        object DateTimePicker1: TDateTimePicker
          Left = 341
          Top = 0
          Width = 200
          Height = 30
          Hint = 'View date'
          Date = 38369.580587719910000000
          Time = 38369.580587719910000000
          DateFormat = dfLong
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnCloseUp = DateTimePicker1CloseUp
        end
        object BOpenArxiv: TToolButton
          Tag = 10000000
          Left = 541
          Top = 0
          Hint = #1054#1090#1082#1088#1099#1090#1100' '#1072#1088#1093#1080#1074
          Caption = '_BOpenArxiv'
          Grouped = True
          ImageIndex = 4
          ParentShowHint = False
          ShowHint = True
          OnClick = SelectPClick
        end
        object CBShowAudit: TComboBox
          Left = 572
          Top = 0
          Width = 110
          Height = 24
          Hint = 'Audit/Analyzer'
          Style = csDropDownList
          Color = clBtnFace
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = CBShowAuditChange
        end
        object FPPLong: TFPicPanel
          Tag = 10000000
          Left = 682
          Top = 0
          Width = 138
          Height = 30
          Hint = #1044#1083#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          Alignment = taLeftJustify
          Color = clMenuBar
          Caption = #1054#1073#1079#1086#1088
          Transparent = False
          MargLeft = 0
          MargTop = 0
          MargTextTop = 2
          MargTextLeft = 5
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          object LHeadHour: TLabel
            Tag = 10000000
            Left = 88
            Top = 6
            Width = 47
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' ('#1095#1072#1089')'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object SETimeView: TSpinEdit
            Left = 56
            Top = 0
            Width = 41
            Height = 26
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxValue = 24
            MinValue = 1
            ParentFont = False
            TabOrder = 0
            Value = 2
            OnChange = SETimeViewChange
          end
        end
        object ToolButton4: TToolButton
          Left = 820
          Top = 0
          Width = 12
          Caption = 'ToolButton4'
          Style = tbsSeparator
        end
        object FPPFreq: TFPicPanel
          Tag = 10000000
          Left = 832
          Top = 0
          Width = 144
          Height = 30
          Hint = #1055#1077#1088#1080#1086#1076' '#1087#1088#1080#1077#1084#1072' '#1076#1072#1085#1085#1099#1093
          Alignment = taLeftJustify
          Color = clMenuBar
          Caption = #1054#1087#1088#1086#1089
          Transparent = False
          MargLeft = 0
          MargTop = 0
          MargTextTop = 2
          MargTextLeft = 5
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          object LHeadSec: TLabel
            Tag = 10000000
            Left = 106
            Top = 5
            Width = 31
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = ' ('#1089#1077#1082')'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object SETimer1: TSpinEdit
            Left = 54
            Top = 0
            Width = 50
            Height = 26
            AutoSelect = False
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            MaxValue = 300
            MinValue = 5
            ParentFont = False
            TabOrder = 0
            Value = 20
            OnChange = SETimer1Change
          end
        end
      end
    end
    object RightPanEx: TPanel
      Left = 4
      Top = 1
      Width = 149
      Height = 609
      Align = alLeft
      DockSite = True
      TabOrder = 1
      OnDockDrop = RightPanExDockDrop
      OnUnDock = RightPanExUnDock
    end
  end
  object HotMesPanel: TPanel
    Left = 1200
    Top = 536
    Width = 265
    Height = 190
    Caption = #1046#1091#1088#1085#1072#1083' '#1089#1086#1073#1099#1090#1080#1081
    UseDockManager = False
    DragKind = dkDock
    DragMode = dmAutomatic
    TabOrder = 4
    OnResize = HotMesPanelResize
    object HotMesGrid: TtsGrid
      Left = 1
      Top = 17
      Width = 263
      Height = 172
      Align = alClient
      AlwaysShowEditor = False
      CheckBoxStyle = stCheck
      Cols = 3
      ExportDelimiter = ','
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridMode = gmBrowse
      HeadingColor = clYellow
      HeadingFont.Charset = DEFAULT_CHARSET
      HeadingFont.Color = clWindowText
      HeadingFont.Height = -11
      HeadingFont.Name = 'MS Sans Serif'
      HeadingFont.Style = []
      ParentFont = False
      ParentShowHint = False
      RowBarOn = False
      Rows = 4
      ShowHint = False
      StoreData = True
      TabOrder = 0
      Version = '2.20.24'
      XMLExport.Version = '1.0'
      XMLExport.DataPacketVersion = '2.0'
      OnClickCell = HotMesGridClickCell
      OnDblClick = HotMesGridDblClick
      ColProperties = <
        item
          DataCol = 1
          Col.Heading = #1044#1072#1090#1072
          Col.Width = 104
        end
        item
          DataCol = 2
          Col.Heading = #1050#1086#1085#1090#1088#1086#1083#1083#1077#1088
          Col.Width = 128
        end
        item
          DataCol = 3
          Col.Heading = #1057#1086#1086#1073#1097#1077#1085#1080#1077
          Col.Width = 173
        end>
      Data = {0000000000000000}
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 263
      Height = 16
      Align = alTop
      Color = clYellow
      TabOrder = 1
      object Label1: TLabel
        Tag = 10000000
        Left = 1
        Top = 1
        Width = 86
        Height = 14
        Align = alLeft
        Caption = #1046#1091#1088#1085#1072#1083' '#1089#1086#1073#1099#1090#1080#1081
        Visible = False
      end
      object AutoHotCheck: TCheckBox
        Tag = 10000000
        Left = 4
        Top = 0
        Width = 77
        Height = 17
        Alignment = taLeftJustify
        Caption = #1040#1074#1090#1086#1089#1076#1074#1080#1075
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object AllVisCheck: TCheckBox
        Tag = 10000000
        Left = 108
        Top = -1
        Width = 109
        Height = 17
        Alignment = taLeftJustify
        Caption = #1042#1089#1077' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088#1099
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = AllVisCheckClick
      end
    end
  end
  object CrossPanel: TPanel
    Left = 1280
    Top = 144
    Width = 372
    Height = 185
    Caption = #1050#1088#1086#1089#1089#1075#1088#1072#1092#1080#1082
    UseDockManager = False
    DragKind = dkDock
    DragMode = dmAutomatic
    TabOrder = 5
    object FuncChart: TChart
      Left = 1
      Top = 1
      Width = 370
      Height = 183
      AnimatedZoom = True
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Gradient.EndColor = clWhite
      Gradient.StartColor = 16777088
      Gradient.Visible = True
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      BottomAxis.StartPosition = 3.000000000000000000
      BottomAxis.EndPosition = 97.000000000000000000
      BottomAxis.Title.Caption = 'Drag from table'
      LeftAxis.StartPosition = 3.000000000000000000
      LeftAxis.EndPosition = 97.000000000000000000
      LeftAxis.Title.Caption = 'Drag from table'
      Legend.Visible = False
      RightAxis.Visible = False
      View3D = False
      Align = alClient
      BevelOuter = bvLowered
      Color = 16627575
      UseDockManager = False
      TabOrder = 0
      OnDragDrop = FuncChartDragDrop
      OnDragOver = FuncChartDragOver
      object Series11: TPointSeries
        ColorEachPoint = True
        Marks.ArrowLength = 0
        Marks.Frame.Visible = False
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = clGreen
        ShowInLegend = False
        Pointer.HorizSize = 3
        Pointer.InflateMargins = False
        Pointer.Style = psCircle
        Pointer.VertSize = 3
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
      object Series10: TFastLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        ShowInLegend = False
        LinePen.Color = clRed
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series12: TFastLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clYellow
        ShowInLegend = False
        LinePen.Color = clYellow
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
  end
  object SignalPanel: TPanel
    Left = 680
    Top = 104
    Width = 385
    Height = 185
    Caption = #1058#1072#1073#1083#1080#1094#1072' '#1089#1080#1075#1085#1072#1083#1086#1074
    UseDockManager = False
    DragKind = dkDock
    DragMode = dmAutomatic
    TabOrder = 6
    object SignalGrid: TtsGrid
      Left = 1
      Top = 1
      Width = 383
      Height = 183
      Align = alClient
      AlwaysShowEditor = False
      CellSelectMode = cmNone
      CheckBoxStyle = stCheck
      Color = clBlack
      Cols = 2
      ColSelectMode = csNone
      ExportDelimiter = ','
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HeadingColor = clYellow
      HeadingFont.Charset = DEFAULT_CHARSET
      HeadingFont.Color = clBlack
      HeadingFont.Height = -11
      HeadingFont.Name = 'MS Sans Serif'
      HeadingFont.Style = []
      HeadingParentFont = False
      LineColor = clGray
      ParentFont = False
      ParentShowHint = False
      PopupMenu = GridPM
      RowBarOn = False
      Rows = 1
      RowSelectMode = rsNone
      ShowHint = False
      StoreData = True
      TabOrder = 0
      Version = '2.20.24'
      XMLExport.Version = '1.0'
      XMLExport.DataPacketVersion = '2.0'
      OnCellEdit = SignalGridCellEdit
      OnClickCell = SignalGridClickCell
      OnColResized = SignalGridColResized
      OnDragDrop = SignalGridDragDrop
      OnDragOver = SignalGridDragOver
      OnMouseDown = SignalGridMouseDown
      OnMouseMove = SignalGridMouseMove
      ColProperties = <
        item
          DataCol = 1
          Col.ControlType = ctCheck
          Col.Heading = '*'
          Col.Width = 16
        end>
      Data = {010000000100000002020000000000000000000000}
    end
  end
  object BlocksTreePanel: TPanel
    Left = 1440
    Top = 384
    Width = 185
    Height = 41
    Caption = #1041#1083#1086#1082#1080' '#1076#1072#1085#1085#1099#1093' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088#1086#1074
    UseDockManager = False
    DragKind = dkDock
    DragMode = dmAutomatic
    TabOrder = 7
  end
  object TreePanel: TFPanel
    Left = 536
    Top = 368
    Width = 185
    Height = 201
    UseDockManager = False
    DragKind = dkDock
    DragMode = dmAutomatic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 8
    OnClick = SelectPClick
    object TreeViewGraf: TTreeView
      Left = 1
      Top = 1
      Width = 183
      Height = 199
      Cursor = crHandPoint
      Align = alClient
      Color = 16777167
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      HotTrack = True
      Images = IL3
      Indent = 19
      ParentFont = False
      ParentShowHint = False
      RightClickSelect = True
      ShowHint = True
      TabOrder = 0
      OnChange = TreeViewGrafChange
      OnCustomDrawItem = TreeViewGrafCustomDrawItem
      OnMouseMove = TreeViewGrafMouseMove
      OnMouseUp = TreeViewGrafMouseUp
    end
  end
  object LeftPanEx: TPanel
    Left = 1198
    Top = 43
    Width = 0
    Height = 611
    Align = alRight
    DockSite = True
    TabOrder = 9
    OnDockDrop = RightPanExDockDrop
    OnUnDock = RightPanExUnDock
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 3
    Width = 1198
    Height = 40
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 39
    Color = 15335407
    Flat = True
    Images = IL1
    ParentColor = False
    TabOrder = 10
    Transparent = True
    object TB9: TToolButton
      Left = 0
      Top = 0
      Width = 5
      Caption = 'TB9'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ViewSost: TToolButton
      Tag = 10000000
      Left = 5
      Top = 0
      Action = aShowSost
      ParentShowHint = False
      ShowHint = True
    end
    object TB23: TToolButton
      Left = 44
      Top = 0
      Width = 13
      Caption = 'TB23'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object TB15: TToolButton
      Tag = 10000000
      Left = 57
      Top = 0
      Action = aCtrTip
      ParentShowHint = False
      ShowHint = True
    end
    object TB14: TToolButton
      Left = 96
      Top = 0
      Width = 9
      Caption = 'TB14'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object TB6: TToolButton
      Tag = 10000001
      Left = 105
      Top = 0
      Action = aBlControl
      ParentShowHint = False
      ShowHint = True
    end
    object TB19: TToolButton
      Tag = 10000002
      Left = 144
      Top = 0
      Action = aCalibr
      ParentShowHint = False
      ShowHint = True
    end
    object TB10: TToolButton
      Tag = 10000003
      Left = 183
      Top = 0
      Action = aBlTimer
      ParentShowHint = False
      ShowHint = True
    end
    object TB13: TToolButton
      Left = 222
      Top = 0
      Width = 14
      Caption = 'TB13'
      ImageIndex = 9
      Style = tbsSeparator
    end
    object TB11: TToolButton
      Tag = 10000004
      Left = 236
      Top = 0
      Action = aOpenFile
      ParentShowHint = False
      ShowHint = True
    end
    object TB22: TToolButton
      Left = 275
      Top = 0
      Width = 6
      Caption = 'TB22'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object BEditBit: TToolButton
      Tag = 10000000
      Left = 281
      Top = 0
      Action = aBitGraf
      ParentShowHint = False
      ShowHint = True
    end
    object TB5: TToolButton
      Left = 320
      Top = 0
      Width = 10
      Caption = 'TB5'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton1: TToolButton
      Left = 330
      Top = 0
      Action = aShowArchGraf
      ParentShowHint = False
      ShowHint = True
    end
    object TB8: TToolButton
      Left = 369
      Top = 0
      Width = 13
      Caption = 'TB8'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object TB20: TToolButton
      Left = 382
      Top = 0
      Width = 5
      Caption = 'TB20'
      ImageIndex = 11
      Style = tbsDivider
    end
    object TB17: TToolButton
      Left = 387
      Top = 0
      Width = 4
      Caption = 'TB17'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object AVIVoice: TToolButton
      Tag = 10000000
      Left = 391
      Top = 0
      Action = aAVIVoice
      AllowAllUp = True
      ParentShowHint = False
      ShowHint = True
      Style = tbsCheck
    end
    object TB4: TToolButton
      Left = 430
      Top = 0
      Width = 8
      Caption = 'TB4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object ToolButton10: TToolButton
      Left = 438
      Top = 0
      Action = aJurnal
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton2: TToolButton
      Left = 477
      Top = 0
      Action = aPasw
      ParentShowHint = False
      ShowHint = True
    end
    object ToolButton3: TToolButton
      Left = 516
      Top = 0
      Hint = #1055#1088#1086#1075#1085#1086#1079' '#1087#1086#1075#1086#1076#1099
      Action = aForecast
      ParentShowHint = False
      ShowHint = True
    end
  end
  object MM1: TMainMenu
    Tag = 10000000
    Left = 416
    Top = 202
    object MenuFile: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      object FileNew: TMenuItem
        Action = aNewCtr
      end
      object CtrOpen: TMenuItem
        Action = aOpenCtr
      end
      object N19: TMenuItem
        Action = aOpenInter
      end
      object FileClose: TMenuItem
        Action = aCloseCtr
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object N11: TMenuItem
        Action = aShowSost
      end
      object N6: TMenuItem
        Action = aShowWind
      end
      object N35: TMenuItem
        Action = aVideo
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object FilePrintSetup: TMenuItem
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1077#1095#1072#1090#1080'...'
        ImageIndex = 9
        OnClick = aPrintScreenExecute
      end
      object FilePrint: TMenuItem
        Action = aPrintScreen
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object XML1: TMenuItem
        Action = aExportXml
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object FileExit: TMenuItem
        Action = aCloseMon
      end
    end
    object mnView: TMenuItem
      Caption = #1042#1080#1076
      object mnViewTab: TMenuItem
        AutoCheck = True
        Caption = #1042#1099#1074#1086#1076' '#1079#1072#1082#1083#1072#1076#1086#1082
        OnClick = mnViewTabClick
      end
      object N37: TMenuItem
        Action = aPortStatus
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object N26: TMenuItem
        AutoCheck = True
        Caption = #1054#1082#1085#1086' '#1076#1077#1088#1077#1074#1086' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088#1086#1074
        Checked = True
        OnClick = N26Click
      end
      object N29: TMenuItem
        AutoCheck = True
        Caption = #1054#1082#1085#1086' '#1075#1088#1072#1092#1080#1082' '#1080#1079' '#1076#1077#1088#1077#1074#1072
        OnClick = N29Click
      end
      object N28: TMenuItem
        AutoCheck = True
        Caption = #1054#1082#1085#1086' '#1073#1083#1086#1082#1080' '#1076#1072#1085#1085#1099#1093
        Checked = True
        OnClick = N28Click
      end
      object N24: TMenuItem
        AutoCheck = True
        Caption = #1054#1082#1085#1086' '#1090#1072#1073#1083#1080#1094#1072' '#1089#1080#1075#1085#1072#1083#1086#1074
        Checked = True
        OnClick = N24Click
      end
      object N25: TMenuItem
        AutoCheck = True
        Caption = #1054#1082#1085#1086' '#1078#1091#1088#1085#1072#1083' '#1089#1086#1073#1099#1090#1080#1081
        Checked = True
        OnClick = N25Click
      end
      object N27: TMenuItem
        AutoCheck = True
        Caption = #1054#1082#1085#1086' '#1082#1088#1086#1089#1089#1075#1088#1072#1092#1080#1082
        OnClick = N27Click
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object mnViewEarlyDay: TMenuItem
        AutoCheck = True
        Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1076#1077#1085#1100' '#1085#1072' '#1075#1088#1072#1092#1080#1082#1077
        Checked = True
      end
      object YesName: TMenuItem
        AutoCheck = True
        Caption = #1055#1086#1076#1087#1080#1089#1080' '#1075#1088#1072#1092#1080#1082#1086#1074
      end
      object mnOnTestArtefact: TMenuItem
        AutoCheck = True
        Caption = #1059#1076#1072#1083#1103#1090#1100' '#1072#1088#1090#1077#1092#1072#1082#1090#1099
      end
      object mnActiveTree: TMenuItem
        AutoCheck = True
        Caption = #1040#1082#1090#1080#1074#1085#1086#1077' '#1076#1077#1088#1077#1074#1086
      end
      object mnColorGrid: TMenuItem
        AutoCheck = True
        Caption = #1062#1074#1077#1090#1085#1099#1077' '#1090#1072#1073#1083#1080#1094#1099
        Checked = True
      end
      object N30: TMenuItem
        Action = aChartColor
      end
    end
    object Edit: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object ChVoice: TMenuItem
        Action = aShowVoice
        AutoCheck = True
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object mnSaveName: TMenuItem
        AutoCheck = True
        Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1080#1084#1077#1085#1072
      end
      object mnSaveView: TMenuItem
        AutoCheck = True
        Caption = #1057#1086#1093#1088#1072#1085#1103#1090#1100' '#1074#1080#1076#1099
      end
      object mnKeepJournal: TMenuItem
        AutoCheck = True
        Caption = #1042#1077#1089#1090#1080' '#1078#1091#1088#1085#1072#1083#1099
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object mnTransferSun: TMenuItem
        AutoCheck = True
        Caption = #1055#1077#1088#1077#1076#1072#1095#1072' '#1089#1086#1083#1085#1094#1072' '#1074' '#1087#1086#1083#1080#1074
        Checked = True
      end
      object mnHotArchive: TMenuItem
        AutoCheck = True
        Caption = #1058#1077#1082#1091#1097#1080#1081' '#1072#1088#1093#1080#1074' '#1087#1086#1083#1080#1074#1072
        Checked = True
      end
      object mnAutoSynxTime: TMenuItem
        AutoCheck = True
        Caption = #1040#1074#1090#1086#1089#1080#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1074#1088#1077#1084#1077#1085#1080
        Checked = True
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object mnNetManagement: TMenuItem
        AutoCheck = True
        Caption = #1059#1087#1088#1072#1074#1083#1103#1090#1100' '#1087#1086' '#1089#1077#1090#1080
        OnClick = mnNetManagementClick
      end
      object mnInternet: TMenuItem
        AutoCheck = True
        Caption = #1054#1073#1084#1077#1085' '#1074' Internet'
        OnClick = mnInternetClick
      end
      object mnAudServerAPL: TMenuItem
        AutoCheck = True
        Caption = #1040#1091#1076#1080#1090' '#1085#1072' '#1089#1077#1088#1074#1077#1088
        OnClick = mnAudServerAPLClick
      end
      object mnArchServerAPL: TMenuItem
        AutoCheck = True
        Caption = #1040#1088#1093#1080#1074' '#1085#1072' '#1089#1077#1088#1074#1077#1088
        OnClick = mnAudServerAPLClick
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object N16: TMenuItem
        Action = aActionsDlg
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object mnWidth: TMenuItem
        Caption = #1064#1080#1088#1086#1090#1072'...'
        OnClick = mnWidthClick
      end
      object mnLong: TMenuItem
        Caption = #1044#1086#1083#1075#1086#1090#1072'...'
        OnClick = mnLongClick
      end
      object mnMeteoTime: TMenuItem
        Caption = #1063#1072#1089#1086#1074#1086#1081' '#1087#1086#1103#1089'...'
        OnClick = mnMeteoTimeClick
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object mFastCOM: TMenuItem
        AutoCheck = True
        Caption = 'Fast COM'
        Checked = True
      end
      object mBreakCheckSum: TMenuItem
        AutoCheck = True
        Caption = 'BreakCheckSum'
      end
    end
    object N7: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
      object N8: TMenuItem
        Action = aCtrTip
      end
      object N9: TMenuItem
        Action = aAnalGraf
      end
      object N10: TMenuItem
        Action = aBitGraf
      end
      object N22: TMenuItem
        Action = aAVIVoice
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object maExportData: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1076#1072#1085#1085#1099#1093'...'
        Enabled = False
      end
    end
    object MenuView: TMenuItem
      Caption = #1058#1072#1073#1083#1080#1094#1099
      object Sost: TMenuItem
        Caption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077'...'
        OnClick = BSetGridClick
      end
      object Par: TMenuItem
        Tag = 1
        Action = aBlControl
      end
      object Doz: TMenuItem
        Tag = 2
        Action = aCalibr
      end
      object DayZD: TMenuItem
        Tag = 3
        Action = aBlTimer
      end
      object Arx: TMenuItem
        Tag = 4
        Action = aBlArxiv
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object SostTxt: TMenuItem
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1090#1077#1082#1089#1090#1086#1084
        OnClick = SostTxtClick
      end
    end
    object mnLanguage: TMenuItem
      Caption = #1071#1079#1099#1082
      object mnRusLng: TMenuItem
        Caption = 'Russian'
        OnClick = ChangeLangClick
      end
    end
    object mHelp: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      object mContex: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072' '#1084#1086#1085#1080#1090#1086#1088#1072
        OnClick = mContexClick
      end
      object mClimateHelp: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1082#1072' '#1082#1083#1080#1084#1072#1090#1072
        OnClick = mClimateHelpClick
      end
      object mPDFMon: TMenuItem
        Tag = 1
        Caption = #1058#1077#1093#1086#1087#1080#1089#1072#1085#1080#1103
        OnClick = mPDF
      end
      object mTranslator: TMenuItem
        Caption = #1055#1077#1088#1077#1074#1086#1076#1095#1080#1082'..'
        OnClick = mTranslatorClick
      end
      object pmSt: TMenuItem
        Caption = #1057#1072#1081#1090' '#1092#1080#1088#1084#1099
        OnClick = pmStClick
      end
      object mnTS: TMenuItem
        Caption = #1058#1077#1093#1085#1080#1095#1077#1089#1082#1080#1081' '#1089#1072#1081#1090
        OnClick = mnTSClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mAbout: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = mAboutClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 584
    Top = 98
  end
  object PMSetNameX: TPopupMenu
    Tag = 10000000
    Left = 552
    Top = 202
    object PMPar: TMenuItem
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PMColor: TMenuItem
      Caption = #1062#1074#1077#1090' '#1083#1080#1085#1080#1080
    end
    object PMWidth: TMenuItem
      Caption = #1058#1086#1083#1097#1080#1085#1072' '#1083#1080#1085#1080#1080
    end
  end
  object IL2: TImageList
    Height = 15
    Width = 25
    Left = 449
    Top = 99
    Bitmap = {
      494C010109000E00040019000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000640000003C0000000100200000000000C05D
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      0000FFFFFF007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00000000007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F00000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF007F7F
      7F00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00000000007F7F7F00FFFF
      FF00FFFFFF0000000000FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF007F7F7F00000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00FFFFFF000000
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      FF00FFFFFF007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000007F7F7F000000000000000000000000007F7F7F00000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF00CFCFCF00CFCFCF00D0D0D000D0D0D000D0D0D000D0D0D000DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00D0D0D000CFCFCF00CFCFCF00CFCFCF00AFAFAF00AFAF
      AF007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFCFCF00CFCFCF00CFCFCF00BFC0BF00BFBF
      B000BFBFBF00BFBFBF00A0A0A000A0A0A000A0A0A000A0A0A0009F9F9F009F9F
      9F00A09F9F009F9F9F009F9F9F00A0A0A000808080007F7F7F00606060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF00000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF00B0B0B0009F9F9F00A090A000A09FA0009F9F9F009F9F9F00A0A0A000A0A0
      A000A0A0A000A0A0A00000000000000000000000000000000000A0A0A000AFAF
      AF0080808000505050005F5F5F00606060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000FF000000FF00
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFCFCF00DFDFDF00BFBFC0000000FF00BFBF
      C000BFBFC000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00AFAFAF00A0A0
      A0009F9F9F00A0A0A000AFAFAF00B0B0B0008F8F8F005F5F5F00606060006060
      60005F5F5F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF000000FF000000FF0000000000
      00000000000000000000000000000000000000FFFF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000FFFF00FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D0D0D000C0C0C000BFBFC000BFBFC000B0B0B000A0A0A000A0A0A0009F9F
      9F00909090008F8F8F008F8F8F00808080008080800080808000707070007F7F
      7F007F7F7F006F6F6F00606060005F5F5F005050500000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00BFBF
      BF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000FF000000FF00
      0000FF000000FF0000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000AFAFAF009090900080808000707070006F7070006F7070006F6F
      70006F6F70006F6F6F0070707000707070006060600070707000909090009090
      90008F8F8F000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
      FF00BFBFBF0000FFFF00BFBFBF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000000FFFF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000BFBFBF00B0BFC000BFBFC000C0BFBF00BFBFBF00BFBF
      BF00B0B0B000BFAFA000B0AF9F00B0AF9F00B0AFA00000FF0000AFA0AF00AFA0
      AF00707F70006060600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF000000
      000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBF
      BF0000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000808080000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000808080000000000000FFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000808080000000
      00000000000000000000000000000000000000000000CFD0DF00B0906000EF60
      3F00E06F4F00CF6F4F00D06F4F00906F30008F6F30009F60200090601F009060
      100090600000905F000090601000A0A0A0007F7F7F0050505000909090000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF00000080808000000000000000000000FFFF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000FF000000FF000000FF000000FF0000008080
      8000000000000000000000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF0000008080800000000000000000000000000000000000000000000000
      000000000000D0DFE000AF804F00FF400000C06F5000BFC0CF00CFC0C000CFC0
      C000CFC0C000C0C0C000CFCFD00090908F007F5F2F00905F000090601000A0A0
      A0007F7F7F005F5F5F006F6F6F00BFBFBF000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF000000FF000000FF0000008080800000000000000000000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000FF000000FF00
      0000FF000000FF0000008080800000000000000000000000000000FFFF00FF00
      0000FF000000FF000000FF000000FF0000008080800000000000000000000000
      00000000000000000000000000000000000000000000DFE0EF00AF805000FF4F
      0F00C0705F00CFDFE000DFE0DF00DFDFE000DFDFE000DFDFDF00DFE0E000A0A0
      AF007F706000905F000090601000AFAFAF00807F7F005F5F5F005F5F5F006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF000000FF000000FF0000008080
      80000000000000000000000000000000000000FFFF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000FF000000FF00000080808000000000000000
      0000000000000000000000FFFF00FF000000FF000000FF000000FF0000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000D0DFE000AF805000FF4F0F00C0705F00CFCFD000E0CFC000DFCF
      C000DFCFC000DFC0C000DFCFC000A0A0A0007F705F008F5F000090601000B0AF
      AF00807F80005F5F5F00606060005F5F5F000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF00000080808000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000FF000000FF00
      000080808000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF00000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0DFE000AF805000FF4F
      1000E05F3F00AF6F60009F808F00A0808F00A0808F00AF808F00AF808F00908F
      9F0080706F00A05F0000906F1000B0B0B000807F7F005F5F5F00606060006060
      6000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF00000080808000000000000000
      00000000000000000000000000000000000000FFFF00FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000808080000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF00000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFE0E000AF804F00F0400F00FF501F00DF402000B03F3F00AF40
      300090402F00804020008F4F20008040200090502000BF5F00008F600F00B0B0
      B000807F80005F5F5F005F5F5F005F5F5F000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000808080000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00FF000000808080000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFE0E000C0BFB000CFAF
      A000CFAFA000CFAFA000D0AF9F00CFAF9F00BFA09000AFA08F00AFA08000AFA0
      8000A09F80009F9F8000A09F8F00B0B0B0007F7F7F005F5F5F00707070008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00808080000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0D0D000D0D0D000D0DFDF00D0DFDF00D0DFDF00D0DFDF00D0DF
      DF00CFD0DF00D0D0DF00CFD0D000CFCFD000CFCFD000CFCFCF00C0CFCF00CFCF
      CF00B0B0B000B0B0B000CFCFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FF0000000000000000000000000000000000000000000000000000000000
      000080808000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FF000000FF00000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FF000000FF00000000000000000000000000
      000000000000000000000000000080808000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      000000000000000000000000000080808000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FF000000FF00
      0000FF000000000000000000000000000000000000000000000080808000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      000000000000000000000000000000000000000000000000000080808000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FF000000FF00000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FF000000FF000000FF000000FF00000000000000000000000000
      00000000000080808000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      00000000000080808000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000080808000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      00000000000000000000000000000000000080808000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FF000000FF00000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000008080
      8000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000008080
      8000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000000000000000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000FFFF00FF000000FF000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FF000000FF00000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000FF000000FF00
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF000000FF000000FF000000FF000000000000000000000000FF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF00000000000000000000000000000000FF
      FF00FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000FF000000FF000000FF000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000FF000000FF00
      0000FF00000000000000000000000000000000FFFF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      00000000000000000000000000000000000000FFFF00FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FF000000FF00000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF000000FF000000FF000000FF00000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      00000000000000FFFF00FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000FF0000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000FF000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      000000000000000000000000000000000000000000000000000000FFFF00FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FF000000FF00000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF0000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FF000000FF00000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF00FF000000FF000000000000000000
      00000000000000FFFF00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF0000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FF0000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF00FF00000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000640000003C0000000100010000000000C00300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF01FF80000000000000000000000000FE00FF80000000000000000000000000
      FC007F80000000000000000000000000F8003F80000000000000000000000000
      F0001F80000000000000000000000000F0001F80000000000000000000000000
      F0001F80000000000000000000000000F0001F80000000000000000000000000
      F0001F80000000000000000000000000F8003F80000000000000000000000000
      FC007F80000000000000000000000000F8003F80000000000000000000000000
      F9013F80000000000000000000000000FFEFFF80000000000000000000000000
      FFC7FF80000000000000000000000000FCFF0FF3FCFFE00003FFFFFFF0000000
      FC7F0FF1FC7FE00001FFFFFFF0000000FC3F0FF0FC3FE00000FFFFFFF0000000
      FC1F0FF07C1FE000007F801FF0000000FC0F0FF03C0FF000007F000FF0000000
      FC070FF01C07FF00007F0007F0000000FC030FF00C03F80003FF0003F0000000
      FC010FF00401F80001FF0003F0000000FC030FF00C03F80000FF001FF0000000
      FC070FF01C07F80000FF001FF0000000FC0F0FF03C0FF80000FF003FF0000000
      FC1F0FF07C1FF80000FF81FFF0000000FC3F0FF0FC3FF80000FF81FFF0000000
      FC7F0FF1FC7FF80000FFFFFFF0000000FCFF0FF3FCFFF80001FFFFFFF0000000
      FE187FFF9FFFFFF3F9FF87F9F0000000FE187FFF8FFFFFE3F1FF87F1F0000000
      FE187FFF87FFFFC3E1FF87E1F0000000FE187FFF83FFFF83C1FF87C1F0000000
      FE187FFF81FFFF0381FF8781F0000000FE187FFF80FFFE0301FF8701F0000000
      FE187FFF807FFC0201FF8601F0000000FE187FFF803FF80001FF8401F0000000
      FE187FFF807FFC0201FF8601F0000000FE187FFF80FFFE0301FF8701F0000000
      FE187FFF81FFFF0381FF8781F0000000FE187FFF83FFFF83C1FF87C1F0000000
      FE187FFF87FFFFC3E1FF87E1F0000000FE187FFF8FFFFFE3F1FF87F1F0000000
      FE187FFF9FFFFFF3F9FF87F9F000000000000000000000000000000000000000
      000000000000}
  end
  object IL3: TImageList
    Left = 488
    Top = 98
    Bitmap = {
      494C01011F002200040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF007F7F7F000000FF007F7F7F00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF000000FF000000FF000000FF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      800000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF007F7F7F000000FF007F7F7F00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      8000000080000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00BFBF
      BF0000000000000000000000000000000000000000000000000000000000BFBF
      BF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000800000008000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000080000000800000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000FF007F7F7F0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000000080000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF007F7F7F0000000000000000000000000000000000FFFF
      FF0000000000FFFFFF000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00000000000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF007F7F7F007F7F7F0000FFFF00FFFFFF007F7F7F000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF007F7F7F0000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF0000FFFF00FFFFFF0000FF
      FF000000FF000000FF00FFFFFF0000FFFF007F7F7F000000FF000000FF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FFFF00FFFF
      FF000000FF000000FF007F7F7F00FFFFFF007F7F7F000000FF000000FF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF000000000000FF000000FF0000FFFF000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF007F7F7F000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF000000FF000000FF000000FF000000FF000000FF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      0000FFFFFF0000000000FF00FF0000FF0000FF00FF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF000000FF000000FF000000FF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000000000000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF007F7F7F007F7F7F007F7F7F00FFFFFF000000
      0000000000000000000000000000000000007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F00000000007F7F7F007F7F7F00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF007F7F7F00000000007F7F7F00000000007F7F7F007F7F
      7F00FFFFFF00000000000000000000000000000000007F7F7F00000000000000
      FF00000000000000000000000000000000000000000000000000FF0000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF00000000000000000000000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF007F7F
      7F007F7F7F007F7F7F000000000000000000000000007F7F7F00000000007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000000000
      00000000FF00000000000000FF000000FF0000000000FF00000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000FF000000FF00
      0000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF0000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000FFFFFF00000000000000000000000000000000007F7F7F000000
      00007F7F7F007F7F7F00FFFFFF00000000007F7F7F007F7F7F00000000007F7F
      7F000000FF007F7F7F000000FF007F7F7F000000FF007F7F7F007F7F7F00FF00
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F000000FF007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F000000FF007F7F7F007F7F7F007F7F7F0000000000FF000000FF000000FF00
      0000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00
      0000000000000000000000000000000000007F7F7F00FFFFFF007F7F7F000000
      00007F7F7F0000000000FFFFFF00000000000000000000000000000000007F7F
      7F00000000007F7F7F007F7F7F00FFFFFF000000000000000000000000000000
      0000000000000000FF0000000000000000000000FF0000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      00000000FF0000000000000000000000000080000000FF000000FF000000FF00
      0000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000007F7F7F007F7F7F00000000000000
      0000000000007F7F7F0000000000FFFFFF000000000000000000000000000000
      00007F7F7F00000000007F7F7F007F7F7F00000000007F7F7F0000000000FF00
      0000000000000000000000000000FF000000000000000000FF00000000000000
      00000000FF00000000000000000000000000000000007F7F7F00000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      FF0000000000000000000000000000000000FF00000080000000FF000000FF00
      0000FF000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF00000000000000000000007F7F7F0000000000FFFFFF000000
      000000000000000000007F7F7F0000000000FFFFFF0000000000000000000000
      0000000000007F7F7F00000000007F7F7F000000000000000000000000000000
      0000FF00000000000000FF00000000000000000000000000FF00000000000000
      FF00FF0000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000000000000000000000000000000000000000FF00000080000000FF00
      0000FF00000000000000FF000000FF000000FF00000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF00000000000000000000007F7F7F0000000000FFFF
      FF000000000000000000000000007F7F7F0000000000FFFFFF00000000000000
      000000000000FFFFFF007F7F7F00000000007F7F7F007F7F7F00000000007F7F
      7F00FF0000007F7F7F00FF0000007F7F7F007F7F7F007F7F7F000000FF007F7F
      7F007F7F7F00FF0000000000FF007F7F7F007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000FF0000008000
      0000FF000000FF000000FF00000000000000FF000000FF00000000000000FFFF
      FF0000000000FF000000000000000000000000000000000000007F7F7F000000
      0000FFFFFF000000000000000000000000007F7F7F0000000000FFFFFF00FFFF
      FF007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      000080000000FF0000000000000000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000FFFFFF000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000007F7F7F00000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      00000000000000000000FF00000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00000080000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000FFFFFF00FFFFFF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00000080000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F000000000000000000000000000000
      00000000000000000000FF00000080000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000007F7F7F0000000000000000007F7F
      7F007F7F7F007F7F7F00FFFFFF007F7F7F000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF0000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000FFFFFF007F7F
      7F007F7F7F007F7F7F00FFFFFF00000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F00FFFFFF000000000000000000FF000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000000000FF0000000000000000000000000000000000000000000000FFFF
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      00000000000000000000000000000000000000000000BFBFBF00FFFFFF00BFBF
      BF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBF
      BF00FFFFFF000000FF00FFFFFF00000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000007F7F7F0000000000000000007F7F
      7F00000000007F7F7F00FFFFFF000000000000000000FF000000000000000000
      0000000000000000000000FF000000FF00000000000000000000000000000000
      000000000000FF0000000000000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFFFF00BFBFBF00FFFF
      FF00BFBFBF00FFFFFF00BFBFBF00000000000000000000000000000000000000
      00007F7F7F00FFFFFF00000000000000000000000000000000007F7F7F000000
      0000000000007F7F7F00FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      00000000000000000000FF00000000000000000000000000000000000000FFFF
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000000000007F7F7F00000000000000
      00007F7F7F007F7F7F00FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF0000000000000000
      00000000000000000000FF00000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F00FFFFFF0000000000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF000000FF00000000
      00000000000000000000FF00000000000000000000000000000000000000FFFF
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000FFFFFF0000000000000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F0000000000FFFFFF000000000000000000000000007F7F7F007F7F
      7F00FFFFFF007F7F7F00FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000FF0000000000000000
      00000000000000000000FF00000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000007F7F7F00FFFFFF00FFFF
      FF00000000007F7F7F0000000000FFFFFF00000000007F7F7F00000000007F7F
      7F00FFFFFF007F7F7F00FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000FF000000FF000000FF000000000000000000000000
      00000000000000000000FF000000000000000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F00FFFF
      FF00FFFFFF00000000007F7F7F0000000000FFFFFF00FFFFFF00FFFFFF007F7F
      7F00FFFFFF007F7F7F00FFFFFF000000000000000000FF000000000000000000
      0000000000000000000000FF000000FF00000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F00FFFFFF00FFFFFF00000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00FFFFFF007F7F7F00FFFFFF000000000000000000FF000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      000000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000000000BFBFBF00FFFFFF0000000000FFFFFF00000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00FFFFFF007F7F7F00000000000000000000000000000000007F7F
      7F00000000007F7F7F0000000000000000000000000000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
      00007F7F7F00FFFFFF000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000007F7F7F0000000000000000000000
      FF000000FF000000FF00000000007F7F7F00000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFF00000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000FF000000FF000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF000000FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF00000000000000FF000000FF000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF00000000000000FF000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00000000000000000000000000000000000000000000000000FF00
      000000000000000000000000FF0000000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF0000000000FF000000FF000000FF00
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000FF0000000000
      00000000FF000000000000000000000000000000FF000000FF000000FF000000
      00000000FF00000000000000FF000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      FF000000FF000000000000000000000000000000FF000000FF00000000000000
      FF000000FF000000FF00000000000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      00000000000000FFFF000000000000FFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF00000000000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFF00000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000007F7F7F000000000000000000000000000000000000FFFF0000FF
      FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000C0C0C0008000000080000000800000008000000080000000800000008080
      8000808080000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF0000000000FFFFFF007F7F7F000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00007F7F7F0000FFFF000000000000000000000000000000000000FFFF0000FF
      FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF000000000000000000000000000000000000000000C0C0
      C000800000000000000000000000000000000000000000000000000000008000
      0000000000008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000007F7F
      7F0000FFFF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      00000000000000FFFF0000000000000000000000000000000000C0C0C0008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000080808000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000C0C0C000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000800000000000000080808000000000007F7F7F00000000007F7F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F00000000007F7F7F000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF000000000000FFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000800000000000000080808000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000000000000C0C0C00080000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      000000000000FF00FF00800000000000000000000000000000007F7F7F000000
      00007F7F7F00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF007F7F7F00000000007F7F7F00000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF00000000000000000000C0C0C00080000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      000000000000FF00FF008000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000FFFF0000FFFF
      000000000000FFFF0000BFBFBF0000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000000000C0C0C00080000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      000000000000FF00FF008000000000000000000000007F7F7F00000000007F7F
      7F00FFFFFF00FFFFFF0000000000FFFFFF000000FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F00000000007F7F7F000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF000000000000BFBFBF000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF00000000000000000000C0C0C00080000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000000000000FF00FF0080000000000000000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF00000000000000000000C0C0C00080000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000008000000000000000808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000000000000000000000000000C0C0C000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF00FF008000000080808000000000000000000000000000000000000000
      000000000000000000007F7F7F00FFFFFF000000FF00FFFFFF007F7F7F000000
      00000000000000000000000000000000000000000000000000007F7F7F0000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000C0C0C0008000
      000000000000000000000000000000000000000000000000000000000000FF00
      FF008000000000000000808080000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F0000000000000000007F7F7F0000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000008080
      80008000000000000000000000000000000000000000FF00FF00FF00FF008000
      0000000080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000808080008000000080000000800000008000000080000000800000000000
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFF0E000EFF0E0000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000FFE0E000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFEFC0007FBF3F007FBF3F00DFEFC00000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      000000000000000000000000000000000000FF3F3F00FFC0C000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFEFC00070BF3F0050AF000050AF000070BF3F00DFEFC000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000BFBFBF0000000000BFBFBF000000FF000000FF000000FF00BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000FFFF0000FF000000FF3F3F00FFC0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFEF
      C00070BF3F005FAF0F0060AF1F0050AF000050AF00007FBF3F00EFF0E0000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFF0000FF1F1F00FF0F0F00FF3F3F00FFC0
      C000FFFFFF00000000000000000000000000FFFFFF00FFE0E000FFE0E000FFFF
      FF00000000000000000000000000000000000000000000000000DFEFC00070BF
      3F005FAF0F0070BF3F00C0E0A00070BF3F0050AF000060B01F00D0EFC0000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFF0000FFC0C000FF3F3F00FF0F0F00FF3F
      3F00FFC0C000FFFFFF0000000000FFFFFF00FFC0C000FF3F3F00FF3F3F00FFC0
      C000FFFFFF0000000000000000000000000000000000DFEFC00070BF3F005FAF
      0F0070BF3F00DFEFC000FFFFF000DFEFC00070BF3F005FAF0F0070BF3F00DFEF
      C00000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFF00000000
      000000FFFF000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000FFFF0000FFFFFF00FFC0C000FF3F3F00FF0F
      0F00FF3F3F00FFC0C000FFF0F000FFC0C000FF3F3F00FF000000FF000000FF3F
      3F00FFC0C000FFFFFF000000000000000000EFF0E00090C05F006FB02F007FBF
      3F00DFEFC000000000000000000000000000DFEFC00070BF3F005FAF0F007FBF
      3F00EFF0E000000000000000000000000000000000000000000000000000BFBF
      BF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFF000000000000FFFFFF00FFC0C000FF3F
      3F00FF0F0F00FF3F3F00FFA0A000FF3F3F00FF000000FF000000FF1F1F00FF0F
      0F00FF3F3F00FFC0C000FFF0F000FFE0E00000000000EFF0E000E0F0DF00EFF0
      E0000000000000000000000000000000000000000000DFEFC00070BF3F006FB0
      2000D0EFC000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000000000FFFF00000000000000000000FFFFFF00FFC0
      C000FF3F3F00FF0F0F00FF1F1F00FF000000FF000000FF3F3F00FFA0A000FF3F
      3F00FF0F0F00FF3F3F00FFA0A000FF3F3F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFEFC0007FBF
      3F007FBF3F00DFEFC0000000000000000000000000000000000000000000BFBF
      BF0000000000000000000000000000000000000000000000000000000000BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000FFFF00000000000000000000FFFF00FFFF
      FF0000FFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFC0C000FF3F3F00FF000000FF000000FF3F3F00FFC0C000FFF0F000FFC0
      C000FF3F3F00FF0F0F00FF1F1F00FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFEF
      C0007FBF3F007FBF4000EFF0E00000000000000000000000000000000000BFBF
      BF00000000000000000000000000FFFF000000000000FFFF000000000000BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF00000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFC0C000FF3F3F00FF3F3F00FFC0C000FFFFFF0000000000FFF0
      F000FFAFAF00FF1F1F00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFEFC0008FC05F00DFEFC00000000000000000000000000000000000BFBF
      BF0000000000000000000000000000000000000000000000000000000000BFBF
      BF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFE0E000FFE0E000FFFFFF000000000000000000FFE0
      E000FF5F5F00FF2F2F00FF202000FF2020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFEFCF00A0CF7000EFF0E000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFE0E000FFDFDF00FFDFDF00FFDFDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFF0E00000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000007F7F7F00000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F0000000000000000000000000000000000000000007F7F7F000000
      00007F7F7F00000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808000008080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000800000008000000080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000808000008080000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00E0E0FF00E0DFFF00E0DFFF00E0DFFF00E0E0FF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFE0E000FFDFDF00FFDFDF00FFDFDF000000000000000000000000000000
      0000000000000000000000000000FFFF00008080000080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00E0E0FF00E0E0FF00FFFFFF000000000000000000EFEF
      FF00706FF0004040F000403FF000403FF0005F50F000CFCFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFE0E000FFE0E000FFFFFF000000000000000000FFE0
      E000FF5F5F00FF2F2F00FF202000FF2020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00CFCFFF005F50F0005F50F000CFCFFF00FFFFFF0000000000F0F0
      FF00B0B0FF003F30EF00201FEF00201FEF002F20EF00504FF000CFCFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFC0C000FF3F3F00FF3F3F00FFC0C000FFFFFF0000000000FFF0
      F000FFAFAF00FF1F1F00FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000800000008000000080800000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00CFCFFF00504FF0002F20EF002F20EF00504FF000CFCFFF00F0F0FF00CFCF
      FF00504FF0002F20EF003F30EF002F20EF003F30EF002F20EF00504FF000CFCF
      FF00FFFFFF00000000000000000000000000FFFFFF00E0E0FF00E0E0FF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFC0C000FF3F3F00FF000000FF000000FF3F3F00FFC0C000FFF0F000FFC0
      C000FF3F3F00FF0F0F00FF1F1F00FF0000000000000000000000000000000000
      0000000000000000000080800000808000008080000080000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00CFCF
      FF00504FF0002F20EF003F30EF002F20EF002F20EF00504FF000B0B0FF00504F
      F0002F20EF00504FF000B0B0FF005F50F000CFCFFF00504FF0002F20EF00504F
      F000CFCFFF00FFFFFF0000000000FFFFFF00CFCFFF005F50F0005F50F000CFCF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFC0
      C000FF3F3F00FF0F0F00FF1F1F00FF000000FF000000FF3F3F00FFA0A000FF3F
      3F00FF0F0F00FF3F3F00FFA0A000FF3F3F000000000000000000000000000000
      00000000000000000000FFFF0000808000008080000080800000800000000000
      00000000000000000000000000000000000000000000FFFFFF00CFCFFF00504F
      F0002F20EF00504FF000B0B0FF00504FF0002F20EF002F20EF003F30EF002F20
      EF00504FF000CFCFFF00F0F0FF00E0E0FF00FFFFFF00CFCFFF00504FF0002F20
      EF00504FF000CFCFFF00F0F0FF00CFCFFF00504FF0002F20EF002F20EF00504F
      F000CFCFFF00FFFFFF00000000000000000000000000FFFFFF00FFC0C000FF3F
      3F00FF0F0F00FF3F3F00FFA0A000FF3F3F00FF000000FF000000FF1F1F00FF0F
      0F00FF3F3F00FFC0C000FFF0F000FFE0E0000000000000000000000000000000
      0000000000000000000000000000FFFF00008080000080800000808000008000
      000000000000000000000000000000000000FFFFFF00CFCFFF00504FF0002F20
      EF00504FF000CFCFFF00F0F0FF00CFCFFF00504FF0002F20EF002F20EF00504F
      F000CFCFFF00FFFFFF00000000000000000000000000FFFFFF00CFCFFF00504F
      F0002F20EF00504FF000B0B0FF00504FF0002F20EF002F20EF003F30EF002F20
      EF00504FF000CFCFFF00F0F0FF00E0E0FF00FFFFFF00FFC0C000FF3F3F00FF0F
      0F00FF3F3F00FFC0C000FFF0F000FFC0C000FF3F3F00FF000000FF000000FF3F
      3F00FFC0C000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000080800000808000008080
      000080000000000000000000000000000000CFCFFF00504FF0002F20EF00504F
      F000CFCFFF00FFFFFF0000000000FFFFFF00CFCFFF005F50F0005F50F000CFCF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00CFCF
      FF00504FF0002F20EF003F30EF002F20EF002F20EF00504FF000B0B0FF00504F
      F0002F20EF00504FF000B0B0FF005F50F000FFC0C000FF3F3F00FF0F0F00FF3F
      3F00FFC0C000FFFFFF0000000000FFFFFF00FFC0C000FF3F3F00FF3F3F00FFC0
      C000FFFFFF000000000000000000000000000000000000000000000000000000
      00008000000080000000000000000000000000000000FFFF0000808000008080
      0000808000008000000000000000000000003F30EF002F20EF00504FF000CFCF
      FF00FFFFFF00000000000000000000000000FFFFFF00E0E0FF00E0E0FF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00CFCFFF00504FF0002F20EF002F20EF00504FF000CFCFFF00F0F0FF00CFCF
      FF00504FF0002F20EF003F30EF002F20EF00FF1F1F00FF0F0F00FF3F3F00FFC0
      C000FFFFFF00000000000000000000000000FFFFFF00FFE0E000FFE0E000FFFF
      FF00000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080000000000000000000000000000000FFFF00008080
      0000808000008000000000000000000000002F20EF00504FF000CFCFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00CFCFFF005F50F0005F50F000CFCFFF00FFFFFF0000000000F0F0
      FF00B0B0FF003F30EF00201FEF00201FEF00FF000000FF3F3F00FFC0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000808000008080000080800000800000008000000080000000808000008080
      0000808000008000000000000000000000005F50F000CFCFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00E0E0FF00E0E0FF00FFFFFF000000000000000000EFEF
      FF00706FF0004040F000403FF000403FF000FF3F3F00FFC0C000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF00008080000080800000808000008080000080800000808000008080
      000080800000808000000000000000000000E0E0FF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00E0E0FF00E0DFFF00E0DFFF00E0DFFF00FFE0E000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000808000008080000080800000808000008080
      0000808000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00000000000000FF000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      8000000080008080800000000000000000000000000000000000000000000000
      FF00808080000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FF00000000000000FFFFFF0000000000FF0000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      80000000800000008000808080000000000000000000000000000000FF000000
      80000000800080808000000000000000000000000000000000000000FF000000
      FF000000FF00FFFF00000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF0000000000FFFFFF0000000000FF00
      00000000000000000000000000000000000000000000000000000000FF000000
      800000008000000080000000800080808000000000000000FF00000080000000
      80000000800000008000808080000000000000000000000000000000FF000000
      FF00FFFF0000FFFF0000FFFF00000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF0000000000000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF00000000000000000000000000000000000000000000000000FF00
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      FF00000080000000800000008000000080008080800000008000000080000000
      800000008000000080008080800000000000000000000000FF000000FF00FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF00000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF00000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      00000000FF000000800000008000000080000000800000008000000080000000
      8000000080008080800000000000000000000000FF000000FF000000FF000000
      FF00FFFF0000FFFF0000FFFF00000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00000000000000FF00000000000000
      FF000000FF000000FF007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000FF000000000000000000FF0000000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000008000000080000000
      8000808080000000000000000000000000000000FF000000FF000000FF000000
      FF00FFFF0000FFFF0000FFFF00000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      0000000000000000000000008000000080000000800000008000000080008080
      8000000000000000000000000000000000000000FF000000FF000000FF000000
      FF00FFFF0000FFFF0000FFFF00000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000FF00000080000000800000008000000080008080
      8000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF00000000000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000FF0000008000000080000000800000008000000080008080
      8000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000800000000000000080000000FF00000000000000
      0000000000000000FF000000FF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000800000008000000080008080800000008000000080000000
      8000808080000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000008000000080000000800080808000000000000000FF00000080000000
      800000008000808080000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000800000008000808080000000000000000000000000000000FF000000
      80000000800000008000808080000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFF0000FFFF0000FFFF00000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000800000000000000000000000000000000000000000000000
      FF000000800000008000000080000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00FFFF00000000FF000000
      FF000000FF000000FF00000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F0000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000080000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF80030000E01FF83F80030000
      C00FE00FC00700008007C0070001000000038003000100000001800300010000
      8000000100010000C000000180030000E0000001E00F0000F0000001E00F0000
      F8010001E00F0000FC018003E00F0000FE018003E00F0000FF1FC007E00F0000
      FFFFE00FE00F0000FFFFF83FE00F0000DDDDDDDDFFFFFF3FD555D555FDFFFC1F
      00000000F8FFF88FDFFFDFFFF07FF1478FDF87FCE03FC3A3D4AFDBFBC01F8BD1
      00000000800F15E8DB77DDF700073AF48EB79EEF00035D7AD5A3DF1F8001AEB9
      00000000C003D743DBFBDFFFE00FEB8F9BFD9FFFF00FF47FDFFFDFFFF81FF8FF
      00000000FC7FFFFFFFFFFFFFFFFFFFFF800180B1FFFFFFFF00000160F83FFFFF
      0000FF21E7CF1FFF0000FE41DFF7041F0000FD81BDFB000F0000FB69BCFB000F
      0000F3D97C7D00070000F3B17C3D0001E007E3E17C1D0000E007D5C17C3D0001
      E0078AA17C7D003FE0070501BCFBFC7FE00F0201BDFBFFFFE01F01EBDFF7FFFF
      E03F83F3E7CFFFFFE07FC7F7F83FFFFFFFFFF81FE00FFFFFE03FF00FE00F0162
      E07FC003E00FFFE3E0FFC003F00FFE63E0FF8001F00FFC03E07F0000F80FF803
      E63F0000F007F003ED1F0000F007F003F88F0000F007E003FC570000F00FC003
      FE270000F01F8003FF078001F81F0003FF878003FE1F0003FF07C003FF1F01E3
      FE07F00FFF1F83F7FFFFF81FFFBFC7F7FFFFFF7FC003FC0FF80FDE79C003F007
      F007AE73C003E7E3E003D6E7C003CFF1C001EE2FC00390088000FC1FC003BFF8
      8000F80FC0033E7880008008C003266080001001C0033CF88000F01FC00331D8
      C001F83FC0032BE8E003E477C0039D71C001CF6BC003CBA1C8099E75C003E783
      FF7FBE7BC003F007FE3FFEFFC003F81FFFFFFFFFFFFF803FFFFFFCFFC007001F
      3FFFF87FC00700041FFFF03FC00700000FFFE01FC0070000070FC01FC0070000
      0207800FC007000000030707C007000080008F87C0070000C000FFC3C0070000
      E000FFE1C0070007F020FFF1C007001FF860FFF8C007000FFFE0FFFDC0078007
      FFFFFFFFC0078023FFFFFFFFFFFF5577FE7FFFFFFFFFFFFFFC3FFFFFFFFFFFFF
      FC3FFFE03FFFFFE0FE3FF8601FFFF860FFFFF0200FFFF020FE3FE000070FE000
      FC3FC0000207C000FC1F800000038000FE0F000380000003FF070207C0000207
      F383070FE000070FE1C30FFFF0200FFFE0031FFFF8601FFFF0033FFFFFE03FFF
      F807FFFFFFFFFFFFFE0FFFFFFFFFFFFFFFFFE7FFF81FFFFFFE3FC3E7F00FF83F
      F81FC1C3C003E00FF40FC081C003CC47E007E001800184638003F0030000A073
      4001F807000031F90000FC0F000038F90000FC0F00003C798001F80F00003C39
      C003F00700003C19E00FE08380019C0BF07FE1C1C0038C43F8FFF3E1C003C467
      FFFFFFF1F00FE00FFFFFFFFFF81FF83F00000000000000000000000000000000
      000000000000}
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 696
    Top = 96
  end
  object ColorDialog1: TColorDialog
    Left = 423
    Top = 322
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 419
    Top = 261
  end
  object SaveDialog1: TSaveDialog
    Left = 641
    Top = 96
  end
  object TimerNet: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerNetTimer
    Left = 537
    Top = 103
  end
  object ILTank: TImageList
    Height = 54
    Width = 62
    Left = 489
    Top = 199
    Bitmap = {
      494C01010100040004003E003600FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000F800000036000000010020000000000040D1
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF1000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF0700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE8000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      000000000000000000000000000000000000000000000000000000000000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF10
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000000000000000000000000000FF570000FF600000FF70
      0000FF800000FF900000FFA00000000000000000000000000000000000000000
      000000000000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF00000000000000000000000000000000000000000000000000000000
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF280000FF370000FF400000FF4F000000000000000000000000
      0000000000000000000000000000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF28000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFF70000FFF0
      0000FFEF00000000000000000000000000000000000000000000000000000000
      000000000000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000000000000000000000000000000000000000000000000000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000000000000000000000000000000000000000000000000000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000000000000000000000000000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF00000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF28000000000000000000000000000000000000000000000000
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000000000000000
      000000000000000000000000000000000000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000000000000000000000000000000000000000000000000000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000000000000000000000000000000000000000000000000000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000000000000000000000000000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF00000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF28000000000000000000000000000000000000000000000000
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000000000000000
      000000000000000000000000000000000000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF00000000
      00000000000000000000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF28000000000000000000000000000000000000000000000000
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000000000000000
      000000000000000000000000000000000000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF1F0000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF7F0000FF900000FF9F0000FFB00000FFB80000FFC70000FFCF0000FFD8
      0000FFDF0000FFE70000FFE70000FFF00000FFF70000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFDF0000FFD00000FFC80000FFBF0000FFB7
      0000FFAF0000FFA00000FF8F0000FF800000FF6F0000FF680000FF580000FF4F
      0000FF400000FF370000FF280000FF200000FF100000FF0F0000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF070000FF080000FF17
      0000FF200000FF280000FF370000FF400000FF4F0000FF570000FF600000FF70
      0000FF800000FF900000FFA00000FFAF0000FFB80000FFC70000FFCF0000FFD7
      0000FFDF0000FFE70000FFE80000FFF00000FFF70000FFF80000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFF80000FFF70000FFF0
      0000FFEF0000FFE80000FFE00000FFD80000FFD00000FFC80000FFC00000FFB7
      0000FFAF0000FFA00000FF900000FF800000FF700000FF680000FF5F0000FF4F
      0000FF400000FF370000FF280000FF1F0000FF170000FF080000FF070000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000AFB0AF00B0B7
      B000B0B7B000BFB8BF00B0B8B000BFBFBF00BFBFBF00C0C7C000C0C7C000CFC8
      CF00C0C8C000CFCFCF00CFCFCF00D0D7D000D0D7D000DFD8DF00D0D8D000DFDF
      DF00D0D8D000E0E0E000DFDFDF00E0E0E000DFE0DF00E0E7E000DFE0DF00E0E7
      E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E0
      E000DFDFDF00E0E0E000DFDFDF00DFDFDF00D0D8D000DFD8DF00D0D7D000D0D7
      D000CFD0CF00D0D0D000CFCFCF00CFCFCF00C0C7C000C0C7C000BFC0BF00C0C0
      C000B0B8B000BFBFBF00B0B7B000B0B8B000B0B7B000B0B7B000AFB0AF00B0B0
      B000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFB0AF00B0B7B000B0B7
      B000B0B8B000B0B8B000BFBFBF00BFBFBF00C0C0C000BFC0BF00C0C7C000C0C8
      C000CFC8CF00CFCFCF00CFD0CF00D0D0D000D0D7D000D0D7D000DFD8DF00DFD8
      DF00DFDFDF00DFDFDF00DFE0DF00DFE0DF00E0E0E000DFE0DF00E0E7E000E0E0
      E000E0E7E000E0E0E000E0E7E000E0E0E000E0E7E000DFE0DF00E0E0E000DFE0
      DF00E0E0E000DFDFDF00DFDFDF00DFDFDF00DFD8DF00D0D8D000D0D8D000D0D7
      D000D0D0D000CFD0CF00CFCFCF00CFC8CF00C0C7C000C0C7C000C0C0C000BFBF
      BF00BFBFBF00BFB8BF00B0B8B000B0B7B000B0B7B000B0B0B000B0B0B000AFB0
      AF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0B000AFB0AF00B0B7
      B000B0B7B000BFB8BF00B0B8B000BFBFBF00BFBFBF00C0C7C000C0C7C000CFC8
      CF00C0C8C000CFCFCF00CFCFCF00D0D7D000D0D7D000DFD8DF00D0D8D000DFDF
      DF00DFD8DF00DFE0DF00DFDFDF00E0E0E000DFE0DF00E0E7E000DFE0DF00E0E7
      E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E0
      E000DFDFDF00DFE0DF00DFDFDF00DFDFDF00D0D8D000DFD8DF00D0D7D000D0D7
      D000CFD0CF00D0D0D000CFCFCF00CFCFCF00C0C7C000C0C7C000BFC0BF00C0C0
      C000BFB8BF00BFBFBF00B0B7B000BFB8BF00B0B7B000B0B7B000AFB0AF00B0B0
      B000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B0B7B000B0B7
      B000B0B8B000B0B8B000BFBFBF00BFBFBF00BFC0BF00C0C0C000C0C7C000C0C8
      C000CFC8CF00CFCFCF00CFD0CF00CFD0CF00D0D7D000D0D7D000DFD8DF00DFD8
      DF00DFDFDF00DFDFDF00DFE0DF00DFE0DF00E0E0E000E0E0E000E0E7E000E0E0
      E000E0E7E000E0E0E000E0E7E000E0E0E000E0E7E000E0E0E000E0E0E000DFE0
      DF00DFE0DF00DFDFDF00DFDFDF00DFDFDF00DFD8DF00D0D8D000D0D8D000D0D7
      D000D0D0D000CFD0CF00CFCFCF00C0C8C000C0C7C000C0C7C000C0C0C000BFBF
      BF00BFBFBF00BFB8BF00BFB8BF00B0B7B000B0B7B000B0B0B000B0B0B000AFB0
      AF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AFB0AF00B0B7
      B000B0B7B000BFB8BF00B0B8B000BFBFBF00BFBFBF00C0C7C000C0C7C000CFC8
      CF00C0C8C000CFCFCF00CFCFCF00D0D7D000D0D7D000DFD8DF00D0D8D000DFDF
      DF00D0D8D000E0E0E000DFDFDF00E0E0E000DFE0DF00E0E7E000DFE0DF00E0E7
      E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E0
      E000DFDFDF00E0E0E000DFDFDF00DFDFDF00D0D8D000DFD8DF00D0D7D000D0D7
      D000CFD0CF00D0D0D000CFCFCF00CFCFCF00C0C7C000C0C7C000BFC0BF00C0C0
      C000B0B8B000BFBFBF00B0B7B000B0B8B000B0B7B000B0B7B000AFB0AF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B0B8B000B0B8B000BFBFBF00BFBFBF00C0C0C000BFC0BF00C0C7C000C0C8
      C000CFC8CF00CFCFCF00CFD0CF00D0D0D000D0D7D000D0D7D000DFD8DF00DFD8
      DF00DFDFDF00DFDFDF00DFE0DF00DFE0DF00E0E0E000DFE0DF00E0E7E000E0E0
      E000E0E7E000E0E0E000E0E7E000E0E0E000E0E7E000DFE0DF00E0E0E000DFE0
      DF00E0E0E000DFDFDF00DFDFDF00DFDFDF00DFD8DF00D0D8D000D0D8D000D0D7
      D000D0D0D000CFD0CF00CFCFCF00CFC8CF00C0C7C000C0C7C000C0C0C000BFBF
      BF00BFBFBF00BFB8BF00B0B8B000B0B7B000B0B7B00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0B0B000B0B7B000B0B8B000BFBFBF00BFC0BF00C0C7C000CFC8
      CF00CFD0CF00D0D7D000D0D7D000DFD8DF00DFDFDF00DFDFDF00E0E0E000DFE0
      DF00E0E7E000E0E0E000E0E7E000E0E0E000E0E0E000DFDFDF00DFDFDF00DFD8
      DF00DFD8DF00D0D7D000D0D7D000CFCFCF00C0C8C000C0C7C000BFC0BF00BFB8
      BF00BFB8BF00B0B7B000B0B7B000AFB0AF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0B7B000B0B0B000BFB8BF00BFBFBF00C0C0C000C0C7C000CFCF
      CF00CFCFCF00D0D7D000D0D7D000DFDFDF00DFDFDF00E0E0E000DFE0DF00E0E7
      E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E0E000DFDFDF00DFDF
      DF00D0D8D000DFD8DF00CFD0CF00CFD0CF00C0C7C000C0C7C000BFBFBF00BFBF
      BF00B0B8B000BFB8BF00AFB0AF00B0B0B0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B0B7B000B0B8B000BFBFBF00BFC0BF00C0C7C000CFC8
      CF00D0D0D000D0D7D000D0D7D000DFD8DF00DFDFDF00DFDFDF00E0E0E000E0E0
      E000E0E7E000E0E0E000E0E7E000E0E0E000E0E0E000DFDFDF00DFDFDF00DFD8
      DF00DFD8DF00D0D7D000D0D7D000CFCFCF00CFC8CF00C0C7C000BFC0BF00BFB8
      BF00BFB8BF00B0B7B000B0B7B000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000AFB0AF00BFB8BF00BFBFBF00C0C0C000C0C7C000CFCF
      CF00CFCFCF00D0D7D000D0D7D000DFDFDF00DFDFDF00E0E0E000DFE0DF00E0E7
      E000DFE0DF00E0E7E000DFE0DF00E0E7E000DFE0DF00E0E0E000DFDFDF00DFDF
      DF00D0D8D000D0D8D000CFD0CF00D0D0D000C0C7C000C0C7C000BFBFBF00BFBF
      BF00B0B8B000B0B8B000AFB0AF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF00BFC0BF00C0C7C000CFC8
      CF00CFD0CF00D0D7D000D0D7D000DFD8DF00DFDFDF00DFDFDF00E0E0E000DFE0
      DF00E0E7E000E0E0E000E0E7E000E0E0E000E0E0E000DFDFDF00DFDFDF00DFD8
      DF00DFD8DF00D0D7D000D0D7D000CFCFCF00C0C8C000C0C7C000BFC0BF00BFB8
      BF00BFB8BF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000F8000000360000000100010000000000C00600000000000000000000
      000000000000000000000000FFFFFF00E00000000000001C0000000000000000
      00000000000000000000000000000000C00000000000000C0000000000000000
      00000000000000000000000000000000800000000000000C0000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000000000000000000040000000000000000
      0000000000000000000000000000000080000000000000040000000000000000
      00000000000000000000000000000000800000000000000C0000000000000000
      00000000000000000000000000000000C00000000000001C0000000000000000
      00000000000000000000000000000000F00000000000007C0000000000000000
      00000000000000000000000000000000FFF0000000007FFC0000000000000000
      00000000000000000000000000000000FFF0000000007FFC0000000000000000
      00000000000000000000000000000000FFF8000000017FFC0000000000000000
      00000000000000000000000000000000FFF800000000FFFC0000000000000000
      00000000000000000000000000000000FFFC00000001FFFC0000000000000000
      00000000000000000000000000000000FFFF00000007FFFC0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ILIrrigPump: TImageList
    Height = 37
    Width = 73
    Left = 489
    Top = 263
    Bitmap = {
      494C010102000400040049002500FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000024010000250000000100200000000000D0A8
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000444442003D3E3D00363737003131
      31002C2B2C0026252600202121001C1C1C0017161600131212000E0E0E000A0A
      0A00060607000202020000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000100
      0000010000000100000001010100010101000101010001010100010101000101
      0100010101000101010001010100010000000000000000000000000000000000
      00000000000000000000000000000000000000000000444442003D3E3D003637
      3700313131002C2B2C0026252600202121001C1C1C0017161600131212000E0E
      0E000A0A0A000606070002020200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010000000100000001000000010101000101010001010100010101000101
      0100010101000101010001010100010101000100000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000575757005051500049494900414141003B3B3B00343435002E2F2F002929
      2900222122001D1C1C0018181800131313000D0E0E0001010100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010000000100000001000000010000000100000002000000020000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000575757005051500049494900414141003B3B3B00343435002E2F
      2F0029292900222122001D1C1C0018181800131313000D0E0E00010101000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000100000001000000010000000100000001000000020000000200
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000615B5C005A585700545453004F4F
      4F00494A4A00434444003F3F3F003A3A3A0034343400303030002C2C2C002829
      2900212222000B0B0B0001010100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060404000605050006060600060606000606
      0600060303000509090000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000615B5C005A5857005454
      53004F4F4F00494A4A00434444003F3F3F003A3A3A0034343400303030002C2C
      2C0028292900212222000B0B0B00010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000604040006050500060606000606
      0600060606000603030005090900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A363700433B3B0040424200454545004445450042434300424343004242
      4100414140004141410041414100414141003A3A3A0020202000070707000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002317
      1700231A1A002222220022222200222222002510100000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A363700433B3B00404242004545450044454500424343004243
      430042424100414140004141410041414100414141003A3A3A00202020000707
      0700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000023171700231A1A0022222200222222002222220025101000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000472323008181
      810075757500696969005D5D5D005151510045454500393939002E2E2E002424
      24001A1A1A005F464600321818001A010100100000000A0000000D0C0C001606
      0600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003B2B2B00392F2F0038383800383838003838
      38003D2424000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004723
      23008181810075757500696969005D5D5D005151510045454500393939002E2E
      2E00242424001A1A1A005F464600321818001A010100100000000A0000000D0C
      0C00160606000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B2B2B00392F2F00383838003838
      3800383838003D24240000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008A8A8A007E7E7E0072727200666666005A5A
      5A004E4E4E0042424200373737002C2C2C002121210000000000000000000000
      0000000000000000000012111100200909000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005545
      4500534949005050500050505000505050005741410000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A8A8A007E7E7E00727272006666
      66005A5A5A004E4E4E0042424200373737002C2C2C0021212100000000000000
      0000000000000000000000000000121111002009090000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000554545005349490050505000505050005050500057414100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009292
      9200878787007B7B7B006F6F6F0063636300575757004B4B4B003F3F3F003434
      3400292929000000000000000000000000000000000000000000020202000401
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006D5D5D006B61610067676700676767006767
      6700705A5A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000092929200878787007B7B7B006F6F6F0063636300575757004B4B4B003F3F
      3F00343434002929290000000000000000000000000000000000000000000202
      0200040101000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D5D5D006B616100676767006767
      670067676700705A5A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009A9A9A002121210007070700080808000909
      0900090909000909090007070700272727003131310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000443E
      3E00443F3F0042414200414142004142410048302F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009A9A9A0021212100070707000808
      0800090909000909090009090900070707002727270031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000443E3E00443F3F0042414200414142004142410048302F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002525
      2500010101000101010001010100010101000101010001010100010101000303
      0300101010000000000000000000000000000000000000000000070707000707
      0700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000252525000101010001010100010101000101010001010100010101000101
      0100030303001010100000000000000000000000000000000000000000000707
      0700070707000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303000101010001010100010101000101
      010001010100010101000101010001010100020202000D0D0D00000000000000
      0000000000000000000012121200121212000000000000000000000000000000
      0000000000000000000000000000000000000000000015151500151515001515
      1500191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190001010100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030001010100010101000101
      01000101010001010100010101000101010001010100020202000D0D0D000000
      0000000000000000000000000000121212001212120000000000000000000000
      0000000000000000000000000000000000000000000000000000151515001515
      1500151515001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900191919001919
      1900191919001919190019191900191919001919190019191900010101000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707000505
      0500090909000B0B0B000D0D0D000D0D0D000D0D0D000B0B0B00090909000505
      050001010100010101000D0D0D000000000000000000000000001E1E1E001E1E
      1E00000000000000000000000000000000000000000000000000000000000000
      0000000000002424240024242400242424000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000101010005050500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      070005050500090909000B0B0B000D0D0D000D0D0D000D0D0D000B0B0B000909
      09000505050001010100010101000D0D0D000000000000000000000000001E1E
      1E001E1E1E000000000000000000000000000000000000000000000000000000
      000000000000000000002424240024242400242424000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B0001010100050505000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F000C0C0C0012121200161616001A1A1A001C1C1C001D1D
      1D001C1C1C001A1A1A0016161600121212000C0C0C0007070700010101001B1B
      1B0017171700171717002D2D2D002D2D2D001E1E1E001D1D1D001C1C1C001C1C
      1C001B1B1B001A1A1A0019191900191919001818180034343400343434003434
      34003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E0005050500030303000606
      0600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0F0F000C0C0C0012121200161616001A1A1A001C1C
      1C001D1D1D001C1C1C001A1A1A0016161600121212000C0C0C00070707000101
      01001B1B1B0017171700171717002D2D2D002D2D2D001E1E1E001D1D1D001C1C
      1C001C1C1C001B1B1B001A1A1A00191919001919190018181800343434003434
      3400343434003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E
      3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E003E3E3E00050505000303
      0300060606000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000141414001A1A1A002121
      2100272727002C2C2C002F2F2F00303030002F2F2F002C2C2C00272727002121
      21001A1A1A00121212000B0B0B002626260028282800282828003C3C3C003C3C
      3C002A2A2A002929290029292900282828002727270026262600252525002424
      2400242424004545450045454500454545005353530053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353001919190017171700151515001818180000000000000000000000
      0000000000000000000000000000000000000000000000000000141414001A1A
      1A0021212100272727002C2C2C002F2F2F00303030002F2F2F002C2C2C002727
      2700212121001A1A1A00121212000B0B0B002626260028282800282828003C3C
      3C003C3C3C002A2A2A0029292900292929002828280027272700262626002525
      2500242424002424240045454500454545004545450053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530019191900171717001515150018181800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101000101010001010100010101000000000000000000000000001818
      180018181800222222002A2A2A00333333003B3B3B0041414100444444004545
      450044444400414141003B3B3B00333333002A2A2A0020202000161616003939
      39003B3B3B003B3B3B004C4C4C004C4C4C003838380037373700363636003535
      3500343434003333330032323200313131003131310057575700575757005757
      57000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B0035353500333333003030
      3000333333000101010001010100010101000101010000000000000000000000
      00001818180018181800222222002A2A2A00333333003B3B3B00414141004444
      44004545450044444400414141003B3B3B00333333002A2A2A00202020001616
      1600393939003B3B3B003B3B3B004C4C4C004C4C4C0038383800373737003636
      3600353535003434340033333300323232003131310031313100575757005757
      5700575757000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B00353535003333
      3300303030003333330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101003B3B3B003B3B3B000101
      010000000000000000002B2B2B002929290029292900313131003C3C3C004747
      470050505000575757005B5B5B005C5C5C005B5B5B0057575700505050004747
      47003C3C3C0030303000242424004A4A4A0050505000505050005C5C5C005C5C
      5C00464646004545450044444400434343004242420041414100414141004040
      40003F3F3F006868680068686800686868007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0055555500525252004F4F4F0052525200010101003B3B3B003B3B
      3B000101010000000000000000002B2B2B002929290029292900313131003C3C
      3C004747470050505000575757005B5B5B005C5C5C005B5B5B00575757005050
      5000474747003C3C3C0030303000242424004A4A4A0050505000505050005C5C
      5C005C5C5C004646460045454500444444004343430042424200414141004141
      4100404040003F3F3F006868680068686800686868007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0055555500525252004F4F4F0052525200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101005050500050505000010101004444440045454500464646003D3D
      3D003D3D3D00414141004E4E4E005B5B5B00656565006E6E6E00737373007474
      7400737373006E6E6E00656565005B5B5B004E4E4E0041414100323232005858
      580065656500656565006B6B6B006B6B6B00909090007C7C7C007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C0077777700777777007777
      7700939393009393930093939300939393009393930093939300939393009393
      9300939393009393930093939300939393009393930093939300939393009393
      9300939393009393930093939300939393009393930093939300939393009393
      9300939393009393930093939300939393009393930073737300707070006E6E
      6E006F6F6F000101010050505000505050000101010044444400454545004646
      46003D3D3D003D3D3D00414141004E4E4E005B5B5B00656565006E6E6E007373
      730074747400737373006E6E6E00656565005B5B5B004E4E4E00414141003232
      32005858580065656500656565006B6B6B006B6B6B00909090007C7C7C007C7C
      7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C007C7C7C00777777007777
      7700777777009393930093939300939393009393930093939300939393009393
      9300939393009393930093939300939393009393930093939300939393009393
      9300939393009393930093939300939393009393930093939300939393009393
      9300939393009393930093939300939393009393930093939300737373007070
      70006E6E6E006F6F6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010065656500656565000303
      03005F5F5F006161610062626200515151005151510050505000616161006F6F
      6F007B7B7B00858585008B8B8B008D8D8D008B8B8B00858585007B7B7B006F6F
      6F00616161005151510041414100656565007A7A7A007A7A7A00797979007979
      7900A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C6008585850085858500858585000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B008B8B8B0089898900878787008080800001010100000000000000
      0000030303005F5F5F0061616100626262005151510051515100505050006161
      61006F6F6F007B7B7B0085858500000000000000000000000000000000007B7B
      7B006F6F6F00616161005151510041414100656565007A7A7A007A7A7A007979
      790079797900A5A5A500C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C6008585850085858500858585000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B008B8B8B00898989008787870080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000141414007A7A7A007A7A7A001B1B1B00797979007A7A7A007B7B7B006565
      6500656565005F5F5F007373730083838300919191009C9C9C00A2A2A200A5A5
      A500A2A2A2009C9C9C00919191008383830073737300616161004E4E4E007171
      71008E8E8E008E8E8E008585850085858500ADADAD00F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F70090909000909090009090
      9000B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B50098989800979797009696
      9600808080001414140000000000000000001B1B1B00797979007A7A7A007B7B
      7B0065656500656565005F5F5F00737373008383830091919100000000000000
      0000000000000000000000000000000000008383830073737300616161004E4E
      4E00717171008E8E8E008E8E8E008585850085858500ADADAD00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700909090009090
      900090909000B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500989898009797
      9700969696008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000343434008E8E8E008E8E8E003D3D
      3D008D8D8D008D8D8D008E8E8E0077777700777777006B6B6B00838383009595
      9500A5A5A500B1B1B100B9B9B900BCBCBC00B9B9B900B1B1B100A5A5A5009595
      9500838383006F6F6F005B5B5B007B7B7B00A1A1A100A1A1A1008F8F8F008F8F
      8F00B9B9B900FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00979797009797970097979700C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C2009898980099999900999999008080800034343400000000000000
      00003D3D3D008D8D8D008D8D8D008E8E8E0077777700777777006B6B6B008383
      8300959595000000000000000000000000000000000000000000000000000000
      000000000000838383006F6F6F005B5B5B007B7B7B00A1A1A100A1A1A1008F8F
      8F008F8F8F00B9B9B900FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00979797009797970097979700C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2C200C2C2
      C200C2C2C200C2C2C20098989800999999009999990080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000059595900A1A1A100A1A1A100626262009898980098989800989898008686
      8600868686007575750091919100A5A5A500B6B6B600C4C4C400CDCDCD00D1D1
      D100CDCDCD00C4C4C400B6B6B600A5A5A500919191007B7B7B00656565007F7F
      7F00B1B1B100B1B1B1009696960096969600C4C4C400F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F20099999900999999009999
      99000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B0095959500959595009696
      9600808080005959590000000000000000006262620098989800989898009898
      9800868686008686860075757500919191000000000000000000000000000000
      00000000000000000000000000000000000000000000919191007B7B7B006565
      65007F7F7F00B1B1B100B1B1B1009696960096969600C4C4C400F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200999999009999
      9900999999000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B00959595009595
      9500969696008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B00B1B1B100B1B1B1008282
      820099999900999999009898980092929200929292007D7D7D009C9C9C00B1B1
      B100C4C4C400D4D4D400DFDFDF00E3E3E300DFDFDF00D4D4D400C4C4C400B1B1
      B1009C9C9C00858585006E6E6E0084848400BEBEBE00BEBEBE00999999009999
      9900D2D2D200DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00979797009797970097979700CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC008F8F8F009090900090909000808080007B7B7B00000000000000
      00008282820099999900999999009898980092929200929292007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000858585006E6E6E0084848400BEBEBE00BEBEBE009999
      990099999900D2D2D200DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00979797009797970097979700CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC008F8F8F00909090009090900080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000CDCDCD00B9B9B900808080009696960096969600969696009898
      9800989898007F7F7F00A2A2A200B9B9B900CDCDCD00DFDFDF00EDEDED00F3F3
      F300EDEDED00DFDFDF00CDCDCD00B9B9B900A2A2A2008B8B8B00737373008282
      8200C7C7C700C7C7C7009797970097979700DCDCDC00C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C50090909000909090009090
      9000C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C90087878700888888008989
      8900808080008080800000000000000000008080800096969600969696009696
      960098989800989898007F7F7F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008B8B8B007373
      730082828200C7C7C700C7C7C7009797970097979700DCDCDC00C5C5C500C5C5
      C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500C5C5C500909090009090
      900090909000C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9
      C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900C9C9C900878787008888
      8800898989008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C4C4C400B1B1B1008080
      800091919100919191009191910095959500959595007F7F7F00A5A5A500BCBC
      BC00D1D1D100E3E3E300F3F3F300FFFFFF00F3F3F300E3E3E300D1D1D100BCBC
      BC00A5A5A5008D8D8D007474740081818100CCCCCC00CCCCCC00919191009191
      9100F2F2F200A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A7008787870087878700878787000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B007D7D7D007E7E7E007F7F7F007E7E7E0080808000000000000000
      00008080800091919100919191009191910095959500959595007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008D8D8D007474740081818100CCCCCC00CCCCCC009191
      910091919100F2F2F200A7A7A700A7A7A700A7A7A700A7A7A700A7A7A700A7A7
      A700A7A7A700A7A7A7008787870087878700878787000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B007D7D7D007E7E7E007F7F7F007E7E7E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C5C5C500C5C5C500808080008B8B8B008B8B8B008A8A8A007777
      7700777777007C7C7C00A2A2A200B9B9B900CDCDCD00DFDFDF00EDEDED00F3F3
      F300EDEDED00DFDFDF00CDCDCD00B9B9B900A2A2A2008B8B8B0073737300A7A7
      A700C5C5C500C5C5C5008787870087878700C8C8C80086868600868686008686
      860086868600868686008686860086868600868686007B7B7B007B7B7B007B7B
      7B00B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B70072727200737373007474
      740072727200808080000000000000000000808080008B8B8B008B8B8B008A8A
      8A0077777700777777007C7C7C00A2A2A2000000000000000000000000000000
      00000000000000000000000000000000000000000000A2A2A2008B8B8B007373
      7300A7A7A700C5C5C500C5C5C5008787870087878700C8C8C800868686008686
      86008686860086868600868686008686860086868600868686007B7B7B007B7B
      7B007B7B7B00B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700727272007373
      7300747474007272720000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000074747400A7A7A700A7A7A7006D6D
      6D008383830083838300828282004B4B4B004B4B4B00757575009C9C9C00B1B1
      B100C4C4C400D4D4D400DFDFDF00E3E3E300DFDFDF00D4D4D400C4C4C400B1B1
      B1009C9C9C00858585006E6E6E00A7A7A700A7A7A700A7A7A7007A7A7A007A7A
      7A005E5E5E00565656004E4E4E00464646003E3E3E00363636002F2F2F002828
      2800212121006D6D6D006D6D6D006D6D6D00A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A8008F8F8F006565650066666600686868006666660074747400A7A7A700A7A7
      A7006D6D6D008383830083838300828282004B4B4B004B4B4B00757575009C9C
      9C00B1B1B1000000000000000000000000000000000000000000000000000000
      0000B1B1B1009C9C9C00858585006E6E6E00A7A7A700A7A7A700A7A7A7007A7A
      7A007A7A7A005E5E5E00565656004E4E4E00464646003E3E3E00363636002F2F
      2F0028282800212121006D6D6D006D6D6D006D6D6D00A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8A800A8A8
      A800A8A8A8008F8F8F0065656500666666006868680066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005555550086868600868686004D4D4D000000000000000000797979001E1E
      1E001E1E1E006B6B6B0091919100A5A5A500B6B6B600C4C4C400CDCDCD00D1D1
      D100CDCDCD00C4C4C400B6B6B600A5A5A500919191007B7B7B00656565007B7B
      7B007B7B7B007B7B7B006A6A6A006A6A6A007171710069696900606060005858
      58004F4F4F00474747004040400038383800303030005D5D5D005D5D5D005D5D
      5D000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B0058585800595959005A5A
      5A00595959005555550086868600868686004D4D4D0000000000000000007979
      79001E1E1E001E1E1E006B6B6B0091919100A5A5A500B6B6B600000000000000
      0000000000000000000000000000B6B6B600A5A5A500919191007B7B7B006565
      65007B7B7B007B7B7B007B7B7B006A6A6A006A6A6A0071717100696969006060
      6000585858004F4F4F00474747004040400038383800303030005D5D5D005D5D
      5D005D5D5D000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B00585858005959
      59005A5A5A005959590000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000034343400313131002F2F2F002C2C
      2C0000000000000000000000000001010100010101005C5C5C00838383009595
      9500A5A5A500B1B1B100B9B9B900BCBCBC00B9B9B900B1B1B100A5A5A5009595
      9500838383006F6F6F005B5B5B004A4A4A004A4A4A004A4A4A00595959005959
      5900848484007B7B7B00737373006A6A6A006262620059595900515151004949
      4900414141004D4D4D004D4D4D004D4D4D008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      85005B5B5B004A4A4A004C4C4C004D4D4D004B4B4B0034343400313131002F2F
      2F002C2C2C0000000000000000000000000001010100010101005C5C5C008383
      830095959500A5A5A500B1B1B100B9B9B900BCBCBC00B9B9B900B1B1B100A5A5
      A50095959500838383006F6F6F005B5B5B004A4A4A004A4A4A004A4A4A005959
      590059595900848484007B7B7B00737373006A6A6A0062626200595959005151
      510049494900414141004D4D4D004D4D4D004D4D4D0085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585008585850085858500858585008585850085858500858585008585
      8500858585005B5B5B004A4A4A004C4C4C004D4D4D004B4B4B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000515151007373730083838300919191009C9C9C00A2A2A200A5A5
      A500A2A2A2009C9C9C00919191008383830073737300616161004E4E4E001E1E
      1E001E1E1E001E1E1E004747470047474700979797008E8E8E00868686007D7D
      7D00757575006C6C6C00636363005B5B5B00535353003D3D3D003D3D3D003D3D
      3D00717171007171710071717100717171007171710071717100717171007171
      7100717171007171710071717100717171007171710071717100717171007171
      7100717171007171710071717100717171007171710071717100717171007171
      7100717171007171710071717100717171004A4A4A003D3D3D003E3E3E003E3E
      3E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000515151007373730083838300919191009C9C9C00A2A2
      A200A5A5A500A2A2A2009C9C9C00919191008383830073737300616161004E4E
      4E001E1E1E001E1E1E001E1E1E004747470047474700979797008E8E8E008686
      86007D7D7D00757575006C6C6C00636363005B5B5B00535353003D3D3D003D3D
      3D003D3D3D007171710071717100717171007171710071717100717171007171
      7100717171007171710071717100717171007171710071717100717171007171
      7100717171007171710071717100717171007171710071717100717171007171
      710071717100717171007171710071717100717171004A4A4A003D3D3D003E3E
      3E003E3E3E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3E005D5D5D006F6F
      6F007B7B7B00858585008B8B8B008D8D8D008B8B8B00858585007B7B7B006F6F
      6F00616161005151510045454500000000000000000000000000353535003535
      3500000000000000000000000000000000000000000000000000000000000000
      0000000000002D2D2D002D2D2D002D2D2D000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B002F2F2F002D2D2D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3E005D5D
      5D006F6F6F007B7B7B00858585008B8B8B008D8D8D008B8B8B00858585007B7B
      7B006F6F6F006161610051515100454545000000000000000000000000003535
      3500353535000000000000000000000000000000000000000000000000000000
      000000000000000000002D2D2D002D2D2D002D2D2D000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B002F2F2F002D2D2D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000353535004F4F4F00656565006E6E6E00737373007474
      7400737373006E6E6E00656565005B5B5B004C4C4C0042424200000000000000
      0000000000000000000024242400242424000000000000000000000000000000
      000000000000000000000000000000000000000000001E1E1E001E1E1E001E1E
      1E00494949004949490049494900494949004949490049494900494949004949
      4900494949004949490049494900494949004949490049494900494949004949
      4900494949004949490049494900494949004949490049494900494949004949
      490049494900494949004949490049494900282828001E1E1E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000353535004F4F4F00656565006E6E6E007373
      730074747400737373006E6E6E00656565005B5B5B004C4C4C00424242000000
      0000000000000000000000000000242424002424240000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E001E1E
      1E001E1E1E004949490049494900494949004949490049494900494949004949
      4900494949004949490049494900494949004949490049494900494949004949
      4900494949004949490049494900494949004949490049494900494949004949
      49004949490049494900494949004949490049494900282828001E1E1E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000252525005959
      5900404040004E4E4E00535353005A5A5A005B5B5B0057575700505050004343
      43002A2A2A000C0C0C0000000000000000000000000000000000161616001616
      1600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002525
      250059595900404040004E4E4E00535353005A5A5A005B5B5B00575757005050
      5000434343002A2A2A000C0C0C00000000000000000000000000000000001616
      1600161616000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B0B000B0B
      0B000B0B0B000B0B0B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000595959008888880099999900949494008787
      8700767676006060600049494900323232001D1D1D0000000000000000000000
      000000000000000000000A0A0A000A0A0A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500A3A3A3008F8F8F007A7A7A00636363004D4D4D00383838002424
      2400131313000606060001010100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005959590088888800999999009494
      940087878700767676006060600049494900323232001D1D1D00000000000000
      00000000000000000000000000000A0A0A000A0A0A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5B5B500A3A3A3008F8F8F007A7A7A00636363004D4D4D003838
      3800242424001313130006060600010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005959
      5900888888009999990094949400878787007676760060606000494949003232
      32001D1D1D000000000000000000000000000000000000000000010101000101
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9C900BDBDBD00ACACAC009999
      9900858585006E6E6E0058585800424242002E2E2E001B1B1B000C0C0C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000595959008888880099999900949494008787870076767600606060004949
      4900323232001D1D1D0000000000000000000000000000000000000000000101
      0100010101000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9C9C900BDBDBD00ACAC
      AC0099999900858585006E6E6E0058585800424242002E2E2E001B1B1B000C0C
      0C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000111111002A2A2A00484848006767670081818100808080008080
      8000808080008080800054545400323232001515150001010100010101000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC00CCCCCC00C3C3C300B5B5B500A3A3A3008F8F8F007A7A7A006363
      63004D4D4D003838380024242400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000111111002A2A2A004848480067676700818181008080
      8000808080008080800080808000545454003232320015151500010101000101
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00CCCCCC00C3C3C300B5B5B500A3A3A3008F8F8F007A7A
      7A00636363004D4D4D0038383800242424000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000414141004E4E4E005B5B
      5B0065656500858585008B8B8B008D8D8D008B8B8B00858585007B7B7B006F6F
      6F00616161005151510001010100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C3C3C300B5B5
      B500A3A3A3008F8F8F007A7A7A00636363004D4D4D0038383800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141004E4E
      4E005B5B5B0065656500858585008B8B8B008D8D8D008B8B8B00858585007B7B
      7B006F6F6F006161610051515100010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC00C3C3
      C300B5B5B500A3A3A3008F8F8F007A7A7A00636363004D4D4D00383838000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000050505000616161006F6F6F007B7B7B009C9C9C00A2A2A200A5A5
      A500A2A2A2009C9C9C0091919100838383007373730061616100010101000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5B5B500A3A3A3008F8F8F007A7A7A006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000050505000616161006F6F6F007B7B7B009C9C9C00A2A2
      A200A5A5A500A2A2A2009C9C9C00919191008383830073737300616161000101
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500A3A3A3008F8F8F007A7A
      7A00636363000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000111111002A2A2A004848
      4800676767008080800080808000808080008080800080808000545454003232
      3200151515000101010001010100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111002A2A
      2A00484848006767670080808000808080008080800080808000808080005454
      5400323232001515150001010100010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E00000028000000240100002500000001000100
      00000000C80500000000000000000000000000000000000000000000FFFFFF00
      FF00000000003FE000FF80000000001FF0004000000000000000000000000000
      0000000000000000FF0000000001FFFC01FF8000000000FFFE00C00000000000
      00000000000000000000000000000000FF000001FFFFFFFE03FF800000FFFFFF
      FF01C0000000000000000000000000000000000000000000FF000001FFFFFFFE
      07FF800000FFFFFFFF03C0000000000000000000000000000000000000000000
      FFC0000FFFFFFFFE07FFE00007FFFFFFFF03C000000000000000000000000000
      0000000000000000FFE007CFFFFFFFFE07FFF003E7FFFFFFFF03C00000000000
      00000000000000000000000000000000FFE007CFFFFFFFFE07FFF003E7FFFFFF
      FF03C0000000000000000000000000000000000000000000FFE007CFFFFFFFFE
      07FFF003E7FFFFFFFF03C0000000000000000000000000000000000000000000
      FFE007CFFF00000007FFF003E7FF80000003C000000000000000000000000000
      0000000000000000FFE003CFF800000003FFF001E7FC00000001C00000000000
      00000000000000000000000000000000FFC001CFF800000001FFE000E7FC0000
      0000C0000000000000000000000000000000000000000000FF80000000000000
      00FFC00000000000000040000000000000000000000000000000000000000000
      FF80000000000000007FC0000000000000000000000000000000000000000000
      00000000000000000E0000000000000000070000000000000000000000000000
      000000000000000000000000000000000C000000000000000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000003001E00000000000000000000000000000000000000000
      00000000000000000000000000000000003003F0000000000000000000000000
      000000000000000000000000000000000000000000000000003007F800000000
      0000000000000000000000000000000000000000000000000000000000000000
      00300FF800000000000000000000000000000000000000000000000000000000
      000000000000000000301FFC0000000000000000000000000000000000000000
      0000000000000000000000000000000000301FFC000000000000000000000000
      00000000000000000000000000000000000000000000000000301FFC00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00300FF800000000000000000000000000000000000000000000000000000000
      0000000000000000000007F00000000000000000000000000000000000000000
      00000000000000000C00000000000000000603E0000000000000000000000000
      000000000000000000000000000000000E000000000000000007000000000000
      000000000000000000000000000000000000000000000000FF80000000000000
      00FFC00000000000000040000000000000000000000000000000000000000000
      FF8001CFF800000001FFC000E7FC00000000C000000000000000000000000000
      0000000000000000FFC003CFF800000003FFE001E7FC00000001C00000000000
      00000000000000000000000000000000FFC003CFFF00000007FFE001E7FF8000
      0003C0000000000000000000000000000000000000000000FFE007CFFFFF001F
      FFFFF003E7FFFF800FFFC0000000000000000000000000000000000000000000
      FFE007CFFFFF001FFFFFF003E7FFFF800FFFC000000000000000000000000000
      0000000000000000FF8001FFFFFF001FFFFFC000FFFFFF800FFFC00000000000
      00000000000000000000000000000000FF8001FFFFFF803FFFFFC000FFFFFFC0
      1FFFC0000000000000000000000000000000000000000000FF8001FFFFFFE0FF
      FFFFC000FFFFFFF07FFFC0000000000000000000000000000000000000000000
      FF8001FFFFFFFFFFFFFFC000FFFFFFFFFFFFC000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000}
  end
  object ILTools: TImageList
    Height = 32
    Width = 32
    Left = 489
    Top = 327
    Bitmap = {
      494C010109000E00040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000008000000001002000000000000000
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010080808000808080008080
      800080808000808080005C5D5D00242424000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010073727200EEEFEE00F7F8
      F700D3D3D3009C9B9B005D5C5D00252524000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010073727200EEEFEE00F7F8
      F700D3D3D3009C9B9B005D5C5D00252524000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010073727200EEEFEE00F7F8
      F700D3D3D3009C9B9B005D5C5D00252524000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010073727200EEEFEE00F7F8
      F700D3D3D3009C9B9B005D5C5D00252524000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010073727200EEEFEE00F7F8
      F700D3D3D3009C9B9B005D5C5D00252524000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000242E2A00252A29000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      000000000000242E2A00252A2900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F434200424242000000
      0000181818001818180018181800181818001818180018181800181818001818
      180018181800181818001818180018181800181818001818180018181800C0C0
      C000808080001818180018181800181818001818180018181800181818001818
      1800000000003F43420042424200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005E646200636363000000
      00003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D
      3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D
      3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D3D003D3D
      3D00000000005E64620063636300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082888600878787000000
      0000686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800686868006868680068686800686868006868680068686800686868006868
      6800000000008288860087878700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C00A3A8A700A9A9A9002C2C
      2C00959595009595950095959500959595009595950095959500959595009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500959595009595950095959500959595009595950095959500959595009595
      95002C2C2C00A3A8A700A9A9A9002C2C2C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E4E4D00BFC4C200C8C8C8004E4E
      4D00BFC4C200C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0004E4E4D00BFC4C200C8C8C800626161000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000075757400D6DCD900E2E2E2007575
      7400D6DCD900E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E30075757400D6DCD900E2E2E2008B8B8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000E9EEED00F6F6F6008080
      8000E9EEED00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90080808000E9EEED00F6F6F600808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000F5FAF700FFFFFF008080
      8000F5FAF700F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90080808000F5FAF700FFFFFF00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000EAEEED00EDEDED008080
      800080808000B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B30080808000EAEEED00EDEDED00808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000B0BEBA00AAB4B0008080
      8000000000004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B4B004B4B
      4B0080808000B0BEBA00AAB4B000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B00454545007676760080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000076765E0063634F00575745000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1B00000000001B1B1B001B1B1B004545450076767600D3D3D300868686005D5D
      5D00363636000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B560091917400A0A08000919174007A7A620000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1B00000000001B1B1B004545450076767600A7A7A700D3D3D300868686005D5D
      5D00363636000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005757
      450091917400C2C29C00D8D8AD00C2C29C009191740057574500000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000030303000303730002F302F003037300030303000303730002F30
      2F0000000000FFFFFF00FF000000000000003037300030303000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0400222222004D4D4D007E7E7E00AFAFAF00D9D9D900F5F5F500FDFDFD00BABA
      BA00494949000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006161
      4D00A0A08000D8D8AD00FFFFCC00D8D8AD00A0A0800061614D00000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005057500050575000505750005057500050575000505750005057
      500000000000FFFFFF00FFFFFF00000000005057500050575000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005757
      450091917400C2C29C00D8D8AD00C2C29C00919174005C5C4900000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00808080007F7F7F00808080007F7F7F00808080007F7F
      7F0000000000FFFFFF00FF00000000000000808080007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B560091917400A0A080009191740072725B0000000000000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000010181000101710001018
      100000000000AFB0AF00AFAFAF00AFB0AF00AFAFAF00AFB0AF00AFAFAF00AFB0
      AF0000000000FFFFFF00FFFFFF0000000000AFAFAF00AFB0AF00000000001018
      1000101710001018100010171000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005757450061614D005E5E4B000000000000000000000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      000000000000000000000000000000000000000000004F504F00505750004F50
      4F0000000000CFD0CF00D0D0D000CFD0CF00D0D0D000CFD0CF00D0D0D000CFD0
      CF0000000000FFFFFF00FF00000000000000D0D0D000CFD0CF00000000004F50
      4F00505750004F504F0050575000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E7200E3E3B600FDFDCB00D3D3A90087876C0000000000000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A7A000A0A7A000A0A7
      A00000000000E0E8E000E0E8E000EFE8EF00E0E8E000E0E8E000E0E8E000EFE8
      EF0000000000FFFFFF00FFFFFF0000000000E0E8E000E0E8E00000000000A0A7
      A000A0A7A000A0A7A000A0A7A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870037373700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF00E0E0E000DFDF
      DF0000000000F0F7F000FFF8FF00F0F7F000FFF8FF00F0F7F000FFF8FF00F0F7
      F00000000000FFFFFF00FF00000000000000FFF8FF00F0F7F00000000000DFDF
      DF00E0E0E000DFDFDF00E0E0E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870037373700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870037373700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C7C000CFC8CF00C0C7
      C00000000000EFF0EF00F0F0F000EFF0EF00F0F0F000EFF0EF00F0F0F000EFF0
      EF0000000000FFFFFF00FF00000000000000F0F0F000EFF0EF0000000000C0C7
      C000CFC8CF00C0C7C000CFC8CF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001212120000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870037373700010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C000000000000000
      000000000000FFC0C00080806000806080000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A7A000A0A7A000A0A7
      A00000000000E0E8E000E0E8E000EFE8EF00E0E8E000E0E8E000E0E8E000EFE8
      EF0000000000FFFFFF00FFFFFF0000000000E0E8E000E0E8E00000000000A0A7
      A000A0A7A000A0A7A000A0A7A000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000037373700808080008040
      0000808080008080800080808000808080008080800080808000808080006E6E
      6F00804000004B4B4C002C2B2C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001212120000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870037373700010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C00000FFFF00FFFF
      FF0000FFFF00FFC0C00080806000806080000000000000000000000000000000
      000000000000000000000000000000000000000000004F504F00505750004F50
      4F0000000000CFD0CF00D0D0D000CFD0CF00D0D0D000CFD0CF00D0D0D000CFD0
      CF0000000000FFFFFF00FF00000000000000D0D0D000CFD0CF00000000004F50
      4F00505750004F504F0050575000000000000000000000000000000000000000
      0000000000000000000000000000000000001010100010101000101010001010
      1000000000000000000000000000000000000101010036373700878787008040
      0000D3D4D300FDFDFD00FAFAFA00EBEBEB00D3D3D300B5B4B500929393006E6F
      6F00804000004B4C4B002C2B2B00121112000000000000000000000000000000
      0000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000001212120000000000121212002C2C
      2C004C4C4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFD
      FD00D3D3D3008787870037373700010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C00000FFFF00FFFF
      FF0000FFFF00FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AFB0AF00AFAFAF00AFB0AF00AFAFAF00AFB0AF00AFAFAF00AFB0
      AF0000000000FFFFFF00FFFFFF0000000000AFAFAF00AFB0AF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002828280028282800282828002828
      28000000000000000000000000000000000062626200A2A3A300DADADA00FF80
      0000FBFBFB00FDFCFD00F4F5F500EBEBEB00D3D3D300BCBCBC00A2A2A2008786
      8700FF8000006B6A6A004F4F5000363636000000000000000000000000000000
      0000282828002828280028282800282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000025252500606060006A6A6A0073737300797979007E7E
      7E00818181007D7D7D006E6E6E00575757003C3C3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C00000FFFF00FFFF
      FF0000FFFF00FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00808080007F7F7F00808080007F7F7F00808080007F7F
      7F0000000000FFFFFF00FF00000000000000808080007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004545450045454500454545004545
      45002828280036363600363636002828280062626300A2A2A300DADADA00FF80
      0000FBFBFB00FDFCFD00F4F5F500EBEBEB00D3D3D300BCBCBC00A2A2A2008786
      8700FF8000006B6A6A004F4F5000363636002020200036363600363636003636
      3600454545004545450045454500454545001010100010101000101010001010
      10000000000000000000040404000C0C0C000101010026262600454545005D5D
      5D00767676008F8F8F00A7A7A700BEBEBE00D3D3D300E5E5E500F2F2F200FBFB
      FB00FEFEFE00EEEEEE00C6C6C6008F8F8F005656560025252500000000000000
      0000101010001010100010101000101010000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C00000FFFF00FFFF
      FF0000FFFF00FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005057500050575000505750005057500050575000505750005057
      500000000000FFFFFF00FFFFFF00000000005057500050575000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006565650065656500656565006565
      65002828280028282800282828002727280062626200A2A2A300DADADA00FF80
      0000FBFBFB0000000000000000000000FF000000000000000000000000008786
      8700FF8000006B6A6A004F4F5000363636001F20200028282800282828002828
      2800656565006565650065656500656565002828280028282800282828002828
      2800000000000B0B0B00000000000C0C0C001F1F1F002C2C2C00454545005D5D
      5D00767676008F8F8F00A7A7A700BEBEBE00D3D3D300E5E5E500F2F2F200FBFB
      FB00FEFEFE00EEEEEE00C6C6C6008F8F8F005D5D5D0022222200000000000101
      0100202020002828280028282800282828000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C00000FFFF00FFFF
      FF0000FFFF00FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F403F004047400040404000404740003F403F00404740004040
      400000000000FFFFFF00FF00000000000000404740003F403F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      86004545450045454500454545002827280062626200A3A2A200DADADA000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000006A6B6B004F4F5000363635001F1F1F0045454500454545004545
      4500868686008686860086868600868686004545450045454500454545004545
      4500804000000C0C0C00000000000C0C0C003FAFAF00388A8A002B6161001A38
      38000B171700020404000102020009111100172C2C0028515100397A7A00449F
      9F0049C0C00047DADA0000FFFF0000FFFF006363630022222200804000000101
      0100343434004545450045454500454545000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008080800080806000FFC0C00000FFFF00FFFF
      FF0000FFFF00FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000A7A7A700A7A7A7008080
      80006565650065656500656565002728270062626200A2A3A300000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      000000000000000000004F4F4F0036363600201F200065656500656565006565
      650080808000A7A7A700A7A7A700808080006565650065656500656565006565
      6500804000000D0D0D00000000000C0C0C000000000000000000000000000000
      0000000000000000000000000000000000000000000038E5E5003FCECE003FAF
      AF00388A8A002B6161001A3838000B1717006363630022222200804000000101
      0100434343006565650065656500656565000000000000000000000000005353
      43008E8E7200E3E3B600FDFDCB00D3D3A90087876C0037372C00000000000000
      00000000000000000000000000008060800080806000FFC0C00000FFFF00FFFF
      FF0000FFFF00FFC0C00080806000806080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C5C5C500C5C5C5008080
      80008686860086868600868686002728270062626200A3A3A300000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      FF0000000000000000004F4F4F00363636001F20200086868600868686008686
      860080808000C5C5C500C5C5C500808080008686860086868600868686008686
      8600804000000D0D0D00000000000C0C0C000000000000000000000000000000
      000000000000000000000000000000000000000000003FB4B4003ED3D30035E8
      E800000000000000000000000000000000006363630022222200804000000101
      0100515151008686860086868600808080000000000000000000663333006633
      330076433300915E3300B6833300CC993300BD8A33009E6B33007D4A33000000
      000000000000000000000000000040406000404040008080800080A0A00080A0
      A00080A0A0008080800040404000404060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000005F2020005F302F00704740007F50
      50008F6860008F6F6F00A0808000AF908F00BFA7A000C0B7B000D0C8CF00DFD7
      D000EFEFEF0000000000000000000000000080808000DFDFDF00DFDFDF008080
      8000A7A7A700A7A7A700A7A7A7002827280062626200A3A3A300000000000000
      00000000FF0000000000000000000000FF000000FF000000FF000000FF000000
      000000000000000000004F4F4F00363636001F201F00A7A7A700A7A7A700A7A7
      A70080808000DFDFDF00DFDFDF008080800080808000A7A7A700A7A7A7008080
      8000804000000E0E0E00000000000C0C0C000000000000000000000000000000
      00000000000000000000000000003BDDDD0040C3C3003DA1A100000000000000
      0000000000000000000000000000000000006363630022222200804000000101
      010060606000A7A7A700A7A7A700808080000000000000000000663333006633
      330076433300915E3300B6833300CC993300BD8A33009E6B33007D4A33000000
      0000000000000000000000000000002000000020200040404000404040004040
      4000404040004040400000202000002020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FF0000000000000050201F00603030006F4040007F57
      50008F67600090706F009F807F00AF909000BFA7A000C0B7B000D0C7C000E0D8
      D000EFE8EF0000000000000000000000000080808000F2F2F200F2F2F2008080
      8000C5C5C500C5C5C500C5C5C5002727270062626200A2A3A200000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      000000000000000000004F4F4F0035363600201F1F00C5C5C500C5C5C500C5C5
      C50080808000F2F2F200F2F2F2008080800080808000C5C5C500C5C5C5008080
      8000804000000C0C0C00000000000C0C0C000306060000000000070E0E00142A
      2A0024505000337979003DA1A10040C3C3003BDDDD0030EFEF00000000000000
      0000000000000000000000000000000000006363630022222200804000000101
      01006C6C6C00C5C5C500C5C5C500808080000000000000000000663333006633
      330076433300915E3300B6833300CC993300BD8A33009E6B33007D4A33000000
      000000000000000000000020200080808000FFC0C0008080800080A0A000FFFF
      FF00FFC0C00040606000FFC0C000808080004040400000202000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF000000000050201F00603030006F4040007F57
      50008F67600090706F009F807F00AF909000B0A7A000C0B7B000D0C7C000E0D8
      DF00EFE8E00000000000000000000000000080808000FDFDFD00FDFDFD008080
      8000DFDFDF00DFDFDF00DFDFDF002827270062626200A3A2A300000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000050505000363536001F202000DFDFDF00DFDFDF00DFDF
      DF0080808000FDFDFD00FDFDFD008080800080808000DFDFDF00DFDFDF008080
      8000804000000B0B0B00000000000C0C0C000000000000000000000000000000
      0000000000003ED4D4003FB5B5003A9292002D6868001D3F3F000E1D1D000306
      060000000000070E0E00142A2A00245050006363630022222200804000000101
      010076767600DFDFDF00DFDFDF00808080000000000000000000663333006633
      330076433300915E3300B6833300CC993300BD8A33009E6B33007D4A33000000
      000000000000000000004040400080808000FFC0C0008080800080A0A000FFFF
      FF00FFC0C00080606000FFC0C000808080000020200040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FF000000000000005F2020005F302F00704740007F50
      50008F6860008F6F6F00A0808000AF908F00BFA7A000C0B7B000D0C8CF00DFD7
      D000EFEFEF0000000000000000000000000080808000F7F7F700F7F7F7008080
      8000A3A3A300A3A3A300A3A3A3002828270062626300A3A3A300DADADA000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000006A6B6A004F4F4F0036363600201F2000A2A3A200A3A3A300A2A3
      A20080808000F7F7F700F7F7F7008080800080808000F2F2F200F2F2F2008080
      8000804000000B0B0B00000000000C0C0C000000000000000000000000000000
      000049A2A2004AC5C50042DFDF0033F1F1000000000000000000000000000000
      0000000000000000000000000000000000006363630022222200804000000101
      01006A6A6A00F2F2F200F2F2F200808080000000000000000000663333006633
      330076433300915E3300B6833300CC993300BD8A33009E6B33007D4A33000000
      000000000000000000004040400080808000FFC0C00080808000FFC0C000FFFF
      FF00FFC0C00080606000FFC0C000808080004040400040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101710001018
      100000000000FFFFFF00FFFFFF000000000050201F00603030006F4040007F57
      50008F67600090706F009F807F00AF909000BFA7A000C0B7B000D0C7C000E0D8
      D000EFE8EF0000000000000000000000000080808000C6C6C600C6C6C6008080
      80004343430043444300434443002728280062626200A3A3A300DADADA00FF80
      0000FBFBFB000000000000000000000000000000000000000000000000008686
      8700FF8000006B6B6A004F4F4F0036363600201F1F0044434300434443004443
      430080808000C6C6C600C6C6C6008080800080808000FDFDFD00FDFDFD008080
      8000804000000B0B0B00000000000C0C0C0000000000000000000000000037D1
      D10036B3B3002F90900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006363630022222200804000000101
      010063636300FDFDFD00FDFDFD00808080000000000000000000663333006633
      330076433300915E3300B6833300CC993300BD8A33009E6B33007D4A33000000
      000000000000000000000040400080808000FFC0C00080808000FFC0C000FFFF
      FF00FFC0C00080808000FFC0C000808080004040400000404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000909790009097
      900000000000FFFFFF00FF000000000000005F20200060302F00704740007F50
      4F008F686F008F6F6F00A0808000A0908F00BFA7A000C0B7B000D0C8CF00DFD7
      D000F0EFEF000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C000000000000000000000000000000000063626300A3A3A300DADADA00FF80
      0000FBFBFB00FDFCFD00F5F4F400E6E7E700D3D3D300BCBBBC00A2A2A2008686
      8700FF8000006B6B6A004F4F4F00363636000000000000000000000000000000
      00007C7C7C007C7C7C007C7C7C007C7C7C0080808000F7F7F700F7F7F7008080
      8000804000000B0B0B00000000000C0C0C00388B8B003FAFAF003FCBCB0039E2
      E200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660022222200804000000101
      010080808000F7F7F700F7F7F700808080000000000000000000663333006633
      330076433300915E3300B6833300CC993300BD8A33009E6B33007D4A33000000
      0000000000000000000000000000000000000020200000202000002020000020
      2000002020000020200000202000002000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000050201F00603030006F4040007F57
      50008F67600090706F009F807F00AF909000B0A7A000C0B7B000D0C7C000E0D8
      DF00EFE8E0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B25D1E00B25D1E008040
      0000CE9A7400EEDED700EDDCD400C98F6600B25D1E00CA8E6400EDDAD200EEDC
      D50080400000CE997300B25D1E00000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C6C6C600C6C6C6008080
      8000000000000B0B0B00000000000C0C0C001B1B1B002F2F2F00454545005D5D
      5D00767676008F8F8F00A7A7A700BEBEBE00D3D3D300E5E5E500F2F2F200FBFB
      FB00FEFEFE00EEEEEE00C6C6C6008F8F8F006767670022222200000000000101
      010068686800C6C6C600C6C6C600808080000000000000000000663333006532
      3300703D330085523300A6733300C5923300CB983300B87E2F008D7541000000
      00000000000000000000000000004020400080806000FFC0C000FFFFFF00FFFF
      FF00FFFFFF00FFC0C00080808000404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FF000000000000005F2020005F302F00704740007F50
      50008F6860008F6F6F00A0808000AF908F00BFA7A000C0B7B000D0C8CF00DFD7
      D000EFEFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B25D1E008040
      0000CE997400FF800000FF800000C98F6600FF800000FF800000FF800000FF80
      000080400000CE99730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007C7C7C007C7C7C007C7C7C007C7C
      7C000000000000000000000000000C0C0C001B1B1B002F2F2F00454545005D5D
      5D00767676008F8F8F00A6A6A600BDBDBD00D1D1D100E3E3E300F2F2F200FBFB
      FB00FEFEFE00EEEEEE00C6C6C6008F8F8F005656560024242400000000000000
      0000696969007C7C7C007C7C7C007C7C7C000000000000000000000000005E46
      410071372F0085523300A6733300C5923300D2932D009C974A00000000000000
      0000000000000000000000000000000000004060600080A0A000FFFFFF00FFFF
      FF00FFFFFF00FFC0C00040404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF000000000050201F00603030006F4040007F57
      50008F67600090706F009F807F00AF909000BFA7A000C0B7B000D0C7C000E0D8
      D000EFE8EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF800000FF800000C98F6600FF800000FF800000FF800000FF8000008040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000121212002C2C2C004C4C
      4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFDFD00D3D3
      D300878787003737370001010100010101003C3C3C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000645F4A0088492D00A6733300D08C2B009DAC540000000000000000000000
      0000000000000000000000000000000000000000000080608000FFFFFF00FFFF
      FF0080A0A0004060600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FF000000000000005F20200060302F00704740007F50
      4F008F686F008F6F6F00A0808000A0908F00BFA7A000C0B7B000D0C8CF00DFD7
      D000F0EFEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000121212002C2C2C004C4C
      4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFDFD00D3D3
      D300878787003737370001010100010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3C4C6007F7377002F61500000000000000000000000
      0000000000000000000000000000000000000000000000000000002020004040
      4000406040000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF000000000050201F00603030006F4040007F57
      50008F67600090706F009F807F00AF909000BFA7A000C0B7B000D0C7C000E0D8
      D000EFE8EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000121212002C2C2C004C4C
      4C006E6E6E0092929200B5B5B500D3D3D300EBEBEB00FAFAFA00FDFDFD00D3D3
      D300878787003737370001010100010101000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002C2C2C004C4C
      4C006E6E6E008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040400000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001414140014141400141414001414
      1400141414000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001414
      1400141414001414140014141400141414001414140014141400141414001414
      1400141414000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001414
      1400141414001414140014141400141414000000000000000000000000000000
      000000000000101010006B6B6B0084848400B5B5B500DEDEDE00EFEFEF00DEDE
      DE00B5B5B500848484006B6B6B00101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000101010006B6B6B0084848400B5B5B50000000000000000000000
      0000B5B5B500848484006B6B6B00101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003030300030303000303030003030
      300030303000201F2300201F2300232226005B5958005B5958005B5958004240
      41004240410042404100201F2300201F23002322260000000000000000001919
      1900181818001515150025252500434343004343430043434300434343003030
      3000303030003030300030303000303030003030300030303000303030003030
      300030303000201F2300201F2300232226005B5958005B5958005B5958004240
      41004240410042404100201F2300201F23002322260000000000000000001919
      1900181818001515150025252500434343004343430043434300434343003030
      3000303030003030300030303000303030000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005353530053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      53005353530053535300535353005B5958006361600027202000313131007A7A
      7A00D1D1D100E5E5E500C5C5C500A3A3A300A3A3A300A3A3A300A3A3A3005353
      5300535353005353530053535300535353005353530053535300535353005353
      5300535353005353530053535300535353005353530053535300535353005353
      53005353530053535300535353005B5958006361600027202000313131007A7A
      7A00D1D1D100E5E5E500C5C5C500A3A3A300A3A3A300A3A3A300A3A3A3005353
      5300535353005353530053535300535353000000000000000000000000000000
      0000000000000000000010101000636363009C9C9C00DEDEDE00EFEFEF00DEDE
      DE009C9C9C006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000636363009C9C9C0000000000000000000000
      00009C9C9C006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007979790079797900797979007979
      7900797979007979790079797900797979007979790079797900797979007979
      7900797979007979790079797900868686008686860089898900A8A8A800C2C2
      C200D9D9D900ECECEC00D9D9D900EEEEEE00EEEEEE00EEEEEE00EEEEEE007979
      7900797979007979790079797900808080007979790079797900797979007979
      7900797979007979790079797900797979007979790079797900797979007979
      7900797979007979790079797900868686008686860089898900A8A8A800C2C2
      C200D9D9D900ECECEC00D9D9D900EEEEEE00EEEEEE00EEEEEE00EEEEEE007979
      7900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000636363009C9C9C00DEDEDE00EFEFEF00DEDE
      DE009C9C9C006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101000636363009C9C9C0000000000000000000000
      00009C9C9C006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000A0A0A000A0A0A000A0A0
      A00080808000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A000A0A0A000AFAEAE007F7F7F0098989800B3B3B300CCCC
      CC00E1E1E100F2F2F200DBDBDB00FDFDFD00FDFDFD00FDFDFD00FDFDFD008080
      8000A0A0A000A0A0A000A0A0A000808080000000000000000000000000000000
      000080808000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0
      A000A0A0A000A0A0A000A0A0A000AFAEAE007F7F7F0098989800B3B3B300CCCC
      CC000000000000000000DBDBDB00FDFDFD00FDFDFD00FDFDFD00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100000000000636363009C9C9C00E7E7E700DEDEDE009C9C
      9C00636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100000000000636363000000000000000000000000009C9C
      9C00636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C3C3C300C3C3C300C3C3
      C30080808000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C300C3C3C3007575750086868600A3A3A300BDBDBD00D5D5
      D500E9E9E900F6F6F600D8D8D800EEEEEE00EEEEEE00EEEEEE00EEEEEE008080
      8000C3C3C300C3C3C300C3C3C300808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3A3A300BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001010100010101000636363009C9C9C00E7E7E7009C9C9C009C9C9C006363
      6300101010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001010100010101000636363000000000000000000000000009C9C9C006363
      6300101010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000E1E1E100E1E1E100E1E1
      E10080808000EEEEEE00EEEEEE00EEEEEE00EEEEEE00FFFFFF00FFFFFF00FFFF
      FF00EEEEEE00E8E7E7006A6A6A007575750092929200AEAEAE00C7C7C700DEDE
      DE00EFEFEF00FAFAFA00D0D0D000D3D3D300D3D3D300D3D3D300D3D3D3008080
      8000E1E1E100E1E1E100E1E1E100808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000092929200AEAEAE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      100010101000636363009C9C9C00E7E7E7009C9C9C0063636300636363001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000101010006363630000000000000000000000000063636300636363001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000F5F5F500F5F5F500F5F5
      F50080808000D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D3006161610064646400818181009D9D9D00B8B8B800D1D1D100E5E5
      E500F4F4F400FDFDFD00C3C3C300AFAFAF00AFAFAF00AFAFAF00AFAFAF008080
      8000F5F5F500F5F5F500F5F5F500808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000818181009D9D9D0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010001010
      1000636363009C9C9C00E7E7E7009C9C9C006363630010101000101010001010
      1000101010001010100010101000101010000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000101010001010
      1000636363000000000000000000000000006363630010101000101010001010
      1000101010001010100010101000101010000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300000000000000
      00000000000000000000000000000000000080808000FEFEFE00FEFEFE00FEFE
      FE0080808000AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAFAF00AFAF
      AF0054545400535353006F6F6F008C8C8C00A8A8A800C2C2C200D9D9D900ECEC
      EC00F8F8F800FEFEFE00B3B3B300868686008686860086868600868686008080
      8000FEFEFE00FEFEFE00FEFEFE00808080000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AFAF
      AF0054545400535353006F6F6F008C8C8C00A8A8A80000000000000000000000
      00000000000000000000B3B3B300868686008686860086868600868686000000
      0000000000000000000000000000000000000000000010101000101010006363
      63009C9C9C00E7E7E7009C9C9C00636363001010100010101000636363006363
      6300101010001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010001010100010101000101010001010
      1000101010001010100000000000000000000000000010101000101010006363
      6300000000000000000000000000636363001010100010101000636363006363
      6300101010001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010001010100010101000101010001010
      10001010100010101000000000000000000080808000E1E1E100E1E1E100E1E1
      E1008080800086868600868686008686860086868600A3A3A300B8B8B8004545
      4500434343005E5E5E007B7B7B0098989800B3B3B300CCCCCC00E1E1E100F2F2
      F200FBFBFB00FDFDFD009F9F9F005D5D5D005D5D5D005D5D5D005E5E5E008080
      8000E1E1E100E1E1E100E1E1E100808080000000000000000000000000000000
      00008080800086868600868686008686860086868600A3A3A300B8B8B8004545
      4500434343005E5E5E007B7B7B0098989800B3B3B300CCCCCC00E1E1E100F2F2
      F200FBFBFB00FDFDFD009F9F9F005D5D5D005D5D5D005D5D5D005E5E5E008080
      80000000000000000000000000000000000010101000101010006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B001010100063636300949494009494
      94006363630010101000B5B5B500101010006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B00101010001818
      18001818180018181800101010000000000010101000101010006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B001010100063636300949494009494
      94006363630010101000B5B5B500101010006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B00101010001818
      18000000FF000000FF0010101000000000008080800094949400949494009494
      9400808080005D5D5D005D5D5D005D5D5D005E5E5E006B6B6B00303030003333
      33004D4D4D006A6A6A0086868600A3A3A300BDBDBD00D5D5D500E9E9E900F6F6
      F600FDFDFD00F6F6F600CCCCCC003D3D3D003636360036363600383838009494
      9400949494009494940080808000808080008080800094949400949494009494
      9400808080005D5D5D005D5D5D005D5D5D005E5E5E006B6B6B00303030003333
      33004D4D4D006A6A6A0086868600A3A3A300BDBDBD00D5D5D500E9E9E900F6F6
      F600FDFDFD00F6F6F600CCCCCC003D3D3D003636360036363600383838009494
      94009494940094949400808080008080800010101000636363009C9C9C00DEDE
      DE00EFEFEF00DEDEDE009C9C9C00636363001010100063636300CECECE00B5B5
      B5006363630010101000B5B5B500101010008484840010101000101010001010
      1000101010001010100010101000101010001010100010101000101010004242
      42004242420042424200101010000000000010101000636363009C9C9C000000
      000000000000000000009C9C9C00636363001010100063636300000000000000
      00006363630010101000B5B5B50010101000848484000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00101010004242
      4200424242004242420010101000000000003C3C3C003C3C3C003C3C3C003C3C
      3C003C3C3C000707070001010100010101002727270019191900252525003D3D
      3D00595959007575750092929200AEAEAE00C7C7C700DEDEDE00EFEFEF00FAFA
      FA00FEFEFE00E9E9E900B5B5B5005A5A5A0017171700161616001D1D1D003C3C
      3C003C3C3C003C3C3C003C3C3C003C3C3C003C3C3C003C3C3C003C3C3C003C3C
      3C003C3C3C000707070001010100010101002727270019191900252525003D3D
      3D00595959007575750092929200AEAEAE00C7C7C700DEDEDE00EFEFEF00FAFA
      FA00FEFEFE00E9E9E900B5B5B5005A5A5A0017171700161616001D1D1D003C3C
      3C003C3C3C003C3C3C003C3C3C003C3C3C00101010006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B001010100063636300CECECE00B5B5
      B500636363001010100010101000101010009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00101010004A4A
      4A004A4A4A004A4A4A001010100010101000101010006B6B6B006B6B6B006B6B
      6B00000000006B6B6B006B6B6B006B6B6B001010100063636300000000000000
      0000636363001010100010101000101010009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00101010004A4A
      4A004A4A4A004A4A4A0010101000101010000101010001010100010101000101
      01000101010000000000000000000E02020007070700191919002F2F2F004848
      4800646464008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000595959002121200000000000000000000101
      0100010101000101010001010100010101000101010001010100010101000101
      01000101010000000000000000000E02020007070700191919002F2F2F004848
      4800646464008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000595959002121200000000000000000000101
      01000101010001010100010101000101010010101000636363009C9C9C00DEDE
      DE00EFEFEF00DEDEDE009C9C9C00636363001010100063636300CECECE00B5B5
      B50063636300101010001010100010101000C6C6C60010101000101010001010
      1000101010001010100010101000101010001010100010101000101010006363
      63006363630063636300636363001010100010101000636363009C9C9C000000
      000000000000000000009C9C9C00636363001010100063636300000000000000
      000063636300101010001010100010101000C6C6C6000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00101010006363
      6300636363006363630063636300101010000000000000000000000000000000
      000000000000000000001B1B1B002F2F2F00454545005D5D5D00767676008F8F
      8F00A7A7A700BEBEBE00D3D3D300E5E5E500F2F2F200FBFBFB00FEFEFE00EEEE
      EE00C6C6C6008F8F8F0056565600222222000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B002F2F2F00454545005D5D5D00767676008F8F
      8F00A7A7A700BEBEBE00D3D3D300E5E5E500F2F2F200FBFBFB00FEFEFE00EEEE
      EE00C6C6C6008F8F8F0056565600222222000101010000000000000000000000
      00000000000000000000000000000000000010101000636363009C9C9C00DEDE
      DE00EFEFEF00DEDEDE009C9C9C00636363001010100063636300CECECE00B5B5
      B5006363630010101000DEDEDE0010101000CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00101010009494
      94009494940094949400949494001010100010101000636363009C9C9C000000
      000000000000000000009C9C9C00636363001010100063636300000000000000
      00006363630010101000DEDEDE0010101000CECECE00CECECE00CECECE00CECE
      CE00C6C6C600C6C6C600C6C6C600C6C6C600CECECE00CECECE00101010009494
      9400949494009494940094949400101010000000000000000000000000000000
      000000000000000000001B1B1B002F2F2F00454545005D5D5D00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008F8F8F0056565600222222000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B002F2F2F00454545005D5D5D00808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008F8F8F0056565600222222000101010000000000000000000000
      00000000000000000000000000000000000010101000636363009C9C9C00DEDE
      DE00EFEFEF00DEDEDE009C9C9C00636363001010100063636300CECECE00B5B5
      B5006363630010101000DEDEDE0010101000E7E7E70010101000101010001010
      100010101000101010001010100010101000101010001010100010101000DEDE
      DE00DEDEDE00DEDEDE00DEDEDE001010100010101000636363009C9C9C000000
      000000000000000000009C9C9C00636363001010100063636300000000000000
      00006363630010101000DEDEDE0010101000E7E7E7000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF0010101000DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00101010000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600FDFDFD00FBFB
      FB00E8E8E800C6C6C6009B9B9B006D6D6D0040404000192E2E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600FDFDFD00FBFB
      FB00E8E8E800C6C6C6009B9B9B006D6D6D0040404000192E2E00000000000000
      00000000000000000000000000000000000010101000636363009C9C9C00DEDE
      DE00EFEFEF00DEDEDE009C9C9C00636363001010100063636300CECECE00B5B5
      B5006363630010101000DEDEDE0010101000E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70010101000B5B5
      B500B5B5B500B5B5B500B5B5B5001010100010101000636363009C9C9C000000
      000000000000000000009C9C9C00636363001010100063636300000000000000
      00006363630010101000DEDEDE0010101000E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70010101000B5B5
      B500B5B5B500B5B5B500B5B5B500101010000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600FDFDFD00FBFB
      FB00E8E8E800C6C6C6009B9B9B006D6D6D0040404000192E2E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600FDFDFD00FBFB
      FB00E8E8E800C6C6C6009B9B9B006D6D6D0040404000192E2E00000000000000
      00000000000000000000000000000000000010101000636363009C9C9C00DEDE
      DE00EFEFEF00DEDEDE009C9C9C00636363001010100063636300CECECE00B5B5
      B50063636300101010001010100010101000C6C6C60010101000101010001010
      1000101010001010100010101000101010001010100010101000101010009494
      94009494940094949400949494001010100010101000636363009C9C9C000000
      000000000000000000009C9C9C00636363001010100063636300000000000000
      000063636300101010001010100010101000C6C6C6000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00101010009494
      9400949494009494940094949400101010000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FDFD
      FD00FBFBFB00DADADA00A3A3A300626262002828280001010100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FDFD
      FD00FBFBFB00DADADA00A3A3A300626262002828280001010100000000000000
      00000000000000000000000000000000000010101000636363009C9C9C00DEDE
      DE00EFEFEF00E7E7E70094949400636363001010100063636300CECECE00B5B5
      B500636363001010100010101000101010009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00101010007B7B
      7B007B7B7B007B7B7B00101010001010100010101000636363009C9C9C000000
      0000000000000000000094949400636363001010100063636300000000000000
      0000636363001010100010101000101010009C9C9C009C9C9C009C9C9C009C9C
      9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00101010007B7B
      7B007B7B7B007B7B7B0010101000101010000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FDFD
      FD00FBFBFB00DADADA00A3A3A300626262002828280001010100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F000D0D0D00000000000D0D0D001F1F1F00363636004F4F
      4F006B6B6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FDFD
      FD00FBFBFB00DADADA00A3A3A300626262002828280001010100000000000000
      0000000000000000000000000000000000001010100010101000636363009C9C
      9C00DEDEDE00E7E7E7009494940010101000101010006B6B6B00CECECE00B5B5
      B5006363630010101000B5B5B500101010008484840010101000101010001010
      1000101010001010100010101000101010001010100010101000101010004242
      4200424242004242420010101000000000001010100010101000636363009C9C
      9C0000000000000000009494940010101000101010006B6B6B00000000000000
      00006363630010101000B5B5B50010101000848484000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00101010004242
      42000000FF000000FF0010101000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D001F1F1F00363636004F4F4F006B6B
      6B00868686008080800080808000808080008080800080808000808080008080
      8000808080008080800062626200282828000101010000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D001F1F1F00363636004F4F4F006B6B
      6B00868686008080800080808000808080008080800080808000808080008080
      8000808080008080800062626200282828000101010000000000000000000000
      0000000000000000000000000000000000000000000010101000101010006363
      63009C9C9C009C9C9C0063636300101010006363630094949400CECECE00B5B5
      B5006363630010101000B5B5B500101010006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B00101010001818
      1800181818001818180010101000000000000000000010101000101010006363
      63009C9C9C009C9C9C0063636300101010006363630094949400000000000000
      00006363630010101000B5B5B500101010006B6B6B006B6B6B006B6B6B006B6B
      6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B006B6B6B00101010001818
      1800181818001818180010101000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D001F1F1F00363636004F4F4F006B6B
      6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FBFBFB00E8E8
      E800C6C6C6009B9B9B006D6D6D00404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D001F1F1F00363636004F4F4F006B6B
      6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FBFBFB00E8E8
      E800C6C6C6009B9B9B006D6D6D00404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010001010
      10006363630063636300636363001010100063636300B5B5B500CECECE00B5B5
      B500636363001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010001010100010101000101010001010
      1000101010001010100000000000000000000000000000000000101010001010
      10006363630063636300636363001010100063636300B5B5B500000000000000
      0000636363001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010001010100010101000101010001010
      1000101010001010100000000000000000000000000000000000000000000000
      00000000000000000000000000000C1F1F001F1F1F00363636004F4F4F006B6B
      6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FBFBFB00E8E8
      E800C6C6C6009B9B9B006D6D6D00404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C1F1F001F1F1F00363636004F4F4F006B6B
      6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FBFBFB00E8E8
      E800C6C6C6009B9B9B006D6D6D00404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10001010100010101000636363001010100063636300B5B5B500CECECE00B5B5
      B500636363001010100010101000101010000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10001010100010101000636363001010100063636300B5B5B500000000000000
      0000636363001010100010101000101010000000000063636300636363006363
      6300636363006363630063636300636363006363630063636300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F004D5252006B6B
      6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FBFBFB00E8E8
      E800C6C6C600808080006D6D6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F004D5252006B6B
      6B0086868600A2A2A200BCBCBC00D3D3D300E6E6E600F4F4F400FBFBFB00E8E8
      E800C6C6C600808080006D6D6D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010006B6B6B00B5B5B500CECECE00B5B5
      B500636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010006B6B6B00B5B5B500000000000000
      0000636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000101010006363630094949400B5B5B500CECECE00B5B5
      B500636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000101010006363630094949400B5B5B500000000000000
      0000636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B500B5B5B500CECECE00B5B5
      B500636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B500B5B5B500000000000000
      0000636363001010100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B500CECECE00CECECE00B5B5
      B500636363001010100010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B50000000000000000000000
      0000636363001010100010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B500CECECE00CECECE00B5B5
      B500949494006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B50000000000000000000000
      0000949494006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B0086868600A2A2A200BCBCBC00A3A3A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B500CECECE00CECECE00B5B5
      B500B5B5B5006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010100063636300B5B5B50000000000000000000000
      0000B5B5B5006363630010101000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B00808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636004F4F4F006B6B6B00808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004F4F4F006B6B6B00808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004F4F4F006B6B6B00808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000101010006B6B6B0084848400B5B5B500DEDEDE00EFEFEF00DEDE
      DE00B5B5B500848484006B6B6B00101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000101010006B6B6B0084848400B5B5B50000000000000000000000
      0000B5B5B500848484006B6B6B00101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B6B6B00808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B6B6B00808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001010100010101000101010001010100010101000101010001010
      1000101010001010100010101000101010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000800000000100010000000000000800000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFFFFFF000000000000000000000000
      FFFFFFFF000000000000000000000000FFFF00FF000000000000000000000000
      FFFF00FF000000000000000000000000FFFF00FF000000000000000000000000
      FFFF00FF000000000000000000000000FFFF00FF000000000000000000000000
      0FFF00F000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0FFFFFF0000000000000000000000000FFFFFFFFFFF81FFFF8FE38FFFFF0FFFF
      FFFFFFFFFFE007FFF07E38FFF0001FFFFFFFFFFFFFE007FFE03E38FFF0001FFF
      FFFFFFFFFFC003FFE03E38FFF0001FFFFFFFFFFFFFC003FFE03E38FF000000FF
      FFFFFFFFFF8001FFF07E38FF000000FFFFFFFFFFFF8001FFF8FE38FF000000FF
      FFFFFFFFFF8001FFF07E38FF000000FFFFFFFFFFFF8000FFE03E38FF000000FF
      FFFFFFFFFF0000FFE03E38FF000000FFFFFFFFFFFF0000FFE03E38FF000000FF
      FFFFFFFFFE00007FE03E38FF000000FFFF8001FFFE00007FE03E00FF000000FF
      0F0000F0FE00007FE03E00FF000000FF0F0000F0FE00007FE03E00FFF0001FFF
      000000000C000030E03E00FFF0001FFF0006E00008000020E03E00FFF0001FFF
      001F780000000000E03E00FFFF70FFFF003F7C0000FF8000E03E00FFFF700003
      00386C0000FF8F00C01E00FFFF70000300361C0000FE3F00C01E00FFFF700003
      003EFC0000003F00C01C003FFF700001003EFC0000F80000C01C003FFF000001
      001F780000F0FF00C01C003FFE0000010007E00000E3FF00C01C003FFE000001
      0F0000F0000FFF00C01E00FFFE000001FF8001FF08000020C01E00FFFF000001
      FFC003FF0C000030E03F01FFFFF00001FFF00FFFFE00007FF07F83FFFFF00003
      FFFFFFFFFF0000FFF07FC7FFFFF00003FFFFFFFFFF0000FFFDFFEFFFFFF00003
      FFFFFFFFFFC007FFFDFFEFFFFFF0FFFFFFFFFFFFFFFFFFFFF800FFFFF800FFFF
      07FFFFE007FFFFE0F800FFFFF870FFFF0000600000006000F800FFFFF800FFFF
      0000000000000000FC01FFFFFC71FFFF000000000000000FFC01FFFFFC71FFFF
      00000000F0000C1FF803FFFFF8E3FFFF00000000FFFF9FFFF007FFFFF1C7FFFF
      00000000FFFF3FFFE00FFFFFE38FFFFF00000000FFFE7FFFC000803FC700803F
      00000000FFE07C1F800000038E00000300000000F000000F0000000100000001
      0000000000000000000000011C30000100000000000000000000000000300000
      0600006006000060000000001C300000FC00007FFC00007F000000001C300000
      FC00007FFC00007F000000001C300000F800003FF800003F000000001C300000
      F800003FF800003F000000001C300000F800003FF800003F000000001C300000
      F800003FF800003F000000010C300001FC00007FFC00007F8000000180300001
      FE0000FFFE0000FFC0000003C0300003FE0000FFFE0000FFE000803FE030803F
      FF0001FFFF0001FFF803FFFFF833FFFFFF8003FFFF8003FFFC03FFFFFC33FFFF
      FFF01FFFFFF01FFFFC03FFFFFC33FFFFFFF01FFFFFF01FFFFC01FFFFFC71FFFF
      FFF01FFFFFF01FFFFC01FFFFFC71FFFFFFF01FFFFFF01FFFFC01FFFFFC71FFFF
      FFF01FFFFFF01FFFF800FFFFF800FFFFFFF83FFFFFF83FFFF800FFFFF870FFFF
      FFFC7FFFFFFC7FFFF800FFFFF800FFFF00000000000000000000000000000000
      000000000000}
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    OnShowHint = ApplicationEvents1ShowHint
    Left = 933
    Top = 191
  end
  object ilGrBtn: TImageList
    Height = 24
    Width = 24
    Left = 701
    Top = 199
    Bitmap = {
      494C01010F001300040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE005D5D5D000D0D0D000D0D
      0D001A1A1A000D0D0D000D0D0D001A1A1A002828280033333300434343009999
      9900868686008686860086868600666666006B6B6B006B6B6B00505050002828
      28001A1A1A000D0D0D0000000000AEAEAE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D5D5D000D0D0D001A1A1A003333
      3300333333004343430033333300505050005D5D5D0086868600939393008686
      8600434343001A1A1A001A1A1A001A1A1A0028282800868686006B6B6B005D5D
      5D0043434300333333001A1A1A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000000000000000
      000000000000000000000000000000000000FFFF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D001A1A1A00333333004343
      4300505050004343430033333300434343005D5D5D0093939300868686004343
      430043434300000000001A1A1A00282828008686860028282800999999008686
      8600505050004343430033333300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFFFF00FFFF
      FF0000000000000000000000000000000000FFFF0000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A1A1A0033333300434343005050
      500043434300333333000D0D0D004343430050505000A1A1A100434343004343
      430000000000FFFF9900FFFFCC00FFFF99002828280086868600282828008686
      86004343430050505000434343001A1A1A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFF0000FFFF0000FFFF
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003333330043434300505050005050
      50003333330028282800282828004343430050505000CC999900434343000000
      0000E4E4E400FFFF9900FFCC6600FFFFCC00FFFF9900282828001A1A1A009393
      9300333333005D5D5D0043434300282828000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004343430043434300505050005050
      5000282828001A1A1A000D0D0D00434343005D5D5D00FFCCCC00434343000000
      0000FFFF9900E4E4E400FFFF9900FFCC6600FFFFCC001A1A1A001A1A1A009393
      93001A1A1A003333330050505000434343000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000004343430050505000333333002828
      28001A1A1A000D0D0D00000000004343430066666600D6D6D6005D5D5D000000
      0000FFFFFF00FFFFFF00E4E4E400FFFF9900FFFF99000D0D0D001A1A1A008686
      8600000000001A1A1A0033333300505050000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000004343430033333300333333001A1A
      1A000D0D0D0000000000434343005D5D5D0066666600939393005D5D5D00CCCC
      CC0000000000FFFFFF00FFFF9900E4E4E4000D0D0D004343430050505000FFCC
      CC005D5D5D00000000001A1A1A00333333000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000666666005D5D5D00434343004343
      43004343430043434300868686006B6B6B006666660043434300868686002828
      2800CCCCCC000000000000000000000000004343430050505000939393005D5D
      5D00868686006B6B6B006B6B6B001A1A1A000000000000000000808080000000
      0000808080008080800080808000808080000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF008080800080808000808080008080
      800080808000808080008080800000000000FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000005050500099999900BBBBBB009999
      9900868686008686860086868600868686006B6B6B0043434300A1A1A1009999
      99005D5D5D005050500043434300434343006B6B6B00A1A1A100282828006666
      66006B6B6B009393930086868600333333000000000000000000000000000000
      0000808080008080800080808000808080000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000005D5D5D0000000000FFCCCC00CCCC
      CC00A1A1A1009393930093939300939393008686860050505000CCCCCC00FFCC
      CC0000000000A1A1A10086868600868686008686860086868600434343006B6B
      6B00A1A1A100AEAEAE009999990043434300000000000000000000FFFF0000FF
      FF00000000008080800080808000808080000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000000000006B6B6B00FFFFFF00FFFFFF00FFCC
      CC00BBBBBB009999990099999900A1A1A100A1A1A1005D5D5D00CCCCCC00FFFF
      FF00FFCCCC009999990086868600868686008686860066666600505050006B6B
      6B009999990000000000AEAEAE005D5D5D00000000000000000000FFFF0000FF
      FF0000FFFF000000000080808000808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000086868600AEAEAE00FFFFFF000000
      0000BBBBBB009999990099999900A1A1A100A1A1A10086868600282828005D5D
      5D005050500050505000282828001A1A1A001A1A1A00434343006B6B6B009999
      9900A1A1A100A1A1A100FFCCCC006B6B6B000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000080808000000000000000000000000000FF00
      FF00FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000086868600939393006B6B
      6B005D5D5D00505050004343430033333300282828001A1A1A00434343005050
      5000336666005D5D5D005D5D5D00505050005D5D5D00434343001A1A1A003333
      3300434343005D5D5D006B6B6B00BBBBBB000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00808080000000000080808000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAE0086868600282828005050
      500066669900666699006B6B6B006B6B6B005D5D5D0050505000282828008686
      8600AEAEAE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEAEAE00434343005050
      500066669900006699005D5D5D0066669900505050005D5D5D0043434300AEAE
      AE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000080808000FF000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00808080008080800080808000808080008080
      8000FFFFFF00FFFFFF00FFFFFF00808080008080800080808000808080008080
      8000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D5D5D006666
      6600336666005D5D5D005D5D5D00505050005D5D5D0066666600434343000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF0000000000FFFF000000000000FF00
      0000FF000000FF000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6B008686
      8600CCCCCC00E4E4E400FFFFFF00E4E4E400E4E4E4006B6B6B006B6B6B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF0000000000FFFF0000FFFF00000000
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000868686008686
      8600E4E4E400FFFFFF00FFFFFF00E4E4E400CCCCCC0086868600868686000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF
      000000000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008686
      8600FFFFFF00FFFFFF00FFFFFF00E4E4E400BBBBBB0086868600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086868600666666005D5D5D00505050008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      00000000FF000000FF000000FF000000FF0000000000FFFF0000FFFF0000FFFF
      0000FFFF00000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF0000000000FFFF0000FFFF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000008080
      8000808080000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F000000FFFF
      0000FFFFFF00FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F000000FFFF
      0000FFFFFF00FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080008000000000008000800000008000800080000000
      8000800080000000800080008000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F000000FFFF0000FFFF
      FF00FFFF0000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F000000FFFF0000FFFF
      FF00FFFF0000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080008000800000008000800080000000800080008000000080008000
      8000000080008000800000008000800080000000800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F000000FFFF0000FFFFFF00FFFF
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F000000FFFF0000FFFFFF00FFFF
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000800080000000800000008000000080000000800000008000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F00000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000007F7F7F00FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F00000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0000000000000000007F7F7F00FFFFFF00000000007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      000000000000FF00FF00FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      8000000080000000FF00000080000000FF00000080000000FF00000080000000
      FF00000080000000FF00000080000000FF000000800000008000000080008000
      8000000080000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800000000000FF000000FF000000FF000000FF00
      000000000000FF000000FF00FF00FF000000FF00FF0000000000808080000000
      0000000000000000000000000000000000000000000000000000000080000000
      80000000FF00000080000000FF00000080000000FF00000080000000FF000000
      80000000FF00000080000000FF00000080000000FF0000008000000080000000
      8000800080008080800000000000000000000000000000000000000000007F7F
      7F0000000000000000000000000000000000000000007F7F0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000000000000000000000000000000000007F7F0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      000000000000FF00FF00FF000000FF00FF00FF00000000000000000000000000
      0000000000000000000000000000000000000000000080808000000080000000
      FF00000080000000FF00000080000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF00000080000000FF000000800000008000000080008000
      80000000800080008000000000000000000000000000000000007F7F7F000000
      00000000000000000000000000007F7F0000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F0000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00000000000000000000000000007F7F0000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF000000000000FF000000FF000000FF00
      000000000000FF000000FF00FF00FF00000000000000FF00FF00FF00FF000000
      00000000000000000000000000000000000000000000000080000000FF000000
      80000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000080000000FF0000008000000080000000
      800000008000000080008080800000000000000000007F7F7F00FFFFFF00FFFF
      FF0000000000000000007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF00FFFF
      FF0000000000000000007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FF000000FFFF000000000000FF000000FF00
      000000000000FF00FF00FF00000000000000FF00FF00FF00FF00FF00FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000800000008000000080000000
      800000008000000080000000800000000000000000007F7F7F00FFFFFF00FFFF
      FF00000000007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF000000
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F00000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF00FFFF
      FF00000000007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FF000000FFFF0000FF000000FFFF000000000000FF00
      000000000000FF00000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000000000000000000000000000000000000000000080000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000080000000800000008000008000000080
      0000008000000000800080008000000000007F7F7F00FFFFFF00FFFFFF000000
      00007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF000000
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF000000
      00007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF000000FFFF0000FF000000FFFF0000FF000000FFFF00000000
      00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000800000800000008000000080000000FF
      0000008000000000800000008000000000007F7F7F00FFFFFF00FFFFFF000000
      00007F7F0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF00000000
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F00000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00FFFFFF000000
      00007F7F0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00FFFFFF00FFFFFF000000FF00000000000000FF000000FF000000FF000000
      FF000000FF000000FF00000080000080000000800000008000000080000000FF
      0000008000000000800080808000000000007F7F7F00FFFFFF00000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF00FFFFFF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000800000008000000080000000800000008000000080
      0000008000000000800000000000000000007F7F7F00FFFFFF00000000007F7F
      0000FFFF0000FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFF0000FFFFFF007F7F00000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      0000FFFF0000FFFFFF00FFFFFF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF00FFFF0000FFFFFF007F7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FF
      00000000000000FFFF00000000000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF00FFFFFF0000000000FFFFFF000000FF000000FF000000FF000000
      FF000000FF000080000000800000008000000080000000FF0000008000000080
      0000008000000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF000000
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF0000FFFF00000000000000FF000000FF
      00000000000000FFFF0000FFFF00000000000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
      FF000000FF000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000007F7F7F0000000000000000007F7F
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF00000000
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F0000FFFFFF000000
      0000000000000000000000000000000000007F7F7F0000000000000000007F7F
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00007F7F0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFF0000FFFF00000000000000FF000000FF000000FF
      00000000000000FFFF0000FFFF0000FFFF00000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000008080000000
      000000800000008000000080000000FF00000080000000800000008000000000
      0000000000000000000000000000000000007F7F7F0000000000000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF000000
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F0000FFFFFF000000
      0000000000000000000000000000000000007F7F7F0000000000000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFF
      FF00FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF000000FF000000FF
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000008000000080000000800000008000000080000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF00000000
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F0000FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF007F7F0000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000FF000000FF000000FF
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF007F7F0000FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF007F7F0000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF007F7F00000000000000000000FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00007F7F0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF007F7F00000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00007F7F00007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      00007F7F00007F7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00007F7F00007F7F0000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      00007F7F00007F7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F00007F7F00007F7F00007F7F00007F7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F007F7F7F007F7F00007F7F00007F7F00007F7F00007F7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      8000000000000000000000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008000000000000000800000000000000000
      0000000000000000000000800000000000000080000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000FF000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000080000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000FFFF00000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      8000000000000000000000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FFFFFF0000FFFF000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000800080008000800000000000800080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF00000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000080
      000000FF00000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000808000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000800080008000800000000000000000000000000080008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF000000000000FF
      00000000000000FF000000800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF0000000000008080000080800000808000008080000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000800080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      8000800080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0080808000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000080800000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF008080800080808000FFFFFF0080808000FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF008080800000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF008080000080800000808000000000FF000000000000000000000000000000
      0000000000000000000080008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00808080000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00808000000000FF00808000000000000000000000000000000000
      0000000000000000000000000000000000008000800000000000800080008000
      8000000000000000000000000000000000000000000000000000000000000000
      0000808000008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF00000000000000FF000000
      FF0000000000000000000000000000000000000000000000000080808000FFFF
      FF008080800080808000FFFFFF0080808000FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808080000000FF0080800000808080008080000080808000808000008080
      8000808000000000000000000000000000000000000000000000800080008000
      8000000000000000000000000000000000000000000000000000000000008080
      0000808080008080000080800000808080008080000080808000808000008080
      80008080000000000000000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      00000000FF00808000000000FF00808000008080000080800000808000008080
      0000808000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808080008080800080808000808000008080000080800000808000008080
      0000808000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF008080800080808000FFFFFF0080808000FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000000000
      FF008080000080808000808000000000FF008080000080800000808000008080
      0000808000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000008080
      0000808080008080800080800000808000008080000080800000808000008080
      0000808000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF008080
      0000808000008080000080800000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000808000008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      000080800000808000008080000000000000000000000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808000008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF0000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      00000000000080800000808000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF660000FF330000FF66
      0000FF330000FF330000FF660000FF330000FF330000FF333300FF006600FF00
      6600FF006600FF006600FF009900FF006600FF006600FF009900FF009900FF00
      9900FF009900FF009900CC009900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF660000FF660000FF330000FF66
      0000FF330000FF330000FF660000FF330000FF330000FF333300FF006600FF00
      6600FF006600FF006600FF009900FF006600FF006600FF009900FF009900FF00
      9900FF009900FF009900CC009900CC0099000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF660000FF660000FF660000FF33
      0000FF330000FF330000FF330000FF333300FF333300FF333300FF333300FF33
      3300FF006600FF006600FF009900FF009900FF006600FF009900FF009900CC00
      9900FF009900CC00CC00FF00CC00FF00CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF990000FF660000FF660000FF66
      0000FF330000FF330000FF660000FF330000FF330000FF003300FF333300FF33
      3300FF006600FF006600FF009900FF006600FF009900FF009900FF009900FF00
      9900CC009900CC00CC00CC00CC00CC00CC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000868686000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF990000FF990000FF660000FF66
      0000FF660000FF660000FF330000FF330000FF333300FF333300FF006600FF00
      6600FF336600FF006600FF009900FF009900CC009900FF009900FF009900CC00
      CC00FF00CC00CC00CC00CC00FF00CC00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000008080000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC0000FF990000FF990000FF66
      0000FF660000FF660000FF660000FF330000FF333300FF333300FF333300FF33
      3300FF006600FF006600FF006600FF009900FF009900CC009900CC009900CC00
      CC00CC00CC00CC00CC00CC00FF00CC00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000808080000000000080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000080
      800000FFFF000080800000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC0000FF990000FF990000FF66
      0000FF660000FF660000FF660000FF330000FF333300FF333300FF333300FF33
      3300FF006600FF006600FF006600FF009900FF009900CC009900CC009900CC00
      CC00CC00CC00CC00CC00CC00FF00CC00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000008080800000000000808080008080800000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF000080800000FFFF0000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC0000FFCC0000FF990000FF99
      0000FF660000FF660000FF660000FF660000FF333300FF003300FF336600FF33
      6600FF006600FF009900CC009900FF009900CC00CC00FF00CC00FF00CC00CC00
      CC00CC00FF00CC00FF009900FF009900FF000000000000000000FFFFFF000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000008080800000000000808080008080800080808000808080000000
      0000000000008080800000000000000000000000000000000000000000008686
      8600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000080800000FFFF00008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFCC0000FF99
      0000FF990000FF990000FF660000FF660000FF333300FF333300FF333300FF33
      3300CC006600FF006600FF009900CC00CC00CC00CC00CC00CC00CC00CC00CC00
      CC00CC00FF00CC00FF00CC00FF00CC00FF000000000080808000FFFFFF000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000FFFFFF008080800000000000000000008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000008686
      8600FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000
      000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000080800000FFFF000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCC0000FFFF0000FFCC0000FFCC
      0000FFCC0000FFCC0000FF990000FF660000FF333300FF333300FF336600FF33
      6600FF006600CC009900FF00CC00CC00CC00CC00CC00CC00FF00CC00FF00CC00
      FF009900FF00CC00FF00CC00FF00CC00FF000000000080808000FFFFFF000000
      0000808080008080800000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000080808000000000008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000008686
      8600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000
      000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF0000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000CCFF0000FFFF0000CCCC
      0000FFCC0000FFCC0000CC990000FF990000CC663300FF333300CC336600CC33
      6600CC339900CC009900CC00CC00CC00CC00CC00CC00CC00FF00CC00FF009900
      FF00CC00FF009900FF009900FF009900FF000000000080808000808080008080
      80000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000008686
      8600FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000080800000FFFF00008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCFF0000CCFF0000CCFF0000CCFF
      0000CCCC0000CCCC0000CCCC0000CC993300CC993300CC663300CC336600CC33
      6600993399009900CC009900CC009900FF009900FF009900FF009900FF009900
      FF009900FF009900FF009900FF009900FF0080808000FFFFFF00808080000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF000000FF0000000000000000008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000008686
      8600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00000000
      000000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF000080800000FFFF000080
      8000008080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099FF0000CCFF000099FF0000CCFF
      000099FF000099FF0000CCCC000099CC00009999330099666600666699006666
      99009933CC009933CC009933CC006600FF006600FF006600FF006600FF006600
      FF006600FF006600FF006600FF006600FF0080808000FFFFFF00808080000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000008686
      8600FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF008686
      860000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000080800000FF
      FF00008080000080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099FF0000CCFF000099FF0000CCFF
      000099FF000099FF0000CCCC000099CC00009999330099666600666699006666
      99009933CC009933CC009933CC006600FF006600FF006600FF006600FF006600
      FF006600FF006600FF006600FF006600FF0080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000008080800080808000FFFFFF00FFFFFF00000000008080
      8000000000008080800080808000000000000000000000000000000000008686
      8600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF00008686
      86000000000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000080
      800000FFFF000080800000808000000000000000000000000000000000000000
      00000000000000000000000000000000000099FF000099FF000099FF000099FF
      000066FF000066FF000099FF330066CC330066CC660066996600868686008686
      86006666CC003333CC006600FF006633FF003300FF006600FF006600FF003300
      FF006600FF003300FF006600FF006600FF0080808000FFFFFF00000000008080
      8000000000000000000000FF000000FF00000000000000000000000000000000
      000080808000808080000000000000000000FFFFFF00FFFFFF00000000000000
      0000808080000000000000000000000000000000000000000000000000008686
      8600FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000868686000000000000000000FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF000080800000FFFF0000808000008080000000000000000000000000000000
      00000000000000000000000000000000000066FF000066FF000066FF000066FF
      330066FF000066FF000066FF330066FF330066CC660033CC9900339999003399
      99003366CC003333FF003333FF003333FF003300FF003300FF003300FF003300
      FF003300FF003300FF003300FF003300FF000000000080808000FFFFFF000000
      0000808080000000000000000000000000000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF000000
      0000808080000000000000000000000000000000000000000000000000008686
      8600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000868686000000000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF000080800000FFFF00008080000080800000000000000000000000
      00000000000000000000000000000000000066FF000033FF000066FF000033FF
      000033FF330033FF330033FF330033FF660033CC660033CC990000CCCC0000CC
      CC000099CC000066FF000066FF000033FF000033FF000000FF000000FF003300
      FF000000FF000000FF000000FF000000FF00000000000000000080808000FFFF
      FF00000000008080800000000000000000008080800080808000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFFFF00FFFFFF00FFFFFF000000
      0000000000008080800000000000000000000000000000000000000000008686
      8600FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF000000000086868600FFFF
      0000FFFFFF00868686000000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF000080800000FFFF000080800000808000000000000000
      00000000000000000000000000000000000033FF000033FF000033FF000033FF
      330033FF330033FF330033FF330000FF660000FF990000CC990000CCCC0000CC
      CC000099FF000099CC000066FF000066FF000033FF000000FF000000FF000033
      FF000000FF000000FF000000FF000000FF000000000000000000000000008080
      8000FFFFFF00FFFFFF008080800080808000FFFFFF0000000000808080008080
      8000FFFFFF00FFFF0000FF000000FFFFFF00FFFF0000FF000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000008686
      8600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF000000000000000000000000
      000086868600000000000000000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF000080800000FFFF0000808000008080000000
      00000000000000000000000000000000000033FF000033FF330033FF330000FF
      330000FF660000FF660000FF660000FF660000FF990000CC990000CCCC0000CC
      CC0000CCCC000099FF000099FF000066FF000066FF000033FF000033FF000033
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000808080008080800000000000000000008080800080808000FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008686
      8600FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000000000000000
      0000000000000000000086868600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000080800000FFFF00008080000080
      80000000000000000000000000000000000033FF000033FF330033FF330000FF
      330000FF660000FF660000FF660000FF660000FF990000CC990000CCCC0000CC
      CC0000CCCC000099FF000099FF000066FF000066FF000033FF000033FF000033
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF00FFFF0000FF000000FFFFFF00FFFFFF00FFFF0000FF00
      0000FFFFFF00FFFFFF0000000000808080000000000000000000000000008686
      8600FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF000080800000FFFF000080
      80008080800000000000000000000000000033FF000033FF330033FF330033FF
      330000FF660000FF660033FF660000FF660000CC990000FFCC0000CCCC0000CC
      CC0000CCCC000099FF000099FF000099FF000066FF000033FF000033FF000033
      FF000000FF000033FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000FFFFFF00FFFFFF00FFFF0000FF000000FFFFFF00FFFF
      FF00FFFFFF008080800000000000000000000000000000000000000000008686
      8600868686008686860086868600868686008686860086868600868686008686
      8600868686008686860086868600868686008686860086868600868686008686
      8600868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF00008080008080
      80000000800000008000000000000000000033FF330000FF330000FF330033FF
      660000FF660000FF660000FF660000FF990000FF990000CC990000FFCC0000FF
      CC0000CCCC0000CCFF000099FF000099FF000099FF000066FF000066FF000066
      FF000033FF000033FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00808080000000
      FF000000800000008000000000000000000033FF330000FF330033FF660000FF
      660000FF660000FF660000FF660000CC990000FF990000CCCC0000CCCC0000CC
      CC0000CCCC0000CCFF0000CCFF000099FF000099FF000099FF000099FF000066
      FF000033FF000033FF000033FF000033FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF0080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000FF660000FF660000FF
      660000FF990000FF990000FF660000FF990000FF990000CC990000CCCC0000CC
      CC0000CCCC0000CCFF000099FF0000CCFF000099FF000099FF000099FF000099
      FF000066FF000066FF000033FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF0000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008F1FFFFFFFFFFFC00700000076EFFF00
      0000FFBFEB00000076EFFF000000FF0005000000366FFF000000FF7E31000000
      060FFF000000FF7FF5000000000FFF000000FF0006000000080001000000FF7F
      EA000000B80001000000FC0014000000D80001000000F05FEA000000E8000100
      0000C06001000000F00001000000C06007000000F80001400800807007000000
      F80001000004806003000000F80001100000004003000000F800018000000000
      7F000000F80001FF000700007F000000F80001FF800F00007F000000F80001FF
      C01F00007F000000F80001FFC01F8000FF000000F80001FFC01F8000FF000000
      F80001FFE03FC001FF000000F80001FFF07FC001FF000000F80001FFFFFFF007
      FF000000F80001FFFFFFFC1FFF000000FFFFFFFFFFE3FFFFE3FFFFFFFC007FFF
      FFC1FFFFC1FFFFFFF8001FFFFF81FFFF81FFFFFFF0000FFE0701FE0701FFC1FF
      E00007F90023F90023FF007FC00007F78007F78007FC001FC00003EE000FEE00
      0FFC001F800003DC000FDC000FF8000F80000188000F88000FF8000F80000180
      000F80000FF00007800001000017000017F00007800001000017000017F00007
      810001000017000017F00007C40003000017000017F00007E200070000170000
      17F8000FF0000F400017400017F8000FFC401F400017400017FC001FFFC07F80
      000F80000FFC001FFFCFFF80000F80000FFF007FFFCFFFC0019FC0019FFFC1FF
      FFC7FFE003BFE003BFFFFFFFFFC7FFF00F7FF00F7FFFFFFFFFF7FFF804FFF804
      FFFFFFFFFFFFFFFE03FFFE03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFC00001FFFFFFF3E7CFF3E7CFADFFFD00007FF2A54FF2A54FB3119D
      00003FFFFFFFFFFFFFB3776D00001FFBFFDFFBFFDFAD770D00000FFFFFFFFFFF
      FFB7717D000007F2FFDFF2FFDFA3776D000003F3BFFFF3BFFFA9719D000001FF
      FFCFFFFFCFBDFFFD000000FFFFCFFFFFCF80000300007FFFE7FFFFE7FFFFFFFF
      00007F7FE7DFFFE7DFC0000300007FBDBFFFFDFFFFC0000300007FD97FDFF9FF
      DFC0000300007FE0FDFFF1FDFFC0000381FFFFE0074FE0074FC00003C3FF83C0
      07CFC007CFC00003FFFFC38007FF8007FFC00003FFFFE3C007FFC007FFC00003
      FFEFD3C17FFFE1FFFFC00003FFF7BBB1BFFFF1FFFFC00003FFF87F79DFFFF9FF
      FFC00003FFFFFFFDFFFFFDFFFFFFFFFF800001FFFCFFFFFFFFFFFFFF000000FF
      F27FE000073FFFFF000000FFCE1FFE007F0FFFFF000000FF3E0FFE007F87FFFF
      000000FCFC0380000183FFFF000000F3F2017FFFFEC1FFFF000000CFCA017FFF
      FEC0FFFF0000009F3A01600006E07FFF0000009CF301600006F03FFF00000093
      CD01600006F81FFF0000008FBE00600006FC0FFF0000001CF300600006FE07FF
      00000013CF40600006FF03FF0000000F3C08600006FF81FF0000002CF0256000
      06FFC0FF00000097C003600006FFE07F000000CB0013600006FFF03F000000E0
      400B600006FFF81F000000F31007600006FFFC0F000000FFC000600006FFFE07
      000000FFF003600006FFFF03000000FFFC077FFFFEFFFF83000000FFFE1F7FFF
      FEFFFFC7800001FFFF7F800001FFFFEF00000000000000000000000000000000
      000000000000}
  end
  object GridPM: TPopupMenu
    Tag = 10000000
    Left = 629
    Top = 309
    object N31: TMenuItem
      Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072' '#1090#1072#1073#1083#1080#1094#1099
      OnClick = N31Click
    end
    object N32: TMenuItem
      Caption = #1062#1074#1077#1090' '#1079#1085#1072#1095#1077#1085#1080#1081
      OnClick = N32Click
    end
    object N34: TMenuItem
      Caption = #1062#1074#1077#1090' '#1087#1077#1088#1080#1086#1076#1072
      OnClick = N34Click
    end
  end
  object IL1: TImageList
    Height = 32
    Width = 32
    Left = 408
    Top = 106
    Bitmap = {
      494C010114001800040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F4F3F1FFD5CEC6FFC0B3A5FFDAD5
      CFFFF2F0EEFFFEFEFEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000300A30004027
      4000452945004428440044284400442844004428440044284400442844004428
      44004428440044284400452945003E263E00231023004A034A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F9F8F7FF000000000000
      0000000000000000000000000000C0B7AAFFE3DFDBFFC0B4A6FFBFB19FFFC4BA
      AFFFE3DFDBFFCDC3B7FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006D656D00E6E6
      E600AAAAAA00B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3B300B3B3
      B300B3B3B300B3B3B300B3B3B300CECECE00979797005A2D5A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D8D2CAFFCDBFACFFDCD6CEFF0000
      0000000000000000000000000000C4BCB2FFBCB2A5FFE3DFDBFFBCAF9DFFE3DF
      DBFFC1B5A5FFC2B6A8FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000665B66006B6B
      6B00333333000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003F3F3F008A8A8A0066356600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFEFF0000
      000000000000FCFEFFFFF9FDFFFFFDFEFEFFCFCBC3FFC3B7A8FFCAC4B8FF0000
      0000000000000000000000000000E3DFDBFFBCB2A6FFBAAEA0FFBAAFA0FFBCB0
      9EFFBCB1A1FFE3DFDBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000675C67003333
      33005A5A5A00D5D5D500CBCBCB00C9C9C900C9C9C900C9C9C900C9C9C900C8C8
      C800D0D0D000B2B2B20033333300333333008383830063326300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8FDFEFFEBFAFEFFF7FD
      FEFFFBFEFEFFF0FBFEFFC4EAFDFFF2FCFEFFE1F0F4FFC2CECDFFD3ECF3FFFAFD
      FEFF000000000000000000000000C9C2BBFFC1B9B0FFE3DFDBFFBAB0A4FFE3DF
      DBFFBEB4A7FFC0B6A9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000443944003333
      3300D8D8D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00333333006C6C6C005D5D5D008181810063326300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFFFFFDFEFFFFFDFEFEFFEEFBFEFFA4D8FBFFE3F8
      FEFFEEFAFEFFDCF7FEFF80BFF9FFE0F7FEFFEEFAFEFFE1F8FEFFA8DBFCFFF3FC
      FEFFF5F8F9FFE8EAE9FFFDFEFEFFD8D3CEFFE3DFDBFFCBC4BDFFC0B7AEFFCBC4
      BDFFE3DFDBFFD7D1C9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B6B6B6000050
      5000000000000000000000000000000000000000000000000000DADADA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000033333300D8D8
      D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0033333300616161007B7B7B005A5A5A008282820063326300335368003D5B
      6E0037566B002B4B640021435D0022435F00314F67003D5C6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000C0C0C000FFFFFF0000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFEFFFFE5F8FEFFEEFBFEFFF2FBFEFFE3F7FEFF80C2F9FFABE2
      FDFFC3E9FDFFC2EEFEFF4C8CF3FFC6EFFEFFC1E9FDFF92D1FBFF98D4FCFFBDD9
      DEFFBDC9C6FFBDBFB2FFC0D8DEFFFAF9F9FFF6F5F4FFE1DDD9FFCDC7C0FFE3DF
      DBFFF5F4F3FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E9E9E00007373000073
      730080808000000000000000000000000000F0CAA60080808000B6B6B6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300CACACA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333
      330051515100848484007A7A7A005A5A5A00828282002F4C61008BA5B80088A6
      BA007EA0B7007998B3007B9AB00082A1B9008CA8BB0082A0B30024435B002143
      5E00000000000000000000000000000000000000000000000000000000008080
      800000000000FFFFFF0000000000FFFFFF00C0C0C000FFFFFF00000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FDFEFFCFF1FEFF97D3FBFFD7F4FEFFBFE7FDFF8AD0FBFF56A2
      F6FF80CCFBFF8DD6FCFF3579F2FF88D5FCFF8DD6FCFF4589F4FFA0DEFDFF9FBD
      CDFFAAB8B0FFA9B6B7FFB6BAB0FFF2F6F7FF000000000000000000000000FEFE
      FEFFF2EFEDFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAA0000737300008080006E6E
      6E00868686000000000000000000A4A0A0008686860000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300E0E0E000D4D4
      D400D5D5D500D5D5D500D5D5D500D5D5D500D4D4D400E5E5E500A3A3A3004949
      49007D7D7D0085858500787878005A5A5A00304E620094B0C30098B9D00093B8
      D40095BAD4009BBDD8009DBFD8009BBFD50098BCD2008CAFC9007DA0BD007F9D
      B0003B596C000000000000000000000000000000000000000000808080000000
      0000FFFFFF00C0C0C00000000000C0C0C000FFFFFF00C0C0C000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCFE
      FFFFFAFDFEFFF5FCFEFFDFF7FEFF6FB6F8FF81CAFBFF80CAFAFF7BCCFBFF3181
      F2FF45AEF7FF37A2F6FF2685F1FF38A7F6FF49AEF7FF347DF2FF7ECFFCFF8EB4
      CFFF889DB9FFA2B0B5FFB0B6ADFFEAF4F6FFFAFDFEFFFCFEFFFFF8FAFAFFCAC0
      B4FFCABDA8FFD7CFC7FF00000000000000000000000000000000000000000000
      00000000000000000000000000009292920000737300009696006E6E6E008080
      80009E9E9E00A4A0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C414C004C4C4C004949
      4900494949004949490049494900494949004949490050505000272727004343
      43008989890082828200787878003251660097B5C8009FC0D8009EC6E2009DC8
      E500A7CDEB00ACD1ED00ABCEEA00A6CBE600A3CAE500A0C6E2009ABFD9008EB1
      C800809EB700204360000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFEFFFFE0F6
      FEFFE1F8FEFFE1F7FEFFC0E6FDFFA5E2FDFF3787F3FF54B2F8FF2290F1FF1383
      EEFF1683EEFF1C87EFFF238CEFFF2A92F1FF2B94F2FF2793F2FF2C9EF5FF63AD
      ECFF5E8ED8FFA5BBBFFFB0D5EBFFDDF5FCFFDCF6FEFFE5F8FEFFF3F8F9FFC2B9
      AEFFC2B6A6FFC8BEB1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000007373000096960092929200007373008686
      8600A4A0A000B6B6B6000000000000000000000000000000000000000000F0CA
      A600DADADA006262620000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDFDF003333
      33006B6B6B008585850078787800405F7400A2C4DC00A0C6E4002A5575003661
      8100B0D9F600B2DBF800AFD7F300ADD1EF00A8CEED00A8CFEB00A5CCE9009AC0
      DB0081A6C20035546D0000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000C0C0C00000000000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFEFFFFE9FA
      FEFF7FC1F9FF8AD0FBFFAAE3FDFF5EB8F8FF3CA1F5FF1381EEFF1383EEFF1384
      EEFF1284F0FF1284EEFF1282EFFF1F85EAFF298AEAFF3092EFFF4F9CDDFF4D92
      D2FF60AEE6FF60B1F3FFADE6FEFF7FC2F9FF90CBFBFFEFFBFEFFF7FBFCFFDBD7
      D3FFC0B7AEFFE0DBD6FF00000000000000000000000000000000000000000000
      000000000000969600000073730000B9B9000000FF0000B9B9007A7A7A009E9E
      9E00B6B6B600CECECE00000000000000000000000000A4A0A0007A7A7A00A4A0
      A000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300F6F6F600CACA
      CA004949490038383800404040003D3D3D003838380098989800FFFFFF003333
      33005858580086868600787878003E617900A0C6E4009AC5E6002B557800B0D9
      F500BBDFFB00AFD7F600ADD7F300AAD4F000A9D3ED00AAD1EF00A8CFEC00A2C6
      E20095BAD40097B5C90032526B000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFEFEFFF0FB
      FEFFD0F3FEFF61B3F8FF479CF6FF3DA8F6FF1387EFFF138BF1FF128EF1FF1290
      F2FF1292F2FF1C94EEFF74A7C9FF99A8A8FF98A4A0FF99A2A1FFA5A295FFA9A7
      94FFA1A596FF9AB4B6FF7DA0C7FF86A6C8FFA9DADFFFBFE2E7FFF6F9F9FFFEFD
      FDFFFCFCFBFF0000000000000000000000000000000000000000008080000080
      800000808000007373000000FF000000FF0048FFFF0000B9B9006E6E6E009E9E
      9E00CECECE00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000033333300D0D0
      D00076767600D9D9D900EEEEEE00EBEBEB00E3E3E30076767600C5C5C500DADA
      DA0033333300787878007B7B7B003258740096C0E1002B557800B0D8F500BEE4
      FD00ACD7F600ABD3F300AED8F500ACD5F200AAD3F100ABD4F000A8D1EC00A5CC
      E900A3C7E30094BBCF00224663000000000000000000C0C0C000000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00C0C0C000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000008080800080808000000000000000
      000000000000000000000000000000000000FEFEFEFFF8FDFEFFF0FBFEFFE5F7
      FEFFB8E3FDFF8BD5FCFF47ACF7FF138DF0FF1394F2FF1198F3FF139BF3FF2FA2
      E6FF32A2E6FF80B7CFFFB3C0B7FFB1B29EFFB2B3A1FFB6BBADFFBABFB8FFBCC2
      BCFFC0C5BDFFB7BEB8FFC1C7BBFFB9B197FFAB9571FFB09975FFB7A98CFFB8A9
      8DFFD2C9B6FFDCD4C5FFF4F2EDFF00000000000000000000FF000000FF000000
      FF00007373000000FF000000FF008EFFFF00B1FFFF0000B9B900005050000050
      5000CECECE00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000033333300E8E8
      E8007A7A7A00BDBDBD00FFFFFF00FFFFFF00FEFEFE00B8B8B800A2A2A200EAEA
      EA0033333300686868007A7A7A005A5A5A0028507100AED5F200BFE5FE00B5DB
      F700A5CEEE00ABD4F200ADD6F300ADD6F300ACD4F100ABD4F200ABD4F000A8D1
      EE00A7CFEA008FB7D4002B516C00000000000000000080808000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C0C0C000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808080000000000080808000000000008080800080808000808080000000
      000000000000000000000000000000000000FDFEFEFFE5F8FEFF9FD9FBFF96D9
      FCFF9EDFFDFF75CDFBFF1795F1FF1298F3FF119EF4FF1BA4F1FF7DAEBBFFA1B0
      A2FFADC0B9FFC0D5D3FFBECABFFFBAC2B3FFBAC7BDFFBDCAC5FFBFCCCBFFBFCB
      CCFFBCC2BEFFBEC3BCFFBEC3B8FFBBB296FFBBB093FFBAAC92FFB9A98CFFC4B0
      90FFBFA883FFC8AF8BFFC9B99DFFF8F7F4FF000000000000FF008EFFFF008EFF
      FF00007373006BFFFF00B1FFFF00B1FFFF00D4FFFF00AAAAAA007A7A7A007A7A
      7A00CECECE00E6E6E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000160B16003333
      3300DFDFDF0055555500484848004F4F4F00565656003B3B3B0042424200F9F9
      F9009C9C9C003333330079797900244764009FC4DE00BADFF700B5DCF800A1CB
      EC00A2CCED00B1D9F600AED6F400ADD5F300ACD5F300ACD5F200ABD5F200AAD3
      EF00A6CDEC009DC4DF003F637A000000000000000000C0C0C000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00C0C0
      C000000000000000000000000000000000000000000000000000000000008080
      8000000000008080800000000000C0C0C0000000000080808000808080008080
      800000000000000000000000000000000000FEFEFEFFF4FCFEFFDBF7FEFF8DD4
      FBFF4AA5F7FF339BF5FF129AF2FF12A1F3FF0FA7F5FF66B8D5FFAFB8A1FFC1CD
      BDFFC9DDD6FFCAE2E0FFC8DCD6FFC7D3CCFFC4D6D2FFC0D4D5FFC3D6DAFFBCC8
      C3FFB8BBAFFFBFC5C0FFBEC9C7FFBABDB7FFC0C3BEFFD0CDBDFFD9CDB5FFDDD0
      B7FFD7C8ABFFD6C29FFFD2BC99FFEDE9E0FF000000000000FF00D4FFFF00D4FF
      FF0000737300F0FBFF00FFFFFF00FFFFFF00FFFFFF00AAAAAA00808080009292
      9200FFFFFF00FFFFFF0000000000000000000000000086868600808080007A7A
      7A006E6E6E006E6E6E0062626200626262000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E434E003333
      3300DADADA00EFEFEF00D8D8D800DBDBDB00DADADA00DADADA00EDEDED00FFFF
      FF00FFFFFF003333330021415B008FAFC700ADCFE600B1D7F2002E597A009CC7
      EA00B3DBF700B8DEF900ADD3F500ACD4F300ACD5F300ADD5F200ACD5F200A9D1
      F100A8CFEF00ABD1E9004669800000000000000000008080800000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000000000000000000000000000000000000000000080808000C0C0
      C0008080800000000000C0C0C000FFFFFF00C0C0C00000000000808080008080
      80008080800000000000000000000000000000000000FAFDFEFFECF9FEFFB9E7
      FDFF87D7FCFF31ACF5FF12A0F3FF10A9F6FF10B1F7FF93C8CDFFBEC2A9FFD6DD
      CFFFCFE4DFFFCCE7E5FFCAE1DFFFC9DED9FFCBE1E0FFC8E0E3FFC7DEE3FFC0CC
      C9FFC7CECDFFCBD5DBFFC4D2D7FFC9D4CFFFD7DDD3FFE0DDCFFFE4DDC9FFE5DD
      C8FFE3D7C2FFD9C8ABFFD5C5A8FFF4F2ECFF000000000000FF00B1FFFF00B1FF
      FF00007373008EFFFF00B1FFFF00D4FFFF00FFFFFF00AAAAAA0086868600A4A0
      A000DADADA00F2F2F20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005F545F003333
      330078787800B0B0B000A6A6A600A6A6A600A6A6A600A7A7A700A5A5A5009F9F
      9F00AAAAAA00203F590089A8BE00A6C6DC00ADD2EC002D5879002A557700B2DA
      F600BEE4FE00AAD3F200A0CAEB00AFD6F400AFD7F500ABD4F100A9D1F200A9D1
      F100B0D5F5004F728E0000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000080808000C0C0C0008080
      800000000000C0C0C000FFFFFF000000000000000000C0C0C000000000008080
      800080808000808080000000000000000000FBFEFEFFF0FBFEFFDDF6FEFFC1ED
      FEFF85D6FCFF20A6F4FF10A8F4FF16B2F6FF2BC3F9FF7FD0DFFFD0D3C2FFE3E5
      D6FFD6EAE4FFD1ECEAFFCEE7E5FFCDE5E3FFCDE6EAFFCFE8EDFFCBE4EDFFD1E3
      E8FFD2E0E5FFD3E0E8FFD3E0E8FFD9E4E6FFE4EAE5FFE6E6D9FFE7E4D3FFEAE3
      D0FFEBE3D1FFE0D3BCFFE7E3D6FF00000000000000000000FF000000FF000000
      FF00007373000000FF008EFFFF008EFFFF00B1FFFF00AAAAAA00626262008080
      8000B6B6B600DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000605560003333
      3300525252007C7C7C0074747400747474007474740074747400747474007474
      7400203F59008AA9C000A6C7DD00ACD1EB002D5878002A557700B2DAF600BFE5
      FE00AAD3F2009AC5E800AFD7F400BDE4FD00ABD6F200A8D1F000ABD4F200B3DB
      F700BCE2FB003D638000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000C0C0C000808080000000
      0000C0C0C000FFFFFF000000000000000000C0C0C00000000000C0C0C0000000
      000080808000808080008080800000000000F6FDFEFFBBE9FDFF7DC9FAFF50AD
      F8FF43A9F9FF18A7F4FF12AEF5FF33C3F9FF39CEFAFF45D4F7FFAFE0E1FFEAF1
      EDFFE6F1EDFFDAEFECFFD5F1F0FFD3EEEEFFD3EEF0FFD5F0F4FFD5EDF5FFDAED
      F5FFD5E8F1FFD4E5EFFFD4E2ECFFDCE6EEFFEAEFF2FFE3E7EBFFE1E4E0FFEAE7
      DFFFF2EEE2FFE0DAC6FFFCFBF9FF000000000000000000000000008080000080
      800000808000008080000000FF006BFFFF008EFFFF0000B9B9007A7A7A00AAAA
      AA00CECECE00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000564B56003333
      3300CDCDCD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002040
      5A008DAEC500ADCFE600B2D9F4002E597A002A557700B2DAF600BFE5FE00AAD3
      F20028537600AFD7F400C0E5FE00AED7F400A0C9EA00A6D1F000B2D9F800BAE0
      FA00426986000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF000000000080808000C0C0C000FFFFFF0000000000FFFFFF000000
      000000000000000000000000000080808000C0C0C0008080800000000000C0C0
      C000FFFFFF0000000000FFFFFF000000000080808000C0C0C00000000000C0C0
      C00000000000808080008080800000000000FBFEFEFFEEFBFEFFDAF6FEFFBEED
      FEFF85D7FCFF1FAFF5FF1EB7F8FF45CCFAFF45D5FCFF44DBFCFF4BE2FCFF6AE6
      F3FFC3ECEAFFEAF6F3FFE3F6F5FFE0F6F7FFE1F6F9FFE3F6FAFFE8F7FCFFDFF0
      F9FFD9EBF5FFD6E8F2FFD5E3EEFFDDE8ECFFF0F4F2FFF4F4F0FFF6F4EEFFF9F7
      F3FFF1EEE4FFEAE5DAFF00000000000000000000000000000000000000000000
      0000000000000000000000B9B9000000FF006BFFFF0000B9B9007A7A7A009E9E
      9E00A4A0A000B6B6B600000000000000000000000000808080006E6E6E00FFB8
      4800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000574C57003333
      3300CBCBCB00FCFCFD00D2D2C700D1D1BC00D2D2BE00D1D1BC0020405A0090B0
      C800B2D6ED00B6DDF9002E597A002A557700B2DAF600BFE5FE00AAD3F2002853
      7600AFD7F400C0E5FE00AED7F4009BC6E800A3CDEE00B6DDF800BBE4FE00436B
      8800FF01FF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000080808000C0C0C000FFFFFF00000000000000
      0000000000000000000080808000C0C0C0008080800000000000C0C0C000FFFF
      FF0000000000FFFFFF00FFFFFF0000000000C0C0C00080808000C0C0C0000000
      0000C0C0C00000000000808080000000000000000000FAFDFEFFEBF9FEFFB9E7
      FDFF7FD3FCFF35BBF8FF32C1F9FF50D1FCFF4FDAFCFF53E2FDFF5CEBFEFF5CF0
      FEFF7FECF3FFE2F4F1FFF3FCFAFFEFFCFCFFE3F8FCFFE7F9FDFFF9FDFFFFEAF7
      FCFFE0F0F7FFDCEBF4FFDBE7F1FFE5EFF1FFEDF1F0FFE6E5DCFFC7E0E2FFDDE6
      E0FFF0EEE8FFFEFEFEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000DCDC000000FF000000FF00007373009E9E
      9E00B6B6B600CECECE0000000000000000000000000000000000000000000000
      00006E6E6E00FF8F6B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000574C57003333
      3300D6D6D700BDBDB800101029000000570000005A0021415C0090B1C900B2D6
      ED00B6DDF9002E597A006868680040678400BFE5FE00AAD3F20028537600AFD7
      F400C0E5FE00AED7F40028537600A3CDEE00B8DFFA00BFE5FE0040678400FF01
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008080800000000000000000000000
      00000000000000000000C0C0C0008080800000000000C0C0C000FFFFFF000000
      0000FFFFFF0000000000FFFFFF000000000080808000C0C0C000808080000000
      0000FFFFFF00C0C0C000000000000000000000000000F6FDFEFFDFF7FEFF9AE1
      FDFF55BFFAFF37B8F7FF42C7F8FF61D6FCFF58DCFCFF61E5FDFF6BEEFEFF6EF2
      FFFF6BF3FEFF85EDF4FFBFEEF1FFD3F2F4FFDFF5F9FFE3F8FDFFFEFFFFFFFCFD
      FFFFF1F8FCFFEBF3F9FFE7EFF5FFE5EEF1FFD6E1E6FFA9D3E2FFE3F8FEFFF9FD
      FEFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000B9B9000000FF00007373009292
      9200868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000574C57003333
      3300D6D6D600BDBDB70011118E000000F7002345610096B8D000B4D8EF00B6DD
      F9002E597A0033333300686868005A5A5A0038617F0028537600AFD7F400C0E5
      FE00AED7F40028537600A3CDEE00B8DFFA00BFE5FE003F678400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000008080800000000000C0C0C000FFFFFF0000000000FFFF
      FF000000000000000000C0C0C00000000000C0C0C00080808000C0C0C0000000
      000000000000FFFFFF00C0C0C00000000000FDFEFEFFE7F9FEFF9FDFFCFF89D8
      FCFF90DDFDFF72D2FCFF40C5F8FF76DBFCFF73E1FDFF6BE5FCFF74EDFEFF7AF1
      FFFF78F3FFFF6EF1FFFF61ECFEFF51E3FDFF82E0F5FFDBF1F6FFF7FCFDFFFEFE
      FFFFFCFEFEFFE7F1F6FF97C9E6FF7BCCF2FF93DAF9FF84CFFBFFA7DEFCFFEEFB
      FEFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B9B900929292008080
      8000808080000000000000000000DC920000FF8F6B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000574C57003333
      3300D6D6D600BDBDB70011118C000000F700395D7700BCE1FA00B6DDF9002E59
      7A00FFFFFF0033333300686868005A5A5A00828282003C648200C0E5FE00AED7
      F40028537600A3CDEE00B8DFFA00BFE5FE003F67840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000FFFFFF0000000000FFFFFF000000
      0000000000000000000000000000FFFFFF0000000000C0C0C000808080000000
      0000C0C0C00000000000000000000000000000000000F8FDFEFFEEFBFEFFE2F7
      FEFFB6E6FDFF83D6FDFF4EC9FAFF69D6FAFF87E3FDFF8BE8FCFF8EEDFEFF8AEF
      FDFF82F0FDFF78EEFEFF6AEAFDFF55DFFCFF44D4FCFF58CFF5FF8BD3F1FF95D2
      F0FF85C7EDFF48A6ECFF61C6FAFF87D2FCFFC2E9FDFFE5F8FEFFEFFBFEFFF9FD
      FEFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000B9B9008080
      800086868600000000000000000000000000DC92000062626200FFAB8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000574C57003333
      3300D7D7D800BBBBB20010104D000000A5000000A400446B86002E597A007D7D
      8200FFFFFF0033333300686868005A5A5A0082828200633263003C6482002853
      7600A3CDEE00B8DFFA00BFE5FE003F6784000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000FFFFFF0000000000FFFFFF00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000FCFEFEFFEEFA
      FEFFCEF2FEFF70D2FCFF46C6FCFF53CFF9FF80DFFCFF93E7FDFF96EBFEFF9CED
      FEFF9BEEFEFF93ECFCFF7FE6FCFF68DEFCFF54D2FCFF45C8FAFF34B9F8FF0FA2
      F4FF1096F2FF47BBF9FF45B1F8FF87D5FCFFD9F5FEFFF3FBFEFFFDFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000073
      730000000000000000000000000000000000000000000000000096620000FF8F
      6B00FFC66B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000574C57003333
      3300CFCFD000E6E6E600828278007F7F6D008383710082826E007B7B6D00C5C5
      C500FFFFFF0033333300686868005A5A5A008282820063326300000000000000
      0000466D87004C728B003F678400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C00000000000FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000C0C0C0000000000000000000000000000000000000000000FBFEFFFFE8FA
      FEFF86D7FCFF7CD6FCFFA3E4FDFF5ECCFBFF59D0FAFF81DFFCFF98E7FDFF98E8
      FCFF94E8FEFF8CE6FDFF82E2FDFF78DCFCFF6CD4FCFF5CCAF9FF2DB1F5FF1DA2
      F3FF47BEF9FF64C7FBFFA6E4FDFF76CAFBFF9BDDFCFFEFFBFEFFFDFEFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000564B56003333
      3300CBCBCB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0033333300686868005A5A5A008282820063326300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00C0C0C0000000000000000000000000000000000000000000FBFEFFFFDBF6
      FEFFD5F5FEFFDCF5FEFFBAE7FDFFA4E4FDFF41CFFCFF57D2FBFF69D6FAFF86E0
      FCFF92E3FCFF92E2FCFF8ADFFCFF7DD9FCFF63CCFAFF44BCF7FF32B3F6FF51C7
      FBFF4DC1FBFFABE5FDFFC3E9FDFFE0F7FEFFD1F3FEFFE7F9FEFFFDFEFFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A4F5A003333
      3300A1A1A100D7D7D700CACACA00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00D6D6D600333333006E6E6E00595959008282820063326300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C00000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000FEFEFFFFFAFE
      FFFFF8FDFEFFF4FCFEFFDDF6FEFF79D8FCFF78D9FDFF82D8FDFF74D8FCFF44D3
      FCFF58CFFAFF58CEF9FF51CDF9FF4BC7F9FF4CC7F9FF3BC7FAFF7AD5FDFF8FDB
      FDFF69CBFBFF90DCFDFFE2F7FEFFF6FCFEFFF9FDFEFFFBFEFFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000665B66003333
      3300101010002A2A2A0025252500262626002626260026262600262626002626
      2600262626002E2E2E0055555500616161008080800063326300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F8FDFEFFD2F4FEFF8DDEFCFFD2F3FEFFB9E7FDFF8EE0FDFF57D5
      FCFF80D9FCFF87DDFDFF3FD2FCFF85DBFCFF8CDCFDFF4CC9FCFFA2E4FDFFBDE8
      FDFFD2F3FEFF86D5FCFFE3F8FEFFFAFDFEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000625762006A6A
      6A004C4C4C009A9A9A008E8E8E008D8D8D008D8D8D008D8D8D008D8D8D008D8D
      8D008E8E8E008989890033333300494949008888880065346500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFEFFFFDCF6FEFFEBFAFEFFF0FBFEFFE2F7FEFF85DDFDFFA3E7
      FDFFBCE9FDFFBDEDFEFF52CDFBFFC1EDFEFFBDE9FDFF8EDEFCFF9DE4FDFFE7F8
      FEFFF1FBFEFFEAFAFEFFE2F8FEFFFCFEFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006F646F008080
      8000111111003737370035353500343434003434340034343400343434003434
      3400343434003636360029292900333333009797970067366700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FCFEFFFFFCFEFFFFFCFEFEFFEDFBFEFFA0E5FDFFE0F8
      FEFFECF9FEFFDAF6FEFF7FDAFCFFDDF6FEFFECF9FEFFDBF7FEFFA4E5FDFFF1FC
      FEFFFDFEFEFFFCFEFFFFFCFEFFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004C4C4C00CECE
      CE00B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700BABABA00C1C1C1006E6E6E00401E4000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7FDFEFFE5F9FEFFF5FC
      FEFFFAFDFEFFEEFBFEFFBEEEFEFFF1FCFEFFFBFEFEFFF5FCFEFFE8FAFEFFF9FD
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFFFFFDFEFEFFFEFE
      FEFF00000000FBFEFEFFF6FDFEFFFCFEFEFF00000000FEFEFEFFFDFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007B7B00007B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007B7B0000FFFF0000FFFF00007B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      00007F7F00000000000000000000000000007F7F00007F7F0000000000000000
      00007F7F00007F7F000000000000000000007F7F00007F7F0000000000000000
      00007F7F00007F7F000000000000000000007F7F00007F7F0000000000000000
      00007F7F00007F7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FFFFFF00FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B00007B7B0000FFFF0000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F0000000000000000000000000000000000007F7F0000000000000000
      0000000000007F7F00000000000000000000000000007F7F0000000000000000
      0000000000007F7F00000000000000000000000000007F7F0000000000000000
      0000000000007F7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B000000000000FFFF0000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000000000
      000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B000000000000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF0000000000000000000000FFFF
      FF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000808080008080800000000000000000008080
      8000808080008080800080808000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF0000000000000000000000FFFFFF00FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007B7B0000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000000000008080800000000000808080008080800080808000808080000000
      0000000000008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C0C0C000C0C0C000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000007B7B000000000000FFFF0000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000008080800000000000808080008080800080808000808080008080
      8000808080000000000000000000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000007B7B000000000000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000008080800000000000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF00C0C0C000C0C0C000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000008080800000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007B7B0000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00C0C0C000C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000000000FFFF
      FF0000000000FF00000000000000000000000000000000000000000000000000
      000000000000007B7B000000000000FFFF0000FFFF00007B7B0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF008080800080808000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF0000000000FF000000000000000000000000000000000000000000
      000000000000007B7B000000000000FFFF0000FFFF00007B7B0000FFFF000000
      00000000000000000000000000000000000000000000000000007B7B7B00BDBD
      BD00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF800000FF8000000000FF000000
      00000000000000000000000000000000FF00FF800000FF8000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000FF0000000000
      0000FF00000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF00C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF008080800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
      FF0000000000FFFFFF0000000000FF0000000000000000000000000000000000
      00000000000000000000007B7B000000000000FFFF00007B7B0000FFFF000000
      000000000000000000000000000000000000000000007B7B7B00000000000000
      000000000000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      00007F7F000000000000000000000000000000000000FF8000000000FF000000
      000000000000000000000000FF000000FF00FF800000FF8000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000FF00000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00808080000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000007B7B000000000000FFFF00007B7B00007B7B000000
      0000000000000000000000000000000000007B7B7B0000000000000000000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00000000000000000000000000000000000000000000FF8000000000
      FF00000000000000FF000000FF00FF8000000000000000000000FF8000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008080800000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000FF000000FF0000000000
      000000000000C0C0C000C0C0C0000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      800000000000FFFFFF00FFFFFF008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000007B7B000000000000FFFF0000FFFF00BDBDBD00007B7B000000
      00000000000000000000000000007B7B7B000000000000000000000000000000
      00007B7B7B000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF80
      00000000FF000000FF00FF80000000000000000000000000000000000000FF80
      00000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00000000000000000080808000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000FF000000FF0000000000
      0000C0C0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0C000000000000000
      0000FFFFFF008080800080808000FFFFFF00FFFFFF00FFFFFF00808080000000
      00008080800080808000FFFFFF00000000000000000000000000000000000000
      0000007B7B000000000000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00007B
      7B0000000000000000007B7B7B00000000000000000000000000000000000000
      000000000000008484000000000000000000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF800000FF80000000000000000000000000000000000000000000000000
      0000FF800000FF8000000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000808080000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000007B
      7B000000000000FFFF0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF0000FF
      FF00007B7B00000000000000000000000000000000000000000000000000FF00
      0000000000007B7B7B00008484000084840000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF800000FF8000000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF000000FF0000000000000000008080800000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000000000000000000000000000FF000000000080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C00000000000000000000000000000FFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      000000FFFF0000FFFF00BDBDBD007B7B7B00BDBDBD007B7B7B00BDBDBD0000FF
      FF0000FFFF00007B7B0000000000000000000000000000000000FF000000FF00
      00007B0000000000000000848400008484000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF8000000000FF000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00808080000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000FF000000FF
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000008080800080808000000000000000000080808000808080008080
      80008080800080808000000000000000000000000000FF000000FF0000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C000000000000000000000FFFF0000000000C0C0C00000000000FFFF
      FF0080808000000000008080800080808000FFFFFF0000000000000000000000
      00000000000000000000808080000000000000000000007B7B000000000000FF
      FF0000FFFF00BDBDBD007B7B7B00BDBDBD007B7B7B00BDBDBD007B7B7B00BDBD
      BD0000FFFF0000FFFF00007B7B0000000000000000000000000084FFFF0084FF
      FF0084FFFF00000000000000000000848400008484000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF8000000000FF000000FF00000000000000
      00000000000000000000000000000000000080808000FFFFFF0080808000FFFF
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000080808000808080000000000000000000FFFFFF00FFFF
      FF00000000008080800000000000808080008080800000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0C0C0000000000000FFFF0000000000C0C0C000FFFFFF0000000000FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000008080
      80000000000000000000000000000000000000000000007B7B000000000000FF
      FF0000FFFF0000FFFF00BDBDBD0000FFFF00BDBDBD0000FFFF00BDBDBD0000FF
      FF00BDBDBD0000FFFF00007B7B000000000000007B0084FFFF0084FFFF0084FF
      FF0084FFFF0084FFFF0084FFFF00000000000084840000000000000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF800000FF8000000000FF000000
      00000000000000000000000000000000000080808000FFFFFF00000000008080
      8000000000000000000000FF000000FF00000000000000000000000000000000
      000080808000808080000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000080808000000000000000000080808000808080000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000000000C0C0C000FFFFFF00000000000000000000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B000000000000FF
      FF0000FFFF00BDBDBD0000FFFF0000000000000000000000000000FFFF00BDBD
      BD0000FFFF0000FFFF00007B7B00000000000000FF0084FFFF0084FFFF0084FF
      FF0084FFFF0000FFFF0084FFFF00000000000000000000000000000000000000
      000000000000BDBDBD0000000000000000000000000000000000000000007F7F
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF8000000000FF000000
      0000000000000000000000000000000000000000000080808000FFFFFF000000
      0000808080000000000000000000000000000000000000000000808080008080
      80000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFF
      FF00FFFFFF000000000080808000808080000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      00000000000000000000000000000000000000000000007B7B000000000000FF
      FF0000FFFF0000FFFF00000000007B7B7B0000000000000000000000000000FF
      FF00BDBDBD0000FFFF00007B7B00000000000000FF0084FFFF0084FFFF0084FF
      FF0084FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000BDBDBD000000000000000000000000000000000000000000000000000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000008080800000000000000000008080800080808000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007B7B000000000000FF
      FF0000FFFF00BDBDBD000000000000000000BDBDBD000000000000000000BDBD
      BD0000FFFF0000FFFF00007B7B00000000000000FF0084FFFF0084FFFF0084FF
      FF000000000084FFFF0000FFFF0000000000000000000000000000000000BDBD
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF00FFFFFF008080800080808000FFFFFF0000000000808080008080
      8000FFFFFF00FFFF0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF00
      0000FFFFFF00FFFFFF0000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007B7B000000
      000000FFFF0000FFFF00000000007B7B7B00000000007B7B7B000000000000FF
      FF0000FFFF00007B7B00000000000000000000007B0084FFFF0084FFFF0084FF
      FF0084FFFF0084FFFF0084FFFF00000000000000000000000000BDBDBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000008080800080808000FFFFFF000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFF0000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00007B
      7B000000000000FFFF0000FFFF000000000000000000000000000000000000FF
      FF00007B7B0000000000000000000000000000000000007B000084FFFF0000FF
      000000FF000000000000000000000000000000000000BDBDBD00000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF00FFFF0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFF0000FF000000FFFFFF00FFFFFF000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B00007B7B00000000000000000000000000000000000000000000000000007B
      7B000000000000000000000000007B7B7B000000000000000000007B000000FF
      000000000000000000000000000000000000BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FF00
      0000FFFFFF00FFFFFF00FFFFFF00808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000007B7B00007B7B00007B7B00007B7B00007B7B0000000000007B
      7B00000000000000000000000000000000007B7B7B0000000000000000000000
      0000000000000000000000000000BDBDBD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFF0000FF000000FFFFFF00FFFF
      FF00FFFFFF008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000000000000000000000000000007B7B7B00000000000000
      00007B7B7B0000000000000000000000000000000000000000007B7B7B000000
      00000000000000000000BDBDBD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00FFFFFF00FFFFFF008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B0000000000000000000000000000000000000000000000
      000000000000BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300E9E9
      E900E7E7E700ECECEC00E9E9E900E2E2E200DBDBDB00D6D6D600D2D2D200D0D0
      D000CFCFCF00D4D4D400DDDDDD00EAEAEA00F7F7F70000000000F1F1F100EAEA
      EA00EEEEEE00F2F2F200F1F1F100ECECEC00EFEFEF00F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007A7A
      7A00FFD48E00F0CAA600FFD48E00FFE2B100FFE2B100FFE2B100FFE2B100FFF0
      D400FFE3D400FFF0D400FFF0D400FFF0D400F2F2F200F2F2F200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000000000000000FF00800080000000FF00800080000000FF00800080000000
      FF00800080000000FF00800080000000FF00800080000000FF00800080000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E1E1E100CBCB
      CB00C5C5C500D1D1D100C7C7C700A6A8A600858F8500758275006F7D6F00757F
      7500898B8900A2A2A200B7B7B700C6C6C600DADADA00E5E5E500DCDCDC00D1D1
      D100CDCDCD00DFDFDF00DEDEDE00D2D2D200D0D0D000D8D8D800E3E3E300EDED
      ED00F6F6F6000000000000000000000000000000000000000000000000000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000080000000800000008000000080000000800000008000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFD48E00F0CAA600FFD48E00FFD48E00FFE2B100FFE2B100FFE2B100FFE2
      B100FFF0D400FFF0D400E6E6E600FFF0D400FFF0D400FFFFFF00FFFFFF00F2F2
      F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      00000000FF00800080000000FF00800080000000FF00800080000000FF008000
      80000000FF00800080000000FF00800080000000FF00800080000000FF000000
      00000000FF008000800000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BAC1BA00518053005173
      51008B908B006F877000357B3800187B1D0017851C001F8B2300228C25001E86
      21001C742000306A32005F715F008F8F8F00B5B5B50093A394004F875000848C
      8400ABABAB00778C7700718371008089800095979500AAAAAA00B6B6B600C1C1
      C100D9D9D900F1F1F1000000000000000000000000000000800000008000C0C0
      C000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFC66B00FFD48E00F0CAA600F0CAA600FFD48E00FFE2B100FFE2B100FFE2
      B100FFE2B100FFE3D400FFF0D400FFE3D400FFF0D400FFF0D400F2F2F200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000800080000000FF00800080000000FF00800080000000FF00800080000000
      FF00800080000000FF00800080000000FF00800080000000FF00800080000000
      0000800080000000FF0080008000000000000000000000000000000000000000
      000000000000000000000000000000000000C5CDC50018902100289E2C00338C
      34001B711E000F9516002DA6310044AC46004AB04D0050B5530051B6540054AE
      560050B5530043B2460028952C00236D26006C786C006B876C002EB235002079
      2200546C5400428C450036A43A001D771F001F67200032613300697669009E9E
      9E00BCBCBC00D9D9D900F3F3F300000000000000000000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFC66B00FFC66B00FFD48E00FFD48E00CECECE00FFD48E00FFE2B100FFE2
      B100FFE2B100FFE2B100FFF0D400FFF0D400FFF0D400FFF0D400FFF0D400FFFF
      FF00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00929292000000000000000000000000000000000000000000000000008000
      80000000FF00800080000000FF00800080000000FF00800080000000FF008000
      80000000FF00800080000000FF00800080000000FF0080008000000000008000
      80000000FF00800080000000FF00800080000000000000000000000000000000
      0000000000000000000000000000000000005BA25F0017A61D003BA53C004DAC
      4F003EAA400033AA370044B447004DB950004EBC510045BC480053A055009B9F
      9A00859B840076A777006CB96E0054BC5700268B2900148919001FA7250051B4
      54003191340016881B0026A4290048A74B0047A14900369339001D761F002F61
      300091949100C4C4C400E8E8E800000000000000000000000000800080000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      80008080800080808000808080008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFC66B00FFC66B00FFC66B00FFD48E00FFD48E00F0CAA600FFD48E00FFE2
      B100FFE2B100FFE2B100FFE2B100FFF0D400FFE3D400FFF0D400FFF0D400FFF0
      D400F2F2F200F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00800080000000FF00800080000000FF008000800000000000000000000000
      00000000000000000000000000000000000071B5730041BF4700139B1A0032AA
      36004AB44D004BB44E0042B1460043B3470037AC3A002F8F310075807500CCC9
      CC00C2BDC200B4A7B3008499840065CF680069CE6C004FC253004BBE4E0059C2
      5B0061C1620050B754003EAE41003CAD3E0043A9450049A64C00489E4A00207F
      22004D694D00C0C0C000E1E1E100000000000000000080808000000000008000
      800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000808080008080
      80008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFC66B00F0CAA600FFC66B00FFC66B00FFD48E00F0CAA600B6B6B6000050
      500000808000FFE2B100FFE2B100FFE2B100FFF0D400FFF0D400DADADA00FFF0
      D400FFF0D400FFFFFF00FFFFFF00F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0092929200000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF00000000000000FF008000
      80000000FF00800080000000FF00800080000000FF0080008000000000000000
      000000000000000000000000000000000000A0C0A1003EAA440041B9460028AB
      2E002B9E3000309A33002B942E00218F23001D7D1E00617160008E898E00D7D7
      D700D5D5D500C7C0C70084A3850052D056005FD363005ED0610054C858004FC3
      530050C154004EBE520056B45A004EA0500041A843003DA840003FA143001E83
      210045654500B5B5B500D1D1D100F1F1F1000000000000000000000000000000
      FF008000800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFB84800FFB84800F0CAA600FFC66B00FFC66B009E9E9E00007373000073
      7300808080009E9E9E00FFE2B100FFE2B100F0CAA60080808000B6B6B600FFE3
      D400FFF0D400FFF0D400F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800080000000
      FF00800080000000FF00800080000000FF00800080000000FF00800080000000
      000000000000000000000000000000000000F7F7F700609E63000CAF16000EA9
      1700129617001F9824002A9D2C001E7F1F00697C6A00746D74009D9E9D00DEDD
      DE00D6D6D600CCC6CC008599860053CB570057DD5C0057D65A0056D35A0054CF
      580050CC540041C5460097CB9800BDACBD005D8D5E003BAD3E0040A241001B80
      1E003A623A0091979100C5C5C500E7E7E7000000000000000000000080008000
      80000000FF008000800000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080808000808080008080800080808000808080008080800080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFB84800FFB84800FFC66B00FFC66B00AAAAAA0000737300008080006E6E
      6E008686860080808000F0CAA600A4A0A00086868600FFE2B100FFF0D400FFF0
      D400FFF0D400FFF0D400FFF0D400FFFFFF00F2F2F200FFFFFF00FFFFFF00FFFF
      FF009292920000000000000000000000000000000000000000000000FF000000
      0000FFFFFF00FFFFFF0080808000FFFFFF0080808000FFFFFF0080808000FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008000
      80000000FF00800080000000FF00800080000000FF00800080000000FF008000
      800000000000000000000000000000000000D6DFD6001C9B2700418443005393
      56002FA5330022A4250023772500606D60009F979F00595A5900BBBBBB00DDDD
      DD00DCDCDC00D6D6D6008D898D005569550056A1590055B6590055BB580053B4
      550051A8540045804600AEB6AE00EBDFEB0061836300149E19001B9C20002281
      2600047A0B0042764400D3D3D300E7E7E7000000000080808000000000000000
      FF00800080000000FF008000800000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFB84800FFC66B00FFB848009292920000737300009696006E6E6E008080
      80009E9E9E00A4A0A00086868600FFE2B100FFE2B100FFE2B100FFE2B100FFF0
      D400FFF0D400FFF0D400FFF0D400FFF0D400F2F2F200F2F2F200FFFFFF00FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000800080000000FF00800080000000FF00800080000000FF00800080000000
      FF0080008000000000000000000000000000BCD4BE00268F2B00D2D2D200A9B6
      A900109E18002B692C0068636700A9A5A9007F7F7F0060616000CFCFCF00DDDD
      DD00E3E3E300DFDFDF00999999006F6A6F00726A71006F6D6F006E706E006E6F
      6E00706C70006B636B00C1BFC100EDE6ED0067836A000188040044BE4A002A93
      2E0018801D004B824E00E6E6E600EEEEEE000000000000000000000000008000
      80000000FF00800080000000FF000000FF000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFB84800FFC66B00FFB84800007373000096960092929200007373008686
      8600A4A0A000B6B6B60086868600FFD48E00FFE2B100FFE2B100FFE2B100F0CA
      A600DADADA0062626200FFE3D400FFF0D400FFF0D400FFFFFF00FFFFFF00F2F2
      F200929292000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000FFFFFF0080808000FFFFFF0080808000FFFF
      FF0080808000FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000800080000000FF00800080000000FF00800080000000FF008000
      80000000FF00800080000000000000000000C3D7C50057935B00EAEAEA0035A0
      3A0014861B0075687400A5A1A400A7A8A70050504F0086878600E2E2E200E1E1
      E100E8E8E800EBEBEB00A8A8A8007E7F7E00898989008E8C8E008E8B8E008E8B
      8E008B8A8B0079797900C6C6C600F3F0F3007C8A7D00556D550073A876004695
      4800BDBFBD009BB09B00F1F1F100000000000000000000000000000080000000
      FF00800080000000FF00800080000000FF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000009662
      0000FFAA0000969600000073730000B9B90000FEFE0000B9B9007A7A7A009E9E
      9E00B6B6B600CECECE0086868600F0CAA600FFD48E00A4A0A0007A7A7A00A4A0
      A000B6B6B600FFE3D400FFF0D400E6E6E600FFF0D400FFF0D400F2F2F200FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000800080000000FF00800080000000FF00800080000000
      FF00800080000000FF008000800000000000D2E8D300AEC0AF00D2DCD3002A92
      2D005B6B5B0099959800B2B3B200898989003F414000B0B1B000E6E5E600E7E7
      E700EFEFEF00F9F9F900B9B9B9008D8D8D009494940094949400949494009494
      94008E8E8E006C6C6C00CACACA00F6F6F600979697008D888D00889F89005391
      550000000000E2E4E20000000000000000000000000080808000000000008000
      80000000FF00800080000000FF000000FF000000000080808000808080008080
      800080808000808080008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000000000001A1A1A000050
      5000005050000073730000FFFF0025FFFF0048FFFF0000B9B9006E6E6E009E9E
      9E00CECECE00CECECE0086868600FFAB8E00F0CAA600F0CAA600FFE2B100FFE2
      B100FFE2B100FFE2B100FFE3D400FFF0D400FFF0D400FFF0D400FFF0D400FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0080808000FFFFFF0080808000FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C00000000000800080000000FF00800080000000FF008000
      80000000FF00800080000000FF00000000000000000000000000BAD0BB007D9B
      7D007B717900A1A3A100ADADAD006B6B6B0052565200C7C8C700D1D1D100DADA
      DA00EFEFEF00FFFFFF00D7D7D70093939300A8A8A800A9A9A900A8A8A800A5A5
      A5008A8A8A006C6C6C00DADADA00F7F7F700A6A6A6007F7D7F00BFC0BF00CFD4
      CF00000000000000000000000000000000000000000000000000000000000000
      FF00800080000000FF00800080000000FF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000000000000032500000DCDC0000DC
      DC000073730048FFFF0048FFFF008EFFFF00B1FFFF0000B9B900005050000050
      5000CECECE00CECECE009E9E9E00FFAB8E00FFD48E00FFD48E00FFD48E00FFE2
      B100FFE2B100FFE2B100FFE2B100FFF0D400FFE3D400FFF0D400FFF0D400FFF0
      D400868686000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000FFFFFF000000000000000000800080000000FF00800080000000
      FF00800080000000FF0080008000000000000000000000000000D8E0D800A9B2
      A900716C7100A3A3A3009E9E9E004D4D4D0073767400D9DAD900C8C7C800D7D7
      D700EFEFEF00FFFFFF00F7F7F700A5A5A5009D9D9D00AAAAAA00A8A8A800A1A1
      A1008181810078787800EEEEEE00F8F8F800B6B6B60075757500C3C3C300F3F3
      F300000000000000000000000000000000000000000000000000000080008000
      80000000FF00800080000000FF000000FF000000000080808000808080008080
      80008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000000000005050008EFFFF008EFF
      FF00007373006BFFFF00B1FFFF00B1FFFF00D4FFFF00AAAAAA007A7A7A007A7A
      7A00CECECE00E6E6E6009E9E9E00FFC66B00FFD48E00FFD48E00FFD48E00FFD4
      8E00FFE2B100FFE2B100FFE2B100FFE2B100FFF0D400FFF0D400FFE3D400FFF0
      D400868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF00FF00FF000000FF0000000000FFFF
      FF00FFFFFF00FFFFFF0000000000C0C0C00000000000800080000000FF008000
      80000000FF00800080000000FF0000000000000000000000000000000000A2A4
      A2007B797B009A9A9A007E7F7F003334360089898A00C0BFBF00C5C5C500DADA
      DA00EDEDED00FBFBFB00FFFFFF00DDDDDD00979797009F9F9F00A2A2A2009A9A
      9A0079797900A0A0A000FFFFFF00F5F5F500C0C0C00075757500B9B9B900E3E3
      E300000000000000000000000000000000000000000080808000000000000000
      FF00800080000000FF00800080000000FF0000000000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF00FFFFFF0000000000FF00FF000000
      FF00FF00FF000000FF0000000000000000000000000000505000D4FFFF00D4FF
      FF0000737300F0FBFF00FFFFFF00FFFFFF00FFFFFF00AAAAAA00808080009292
      9200FFFFFF00FFFFFF00B6B6B600FFC66B00FFC66B0086868600808080007A7A
      7A006E6E6E006E6E6E006262620062626200FFE2B100FFF0D400FFF0D400E6E6
      E600868686000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FF00FF000000FF00FF00FF00FFFFFF00FFFF
      FF00FFFFFF0000000000C0C0C000FFFFFF000000000000000000800080000000
      FF00800080000000FF0080008000000000000000000000000000000000007776
      77007F7E7E007D7F81005455550033302900777C80009B9FA500BBBBBC00CCCC
      CC00CECECE00DEDEDE00FFFFFF00FFFFFF00D2D2D2009C9C9C00979797009191
      910098989800E4E4E400FFFFFF00F4F4F400C6C6C6007C7C7C00B1B1B100D9D9
      D900F5F5F5000000000000000000000000000000000000000000000000008000
      80000000FF00800080000000FF000000FF000000000080808000FFFFFF000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF000000000000000000FF00
      FF000000FF00FF00FF000000FF00000000000000000000505000B1FFFF00B1FF
      FF00007373008EFFFF00B1FFFF00D4FFFF00FFFFFF00AAAAAA0086868600A4A0
      A000DADADA00F2F2F200B6B6B600FFC66B00FFC66B00FFC66B00FFD48E00FFD4
      8E00FFD48E00FFD48E00FFE2B100FFE2B100FFE2B100FFE2B100FFE3D400FFF0
      D400868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000000000008000
      80000000FF00800080000000FF00000000000000000000000000C6C6C6005E5D
      5C006A6D70004B4D4E0069421600A05C0F0092632E008E7C6500969A9E00B1B4
      B700D2D2D100ECECEC00FCFCFC00FFFFFF00FFFFFF00E8E8E800CDCDCD00D3D3
      D300EDEDED00FFFFFF00FFFFFF00F7F7F700D7D7D700888888009F9F9F00CDCD
      CD00EDEDED000000000000000000000000000000000000000000000080000000
      FF00800080000000FF00800080000000FF0000000000C0C0C000C0C0C0000000
      00008000800000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C0000000000000000000C0C0C000C0C0C0000000
      0000FF00FF000000FF00FF00FF000000000000000000005050006BFFFF006BFF
      FF00007373006BFFFF008EFFFF008EFFFF00B1FFFF00AAAAAA00626262008080
      8000B6B6B600DADADA00B6B6B600FFC66B00FFC66B00FFC66B00FFC66B00FFD4
      8E00FFD48E00FFD48E00FFD48E00FFE2B100FFE2B100FFE2B100FFE2B100FFF0
      D400868686000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFFFF00000000000000
      0000800080000000FF008000800000000000F2F2F200D8D8D800787879004B51
      5600514B4200794C210086480500DA812300D6894200C1742B00A5703500958B
      7D00A9B1B800CFD0D100EAEAE900F8F8F800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F6F6F600DEDEDE009B9B9B008C8C8C00C0C0
      C000E0E0E000F3F3F300F7F7F700000000000000000080808000000000008000
      80000000FF00800080000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF00FF000000FF000000000000000000000000000073730000B9
      B90000B9B90000B9B90048FFFF006BFFFF008EFFFF0000B9B9007A7A7A00AAAA
      AA00CECECE00CECECE009E9E9E00FFB84800FFB84800FFC66B00FFC66B00FFC6
      6B00FFD48E00FFD48E00FFD48E00FFD48E00FFE2B100FFE2B100FFE2B100FFE2
      B100868686000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C0C0
      C00000000000800080000000FF0000000000DCDCDC00A1A1A10045484A00664E
      3600A36228009F5F25008D4D0400E3851F00FFB56100F8BC7A00E99E5B00C77A
      2E00A0815C009FA5A900C4C6C900E2E2E200F5F5F600FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00E2E2E200CECECE00AFAFAF00757575009E9E
      9E00B2B2B200CBCBCB00DEDEDE00F1F1F1000000000000000000000000000000
      FF00800080000000FF00800080000000FF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C000000000000000000000000000000000000000000000000000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000FF00FF00FF00000000000000000000000000000000005050
      0000808000006E6E6E0000B9B90048FFFF006BFFFF0000B9B9007A7A7A009E9E
      9E00B6B6B600CECECE009E9E9E00FFB84800FFB84800808080006E6E6E00FFB8
      4800FFC66B00FFD48E00FFD48E00FFD48E00FFD48E00FFE2B100FFE2B100FFE2
      B100808080000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000FFFF
      FF0000000000000000008000800000000000CBCBCB00716A61007E502300AE66
      2400A7601900B6650300C9700000A45B0100BD6C0D00EE9D3D00FFCD7E00FFC9
      8B00E6944900B57A3D009C999400B8BEC400DDDDDD00F3F3F300FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F5F5F500DADADA00B6B5B5005F5F5F006161
      61006767670083838300AEAEAE00E0E0E0000000000000000000000080008000
      80000000FF00800080000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000FF00FF0000000000FFFFFF0000000000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF00FF000000FF00000000000000000000000000000000005032
      0000B97A0000B97A00000096620000DCDC0048FFFF0000FEFE00007373009E9E
      9E00AAAAAA00B6B6B60080808000FFB84800FFB84800FFB84800FFB848008686
      86006E6E6E00FF8F6B00FFD48E00F0CAA600F0CAA600FFD48E00FFE2B100FFE2
      B100808080000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FF00FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000C0C0C0000000000000000000BBB8B6009F632C00AD631B00A55B
      0800C76E0000EA830000ED850000D3760000B2620000A1560000C3731500F7B8
      5A00FFE19B00FBBB7300CF833500A08F7800B3BAC100DBDBDB00F4F4F400FDFD
      FD00FFFFFF00FEFEFE00F6F6F600E5E5E500C7C7C7009DA0A4004E545A003E34
      2A00533C24005B57530094949400D5D5D5000000000080808000000000000000
      FF00800080000000FF00800080000000FF0000000000C0C0C000C0C0C000C0C0
      C000C0C0C00000000000C0C0C00000000000FF00FF000000000000000000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000FF00FF00FF00000000000000000000000000000000005032
      000096620000B97A0000B97A00000096620000B9B90000FEFE00007373009292
      9200A4A0A000AAAAAA0080808000FFB84800FFB84800AAAAAA00FFB84800FFC6
      6B00FFC66B00B6B6B600FFC66B00FFD48E00FFD48E00CECECE00FFD48E00FFE2
      B100808080000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF000000
      0000FF00FF000000FF00FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000C0C0C000FFFFFF000000000000000000B7B0AB00A35D1C00BB650000DF7C
      0000EC850000F0870000F8890000F6850000EA820000D4770000AC5F0000A457
      0100E1973200FFE99C00FFDDA200E5943F00A88A6700B4BBC300E0E0E100F5F5
      F500F9F9F900F1F1F100DDDDDC00BBBEC300939BA300857A6A009A662800CB79
      2100D980210089551800A19F9E00E1E1E1000000000000000000000000000000
      FF000000FF00800080000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00C0C0C00000000000FF00FF0000000000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000005032
      00009662000096620000B97A0000B97A00000096620000B9B900929292008080
      80009E9E9E009E9E9E00B97A0000DC920000FF8F6B00FFB84800FFB84800FFB8
      4800FFC66B00FFC66B00FFC66B00FFC66B00FFD48E00FFD48E00FFD48E00FFD4
      8E007A7A7A00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00000000000000
      000080808000808080008080800000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF000000000000000000AFA08F00DD821000F7911200F487
      0000F2850000F5860000CC7D1A00C1833500EF840400F7860000E5800000C16B
      00009C520000D2801700FFE69600FFF0C000EDA14A00AF8F6E00BBC2C900E1E1
      E000E5E5E400D1D1D000A8AEB5008C898300AA763A00DF862700FF9B3900FF9F
      3200F58E1600B5782F00C7C6C400F5F5F5000000000000000000000000000000
      00000000FF000000FF00800080000000FF000000000000000000000000000000
      0000000000000000000000000000FFFFFF00C0C0C00000000000FF00FF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005032
      0000966200009662000096620000B97A0000B97A00000096620000B9B9008080
      8000929292007A7A7A00FFAA0000FFAA0000DC92000062626200FFAB8E00FFB8
      4800FFB84800FFC66B00F0CAA600FFC66B00FFC66B00FFD48E00F0CAA600FFD4
      8E007A7A7A000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFF
      FF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000D4CFC900DEB36000FEC14800FFB8
      4300FF9B1500DC8311007B7B7B00A9B2BB00B7A48E00CE852C00F3870000EC84
      0000CC72000099510000CC790D00FFE69900FFF7CD00E69A4500A89A8A00BFC3
      C800BBBCBC0097A1AB00937D6200D4842800FD9F3A00FFA03500EF891100B97D
      3300B6A99B00E8E7E70000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C00000000000FF00
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005032
      0000734A0000966200009662000096620000B97A0000B97A0000626262000073
      73006E6E6E00DC920000DC920000FFAA0000FFAA0000FFAA000096620000FF8F
      6B00FFC66B00FFB84800FFB84800FFC66B00F0CAA600FFC66B00FFD48E00FFD4
      8E007A7A7A00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFF
      FF0080808000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000FF00FF00FF000000FF000000
      0000000000000000000000000000000000000000000000000000EBDCBE00E8C3
      6F00FFCA4C00C9A1630080879300D9D9D900E7F0FC0099938A00E8820300F488
      0000ED850000C37007008A4B0300C9781000FFEEAA00FFE0A500C98742008E95
      9B0079818A009C764600EC912900FFA94600FB962000C9761300AA998600E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000FF00FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005032
      0000734A0000734A0000966200009662000096620000B97A0000B97A00009662
      0000B97A0000DC920000DC920000DC920000FFAA0000FFAA0000FFAA0000FFB8
      4800FFB84800AAAAAA00FFB84800734A000096620000FFAA2500FFD48E00FFFF
      FF00929292000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080
      8000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF000000FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D7CBB600A49980008B8E9300E9E9E900DEE4EE00B58A5800F5820000F187
      0000F0860100D57D1200A5661E0086480500CF831D00FFF1AE00F7BB7600AA73
      3500AE732C00F7973000FFA43A00F38A0D00AE7A3B00C4C1BD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF00FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005032
      0000734A0000734A0000734A0000966200009662000096620000B97A0000B97A
      0000B97A0000B97A0000DC920000DC920000DC920000FFAA0000FFAA0000FFAA
      0000FFB84800FFB84800FFB84800734A000096620000FFAA2500FFD48E00FFFF
      FF00565656000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E7E500818588009F9F9D00FBFCFC00CBD1D800D99F4D00FF8A0000F286
      0000E5830900D37E1B00BD762500955E230088480100E59B3200FFEFB700F5A3
      5300F98F2100FF992300D57C0D00A78F7400E9E9E90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF00FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005019
      000050320000734A0000734A0000734A0000966200009662000096620000B97A
      0000B97A0000B97A0000B97A0000DC920000DC920000DC920000FFAA0000FFAA
      0000FFAA0000FFB84800FFAB8E00734A000096620000FFAA2500FFD48E002626
      2600000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009393940086858500BABABA00FFFFFF00BEBAB500E4C66B00FFD36700FC91
      0D00E4871700CE7C1E00C47A2700B0712D008153230095500100F8B55000FFB8
      5600EF840800B5803F00C3BEB900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005019
      00005032000050320000734A0000734A0000734A000096620000966200009662
      0000B97A0000B97A0000B97A0000B97A0000DC920000DC920000DC920000FFAA
      0000FFAA0000FFAA0000FFAA2500734A000096620000FFAA2500503200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B0B0
      B0007C7C7C008E8E8E00DADADA00E0E0E00095959700A39A8B00E1CD8100FFD6
      7900F3942500D07F2300C2792800BB793300B1743700A8671E00C86C0500B983
      4200BCB0A300F4F4F40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005019
      0000503200005032000050320000734A0000734A0000734A0000966200009662
      000096620000B97A0000B97A0000B97A0000B97A0000DC920000DC920000DC92
      0000FFAA0000FFAA0000FFAA0000734A0000966200000E0E0E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F4008A8A
      8A008E8E8E0092929200B4B4B400EBEBEB009E9E9E00BFBFC000CCC6BD00EDD2
      7000F8A43900D67F1E00DC841E00EF8D1700EB8B1200CE975400D2C5B600F6F6
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00000000000000
      0000000000000000000000000000000000000000000000000000000000005019
      000050320000503200005032000050320000734A0000734A0000734A00009662
      00009662000096620000B97A0000B97A0000B97A0000B97A0000DC920000DC92
      0000DC920000FFAA0000FFAA0000734A00005019000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8E8
      E8009E9E9E00ABABAB00A7A7A700B4B4B400B8B8B800CACACB0000000000D8AB
      5900FFAA1C00FA8E0300DE8F2200C89F6C00D9D1C90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF00FF000000
      0000000000000000000000000000000000000000000000000000000000005019
      00005032000050320000503200005032000050320000734A0000734A0000734A
      0000966200009662000096620000B97A0000B97A0000B97A0000B97A0000DC92
      0000DC920000DC920000FFAA0000501900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D0D0D0009A9A9A0097979700AAAAAA00EFEFEF0000000000CBBA
      9900CCA36200D5C1A800F0EAE300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F00007F7F
      00000000000000000000000000007F7F00007F7F000000000000000000007F7F
      00007F7F000000000000000000007F7F00007F7F000000000000000000007F7F
      00007F7F000000000000000000007F7F00007F7F000000000000000000007F7F
      00007F7F00000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00800000000000
      0000FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000008000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      0000000000000000000000000000000000007F7F000000000000000000000000
      00007F7F00000000000000000000000000007F7F000000000000000000000000
      00007F7F00000000000000000000000000007F7F000000000000000000000000
      00007F7F00000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B0080000000FFDE9B00FFDE9B00FFFFFF00FFDE9B0080000000FFDE
      9B00FFDE9B00FFDE9B00FFFFFF0080000000FFDE9B00FFDE9B00FFDE9B00FFDE
      9B0080000000FFDE9B00FFDE9B00FFDE9B00FFDE9B0080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B0080000000FFDE9B000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
      C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0
      C000C0C0C00080808000000000000000000000000000000000007F7F00007F7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      000000800000FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      000000000000000000000000FF000000FF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      000080808000FFFFFF00000000000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000007F7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00008000000080000000800000FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      000000000000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00000000008080
      8000FFFFFF00FFFFFF00FFFFFF00000000000000FF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000000000000000
      0000008000000000000000000000008000000000000000000000008000000000
      000000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B000080000000800000FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000000800000008000000080000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F00007F7F00007F7F
      00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F
      00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F0000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000080000000800000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00000000000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000000000000000
      0000008000000000000000000000008000000000000000000000008000000000
      000000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C00080808000000000000000000000000000000000007F7F00007F7F
      0000000000000000000000000000FFBF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F0000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B0000800000FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000FF000000
      FF00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000000000000000
      0000008000000000000000000000008000000000000000000000008000000000
      000000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000007F7F
      0000000000000000000000000000FFBF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F0000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFDE9B00FFDE9B00FFDE9B00FFDE9B000080000000800000FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000FF000000FF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000000800000008000000080000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFBF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F0000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF000080000000800000FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B000000FF000000FF00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      800000000000FFFFFF00FFFFFF00FFFFFF000000000000800000000000000000
      00000080000000000000000000000080000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B0000800000FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      00000000FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      800000000000000000000080000000000000FFFFFF0000800000000000000000
      000000800000000000000000000000800000FFFFFF0000000000008000000000
      0000FFFFFF00008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C00080808000000000000000000000000000000000007F7F00007F7F
      0000000000000000000000000000FFBF0000FFBF00007F7F00007F7F00007F7F
      00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00008000000080
      0000FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B000000FF000000FF00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000080808000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      80000000000000800000008000000080000000800000FFFFFF00008000000080
      0000008000000080000000800000FFFFFF000080000000800000008000000080
      000000800000FFFFFF000080000000800000008000000080000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000007F7F
      0000000000000000000000000000FFBF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000080
      000000800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000080808000FFFFFF00FFFFFF0000000000000000008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      80000000000000000000008000000000000000000000FFFFFF00000000000000
      0000008000000000000000000000FFFFFF000000000000000000008000000000
      000000000000FFFFFF000000000000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFBF00000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B0000800000FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF000000FF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      00000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000FFFFFF000000
      00000080000000000000FFFFFF00008000000000000000000000008000000000
      00000000000000800000FFFFFF0000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFBF00000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      00007F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF000000
      FF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B000080000000800000FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF000000FF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000008080800000000000FFFFFF00000000000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      800000000000008000000080000000800000008000000080000000800000FFFF
      FF00FFFFFF00FFFFFF0000800000008000000080000000800000008000000080
      0000008000000080000000800000FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00C0C0C00080808000000000000000000000000000000000007F7F00007F7F
      0000000000000000000000000000FFBF50000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF000000
      FF000000FF00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B000080000000800000FFDE9B00FFDE9B00FFDE9B00FFDE9B000000
      FF000000FF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000080808000FFFFFF00000000000000FF00000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000000000000000
      0000008000000000000000000000008000000000000000000000008000000000
      000000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000007F7F
      0000000000000000000000000000FFBF0000FFBF00007F7F00007F7F00007F7F
      00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F
      00007F7F00007F7F00007F7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B000000FF00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B000080000000800000FFDE9B00FFDE9B00FFDE9B000000
      FF00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      000000000000000000000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000000000000000
      0000008000000000000000000000008000000000000000000000008000000000
      000000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFBF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B000000FF00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF000080000000800000FFDE9B000000FF00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      000000000000000000000000FF000000FF0000000000FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00000000000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000080000000800000008000000080000000800000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000800000008000000080000000800000008000000080000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000FFBF00000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF0000000000007F7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFFFFF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFDE
      9B00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000800000008000000000FF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000000000000000
      0000008000000000000000000000008000000000000000000000008000000000
      000000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C00080808000000000000000000000000000000000007F7F00007F7F
      0000000000000000000000000000FFBF00000000000000FF000000FF000000FF
      000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF
      000000FF0000000000007F7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B000000FF00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B000000FF000080000000800000FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00008000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000800000000000000000000000800000000000000000
      0000008000000000000000000000008000000000000000000000008000000000
      000000000000008000000000000000000000008000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000007F7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B000000FF00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF000000FF000000FF00FFDE9B00008000000080
      0000FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B0000800000008000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C0008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B000000FF000000FF00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF000000FF00FFDE9B00FFDE9B00FFDE9B000080
      0000FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B000080000000800000FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
      C000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000808080008080800080808000808080008080800080808000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B000000FF000000FF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B000000FF00FFDE9B00FFDE9B00FFDE9B00FFDE9B000080
      000000800000FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B000080000000800000FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C00080808000000000000000000000000000000000007F7F00007F7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFDE9B00FFDE9B00FFDE9B00FFDE9B000000FF000000FF00FFDE9B00FFDE
      9B00FFDE9B000000FF000000FF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B000080000000800000FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF000080
      000000800000FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008000000080000000FF000000FF000000FF0000008000000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000007F7F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000080000000800000FFFFFF000080000000800000008000000080
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000FF000000FF000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B000080000000800000FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000FF000000FF000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080000000FF000000FF000000FF0000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080000000800000008000
      0000FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE
      9B00FFDE9B00FFDE9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE
      9B00FFFFFF00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B00FFFFFF00FFDE
      9B00FFDE9B00FFDE9B00FFDE9B00FFDE9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000205F60009FB0BF00A0B0C000608F
      AF0020709F00206F6F0000404000000000009040400000000000000000006060
      1F00AFAF6000AFAF400090904F00A0A02F007F8F5000405F1000001000008F4F
      4F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009FAFC0009FA0CF00A0AFD0009FAFD000A0AFD000A0AFCF00A0B0
      D000A0B0D0009FAFCF00B0BFDF00D0CFDF00C0C0CF008F8F90004F404000302F
      300040404000504F4F005F4F4F00FF004000FF808000FF808000FF800000FF80
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000001F505F007090CF007090CF00407F
      9F00207FA000206F6F00004F4F00000000009040400000000000000000005F5F
      0000AFAF6000AFAF40008F8F40008F900F0080906F00506F0F0000000000803F
      3F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000FFFF00007F7F0000FFFF00007F7F0000FF
      FF00007F7F0000FFFF00007F7F0000FFFF00007F7F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000304F
      90002F5090002F5090003050A000305F9F003F5FA0003F60A0003F60A0003F60
      AF003F6FAF00305FA0004070AF008090BF00A0AFD000CFCFD000909090004F4F
      4F002F202F004F4040005040400050404F00FF004000FF808000FF808000FF80
      0000FF800000FF80000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030606F007F9FA00090AFBF004F7F
      9F00207FA000206F6F00004F4F00000000009F4F4F0000000000000000006F6F
      1F00AFAF6000B0B040009F9F50008F8F000070805000708F2000000000008F4F
      4F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000FFFF00007F7F0000FFFF00007F7F0000FF
      FF00007F7F0000FFFF00007F7F0000FFFF00007F7F0000000000000000000000
      00000000000000000000000000000000000000000000000000004060AF004060
      9F004060A0004F60A0004F60A0004F6FAF004F70A0005070AF005070BF005F7F
      B0005070B0005070B0005070AF004F6FA0005F70A000B0BFD000D0D0D0009F9F
      9F004F4F4F002F202F004F404000504F40005F4F5000FF004000FF808000FF80
      8000FF800000FF80000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000205F6F005F80B0007F9FCF00608F
      AF0020709F00206F6F0000404000000000009040400000000000000000005050
      0000AFAF6000AFAF400090904F00AFAF4000909F6F004F6010000F1F0F008F4F
      4F00000000000000000000000000000000000000000000000000000000000000
      000000000000007F00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0000000000000000000000000000000000000000004060A0003F5F
      9F004060A0004F60AF004F60A0004F60A0004F6FAF004F6FAF005070AF00507F
      B000506FAF005070A0004F70A0005F70A000506FA0008F9FC000EFE0F000D0CF
      CF009F9F9F004F4F40002F202F004F404000504F4000604F5000FF004000FF80
      8000FF808000FF800000FF800000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000FF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF007F7F00007F7F00007F7F
      000000000000BFBFBF007F7F7F00BFBFBF0000007F0000007F0000007F000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000050708F007F9FAF007F9FBF00407F
      9F00207FA000206F6F00004F4F00000000009040400000000000000000005F5F
      0000AFAF6000AFAF40008F8F40008F900F0080906F00506F0F0000000000803F
      3F00000000000000000000000000000000000000000000000000000000000000
      000000000000007F0000000000000000FF00007F0000007F000000000000007F
      0000007F0000007F0000007F000000000000007F0000007F0000007F00000000
      7F00007F0000007F000000007F00007F0000007F000000007F00007F0000007F
      0000007F0000000000000000000000000000000000001F2F4F00406FA000405F
      90004F609F0040609F00405FA0004F6FAF004F6F9F004F70AF005070AF004F70
      AF004F6FA0004F60A0004F70A0005070AF004F6FAF006080B000EFEFF000EFE0
      E000CFCFCF00A09F9F00404F4F002F202F0040404000504F40005F404000FF00
      4000FF808000FF808000FF800000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000FF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF00FFFF0000FFFF00007F7F
      000000000000BFBFBF007F7F7F00BFBFBF000000FF000000FF0000007F000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F5F8000608FB000709FBF004F7F
      9F00207FA0002F707000004F4F0000000000A060600000000000000000006F6F
      1F00AFAF6000B0B0400090904F008F8F0000708050008F9F40000F1F0F00A070
      7000000000000000000000000000000000000000000000000000000000000000
      000000000000007F000000000000007F00000000000000000000000000000000
      0000007F000000000000000000000000000000000000007F0000007F0000007F
      0000007F0000007F0000007F0000007F0000007F0000007F0000007F0000007F
      0000007F0000000000000000000000000000000000001F204F00405FA0003F5F
      9F003F5F9F00405F9F00405FA0004060A0004F6FAF004F6FAF004F6FAF004F70
      AF004F70B0004F6FAF004F70AF004F70AF00506FA0004F6FA000DFDFEF00F0EF
      EF00E0DFE000CFCFCF009F9F9F00404F4F002F202F004F404000504040005040
      4F00FF004000FF808000FF808000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000FF000000FF000000FF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000406F7F009FAFBF0080A0BF00608F
      AF0020709F00206F6F0000404000000000009040400000000000000000005F5F
      0F00BFBF8000BFBF6F00A0A05F00A0A04000909F400070804F000F1F0F009F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000007F000000000000007F0000000000007F7F7F007F7F7F000000
      0000007F0000000000007F7F7F007F7F7F0000000000007F0000000000000000
      00000000000000000000007F000000000000000000000000000000000000007F
      0000007F0000000000000000000000000000000000001F304F004060A0003F5F
      9F00405FA0004060A0004060A0004F6FA000506FB0004F70B0004F70AF005070
      B0005070B0004F70B0005070B0004F70A0004F6FAF005070A000EFE0F000F0F0
      F000EFE0E000EFDFE000CFCFCF009F9F9F004F4F4F002F2030004F404000504F
      4F00604F5000FF004000FF808000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000FF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030607F007090CF006F90BF00407F
      9F00207FA000206F6F00004F4F00000000009040400000000000000000005F5F
      0000AFAF6000AFAF40008F8F40008F900F0080906F00506F0F00000000009F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000007F0000000000000000FF00FFFFFF0000000000000000000000
      0000007F0000FFFFFF00000000000000000000000000007F0000000000007F7F
      7F007F7F7F0000000000007F0000000000007F7F7F007F7F7F0000000000007F
      0000007F000000000000000000000000000000000000202F4F004060AF00405F
      9F00405FA0004060A0004F60A0004F6FAF004F6FA0005070AF005070AF00507F
      AF004F6FAF004F70A0004F70A0005070A0004F6FA0006080B000EFF0F000FFFF
      FF00F0EFEF00EFEFE000E0E0E000CFC0CF009F9F9F00404F4F002F202F004F40
      4000504F40005F4F4F00FF004000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000FF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00FFFFFF007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F507F006080A00080A0BF004F7F
      9F00207FA000206F6F00004F4F00000000009F50500000000000000000005F5F
      0000AFAF6000B0B040008F8F40008F8F000070805000708F2000000000009F6F
      6F00000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00007F000000000000007F0000007F0000007F000000000000007F
      0000007F0000007F0000007F000000000000007F0000007F0000007F0000007F
      0000007F0000007F0000007F0000007F0000007F0000007F0000007F0000007F
      0000007F000000000000000000000000000000000000202F4F004060A000405F
      9000405FA0004F6FAF004F60A0004F6FA0005070A0004F70AF005070A0004F70
      A0004F6FA0004F60A0005070A0005F70A000506FA000708FBF00F0EFFF00FFF0
      FF00FFF0FF00F0EFF000EFEFEF00EFDFE000CFCFCF00A0909F004F4F40003020
      2F004F4040005040400060505000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F000000FF000000FF000000FF000000FF007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF007F7F7F007F7F7F007F7F
      7F0000000000FFFFFF007F7F7F00BFBFBF007F7F7F007F7F7F007F7F7F000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CF9F8F006F809F00809FBF0080A0
      C00030708F001F607F00004F500000000000AF60600000000000000000000000
      00005F5F0000AFAF6000AFAF40008F8F40008F900F0010203F00B07070000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      000000000000007F000000000000007F0000007F0000007F00007F7F7F007F7F
      7F00007F0000007F0000007F00007F7F7F007F7F7F00007F0000007F0000007F
      00000000000000000000000000000000000000000000007F000000000000007F
      0000007F0000000000000000000000000000000000002F3050004F6FA0003F5F
      9000405F9F004060A0004060A0004060A000506FA0004F6FA0004F70A000506F
      A0004F70A0004F70A0005070A0005070A0004F70AF0090A0BF00FFF0FF00FFF0
      FF00FFF0F000FFFFFF00F0EFEF00EFE0E000E0DFE000CFCFCF009F9F9F004F4F
      4F002F2F2F004040400050404000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF00FFFFFF00FFFFFF007F7F
      7F0000000000FFFFFF007F7F7F00BFBFBF00FFFFFF00FFFFFF007F7F7F000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F908000105F5F000050
      5000005050000F4F4F00004F4F00A0404F000000000000000000000000000000
      0000B06060005F5F00005F5F00005F5F0000505000008F4F4F00000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF0000000000FFFF
      FF00FFFFFF00007F000000000000007F0000007F0000007F000000000000007F
      0000007F0000007F0000007F000000000000007F0000007F0000007F0000007F
      0000000000007F7F7F007F7F7F007F7F7F0000000000007F0000000000000000
      00000000000000000000000000000000000000000000202F50004F6FA000405F
      900040609F0040609F003F5F9F003F60A00040609F00405FA0004F609F004060
      A000406F9F00406FA0004F6F9F005070A0004F709F00AFB0CF00FFFFFF00FFF0
      F000FFFFFF00FFFFFF00FFFFFF00FFF0F000FFFFF000EFE0EF00D0CFCF009F9F
      9F004F4F4F00302F30004F404000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00FFFFFF007F7F7F00FFFFFF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF006F6F6F00605F6000000000009F5050000000000000000000000000000000
      0000000000006F6F6F0090909000B0606000000000008F404000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000007F00
      00007F000000007F0000000000000000FF000000000000000000000000000000
      0000007F000000000000000000000000000000000000007F0000007F0000007F
      0000000000007F7F7F007F7F7F007F7F7F0000000000007F000000000000007F
      0000007F000000000000FFFFFF000000000000000000203050004F6FA0003F5F
      9000405F9F003F5F90003F5F90003F5090003050900030509000305090003F4F
      9000304F8F003F5090003F5090004F60A000405F9F00AFBFD000FFFFFF00FFEF
      FF00EFEFEF00D0CFDF00BFC0D000A0B0D0009FAFCF009FAFCF00B0B0CF00C0CF
      CF00AFA0AF005F505000403F3F00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCF
      CF006F6F6F006060600000000000A0404F000000000000000000000000000000
      0000000000006F7F80008F8F8F005F5F5F00000000008F404000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000007F000000000000007F0000000000007F7F7F007F7F7F000000
      0000007F0000000000007F7F7F007F7F7F0000000000007F0000007F0000007F
      0000000000007F7F7F007F7F7F007F7F7F0000000000007F000000000000007F
      0000007F000000000000000000000000000000000000202F4F00405FA0003F50
      8F003F509000304F9000304F8000304F80002F3F7F00303F7F002F3F7F002F3F
      7F00303F7F00303F8000303F800030408F0020409000607FAF00909FC0007F8F
      BF00607FAF004F6F9F004F6FA0004F70A0005070AF005070AF00406FA000607F
      AF008F9FC000909FAF005F5F5F00000000000000000000000000000000007F7F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BFBFBF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0D0
      D0008F8F8F0060606000000000009F5050000000000000000000000000000000
      000000000000607F90007F9FB0005F5F5F00000000008F404000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000007F000000000000007F0000FFFFFF0000000000000000000000
      0000007F0000FFFFFF00000000000000000000000000007F0000007F0000007F
      0000FFFFFF0000000000000000000000000000000000007F0000000000000000
      000000000000000000000000000000000000000000001F2F4F0040509F003040
      800030408000304080002F3F7F002F307000202F6F002F2F70002F2F70002F3F
      7F002F3070002F3080002F307F00303F800030408F00304F9000304F90003F50
      9F003F509F004F609F004F6FA0005F70A0006070A0005F70AF004F6FAF004F6F
      A000405F9F006F7FAF009090A000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0D0
      D0008F8F8F006060600000000000B05050000000000000000000000000000000
      0000000000005F708F009F9F9F005F5F60000000000090404000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000007F0000000000000000FF00007F000000000000007F0000007F
      0000007F0000007F000000000000007F0000007F0000007F0000007F0000007F
      0000007F000000000000007F0000007F0000007F0000007F000000000000007F
      0000007F0000000000000000000000000000000000001F2040003F5090003040
      8000303F7F002F3070002F2F6000202F50002F306F00203070002F3F70002F30
      7000202F60002F3F7F002F307000302F7F0030408F00404090004F5F9F00506F
      A000505FA000405F9F004060A0004F60AF00506FAF005070A000506FA000506F
      A0004F5F9F00405F90008F9FBF00000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFDF
      DF009090900070707F0000000000AF5F5F000000000000000000000000000000
      000000000000607F900000000F005F5F5F000000000090404000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000007F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F204000304080003030
      700030306F00202050001F1F4F00202050002F307000202F5F002F3070002020
      5F00202F50002F306F002F2F60002F3060002F3070003F4080003F509000506F
      A0004F609F004F609F005F70A000506FAF004F609F00507FAF005080AF005070
      AF00506FA000305F9F00808FB000000000000000000000000000000000007F7F
      7F00FFFFFF007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F0000000000000000007F7F000000000000D0707F00302F3000302F
      3000201F2000201F2000D07070000000000000000000C07F7F0010101000E0E0
      E0009F9F9F007F7F7F0000000000B05050000000000000000000000000000000
      0000AF6F6F00000F1F00000000005F5F60000000000090404000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000007F00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00000000000000000000000000000000001F1F4000303F80002F30
      5F00202F500020203F00201F5000201F4F002F2F700020205F00202F6F00303F
      7F002F3070003F4080003F4F8F003F4F8000404F7F00404F8F004F5090005060
      9F003F3F8F004F5F9F00607FAF005F6FA000506FA0005070AF005070A0005070
      AF004F6FAF003F5FA0005F70B000000000000000000000000000000000007F7F
      7F00FFFFFF00BFBFBF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00BFBFBF007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00000000007F7F00007F7F0000000000009F9F9F009F9F9F009F9F
      9F009F9F9F0090909000201F2000D07F7F00D070700010101F00A0A0A0009F9F
      9F009F9F9F009F9F9F007F7F7F0000000000AF5F5F00B0505000B0505000B050
      500000000000606060000000000060606000000000009F4F4F00000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000FF000000FF000000FF000000FF0000007F000000FFFF0000FF00
      00007F000000000000007F000000FF00000000007F00FF00FF000000FF000000
      7F0000000000FF0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000001F1F3F002F3070002020
      4F001F1F30001F1F3F002020600020205000202F70003040800040508F005060
      9F00506F90003F406F002F2040002020300020203F003F304F003F405F00505F
      8F00506FA000506FA000506FA0004060AF00405FA00030409F0030509F003F4F
      9F003F609F003060A000607FAF00000000000000000000000000000000007F7F
      7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000007F7F00007F7F0000000000009FA0A000E0E0E000CFCF
      D000C0BFC000BFBFBF009F9F9F00302F3000201F20007F7F8000B0AFB000B0AF
      B000AFA0AF00AFA0AF00A0A0A0007F7F7F000000000000000000000000000000
      00005F5F60008F8F8F0000000000606060000000000090404000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000FF000000FF000000FF000000FF0000007F000000FFFFFF00FFFF
      0000FF00000000000000FF000000FF00000000007F00FFFFFF00000000000000
      FF0000000000FF0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000001F1F30002F2F60001F1F
      30001F1F2F001F1F3F001F2F5F00303F7F004050800050608F0060708F006F70
      900040405F001F1F1F001F1F2000201F2000101F2F001F202F001F202F00202F
      300060709000809FB0007F90B000809FC000708FC0004F60A000304F9F00303F
      8F003F5FA0003F5FA0006070AF00000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000FFFF007F7F
      7F007F7F7F0000000000000000007F7F0000000000009FA0A000FFF0F000DFDF
      DF00CFCFCF00C0BFC000C0BFC0009F9F9F0090909000BFBFBF00B0B0BF00B0AF
      B000B0AFB000B0B0B000AFAFB0009F9F9F007F7F7F007F7F7F0070707F006F6F
      6F008F8F8F009F9F9F000000000060606000000000009F4F4F00BF6F6F000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF0000007F0000007F00
      00007F0000007F000000FF000000FF000000FF00000000007F0000007F000000
      7F007F000000FF0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F000000000000000000000000000000000000000000101F2F00202F50001F10
      2F00101020001F1F40002F306F003F4F8000506F8000607080006F6F8F005050
      6F001F1020001F102000201F2F001F202F001F203F001F203F00202030001F20
      2F002F3050006F8FAF00809FAF00809FAF007F8FBF005F5F9F002F2F7F002F4F
      9F00506FA0003F4F90005060AF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF007F7F7F007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A000FFF0F000EFEF
      EF00DFDFDF00CFCFD000CFCFCF00CFCFD000CFCFCF00C0C0CF00CFC0CF00C0C0
      C000C0C0C000DFDFD000BFBFBF00B0B0BF00A0A0A0009F9F9F009F9F9F009F9F
      9F00A0A0A000A0A0A0000000000060606000000000009F4F4F00BF6F6F000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000007F000000FF000000FF000000FF0000007F7F7F00000000000000
      00007F000000FF0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F000000000000000000000000000000000000000000101020001F204F001F10
      2F001F1F20001F1F30001F205000303F6F004F5F7F006F708F0060708F003030
      4F00101010001F1F20001F2030001F1F2F000F101000101F20001F2030002020
      300020202F005F708F0080A0BF007F90B0004F508F00202F7F00203F90004F6F
      A000506F9F00203F7F004F508F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000000000FFFFFF00FFFFFF007F7F7F000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      00000000000000000000000000000000000000000000B0AFB000FFF0F000E0E0
      E000DFDFDF00E0E0E000EFEFEF00FFF0F000EFEFEF00E0E0E000C0C0CF00CFCF
      CF00C0C0CF00C0C0C000BFBFC000BFBFBF00B0AFB000B0AFB000AFA0AF00A0A0
      A000A0A0A00000000000808080007F7F80005F5F5F00000000009F4F4F00BF6F
      6F00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000007F000000FF000000FF000000FF0000007F7F7F00000000000000
      00007F000000FF0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000F0F1F001F1F2F001F10
      1F0010101F001F1010001F102F00202040003F40600050607F005F607F00302F
      3F0010101F00201F2F001F1F3000100F10000F000000000000001F102F001F1F
      2F001F1020004F5F6F007F8FAF004F4F700020206F002F408F004060A000405F
      9F0030408F001F2060004F508000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000000000000000000000000000000000BFBFBF00000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000B0B0BF00F0FFFF00EFEF
      EF00EFEFEF00EFEFEF00A0A0A000A0A0A000A09FA000FFF0F000E0E0E000EFEF
      EF00D0D0D000CFCFD000D0D0D000CFC0CF00C0C0CF00BFBFC000AFA0AF00AFA0
      AF00000000008F8F8F008F8F8F0090909000808080005F5F5F00000000009F4F
      4F00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000007F0000007F000000FF000000FF0000007F7F7F00000000000000
      00007F000000FF0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000F101F001F2030001F10
      1F000F100F000F0F0F00100F10001010200020203F00304060004F506F002F20
      30000F0F10001F1F1F001F1F20000F101000507F7F005F6F70001F1F2F001F10
      2000100F1F0030305F003F3F6000202F6F0030409000405F9F003F4F9000303F
      8000202F7000101F50004F507F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF00000000000000000000000000FFFFFF00000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFBFC000FFFFFF00EFEF
      EF00F0FFFF00FFF0F000AFAFB000E0909F0000000000AFA0AF00A09FA000EFEF
      EF00FFF0F000FFF0F000EFEFEF00EFEFEF00E0E0E000E0E0E0007F7F80000000
      0000D0D0D000A0A0A000A0A0A000909090008F8F8F0060606000000000009F4F
      4F00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      0000FF0000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000007F0000007F0000007F00000000000000000000000000
      00007F000000FF0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F000000000000000000000000000000000000000000100F20001F2030001010
      1F00101010000F0F0F00100F10000F0F1000100F10001F102000202F40002020
      2F000F0F0F00100F10001F101000101F1F0050606F00605F70001F1F20000F10
      1000100F100020103F0020205F0030408F00304F8F00304080002F306F001F20
      60001F2F5F00101040004F406000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF000000000000000000BFBFBF00000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0CF00C0C0
      CF00BFBFC000BFBFC00000000000000000000000000000000000E0909F00A09F
      A0009F9F9F009F9F9F00909090008F8F8F00808080007F7F8000C06060007F7F
      7F00D0D0D000AFA0AF00A0A0A0009FA0A000909090006F6F6F00000000009F4F
      4F00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      00007F7F7F007F7F7F007F7F7F0000000000000000007F7F7F007F7F7F000000
      00007F7F7F007F7F7F000000000000000000000000007F7F7F00000000000000
      00007F0000007F0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000F0F1F001F1F3F001F1F
      30001F1F3F001F1F3F001F102000100F1F00100F0F000F0F0F00100F10001010
      1F000F0F0F00100F10000F0F0F000F0F0F000F0F0F000F000F00100F1000101F
      20002F204F00304070003F4F7F00303F7F00304080002F305F001F1F4F001F20
      4F001F204F0010103F0040406F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DF8F8F00D07F7F00D0707F00D0707000D070700000000000000000007F7F
      7F00D0D0D000C0C0C000A0A0A000A0A0A0009F9F9F006F6F6F0000000000A040
      4F00000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      00007F7F7F0000000000000000007F7F7F007F7F7F0000000000000000000000
      000000000000000000007F7F7F007F7F7F007F7F7F00FFFFFF00000000000000
      00007F0000007F0000007F000000FFFFFF00000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000F0F1F001F1F3F001F1F
      3F001F1F30001F203F001F204F001F1F30001F1F30001F1F3000101010000F10
      10001010200010101F0010101F00101F1F0010102F001F1F30002F3F5F002F30
      6F003F4080002F407F00304080002F3070001F204F001F2040001F1F4F001F1F
      40001F204F00101F40004F508000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00BFBFBF00000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      8000DFDFDF00C0C0CF00C0C0C000BFBFBF00A09FA0006F6F6F0000000000A040
      4F00000000000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      7F007F7F7F00FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      00007F7F7F007F7F7F007F7F7F00FFFFFF00000000007F7F7F007F7F7F007F7F
      7F000000000000000000000000000000000000000000100F1F00202040001F20
      3F001F1030001F10200020204F001F204F00202F50002F2F4F001F102F001F20
      40002F3F70001F203F00202030002F305F002F3060002F3F60003F5080002F3F
      6F002F3F70002F3070002F2F6000201F4F00101F30001F1F3F001F1F40001020
      4000201F4000101F500000000000000000000000000000000000000000000000
      0000000000000000000000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF00FFFFFF00FFFFFF00000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000E0E0E000CFC0CF00C0C0C000C0C0C000BFBFBF006F6F6F0000000000B050
      5000000000000000000000000000000000007F7F7F00FFFFFF00000000000000
      00007F7F7F00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000007F7F
      7F0000000000000000000000000000000000000000007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000000000000000000020204F001F20
      40001F1F3F0010102F00101F30001F1030001F2040001F1F3F001F2040002F2F
      60002F307000202F6000202F5000303F7000303F70002F306F002F306F00202F
      5000202F50001F1F40001F1030001F103000201F30001F1F3F001F1F40001F1F
      4F00201F4F0010206F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF00BFBFBF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      80007F7F7F007F7F7F0070707F0070707F0070707F006F6F6F0000000000A040
      4F0000000000000000000000000000000000000000007F7F7F00FFFFFF00FFFF
      FF007F7F7F007F7F7F007F7F7F00000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000000000000000007F7F
      7F000000000000000000FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000202F6000202F
      5000202F5F00202F5000202F5000202040001F203F0020203F00201F3F002020
      4F0020204F0020204F00202F4F002020500020205000202040001F1F30001F10
      30001F1F2F00101F2F001F1F300020203F001F203F00202040001F2F50002F30
      5F002F3F70000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000000000000000000000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000007F7F
      7F000000000000000000000000000000000000000000FFFFFF007F7F7F007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      000000103F000F103F000F103F00000F3000000F2F00000F2F0000002000000F
      2000000020000F002000000F1F0000001F000000100000000F00000010000000
      0F0000001000000010000000100000001F00000F1F00000F2F00000F30000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00FFFFFF00000000007F7F
      7F00000000000000000000000000000000000000000000000000FFFFFF007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000000000000000000000000000000000000000000000000000FFFF000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F00000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F0000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFE7DFFFFFFFF03
      FFFFFFFFC0003FFFFFFDBDE7FFFFBE03FFFFFFFFC0003FFFFFFBDB9FFFFF1E03
      FFFFFFFFC0003FFFFDF7E87FFFD81E03FFFFFFFFC0003FFFF8EFF3FFFF800E03
      FFFFFFFFC0003FFFF05F83FFFC000003FFCFDFFFC000003FE03E75FFF8000007
      FF871FFF8000000FC019F6FFF80000E7FF067FFF80000007800FF77FE0000003
      FE03FFFF800000038007EEBFC0000003FE03E3FF800000038007EC5FC0000003
      F8038FFF800000010007F82FC0000007C003FFFFC00000010007F01700000001
      8003FFFFC00000010007E007000000008003FFFFC00000010007C00700000000
      800380FFC000000100078003800000008003FFFFC00000030007000100000001
      8003FFFFC00000030006000000000001C003FFFFC0000007800C000000000003
      FC038FFFC0000007C018000080000003FE03F3FFC000000FE03800008000000F
      FF07FFFFC000003FF078000000000007FF867FFFC000007FF8F800018000000F
      FFC71FFFC00000FFFDF80003C000001FFFEFC7FFC00031FFFFFC0003C000001F
      FFFFFFFFC0003FFFFFFE0003C000001FFFFFFFFFC0003FFFFFFF0007C000003F
      FFFFFFFFC0003FFFFFFF000FF80000FFFFFFFFFFC0003FFFFFFF001FF80000FF
      FFFFFFFFC0003FFFFFFF803FFC0001FFFFFFFFFFC0003FFFFFFFC07FFF800FFF
      FFFFFFFFFFFFFFFFFFFFE0FFFF889FFFFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FE1FFFFFFFFFFFFFFFFC7FFFFFFF0FFFFC0FFFFFE7333333FFF21FFFFFFC07FF
      F80FFFFFE7333333FFCE07FFFFF003FFFA0FFFFFFFFFFFFFFF3E01FFFFC001FF
      FD0FFFFFFFFFFFFFFCFC007FFF0000FFFE0FFFFFE7FFFFFFF3F2001FFC00007F
      FC0FFFFFE7FFFFFFCFCA0007FC00003FFA0FFFFFFFFFFFFF9F3A0003FC00001F
      FD0FFFFFFFFFFFFF9CFA0003FC00000FFE0FFFFFE7FFFFFF93FA0003FE000007
      FC0FFFFFE7FFFFFF8FFA0003FF000003FA0FE7FFFF3F3FFF1FFA0001C3800001
      FA0FC3FFFF1E1FFF1FFA000181C00000FD0FB9FFE79C1FFF1FF8000101800000
      FD0F7CFFE7C8CFFF1FF3000100000000FA0EE67FFFE1E3FF1FCD800100000000
      F405C33FFFF3F1FF1F3EC00100000001E803809FE7FFF1FF1CF3400100020005
      D00100CFE7FFFCFF13CF11810000000DA0000067FFFFFE3F0F3C026180000063
      A0000073FFFFFF1F2CF00999F800017FA0000019E7FFFF9F97C000E7FE00637F
      A0C00033E7FFFFFFCB00041FFF00F8FFA0400067FFFFFFFFE040027FFF81FFFF
      D00000CFFFFFFFFFF310017FFF1FFFFFC800019FE7FFFFFFFFC0009FFE3FFFFF
      C7C6033FE7FFFFFFFFF0007FFC7FFFFFC80F067FFFFFFFFFFFFC01FFF8FFFFFF
      CF97CCFFFFFFFFFFFFFE07FFF1FFFFFFE7BBF9FFFFFFFFFFFFFF1FFFF3FFFFFF
      F07C03FFFFFFFFFFFFFFFFFFFFFFFFFFE0000007F80007FFC000403FFFFFFFFF
      E0000007F00003FFC0000007E000003FE0000007E00001FF800000038000001F
      E0000007E00000FF000000018000000FE0000007C000007F000000018000000F
      E00000070000003F000000010000000FE00000070000001F000000000000000F
      E00000070000000F000000008000000FE000000780000007000000000000000F
      E0000007C0000003000000000000000FE0000007E0000001000000018000000F
      E0000007E00000000000000B0000000FC0000007E0000000C000000F0000000F
      80000007E0000000C000000F8000000380000007F0000000E000000F00000001
      80000007F8000000E00000070000000080000007FC000000C000000780000000
      80000007FE0000000000000100000000C0000007FC0000000000000000000000
      E0000007F80000000000000080000000E0000007F00000000000000000000000
      E0000007E00000010000000000000001E0000007C000000100000000E000001F
      E00000078000000300000003F07E007FE0000007C0000007C000000FF87F00FF
      E0000007E000FF1FF000003FFC7F81FFE0000007F001FFFFF000007FFE7FF8FF
      E000000FF803FFFFF00001FFFFFFFC7FE000001FFC07FFFFE00003FFFFFFFE3F
      E000003FFE0FFFFFC0000FFFFFFFFF1FE000007FFF1FFFFFE0207FFFFFFFFF8F
      E00000FFFFBFFFFFF821FFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF7FFDFFFFFFFFFFFFFFFFFF80000000FE3018FFFFFFFFFFCE66666780100000
      FF0001FFC0000007CE66666780000000FF0001FF80000003FFFFFFFF80000000
      FE0000FF00000001FFFFFFFF80000000FC00007F00000001CFFFFFFF80000000
      F800103F00000001CFFFFFFF80000000F800203F00000001FFFFFFFF80000000
      F000201F00000001FF80003F80000000F000401F00000001CE00003F80000000
      E000400F00000001CE7FFF3F80000000E000800F00000001FE7FFF3F80000000
      E000800F00000001FF00007F80000000E000000F00000001CE0007FF80000000
      E000000F00000001CE0007FF80000000E000000F00000001FE0007FF80000000
      E000000F00000001FE0007FF80000000F000001F00000001CE000FFF80000000
      F000001F00000001CE0001FF80000000F800003F00000001FE0001FF80000000
      F800003F00000001FE0001FF80000000FC00007F00000001CE0001FF80000000
      FE0000FF00000001CF0003FF80000000FF0001FF00000001FFFFFFFF80000000
      FFC007FF00000001FFFFFFFF80000000FFF01FFF00000001CFFFFFFF80000000
      FFE00FFF80000003CFFFFFFF80000000FFE00FFFC0000007FFFFFFFF80000000
      FFE00FFFFFFFFFFFFFFFFFFF80000000FFF01FFFFFFFFFFFFFFFFFFF80000000
      FFF83FFFFFFFFFFFFFFFFFFF80000000FFFFFFFFFFFFFF7FFF00600FFFFC003F
      F800000FF0000001FF00600FFFFC003FE0000003E00001FBFF00600FF8000003
      C0000003E0000003FF00600FF8000003C0000001E0000003FF00600FFA210003
      80000001E0000003FF00600FFA00000380000001E0000003FF00600FFA840000
      80000001E0000003FF00600F8263210280000001E0000003FF00600F02210002
      80000001E0000003FF00701F3A00002280000001E0000003FF80F03F2221083A
      80000001E0000003FFC0F83F2200082080000001E0000003FFC0F83F22840820
      80000001E0000003FFC0F83F2263073B80000001E0000003FFC0F83F22420423
      80000001E0000003FFC0F83F23FFFFFB80000001E00000028180F03F20000003
      80000001E00000008000003F2000008780000001E00000048000003F20002087
      80000001E00000068000001F2000008780000001FFFF0FFF8000001F20102087
      80000001FFEF0F7F8000000F2010208780000001FFF79EFF8000000F20102087
      80000001FFF399FF8080000F2010008780000001FFF991FFC3C0000F20100087
      80000001FFF883FFFFF0600F267C008780000001FFF001FFFFFFE00F227F2087
      80000003FD80002FFFFFE00F30006787C0000003FFFC07FFFFFFE00F81006407
      C0000007FFD803EFFFFFFFFFDFFF6787F000001FFFF399FFFFFFFFFFEFFF27C7
      FFFFFFFFFFEFDEFFFFFFFFFFF000000F00000000000000000000000000000000
      000000000000}
  end
  object ActionsMain: TActionList
    Tag = 10000000
    Images = IL1
    Left = 792
    Top = 96
    object aShowSost: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1057#1086#1089#1090#1086#1103#1085#1080#1077'...'
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1086#1089#1090#1086#1103#1085#1080#1077
      ImageIndex = 0
      OnExecute = aShowSostExecute
    end
    object aAnalGraf: TAction
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1072#1085#1072#1083#1086#1075#1086#1074#1099#1093'...'
      Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1072#1085#1072#1083#1086#1075#1086#1074#1099#1093' '#1075#1088#1072#1092#1080#1082#1086#1074
      ImageIndex = 7
      OnExecute = aAnalGrafExecute
    end
    object aBitGraf: TAction
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1072#1085#1072#1083#1080#1079#1072#1090#1086#1088#1072'...'
      Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1072#1085#1072#1083#1080#1079#1072#1090#1086#1088#1072
      ImageIndex = 6
      OnExecute = aBitGrafExecute
    end
    object aCtrTip: TAction
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088#1072
      Hint = #1058#1080#1087' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088#1072
      ImageIndex = 1
      OnExecute = aCtrTipExecute
    end
    object aBlControl: TAction
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
      Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
      ImageIndex = 2
      OnExecute = aBlControlExecute
    end
    object aBlTimer: TAction
      Caption = #1047#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1089#1091#1090#1082#1080
      Hint = #1047#1072#1076#1072#1085#1080#1103' '#1085#1072' '#1089#1091#1090#1082#1080
      ImageIndex = 4
      OnExecute = aBlTimerExecute
    end
    object aBlArxiv: TAction
      Caption = #1040#1088#1093#1080#1074' '#1074' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088#1077
      ImageIndex = 3
    end
    object aBase: TAction
      Caption = #1054#1090#1095#1077#1090#1099
      Hint = #1058#1077#1082#1089#1090#1086#1074#1086#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1080#1077
      ImageIndex = 0
      OnExecute = aBaseExecute
    end
    object aPrintScreen: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1101#1082#1088#1072#1085#1072
      Hint = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1072
      ImageIndex = 9
      OnExecute = aPrintScreenExecute
    end
    object aBigGraf: TAction
      Caption = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1084#1072#1089#1096#1090#1072#1073#1072
      Hint = #1059#1074#1077#1083#1080#1095#1077#1085#1080#1077' '#1084#1072#1089#1096#1090#1072#1073#1072
      ImageIndex = 2
      OnExecute = aBigGrafExecute
    end
    object aSmolGraf: TAction
      Caption = #1059#1084#1077#1085#1100#1096#1077#1085#1080#1077' '#1084#1072#1089#1096#1090#1072#1073#1072
      Hint = #1059#1084#1077#1085#1100#1096#1077#1085#1080#1077' '#1084#1072#1089#1096#1090#1072#1073#1072
      ImageIndex = 3
      OnExecute = aSmolGrafExecute
    end
    object aShowVoice: TAction
      AutoCheck = True
      Caption = #1043#1086#1083#1086#1089#1086#1074#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      Checked = True
      Hint = #1043#1086#1083#1086#1089#1086#1074#1099#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
      ImageIndex = 13
      OnExecute = aShowVoiceExecute
    end
    object aOnOffPort: TAction
      AutoCheck = True
      Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1077' '#1089#1074#1103#1079#1080
      ImageIndex = 4
    end
    object aShowHandControl: TAction
      Tag = 7
      Caption = #1056#1091#1095#1085#1086#1077' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1077
      ImageIndex = 17
    end
    object aNewCtr: TAction
      Tag = 12
      Caption = #1053#1086#1074#1099#1081' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088'...'
      OnExecute = aNewCtrExecute
    end
    object aOpenCtr: TAction
      Tag = 12
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088'...'
      OnExecute = aOpenCtrExecute
    end
    object aCloseCtr: TAction
      Tag = 14
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1082#1086#1085#1090#1088#1086#1083#1083#1077#1088
      OnExecute = aCloseCtrExecute
    end
    object aCloseMon: TAction
      Caption = #1042#1099#1093#1086#1076
      OnExecute = aCloseMonExecute
    end
    object aActionsDlg: TAction
      Caption = #1059#1088#1086#1074#1085#1080' '#1076#1086#1089#1090#1091#1087#1072' '#1082' '#1076#1077#1081#1089#1090#1074#1080#1103#1084'...'
      OnExecute = aActionsDlgExecute
    end
    object aShowAnaliz: TAction
      AutoCheck = True
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1072#1085#1072#1083#1080#1079#1072#1090#1086#1088
      OnExecute = aShowAnalizExecute
    end
    object aShowAudit: TAction
      AutoCheck = True
      Checked = True
      OnExecute = aShowAnalizExecute
    end
    object aShowWind: TAction
      Caption = #1044#1072#1090#1095#1080#1082' '#1074#1077#1090#1088#1072'...'
      OnExecute = aShowWindExecute
    end
    object aOpenInter: TAction
      Tag = 12
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1074' '#1048#1085#1090#1077#1088#1085#1077#1090'...'
      OnExecute = aOpenInterExecute
    end
    object aExportXml: TAction
      Tag = 14
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' XML...'
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' XML...'
      OnExecute = aExportXmlExecute
    end
    object aShowArchGraf: TAction
      Caption = 'aShowArchGraf'
      Hint = #1043#1088#1072#1092#1080#1082#1080' '#1072#1088#1093#1080#1074#1086#1074
      ImageIndex = 7
      OnExecute = aShowArchGrafExecute
    end
    object aAVIVoice: TAction
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1075#1086#1083#1086#1089#1072'...'
      GroupIndex = 3
      Hint = #1042#1099#1073#1086#1088' '#1080' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1075#1086#1083#1086#1089#1072
      ImageIndex = 8
      OnExecute = aAVIVoiceExecute
    end
    object aChartColor: TAction
      Tag = 12
      Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072' '#1075#1088#1072#1092#1080#1082#1086#1074'...'
      Hint = #1062#1074#1077#1090' '#1092#1086#1085#1072' '#1075#1088#1072#1092#1080#1082#1086#1074'...'
      OnExecute = aChartColorExecute
    end
    object aJurnal: TAction
      Caption = #1046#1091#1088#1085#1072#1083#1099
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1078#1091#1088#1085#1072#1083#1086#1074
      ImageIndex = 9
      OnExecute = aJurnalExecute
    end
    object aVideo: TAction
      Caption = #1042#1080#1076#1077#1086#1088#1077#1075#1080#1089#1090#1088#1072#1090#1086#1088'...'
      Hint = #1042#1080#1076#1077#1086#1088#1077#1075#1080#1089#1090#1088#1072#1090#1086#1088
      OnExecute = aVideoExecute
    end
    object aOpenFile: TAction
      Hint = #1040#1088#1093#1080#1074#1099' '#1080#1079' '#1092#1072#1081#1083#1086#1074' '#1085#1072' '#1076#1080#1089#1082#1077
      ImageIndex = 5
      OnExecute = SelectPClick
    end
    object aCalibr: TAction
      Caption = #1050#1072#1083#1080#1073#1088#1086#1074#1082#1072' '#1076#1072#1090#1095#1080#1082#1086#1074
      Hint = #1050#1072#1083#1080#1073#1088#1086#1074#1082#1072' '#1076#1072#1090#1095#1080#1082#1086#1074
      ImageIndex = 3
      OnExecute = aCalibrExecute
    end
    object aPortStatus: TAction
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1086#1073#1084#1077#1085#1072
      Hint = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1086#1073#1084#1077#1085#1072
      OnExecute = aPortStatusExecute
    end
    object aPasw: TAction
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
      Hint = #1059#1088#1086#1074#1077#1085#1100' '#1076#1086#1089#1090#1091#1087#1072
      ImageIndex = 12
      OnExecute = aPaswExecute
    end
    object aForecast: TAction
      Tag = 12
      Caption = #1055#1088#1086#1075#1085#1086#1079' '#1087#1086#1075#1086#1076#1099
      ImageIndex = 19
      OnExecute = aForecastExecute
    end
  end
end
