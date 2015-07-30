object StgFrame: TStgFrame
  Left = 0
  Top = 0
  Width = 735
  Height = 212
  TabOrder = 0
  object StgP: TPanel
    Left = 289
    Top = 0
    Width = 311
    Height = 212
    Align = alClient
    Caption = 'StgP'
    TabOrder = 0
    object RuleChart: TChart
      Left = 73
      Top = 1
      Width = 237
      Height = 210
      Cursor = crCross
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Gradient.EndColor = 4194304
      Gradient.StartColor = clBlue
      Gradient.Visible = True
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clYellow
      Title.Font.Height = -11
      Title.Font.Name = 'Arial'
      Title.Font.Style = []
      Title.Text.Strings = (
        #1050#1086#1088#1088#1077#1082#1090#1080#1088#1091#1077#1084#1099#1081)
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.Axis.Color = 8454143
      BottomAxis.Axis.Width = 1
      BottomAxis.LabelsFont.Charset = DEFAULT_CHARSET
      BottomAxis.LabelsFont.Color = clWhite
      BottomAxis.LabelsFont.Height = -11
      BottomAxis.LabelsFont.Name = 'Arial'
      BottomAxis.LabelsFont.Style = []
      BottomAxis.Maximum = 25.000000000000000000
      BottomAxis.Title.Caption = #1042#1083#1080#1103#1102#1097#1080#1081' '#1092#1072#1082#1090#1086#1088
      BottomAxis.Title.Font.Charset = DEFAULT_CHARSET
      BottomAxis.Title.Font.Color = clYellow
      BottomAxis.Title.Font.Height = -11
      BottomAxis.Title.Font.Name = 'Arial'
      BottomAxis.Title.Font.Style = []
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
      LeftAxis.LabelsFont.Color = clYellow
      LeftAxis.LabelsFont.Height = -11
      LeftAxis.LabelsFont.Name = 'Arial'
      LeftAxis.LabelsFont.Style = []
      LeftAxis.Maximum = 105.000000000000000000
      LeftAxis.Minimum = -5.000000000000000000
      LeftAxis.Title.Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100
      LeftAxis.Title.Font.Charset = DEFAULT_CHARSET
      LeftAxis.Title.Font.Color = clWhite
      LeftAxis.Title.Font.Height = -11
      LeftAxis.Title.Font.Name = 'Arial'
      LeftAxis.Title.Font.Style = []
      Legend.Visible = False
      View3D = False
      Align = alClient
      TabOrder = 0
      OnMouseMove = RuleChartMouseMove
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Frame.Color = clSilver
        Marks.Visible = True
        SeriesColor = clRed
        LinePen.Width = 4
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
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
      Left = 1
      Top = 1
      Width = 72
      Height = 210
      Align = alLeft
      TabOrder = 1
      object Label4: TLabel
        Left = 8
        Top = 8
        Width = 54
        Height = 13
        Caption = #1050#1086#1088#1088#1077#1082#1090#1086#1088
      end
      object Label5: TLabel
        Left = 8
        Top = 112
        Width = 54
        Height = 13
        Caption = #1050#1086#1088#1088#1077#1082#1090#1086#1088
      end
      object Label6: TLabel
        Left = 8
        Top = 56
        Width = 58
        Height = 13
        Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100
      end
      object Label7: TLabel
        Left = 6
        Top = 160
        Width = 58
        Height = 13
        Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100
      end
      object Y2Ed: TEdit
        Tag = 1
        Left = 8
        Top = 173
        Width = 57
        Height = 21
        TabOrder = 0
        OnExit = X1EdChange
      end
      object X1Ed: TEdit
        Tag = 1
        Left = 8
        Top = 21
        Width = 57
        Height = 21
        TabOrder = 1
        OnExit = X1EdChange
      end
      object X2Ed: TEdit
        Tag = 1
        Left = 7
        Top = 125
        Width = 57
        Height = 21
        TabOrder = 2
        OnExit = X1EdChange
      end
      object Y1Ed: TEdit
        Tag = 1
        Left = 7
        Top = 69
        Width = 57
        Height = 21
        TabOrder = 3
        OnExit = X1EdChange
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 289
    Height = 212
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 64
      Top = 8
      Width = 78
      Height = 16
      Caption = #1057#1090#1088#1072#1090#1077#1075#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 32
      Top = 72
      Width = 139
      Height = 13
      Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1091#1077#1084#1099#1081' '#1087#1072#1088#1072#1084#1077#1090#1088
    end
    object Label3: TLabel
      Left = 48
      Top = 128
      Width = 102
      Height = 13
      Caption = #1042#1083#1080#1103#1102#1097#1080#1077' '#1092#1072#1082#1090#1086#1088#1099
    end
    object StgNameCB: TComboBox
      Left = 8
      Top = 32
      Width = 209
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnSelect = StgNameCBSelect
    end
    object ValNameCB: TComboBox
      Left = 8
      Top = 88
      Width = 209
      Height = 21
      AutoDropDown = True
      AutoCloseUp = True
      ItemHeight = 13
      TabOrder = 1
      OnSelect = ValNameCBSelect
    end
    object RuleListLB: TListBox
      Left = 8
      Top = 144
      Width = 209
      Height = 57
      ItemHeight = 13
      TabOrder = 2
      OnClick = RuleListLBClick
    end
    object ValEdit: TEdit
      Left = 232
      Top = 88
      Width = 41
      Height = 21
      TabOrder = 3
      OnExit = ValEditExit
    end
    object SaveStgB: TBitBtn
      Left = 224
      Top = 32
      Width = 59
      Height = 25
      Caption = '&Save'
      Enabled = False
      TabOrder = 4
      OnClick = SaveStgBClick
      Kind = bkYes
    end
  end
  object PrioriChart: TChart
    Left = 600
    Top = 0
    Width = 135
    Height = 212
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      '')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.Alignment = laTop
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alRight
    TabOrder = 2
    OnClick = PrioriChartClick
    object Series2: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Circled = True
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
end
