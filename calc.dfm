object calcForm: TcalcForm
  Left = 339
  Top = 104
  Width = 900
  Height = 500
  Caption = #1056#1072#1089#1095#1077#1090' '#1084#1086#1097#1085#1086#1089#1090#1077#1081
  Color = clBtnFace
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 900
  Constraints.MinHeight = 500
  Constraints.MinWidth = 900
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 881
    Height = 457
    ActivePage = vkl2
    TabOrder = 0
    object vkl1: TTabSheet
      Caption = #1056#1072#1089#1095#1077#1090' '#1087#1086' '#1080#1079#1074#1077#1089#1090#1085#1099#1084' '#1084#1086#1097#1085#1086#1089#1090#1103#1084' '#1087#1086#1090#1077#1088#1100
      object Label6: TLabel
        Left = 520
        Top = 224
        Width = 35
        Height = 16
        Caption = 'U'#1085#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 432
        Top = 224
        Width = 28
        Height = 16
        Caption = 'I'#1085#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 224
        Width = 172
        Height = 16
        Caption = #1052#1086#1097#1085#1086#1089#1090#1080' '#1087#1086#1090#1077#1088#1100', '#1042#1090' ('#1074#1072#1088')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 464
        Top = 64
        Width = 198
        Height = 16
        Caption = #1048#1079#1084#1077#1088#1077#1085#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1090#1086#1082#1072', '#1040
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 64
        Width = 247
        Height = 16
        Caption = #1048#1079#1084#1077#1088#1077#1085#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103', '#1042
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 16
        Top = 0
        Width = 93
        Height = 13
        Caption = #1050#1086#1083'-'#1074#1086' '#1080#1079#1084#1077#1088#1077#1085#1080#1081
      end
      object Unom: TComboBox
        Left = 520
        Top = 248
        Width = 73
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '57,7 B'
        OnChange = UnomChange
        Items.Strings = (
          '57,7 B'
          '63,5 B'
          '100 B'
          '110 B'
          '115 B'
          '120 B'
          '127 B'
          '173 B'
          '190 B'
          '200 B'
          '220 B'
          '230 B')
      end
      object volt: TStringGrid
        Left = 16
        Top = 88
        Width = 401
        Height = 105
        Enabled = False
        FixedColor = clMoneyGreen
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 1
        RowHeights = (
          24
          24
          24
          24
          24)
      end
      object rep: TMemo
        Left = 0
        Top = 312
        Width = 865
        Height = 89
        Lines.Strings = (
          #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1072#1089#1095#1077#1090#1072)
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object poter: TButton
        Left = 432
        Top = 272
        Width = 113
        Height = 33
        Caption = 'poter'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clDefault
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        WordWrap = True
        OnClick = poterClick
      end
      object izmer: TSpinEdit
        Left = 16
        Top = 16
        Width = 73
        Height = 22
        MaxValue = 255
        MinValue = 1
        TabOrder = 4
        Value = 1
      end
      object Inom: TComboBox
        Left = 432
        Top = 248
        Width = 73
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = '1 '#1040
        OnChange = InomChange
        Items.Strings = (
          '1 '#1040
          '5 '#1040)
      end
      object count: TButton
        Left = 208
        Top = 16
        Width = 73
        Height = 25
        Caption = #1057#1095#1080#1090#1072#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = countClick
      end
      object cnst: TStringGrid
        Left = 16
        Top = 248
        Width = 401
        Height = 57
        ColCount = 6
        Enabled = False
        FixedColor = clMoneyGreen
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 7
      end
      object Button4: TButton
        Left = 88
        Top = 404
        Width = 89
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077
        TabOrder = 8
        OnClick = Button4Click
      end
      object Button3: TButton
        Left = 552
        Top = 272
        Width = 89
        Height = 33
        Caption = 'Button3'
        TabOrder = 9
        WordWrap = True
        OnClick = Button3Click
      end
      object Button2: TButton
        Left = 0
        Top = 404
        Width = 65
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 10
        OnClick = Button2Click
      end
      object Button1: TButton
        Left = 104
        Top = 16
        Width = 89
        Height = 25
        Caption = #1042#1074#1086#1076' '#1079#1085#1072#1095#1077#1085#1080#1081
        TabOrder = 11
        OnClick = Button1Click
      end
      object amper: TStringGrid
        Left = 464
        Top = 88
        Width = 401
        Height = 105
        Enabled = False
        FixedColor = clMoneyGreen
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        TabOrder = 12
        RowHeights = (
          24
          24
          24
          24
          24)
      end
    end
    object vkl2: TTabSheet
      Caption = #1055#1086#1076#1089#1095#1077#1090' '#1084#1086#1097#1085#1086#1089#1090#1077#1081' '#1087#1086#1090#1077#1088#1100
      ImageIndex = 1
      object Label7: TLabel
        Left = 16
        Top = 0
        Width = 137
        Height = 13
        Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1051#1069#1055
      end
      object Label8: TLabel
        Left = 16
        Top = 72
        Width = 282
        Height = 13
        Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1080#1079#1084#1077#1088#1080#1090#1077#1083#1100#1085#1099#1093' '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1086#1074
      end
      object Label9: TLabel
        Left = 16
        Top = 144
        Width = 311
        Height = 13
        Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1090#1088#1077#1093#1092#1072#1079#1085#1086#1075#1086' '#1089#1080#1083#1086#1074#1086#1075#1086' '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1090#1086#1088#1072
      end
      object Rline: TLabeledEdit
        Left = 16
        Top = 32
        Width = 121
        Height = 21
        EditLabel.Width = 150
        EditLabel.Height = 13
        EditLabel.Caption = #1040#1082#1090#1080#1074#1085#1086#1077' '#1089#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077', '#1054#1084
        TabOrder = 0
      end
      object Xline: TLabeledEdit
        Left = 192
        Top = 32
        Width = 121
        Height = 21
        EditLabel.Width = 162
        EditLabel.Height = 13
        EditLabel.Caption = #1056#1077#1072#1082#1090#1080#1074#1085#1086#1077' '#1089#1086#1087#1088#1086#1090#1080#1074#1083#1077#1085#1080#1077', '#1054#1084
        TabOrder = 1
      end
      object koefTok: TLabeledEdit
        Left = 16
        Top = 104
        Width = 121
        Height = 21
        EditLabel.Width = 146
        EditLabel.Height = 13
        EditLabel.Caption = #1050#1086#1101#1092'. '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1094#1080#1080' ('#1090#1086#1082#1072')'
        TabOrder = 2
      end
      object koefNapr: TLabeledEdit
        Left = 192
        Top = 104
        Width = 121
        Height = 21
        EditLabel.Width = 185
        EditLabel.Height = 13
        EditLabel.Caption = #1050#1086#1101#1092'. '#1090#1088#1072#1085#1089#1092#1086#1088#1084#1072#1094#1080#1080' ('#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103')'
        TabOrder = 3
      end
      object nompow: TLabeledEdit
        Left = 16
        Top = 176
        Width = 121
        Height = 21
        EditLabel.Width = 151
        EditLabel.Height = 13
        EditLabel.Caption = #1053#1086#1084#1080#1085#1072#1083#1100#1085#1072#1103' '#1084#1086#1097#1085#1086#1089#1090#1100', '#1082#1042#1040
        TabOrder = 4
      end
      object vysok: TLabeledEdit
        Left = 192
        Top = 176
        Width = 121
        Height = 21
        EditLabel.Width = 189
        EditLabel.Height = 13
        EditLabel.Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1087#1086' '#1074#1099#1089#1086#1082#1086#1081' '#1089#1090#1086#1088#1086#1085#1077', '#1082#1042
        TabOrder = 5
      end
      object nizk: TLabeledEdit
        Left = 408
        Top = 176
        Width = 121
        Height = 21
        EditLabel.Width = 181
        EditLabel.Height = 13
        EditLabel.Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1087#1086' '#1085#1080#1079#1082#1086#1081' '#1089#1090#1086#1088#1086#1085#1077', '#1082#1042
        TabOrder = 6
      end
      object poteriKZ: TLabeledEdit
        Left = 16
        Top = 224
        Width = 121
        Height = 21
        EditLabel.Width = 132
        EditLabel.Height = 13
        EditLabel.Caption = #1052#1086#1097#1085#1086#1089#1090#1100' '#1087#1086#1090#1077#1088#1100' '#1050#1047', '#1082#1042#1090
        TabOrder = 7
      end
      object PoteriHH: TLabeledEdit
        Left = 192
        Top = 224
        Width = 121
        Height = 21
        EditLabel.Width = 182
        EditLabel.Height = 13
        EditLabel.Caption = #1040#1082#1090#1080#1074#1085#1072#1103' '#1084#1086#1097#1085#1086#1089#1090#1100' '#1087#1086#1090#1077#1088#1100' '#1061#1061', '#1082#1042#1090
        TabOrder = 8
      end
      object NaprKZ: TLabeledEdit
        Left = 408
        Top = 224
        Width = 121
        Height = 21
        EditLabel.Width = 95
        EditLabel.Height = 13
        EditLabel.Caption = #1053#1072#1087#1088#1103#1078#1077#1085#1080#1077' '#1050#1047', %'
        TabOrder = 9
      end
      object TokHH: TLabeledEdit
        Left = 600
        Top = 224
        Width = 121
        Height = 21
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = #1058#1086#1082' '#1061#1061', %'
        TabOrder = 10
      end
      object padlik: TButton
        Left = 16
        Top = 264
        Width = 89
        Height = 25
        Caption = #1056#1072#1089#1095#1077#1090' '#1087#1086#1090#1077#1088#1100
        TabOrder = 11
        OnClick = padlikClick
      end
    end
  end
  object save: TSaveDialog
    DefaultExt = 'txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' '#1086#1090#1095#1077#1090#1072'|*.txt'
    InitialDir = 'GetCurrentDir'
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1086#1090#1095#1077#1090
    Left = 184
    Top = 432
  end
end
