object Form1: TForm1
  Left = 183
  Top = 249
  Width = 650
  Height = 480
  Caption = #1057#1095#1105#1090#1095#1080#1082' '#1057#1069#1058'-4'#1058#1052'.03'#1052'/'#1057#1069#1058'-4'#1058#1052'.02'#1052
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 448
    Top = 232
    Width = 95
    Height = 13
    Caption = #1058#1080#1087#1086#1074#1099#1077' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object NewOGL1: TNewOGL
    Left = 32
    Top = 16
    Width = 400
    Height = 400
    Wireframe = False
    DephBuffer = False
    BackColor = clBlack
  end
  object Button2: TButton
    Left = 448
    Top = 24
    Width = 105
    Height = 25
    Caption = #1082#1083#1077#1084#1084#1085#1072#1103' '#1082#1088#1099#1096#1082#1072
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 448
    Top = 48
    Width = 105
    Height = 25
    Caption = #1074#1099#1085#1091#1090#1100' '#1089#1090#1077#1082#1083#1086
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button1: TButton
    Left = 448
    Top = 80
    Width = 105
    Height = 25
    Caption = #1088#1077#1078#1080#1084' '#1080#1085#1076#1080#1082#1072#1094#1080#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 568
    Top = 80
    Width = 49
    Height = 25
    Caption = #1076#1083#1085'.'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object Button4: TButton
    Left = 448
    Top = 104
    Width = 105
    Height = 25
    Caption = #1074#1080#1076' '#1101#1085#1077#1088#1075#1080#1080
    TabOrder = 5
    OnClick = Button4Click
  end
  object CheckBox2: TCheckBox
    Left = 568
    Top = 104
    Width = 49
    Height = 25
    Caption = #1076#1083#1085'.'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object Button5: TButton
    Left = 448
    Top = 128
    Width = 105
    Height = 25
    Caption = #1085#1086#1084#1077#1088' '#1090#1072#1088#1080#1092#1072
    TabOrder = 7
    OnClick = Button5Click
  end
  object CheckBox3: TCheckBox
    Left = 568
    Top = 128
    Width = 49
    Height = 25
    Caption = #1076#1083#1085'.'
    Color = clYellow
    ParentColor = False
    TabOrder = 8
  end
  object Button6: TButton
    Left = 448
    Top = 160
    Width = 105
    Height = 25
    Caption = #1089#1086#1073#1088#1072#1090#1100' '#1089#1095#1105#1090#1095#1080#1082
    Enabled = False
    TabOrder = 9
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 440
    Top = 200
    Width = 129
    Height = 21
    TabOrder = 10
  end
  object Button7: TButton
    Left = 568
    Top = 200
    Width = 33
    Height = 21
    Caption = #1055#1091#1089#1082
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 600
    Top = 200
    Width = 25
    Height = 21
    Caption = '?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = Button8Click
  end
  object Acts: TPanel
    Left = 440
    Top = 248
    Width = 177
    Height = 169
    Color = clBtnShadow
    TabOrder = 13
    object Button9: TButton
      Left = 8
      Top = 48
      Width = 81
      Height = 33
      Caption = 'vid'
      TabOrder = 0
      WordWrap = True
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 88
      Top = 48
      Width = 81
      Height = 33
      Caption = 'vozvrat'
      TabOrder = 1
      WordWrap = True
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 8
      Top = 8
      Width = 81
      Height = 33
      Caption = 'Osnov'
      TabOrder = 2
      WordWrap = True
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 88
      Top = 8
      Width = 81
      Height = 33
      Caption = 'IndAkt'
      TabOrder = 3
      WordWrap = True
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 8
      Top = 88
      Width = 81
      Height = 33
      Caption = 'Faza'
      TabOrder = 4
      WordWrap = True
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 88
      Top = 88
      Width = 81
      Height = 33
      Caption = 'clock'
      TabOrder = 5
      WordWrap = True
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 48
      Top = 128
      Width = 81
      Height = 33
      Caption = 'Sbros'
      TabOrder = 6
      WordWrap = True
      OnClick = Button15Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 40
    OnTimer = Timer1Timer
    Left = 400
    Top = 40
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 40
    OnTimer = Timer2Timer
    Left = 400
    Top = 16
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 60
    OnTimer = Timer3Timer
    Left = 376
    Top = 72
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 408
    Top = 72
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 60
    OnTimer = Timer5Timer
    Left = 376
    Top = 104
  end
  object Timer6: TTimer
    Enabled = False
    OnTimer = Timer6Timer
    Left = 408
    Top = 104
  end
  object Timer7: TTimer
    Enabled = False
    Interval = 60
    OnTimer = Timer7Timer
    Left = 376
    Top = 136
  end
  object Timer8: TTimer
    Enabled = False
    OnTimer = Timer8Timer
    Left = 408
    Top = 136
  end
  object Timer9: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer9Timer
    Left = 568
    Top = 24
  end
  object Timer10: TTimer
    Interval = 500
    OnTimer = Timer10Timer
    Left = 600
    Top = 24
  end
end
