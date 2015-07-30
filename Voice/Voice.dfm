object FVoice: TFVoice
  Left = 788
  Top = 389
  Width = 738
  Height = 258
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1075#1086#1083#1086#1089#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeakGrid: TtsGrid
    Left = 0
    Top = 53
    Width = 730
    Height = 140
    Align = alClient
    AlwaysShowEditor = False
    AlwaysShowFocus = True
    CheckBoxStyle = stCheck
    Cols = 4
    ColSelectMode = csNone
    ExportDelimiter = ','
    HeadingFont.Charset = DEFAULT_CHARSET
    HeadingFont.Color = clWindowText
    HeadingFont.Height = -11
    HeadingFont.Name = 'MS Sans Serif'
    HeadingFont.Style = []
    ParentShowHint = False
    PopupMenu = VoicePM
    Rows = 1
    RowSelectMode = rsNone
    ShowHint = False
    StoreData = True
    TabOrder = 0
    Version = '3.01.07'
    XMLExport.Version = '1.0'
    XMLExport.DataPacketVersion = '2.0'
    OnCellEdit = SpeakGridCellEdit
    ColProperties = <
      item
        DataCol = 1
        Col.ControlType = ctCheck
        Col.Width = 18
      end
      item
        DataCol = 2
        Col.Heading = #1048#1089#1093#1086#1076#1085#1072#1103' '#1092#1088#1072#1079#1072
        Col.ReadOnly = True
        Col.Width = 261
      end
      item
        DataCol = 3
        Col.Heading = #1053#1086#1074#1072#1103' '#1092#1088#1072#1079#1072
        Col.Width = 333
      end
      item
        DataCol = 4
        Col.Heading = #1060#1072#1081#1083' '#1089#1087#1088#1072#1074#1082#1080
        Col.Width = 97
      end>
    Data = {
      010000000300000002010000000105000000C3EEEBEEF1010000000000000000
      00000000}
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 20
    Width = 730
    Height = 33
    ButtonHeight = 21
    ButtonWidth = 17
    Caption = 'ToolBar1'
    TabOrder = 1
    object OnSAPIVoice: TCheckBox
      Tag = 10000000
      Left = 0
      Top = 2
      Width = 156
      Height = 21
      Caption = #1057#1080#1085#1090#1077#1079#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1075#1086#1083#1086#1089
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = OnSAPIVoiceClick
    end
    object ToolButton2: TToolButton
      Left = 156
      Top = 2
      Caption = 'ToolButton2'
      ImageIndex = 0
    end
    object VoicesCB: TComboBox
      Left = 173
      Top = 2
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnChange = VoicesCBChange
    end
    object ToolButton1: TToolButton
      Left = 318
      Top = 2
      Caption = 'ToolButton1'
    end
    object VolumeTB: TTrackBar
      Tag = 10000000
      Left = 335
      Top = 2
      Width = 121
      Height = 21
      Hint = 'Volume'
      Max = 100
      ParentShowHint = False
      Frequency = 10
      ShowHint = True
      TabOrder = 2
      ThumbLength = 15
      OnChange = VolumeTBChange
    end
    object RateTB: TTrackBar
      Tag = 10000000
      Left = 456
      Top = 2
      Width = 96
      Height = 21
      Hint = 'Speed'
      ParentShowHint = False
      Position = 10
      ShowHint = True
      TabOrder = 3
      ThumbLength = 15
      OnChange = RateTBChange
    end
  end
  object ToolBar2: TToolBar
    Left = 0
    Top = 0
    Width = 730
    Height = 20
    ButtonHeight = 15
    ButtonWidth = 17
    Caption = 'ToolBar2'
    TabOrder = 2
    object OnAVIVoice: TCheckBox
      Tag = 10000000
      Left = 0
      Top = 2
      Width = 156
      Height = 15
      Caption = #1043#1086#1083#1086#1089' '#1080#1079' AVI '#1092#1072#1081#1083#1086#1074
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 730
    Height = 31
    Align = alBottom
    TabOrder = 3
    object TestV: TSpeedButton
      Tag = 10000000
      Left = 472
      Top = 6
      Width = 81
      Height = 22
      Caption = #1055#1088#1086#1073#1072' '#1075#1086#1083#1086#1089#1072
      Enabled = False
      OnClick = TestVClick
    end
    object TextEdit: TLabeledEdit
      Tag = 10000000
      Left = 64
      Top = 4
      Width = 353
      Height = 21
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = #1060#1088#1072#1079#1072
      LabelPosition = lpLeft
      LabelSpacing = 7
      TabOrder = 0
      Text = #1043#1086#1083#1086#1089#1086#1074#1086#1077' '#1089#1086#1087#1088#1086#1074#1086#1078#1076#1077#1085#1080#1077'  (programm)'
    end
  end
  object VoicePM: TPopupMenu
    Tag = 10000000
    Left = 320
    Top = 112
    object N1: TMenuItem
      Caption = #1055#1088#1086#1075#1086#1074#1086#1088#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1060#1072#1081#1083' '#1089#1087#1088#1072#1074#1082#1080
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1055#1088#1072#1074#1080#1090#1100' '#1089#1087#1088#1072#1074#1082#1091
      OnClick = N3Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 424
    Top = 136
  end
end
