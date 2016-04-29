object StgFrame: TStgFrame
  Left = 0
  Top = 0
  Width = 1141
  Height = 224
  TabOrder = 0
  object StgP: TPanel
    Left = 585
    Top = 0
    Width = 556
    Height = 224
    Align = alClient
    Caption = 'StgP'
    TabOrder = 0
    object RuleChart: TChart
      Left = 329
      Top = 33
      Width = 226
      Height = 190
      Cursor = crCross
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Gradient.EndColor = 4194304
      Gradient.StartColor = clBlue
      Gradient.Visible = True
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clLime
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
      LeftAxis.Title.Font.Color = clRed
      LeftAxis.Title.Font.Height = -11
      LeftAxis.Title.Font.Name = 'Arial'
      LeftAxis.Title.Font.Style = []
      Legend.Visible = False
      RightAxis.LabelsFont.Charset = DEFAULT_CHARSET
      RightAxis.LabelsFont.Color = clLime
      RightAxis.LabelsFont.Height = -11
      RightAxis.LabelsFont.Name = 'Arial'
      RightAxis.LabelsFont.Style = []
      RightAxis.StartPosition = 4.000000000000000000
      RightAxis.EndPosition = 96.000000000000000000
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
      object Series3: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 8454016
        VertAxis = aRightAxis
        LinePen.Color = 8454016
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
      Top = 33
      Width = 328
      Height = 190
      Align = alLeft
      TabOrder = 1
      object Label3: TLabel
        Left = 2
        Top = 16
        Width = 102
        Height = 13
        Caption = #1042#1083#1080#1103#1102#1097#1080#1077' '#1092#1072#1082#1090#1086#1088#1099
      end
      object Label8: TLabel
        Left = 48
        Top = 120
        Width = 146
        Height = 13
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1083#1080#1103#1102#1097#1080#1081' '#1092#1072#1082#1090#1086#1088
      end
      object RuleListLB: TListBox
        Left = 1
        Top = 32
        Width = 232
        Height = 73
        ItemHeight = 13
        TabOrder = 0
        OnClick = RuleListLBClick
      end
      object FactorListCB: TComboBox
        Left = 8
        Top = 136
        Width = 225
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = 'FactorListCB'
        OnClick = FactorListCBClick
      end
      object AddFactorB: TBitBtn
        Left = 168
        Top = 152
        Width = 57
        Height = 25
        Caption = '&Add'
        TabOrder = 2
        Visible = False
        OnClick = AddFactorBClick
        Kind = bkYes
      end
      object BitBtn1: TBitBtn
        Left = 184
        Top = 8
        Width = 25
        Height = 21
        ModalResult = 3
        TabOrder = 3
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object Panel5: TPanel
        Left = 240
        Top = 1
        Width = 87
        Height = 188
        Align = alRight
        BevelInner = bvLowered
        Color = clMoneyGreen
        TabOrder = 4
        object Label4: TLabel
          Left = 11
          Top = 16
          Width = 70
          Height = 13
          Caption = #1055#1088#1080' '#1079#1085#1072#1095#1077#1085#1080#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 15
          Top = 64
          Width = 58
          Height = 13
          Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 11
          Top = 104
          Width = 70
          Height = 13
          Caption = #1055#1088#1080' '#1079#1085#1072#1095#1077#1085#1080#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 15
          Top = 144
          Width = 58
          Height = 13
          Caption = #1052#1085#1086#1078#1080#1090#1077#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object X1Ed: TEdit
          Tag = 1
          Left = 8
          Top = 32
          Width = 73
          Height = 21
          TabOrder = 0
          OnExit = X1EdChange
        end
        object Y1Ed: TEdit
          Tag = 1
          Left = 9
          Top = 77
          Width = 64
          Height = 21
          TabOrder = 1
          OnExit = X1EdChange
        end
        object X2Ed: TEdit
          Tag = 1
          Left = 9
          Top = 117
          Width = 72
          Height = 21
          TabOrder = 2
          OnExit = X1EdChange
        end
        object Y2Ed: TEdit
          Tag = 1
          Left = 8
          Top = 156
          Width = 65
          Height = 21
          TabOrder = 3
          OnExit = X1EdChange
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 554
      Height = 32
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 2
      object Label2: TLabel
        Left = 13
        Top = 7
        Width = 139
        Height = 13
        Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1091#1077#1084#1099#1081' '#1087#1072#1088#1072#1084#1077#1090#1088
      end
      object Label9: TLabel
        Left = 444
        Top = 6
        Width = 6
        Height = 13
        Caption = '='
      end
      object ValNameCB: TComboBox
        Left = 159
        Top = 3
        Width = 282
        Height = 21
        AutoDropDown = True
        AutoCloseUp = True
        ItemHeight = 13
        TabOrder = 0
      end
      object ValEdit: TEdit
        Left = 456
        Top = 3
        Width = 89
        Height = 21
        TabOrder = 1
        OnExit = ValEditExit
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 224
    Align = alLeft
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 223
      Height = 184
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 16
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
      object StgNameCB: TComboBox
        Left = 8
        Top = 25
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
        OnChange = StgNameCBChange
        OnSelect = StgNameCBSelect
      end
      object PrioriChart: TChart
        Left = 1
        Top = 56
        Width = 221
        Height = 127
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
        Align = alBottom
        TabOrder = 1
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
    object SaveStgB: TBitBtn
      Left = 86
      Top = 192
      Width = 59
      Height = 25
      Caption = '&Save'
      Enabled = False
      TabOrder = 1
      OnClick = SaveStgBClick
      Kind = bkYes
    end
  end
  object HotCorsGrid1: TtsGrid
    Left = 225
    Top = 0
    Width = 360
    Height = 224
    Align = alLeft
    CheckBoxStyle = stCheck
    Cols = 2
    ExportDelimiter = ','
    HeadingFont.Charset = DEFAULT_CHARSET
    HeadingFont.Color = clWindowText
    HeadingFont.Height = -11
    HeadingFont.Name = 'MS Sans Serif'
    HeadingFont.Style = []
    ParentShowHint = False
    Rows = 6
    ShowHint = False
    StoreData = True
    TabOrder = 2
    Version = '2.20.24'
    Visible = False
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    OnCellChanged = HotCorsGrid1CellChanged
    ColProperties = <
      item
        DataCol = 1
        Col.Width = 257
      end
      item
        DataCol = 2
        Col.Width = 85
      end>
    Data = {010000000100000001000000000000000000000000}
  end
end
