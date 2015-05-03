object dbase: Tdbase
  Left = 583
  Top = 159
  Width = 650
  Height = 480
  Caption = #1055#1086#1076#1073#1086#1088' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1080' '#1089#1095#1077#1090#1095#1080#1082#1072
  Color = clBtnFace
  Constraints.MaxHeight = 480
  Constraints.MaxWidth = 650
  Constraints.MinHeight = 480
  Constraints.MinWidth = 650
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object tokRad: TRadioGroup
    Left = 16
    Top = 344
    Width = 81
    Height = 73
    Caption = 'I'#1085#1086#1084' (max), '#1040
    Items.Strings = (
      '1 (2)'
      '5 (10)')
    TabOrder = 0
  end
  object UnomRad: TRadioGroup
    Left = 104
    Top = 344
    Width = 81
    Height = 73
    Caption = 'U'#1085#1086#1084', '#1042
    Items.Strings = (
      '57,7-115'
      '120-230')
    TabOrder = 1
  end
  object RSRad: TRadioGroup
    Left = 192
    Top = 344
    Width = 73
    Height = 73
    Caption = 'RS-485, '#1096#1090'.'
    Items.Strings = (
      '1'
      '2')
    TabOrder = 2
  end
  object klassRad: TRadioGroup
    Left = 280
    Top = 344
    Width = 145
    Height = 73
    Caption = #1050#1083#1072#1089#1089' '#1090#1086#1095#1085'. ('#1072#1082#1090'./'#1088#1077#1072#1082#1090'.)'
    Items.Strings = (
      '0,2 S / 0,5'
      '0,5 S / 1,0')
    TabOrder = 3
  end
  object Button1: TButton
    Left = 544
    Top = 344
    Width = 65
    Height = 33
    Caption = #1055#1086#1080#1089#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 544
    Top = 384
    Width = 65
    Height = 33
    Caption = #1057#1073#1088#1086#1089
    TabOrder = 5
    OnClick = Button2Click
  end
  object chargRad: TRadioGroup
    Left = 432
    Top = 344
    Width = 97
    Height = 73
    Caption = #1041#1083#1086#1082' '#1087#1080#1090#1072#1085#1080#1103
    Items.Strings = (
      #1045#1089#1090#1100
      #1053#1077#1090)
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 609
    Height = 313
    DataSource = dm.source
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Vname'
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.Color = clMoneyGreen
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Inom'
        Title.Caption = 'I'#1085#1086#1084', '#1040
        Title.Color = clMoneyGreen
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imax'
        Title.Caption = 'Imax, '#1040
        Title.Color = clMoneyGreen
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unom'
        Title.Caption = 'U'#1085#1086#1084', '#1042
        Title.Color = clMoneyGreen
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RS485'
        Title.Caption = 'RS485, '#1096#1090'.'
        Title.Color = clMoneyGreen
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Accuracy'
        Title.Caption = #1050#1083#1072#1089#1089' '#1090#1086#1095#1085#1086#1089#1090#1080
        Title.Color = clMoneyGreen
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vcharge'
        Title.Caption = #1041#1083#1086#1082' '#1087#1080#1090#1072#1085#1080#1103'?'
        Title.Color = clMoneyGreen
        Width = 74
        Visible = True
      end>
  end
end
