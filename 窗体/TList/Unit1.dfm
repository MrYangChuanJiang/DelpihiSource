object Form1: TForm1
  Left = 549
  Top = 185
  Caption = 'Form1'
  ClientHeight = 395
  ClientWidth = 660
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnAdd: TButton
    Left = 16
    Top = 81
    Width = 75
    Height = 25
    Caption = #22686#21152
    TabOrder = 0
    OnClick = btnAddClick
  end
  object btnFind: TButton
    Left = 112
    Top = 81
    Width = 75
    Height = 25
    Caption = #26597#25214
    TabOrder = 1
    OnClick = btnFindClick
  end
  object btnDel: TButton
    Left = 193
    Top = 81
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 2
  end
  object btnClear: TButton
    Left = 289
    Top = 81
    Width = 75
    Height = 25
    Caption = #28165#38500
    TabOrder = 3
  end
  object btnUpdate: TButton
    Left = 393
    Top = 81
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 4
  end
  object mmo1: TMemo
    Left = 16
    Top = 112
    Width = 452
    Height = 257
    Lines.Strings = (
      '')
    TabOrder = 5
  end
  object edtUserName: TEdit
    Left = 16
    Top = 40
    Width = 121
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
end
