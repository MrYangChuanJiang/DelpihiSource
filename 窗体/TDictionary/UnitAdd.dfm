object FormAdd: TFormAdd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #26032#22686#23398#21592#20449#24687
  ClientHeight = 310
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 21
  object lblName: TLabel
    Left = 24
    Top = 101
    Width = 40
    Height = 21
    Caption = #22995#21517':'
  end
  object lblAge: TLabel
    Left = 24
    Top = 141
    Width = 40
    Height = 21
    Caption = #24180#40836':'
  end
  object edtName: TEdit
    Left = 128
    Top = 98
    Width = 121
    Height = 29
    TabOrder = 0
  end
  object edtAge: TEdit
    Left = 128
    Top = 133
    Width = 121
    Height = 29
    TabOrder = 1
  end
  object btnSave: TButton
    Left = 24
    Top = 232
    Width = 75
    Height = 25
    Caption = #20445#23384
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 174
    Top = 232
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 3
    OnClick = btnCancelClick
  end
end
