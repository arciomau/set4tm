object regform: Tregform
  Left = 192
  Top = 148
  Width = 800
  Height = 200
  Caption = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
  Color = clBtnFace
  Constraints.MaxHeight = 200
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 200
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 22
    Height = 13
    Caption = #1048#1084#1103
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 49
    Height = 13
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object forname: TEdit
    Left = 16
    Top = 24
    Width = 113
    Height = 21
    TabOrder = 0
  end
  object forsurname: TEdit
    Left = 16
    Top = 72
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object vhod: TButton
    Left = 32
    Top = 104
    Width = 73
    Height = 25
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 2
    OnClick = vhodClick
  end
  object sbros: TButton
    Left = 32
    Top = 136
    Width = 73
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 3
    OnClick = sbrosClick
  end
  object RadioGroup1: TRadioGroup
    Left = 136
    Top = 8
    Width = 641
    Height = 145
    Caption = #1042#1086#1087#1088#1086#1089
    Enabled = False
    Items.Strings = (
      #1042#1072#1088#1080#1072#1085#1090' 1'
      #1042#1072#1088#1080#1072#1085#1090' 2'
      #1042#1072#1088#1080#1072#1085#1090' 3'
      #1042#1072#1088#1080#1072#1085#1090' 4')
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object connect: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DATA\vopr.mdb;Mode=' +
      'ReadWrite;Persist Security Info=False;Jet OLEDB:Database Passwor' +
      'd=Artemov662191;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 128
  end
  object testquery: TADOQuery
    Connection = connect
    Parameters = <>
    SQL.Strings = (
      'select * from results')
    Left = 8
    Top = 96
    object testqueryID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object testqueryUsername: TWideStringField
      FieldName = 'Username'
      Size = 255
    end
    object testqueryUsersurname: TWideStringField
      FieldName = 'Usersurname'
      Size = 255
    end
    object testquerycorrect: TSmallintField
      FieldName = 'correct'
    end
    object testquerymistake: TSmallintField
      FieldName = 'mistake'
    end
    object testquerydateofbegin: TWideStringField
      FieldName = 'dateofbegin'
      Size = 255
    end
    object testquerydateofend: TWideStringField
      FieldName = 'dateofend'
      Size = 255
    end
  end
  object qst: TADOQuery
    Connection = connect
    Parameters = <>
    SQL.Strings = (
      'select * from voprosy order by rnd(-(1000*ID)*Time())')
    Left = 464
    Top = 16
    object qstID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qstquestion: TWideStringField
      FieldName = 'question'
      Size = 255
    end
    object qstans1: TWideStringField
      FieldName = 'ans1'
      Size = 255
    end
    object qstans2: TWideStringField
      FieldName = 'ans2'
      Size = 255
    end
    object qstans3: TWideStringField
      FieldName = 'ans3'
      Size = 255
    end
    object qstans4: TWideStringField
      FieldName = 'ans4'
      Size = 255
    end
    object qstprav: TSmallintField
      FieldName = 'prav'
    end
  end
end
