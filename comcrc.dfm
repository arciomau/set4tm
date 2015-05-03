object crcform: Tcrcform
  Left = 212
  Top = 172
  Width = 600
  Height = 400
  ActiveControl = time
  Caption = #1050#1086#1084#1072#1085#1076#1099' '#1089#1095#1077#1090#1095#1080#1082#1072' '#1080' CRC'
  Color = clBtnFace
  Constraints.MaxHeight = 400
  Constraints.MaxWidth = 600
  Constraints.MinHeight = 400
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rslt: TLabel
    Left = 24
    Top = 56
    Width = 52
    Height = 13
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 376
    Top = 80
    Width = 38
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Bevel1: TBevel
    Left = 8
    Top = 72
    Width = 569
    Height = 1
    Style = bsRaised
  end
  object Label2: TLabel
    Left = 32
    Top = 136
    Width = 198
    Height = 13
    Caption = #1047#1072#1087#1080#1089#1100' '#1074#1088#1077#1084#1077#1085#1080' '#1080#1085#1090#1077#1075#1088#1080#1088#1086#1074#1072#1085#1080#1103', '#1084#1080#1085'.'
  end
  object Label3: TLabel
    Left = 32
    Top = 184
    Width = 172
    Height = 13
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1089#1077#1090#1077#1074#1086#1081' '#1072#1076#1088#1077#1089
  end
  object Bevel2: TBevel
    Left = 7
    Top = 128
    Width = 569
    Height = 1
    Style = bsRaised
  end
  object Bevel3: TBevel
    Left = 7
    Top = 168
    Width = 569
    Height = 1
    Style = bsRaised
  end
  object Bevel4: TBevel
    Left = 7
    Top = 216
    Width = 569
    Height = 1
    Style = bsRaised
  end
  object Label4: TLabel
    Left = 32
    Top = 224
    Width = 154
    Height = 13
    Caption = #1047#1072#1087#1080#1089#1100' '#1087#1077#1088#1080#1086#1076#1072' '#1080#1085#1076#1080#1082#1072#1094#1080#1080', '#1089'.'
  end
  object Bevel5: TBevel
    Left = 7
    Top = 256
    Width = 569
    Height = 1
    Style = bsRaised
  end
  object Label5: TLabel
    Left = 32
    Top = 272
    Width = 99
    Height = 13
    Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1095#1072#1089#1086#1074', '#1089
  end
  object Bevel6: TBevel
    Left = 7
    Top = 304
    Width = 569
    Height = 1
    Style = bsRaised
  end
  object getcrc: TLabeledEdit
    Left = 24
    Top = 24
    Width = 273
    Height = 25
    AutoSize = False
    EditLabel.Width = 92
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1086#1084#1072#1085#1076#1072' '#1089#1095#1077#1090#1095#1080#1082#1091
    TabOrder = 0
    OnKeyPress = getcrcKeyPress
  end
  object crcbutton: TButton
    Left = 304
    Top = 24
    Width = 65
    Height = 25
    Caption = 'CRC16'
    TabOrder = 1
    OnClick = crcbuttonClick
  end
  object testkanala: TComboBox
    Left = 32
    Top = 96
    Width = 337
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = #1058#1077#1089#1090#1086#1074#1099#1077' '#1079#1072#1087#1088#1086#1089#1099' '#1082' '#1082#1072#1085#1072#1083#1072#1084' '#1089#1074#1103#1079#1080
    Items.Strings = (
      #1055#1088#1086#1074#1077#1088#1082#1072' '#1082#1072#1085#1072#1083#1072' '#1089#1074#1103#1079#1080
      #1054#1090#1082#1088#1099#1090#1080#1077' '#1082#1072#1085#1072#1083#1072' '#1089#1074#1103#1079#1080' ('#1089' '#1087#1072#1088#1086#1083#1077#1084')'
      #1047#1072#1082#1088#1099#1090#1080#1077' '#1082#1072#1085#1072#1083#1072' '#1089#1074#1103#1079#1080)
  end
  object passw: TEdit
    Left = 376
    Top = 96
    Width = 49
    Height = 25
    AutoSize = False
    MaxLength = 6
    TabOrder = 3
    OnKeyPress = passwKeyPress
  end
  object sendit: TButton
    Left = 432
    Top = 96
    Width = 49
    Height = 25
    Caption = #1047#1072#1087#1088#1086#1089
    TabOrder = 4
    OnClick = senditClick
  end
  object time: TSpinEdit
    Left = 248
    Top = 136
    Width = 49
    Height = 22
    MaxValue = 60
    MinValue = 1
    TabOrder = 5
    Value = 1
  end
  object massiv: TComboBox
    Left = 312
    Top = 136
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = #8470' '#1084#1072#1089#1089#1080#1074#1072
    Items.Strings = (
      #1055#1077#1088#1074#1099#1081' '#1084#1072#1089#1089#1080#1074
      #1042#1090#1086#1088#1086#1081' '#1084#1072#1089#1089#1080#1074
      #1058#1088#1077#1090#1080#1081' '#1084#1072#1089#1089#1080#1074)
  end
  object zapytczasu: TButton
    Left = 432
    Top = 136
    Width = 49
    Height = 25
    Caption = #1047#1072#1087#1088#1086#1089
    TabOrder = 7
    OnClick = zapytczasuClick
  end
  object adresa: TLabeledEdit
    Left = 248
    Top = 188
    Width = 57
    Height = 21
    EditLabel.Width = 62
    EditLabel.Height = 13
    EditLabel.Caption = #1040#1076#1088#1077#1089' (HEX)'
    MaxLength = 3
    TabOrder = 8
    OnKeyPress = adresaKeyPress
  end
  object getNetad: TButton
    Left = 320
    Top = 184
    Width = 49
    Height = 25
    Caption = #1047#1072#1087#1088#1086#1089
    TabOrder = 9
    OnClick = getNetadClick
  end
  object timeind: TSpinEdit
    Left = 200
    Top = 224
    Width = 49
    Height = 22
    MaxValue = 20
    MinValue = 1
    TabOrder = 10
    Value = 1
  end
  object setindicat: TButton
    Left = 264
    Top = 224
    Width = 49
    Height = 25
    Caption = #1047#1072#1087#1088#1086#1089
    TabOrder = 11
    OnClick = setindicatClick
  end
  object czas: TSpinEdit
    Left = 152
    Top = 272
    Width = 49
    Height = 22
    MaxValue = 120
    MinValue = 1
    TabOrder = 12
    Value = 1
  end
  object nazad: TCheckBox
    Left = 216
    Top = 272
    Width = 105
    Height = 17
    Caption = #1087#1077#1088#1077#1074#1077#1089#1090#1080' '#1085#1072#1079#1072#1076
    TabOrder = 13
  end
  object czascorrect: TButton
    Left = 328
    Top = 272
    Width = 49
    Height = 25
    Caption = #1047#1072#1087#1088#1086#1089
    TabOrder = 14
    OnClick = czascorrectClick
  end
  object speedrs: TComboBox
    Left = 32
    Top = 320
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Text = #1057#1082#1086#1088#1086#1089#1090#1100' '#1086#1073#1084#1077#1085#1072' '#1087#1086' RS-485'
    Items.Strings = (
      '600 '#1073#1080#1090'/'#1089
      '1200 '#1073#1080#1090'/'#1089
      '2400 '#1073#1080#1090'/'#1089
      '4800 '#1073#1080#1090'/'#1089
      '9600 '#1073#1080#1090'/'#1089
      '19200 '#1073#1080#1090'/'#1089
      '38400 '#1073#1080#1090'/'#1089)
  end
  object bitnech: TCheckBox
    Left = 312
    Top = 320
    Width = 105
    Height = 17
    Caption = #1041#1080#1090' '#1085#1077#1095#1077#1090#1085#1086#1089#1090#1080
    TabOrder = 16
  end
  object speedzapros: TButton
    Left = 432
    Top = 320
    Width = 49
    Height = 25
    Caption = #1047#1072#1087#1088#1086#1089
    TabOrder = 17
    OnClick = speedzaprosClick
  end
end
