object MainForm: TMainForm
  Left = 229
  Top = 208
  Width = 1043
  Height = 536
  Caption = #1057#1069#1058'-4'#1058#1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MenuAll
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 434
    Height = 20
    Caption = #1042#1072#1089' '#1087#1088#1080#1074#1077#1090#1089#1090#1074#1091#1077#1090' '#1091#1095#1077#1073#1085#1086'-'#1089#1087#1088#1072#1074#1086#1095#1085#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' Set4tm!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object opis: TMemo
    Left = 8
    Top = 40
    Width = 433
    Height = 129
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object MenuAll: TMainMenu
    object N1: TMenuItem
      Caption = #1052#1086#1076#1091#1083#1100
      object N3D1: TMenuItem
        Caption = '3D-'#1084#1086#1076#1077#1083#1100
        Hint = #1058#1088#1077#1093#1084#1077#1088#1085#1072#1103' '#1084#1086#1076#1077#1083#1100' '#1089#1095#1077#1090#1095#1080#1082#1072
        ShortCut = 114
        OnClick = N3D1Click
      end
      object N4: TMenuItem
        Caption = #1042#1099#1073#1086#1088' '#1089#1095#1077#1090#1095#1080#1082#1072
        Hint = #1042#1099#1073#1086#1088' '#1084#1086#1076#1080#1092#1080#1082#1072#1094#1080#1080' '#1089#1095#1077#1090#1095#1080#1082#1072
        ShortCut = 115
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1056#1072#1089#1095#1077#1090' '#1084#1086#1097#1085#1086#1089#1090#1077#1081
        ShortCut = 116
        OnClick = N5Click
      end
      object CRC1: TMenuItem
        Caption = #1050#1086#1084#1072#1085#1076#1099' '#1080' CRC'
        ShortCut = 117
        OnClick = CRC1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        Hint = #1042#1099#1093#1086#1076' '#1080#1079' '#1089#1080#1089#1090#1077#1084#1099
        ShortCut = 121
        OnClick = N2Click
      end
    end
    object N6: TMenuItem
      Caption = #1058#1077#1089#1090
      ShortCut = 118
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N10: TMenuItem
        Caption = #1056#1091#1082#1086#1074#1086#1076#1089#1090#1074#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        ShortCut = 112
        OnClick = N10Click
      end
      object N9: TMenuItem
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1087#1088#1086#1090#1086#1082#1086#1083#1072' '#1086#1073#1084#1077#1085#1072
        ShortCut = 113
        OnClick = N9Click
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object N8: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N8Click
      end
    end
  end
end
