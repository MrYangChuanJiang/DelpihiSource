object FormMain: TFormMain
  Left = 0
  Top = 0
  ActiveControl = btn1
  Caption = #23398#29983#20449#24687#31649#29702#31995#32479
  ClientHeight = 457
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblHeader: TLabel
    Left = 32
    Top = 16
    Width = 296
    Height = 45
    Caption = #23398#29983#20449#24687#31649#29702#31995#32479
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 40
    Top = 80
    Width = 75
    Height = 25
    Caption = #26032#22686
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
    Top = 80
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 1
  end
  object btn3: TButton
    Left = 253
    Top = 80
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 2
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 360
    Top = 80
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 3
    OnClick = btn4Click
  end
  object mmo1: TMemo
    Left = 40
    Top = 120
    Width = 657
    Height = 297
    Lines.Strings = (
      '')
    TabOrder = 4
  end
end
