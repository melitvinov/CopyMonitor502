object FGridGraf: TFGridGraf
  Left = 739
  Top = 298
  Width = 1223
  Height = 650
  Caption = #1043#1088#1072#1092#1080#1082#1080' '#1072#1088#1093#1080#1074#1086#1074
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 225
    Top = 0
    Width = 5
    Height = 616
    Color = clGradientActiveCaption
    ParentColor = False
  end
  object Panel2: TPanel
    Left = 230
    Top = 0
    Width = 973
    Height = 616
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object Splitter3: TSplitter
      Left = 1
      Top = 471
      Width = 971
      Height = 5
      Cursor = crVSplit
      Align = alBottom
      Color = clBackground
      ParentColor = False
    end
    object Chart1: TChart
      Left = 1
      Top = 30
      Width = 971
      Height = 429
      Cursor = crHandPoint
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Color = 4194368
      BackWall.Pen.Color = 16711808
      BottomWall.Color = 16777088
      Gradient.Direction = gdFromBottomLeft
      Gradient.EndColor = 4194304
      Gradient.StartColor = clBlack
      Gradient.Visible = True
      LeftWall.Pen.Color = clAqua
      MarginRight = 5
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clLime
      Title.Font.Height = -21
      Title.Font.Name = 'Arial'
      Title.Font.Style = []
      Title.Text.Strings = (
        '')
      Title.Visible = False
      BackColor = 4194368
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.Axis.Color = clYellow
      BottomAxis.Axis.Width = 1
      BottomAxis.AxisValuesFormat = 'hh:mm:ss'
      BottomAxis.DateTimeFormat = 'h:nn'
      BottomAxis.Grid.Color = 21845
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
      LeftAxis.Grid.Color = 24064
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
      Legend.Frame.Color = 16777088
      Legend.LegendStyle = lsSeries
      Legend.ShadowColor = 8454143
      Legend.TopPos = 5
      RightAxis.Automatic = False
      RightAxis.AutomaticMaximum = False
      RightAxis.AutomaticMinimum = False
      RightAxis.Axis.Width = 1
      RightAxis.Grid.Visible = False
      RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
      RightAxis.LabelsFont.Color = clFuchsia
      RightAxis.LabelsFont.Height = -11
      RightAxis.LabelsFont.Name = 'Arial'
      RightAxis.LabelsFont.Style = []
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
      View3D = False
      OnAfterDraw = Chart1AfterDraw
      Align = alClient
      BevelInner = bvLowered
      Color = clBlack
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      OnDragDrop = Chart1DragDrop
      OnDragOver = Chart1DragOver
      OnMouseMove = Chart1MouseMove
      DesignSize = (
        971
        429)
      object LTime: TLabel
        Left = 214
        Top = 414
        Width = 27
        Height = 13
        Anchors = [akBottom]
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
      object LVal: TLabel
        Left = 927
        Top = 71
        Width = 27
        Height = 13
        Anchors = [akRight]
        Caption = '12.12'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Series2: TGanttSeries
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
        Title = '?????'
        Pointer.InflateMargins = True
        Pointer.Pen.Visible = False
        Pointer.Style = psRectangle
        Pointer.VertSize = 12
        Pointer.Visible = True
        XValues.DateTime = True
        XValues.Name = 'Start'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
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
        Active = False
        Cursor = 2020
        Marks.Arrow.Color = 33023
        Marks.ArrowLength = 8
        Marks.Style = smsXValue
        Marks.Visible = False
        PercentFormat = '##0.##,%'
        SeriesColor = 8454143
        Title = 'ASer1'
        InvertedStairs = True
        LinePen.Color = 8454143
        LinePen.Width = 2
        Pointer.Draw3D = False
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
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
    object ScrollBar1: TScrollBar
      Left = 1
      Top = 459
      Width = 971
      Height = 12
      Cursor = crHandPoint
      Align = alBottom
      Ctl3D = True
      PageSize = 8
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnChange = ScrollBar1Change
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 596
      Width = 971
      Height = 19
      Panels = <
        item
          Width = 200
        end>
      OnClick = StatusBar1Click
    end
    object GridArx: TtsGrid
      Left = 1
      Top = 476
      Width = 971
      Height = 120
      Align = alBottom
      AlwaysShowEditor = False
      AlwaysShowFocus = True
      CheckBoxStyle = stCheck
      Color = clNavy
      Cols = 18
      ExportDelimiter = ','
      HeadingFont.Charset = DEFAULT_CHARSET
      HeadingFont.Color = clWindowText
      HeadingFont.Height = -11
      HeadingFont.Name = 'MS Sans Serif'
      HeadingFont.Style = []
      ParentShowHint = False
      PopupMenu = pmArx
      Rows = 4
      ShowHint = False
      StoreData = True
      TabOrder = 3
      Version = '3.01.07'
      XMLExport.Version = '1.0'
      XMLExport.DataPacketVersion = '2.0'
      OnCellEdit = GridArxCellEdit
      OnClickCell = GridArx2ClickCell
      OnDragDrop = Chart1DragDrop
      OnDragOver = Chart1DragOver
      OnMouseMove = GridArx2MouseMove
      ColProperties = <
        item
          DataCol = 1
          Col.ControlType = ctCheck
          Col.Heading = '*'
          Col.Width = 15
        end
        item
          DataCol = 2
          Col.Heading = #1062#1074#1077#1090
          Col.Width = 29
        end
        item
          DataCol = 3
          Col.ButtonType = btVertSpin
          Col.Heading = #1051#1080#1085#1080#1103
          Col.Width = 37
        end
        item
          DataCol = 4
          Col.Heading = #1058#1080#1087
          Col.Width = 26
        end
        item
          DataCol = 5
          Col.Heading = #1050#1086#1085#1090#1088#1086#1083#1083#1077#1088
          Col.Width = 99
        end
        item
          DataCol = 6
          Col.Heading = #1057#1080#1075#1085#1072#1083
          Col.Width = 187
        end
        item
          DataCol = 7
          Col.ControlType = ctCheck
          Col.Heading = 'O'#1089#1100
          Col.Width = 23
        end
        item
          DataCol = 8
          Col.Heading = #1047#1085#1072#1095#1077#1085#1080#1077
          Col.Width = 52
        end
        item
          DataCol = 9
          Col.Heading = #1052#1072#1082#1089#1080#1084#1091#1084
          Col.Width = 61
        end
        item
          DataCol = 10
          Col.Heading = #1044#1072#1090#1072' '#1052#1072#1082#1089
        end
        item
          DataCol = 11
          Col.Heading = #1052#1080#1085#1080#1084#1091#1084
        end
        item
          DataCol = 12
          Col.Heading = #1044#1072#1090#1072' '#1052#1080#1085
        end
        item
          DataCol = 13
          Col.Heading = #1057#1088#1077#1076#1085#1077#1077
          Col.Width = 53
        end
        item
          DataCol = 14
          Col.Heading = #1055#1077#1088#1080#1086#1076
          Col.Width = 96
        end>
      Data = {
        0100000007000000020200000000000000000200000000020000000700000000
        0000000000020000000003000000070000000000000000000200000000040000
        000700000000000000000002000000000000000000000000}
    end
    object ToolBar2: TToolBar
      Left = 1
      Top = 1
      Width = 971
      Height = 29
      ButtonHeight = 30
      ButtonWidth = 31
      Caption = 'ToolBar2'
      Images = FMain.ilGrBtn
      TabOrder = 4
      object pStart: TSpeedButton
        Tag = 10000000
        Left = 0
        Top = 2
        Width = 127
        Height = 30
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1085#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = pStartClick
      end
      object FinishDate: TDateTimePicker
        Left = 127
        Top = 2
        Width = 151
        Height = 30
        Date = 38692.536887673610000000
        Time = 38692.536887673610000000
        DateFormat = dfLong
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DaySum: TSpinEdit
        Left = 278
        Top = 2
        Width = 72
        Height = 30
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 60
      end
      object pPeriod: TSpeedButton
        Tag = 10000000
        Left = 350
        Top = 2
        Width = 59
        Height = 30
        Caption = #1076#1085#1077#1081
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ToolButton1: TToolButton
        Left = 409
        Top = 2
        Width = 24
        Caption = 'ToolButton1'
        ImageIndex = 1
        Style = tbsDivider
      end
      object ArGrRefr: TToolButton
        Tag = 10000000
        Left = 433
        Top = 2
        Hint = #1055#1077#1088#1077#1089#1090#1088#1086#1080#1090#1100
        ImageIndex = 6
        ParentShowHint = False
        ShowHint = True
        OnClick = ArGrRefrClick
      end
      object ArGrPrint: TToolButton
        Tag = 10000000
        Left = 464
        Top = 2
        Hint = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1086#1074
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = ArGrPrintClick
      end
      object ArGrColor: TToolButton
        Tag = 10000000
        Left = 495
        Top = 2
        Hint = #1062#1074#1077#1090' '#1092#1086#1085#1072'...'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = ArGrColorClick
      end
      object TrackBar1: TTrackBar
        Tag = 10000000
        Left = 526
        Top = 2
        Width = 60
        Height = 30
        Max = 15
        Min = 1
        ParentShowHint = False
        Frequency = 3
        Position = 1
        ShowHint = True
        TabOrder = 1
        OnChange = TrackBar1Change
      end
    end
  end
  object ScrollBar2: TScrollBar
    Left = 1203
    Top = 0
    Width = 12
    Height = 616
    Cursor = crHandPoint
    Align = alRight
    Ctl3D = True
    Kind = sbVertical
    PageSize = 8
    ParentCtl3D = False
    ParentShowHint = False
    Position = 10
    ShowHint = False
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
  object SigTV: TTreeView
    Left = 0
    Top = 0
    Width = 225
    Height = 616
    Align = alLeft
    Color = clBtnFace
    Indent = 19
    TabOrder = 2
    OnChange = SigTVChange
  end
  object ColorDialog1: TColorDialog
    Left = 616
    Top = 236
  end
  object pmArx: TPopupMenu
    Tag = 10000000
    Left = 367
    Top = 238
    object NExcelExp: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = NExcelExpClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object NSaveGraph: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1088#1086#1092#1080#1083#1100
      OnClick = NSaveGraphClick
    end
    object NLoadGraph: TMenuItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1086#1092#1080#1083#1100
      OnClick = NLoadGraphClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object NDelete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1090#1088#1086#1082#1091
      OnClick = NDeleteClick
    end
    object N3: TMenuItem
      Caption = #1062#1074#1077#1090' '#1090#1072#1073#1083#1080#1094#1099
      OnClick = N3Click
    end
  end
  object SaveChartDlg: TSaveDialog
    DefaultExt = '*.tga'
    Filter = #1043#1088#1072#1092#1080#1082#1080' '#1072#1088#1093#1080#1074#1086#1074'|*.tga'
    Left = 447
    Top = 238
  end
  object OpenChartDlg: TOpenDialog
    DefaultExt = '*.tga'
    Filter = #1043#1088#1072#1092#1080#1082#1080' '#1072#1088#1093#1080#1074#1086#1074'|*.tga'
    Left = 527
    Top = 238
  end
end
