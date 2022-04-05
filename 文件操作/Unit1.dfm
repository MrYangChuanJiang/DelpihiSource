object FormINI: TFormINI
  Left = 439
  Top = 185
  BorderStyle = bsToolWindow
  Caption = 'INI'#37197#32622#25991#20214
  ClientHeight = 490
  ClientWidth = 353
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
  object lblName: TLabel
    Left = 40
    Top = 93
    Width = 51
    Height = 27
    Caption = #22995#21517': '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #24494#36719#38597#40657' Light'
    Font.Style = []
    ParentFont = False
  end
  object lblSex: TLabel
    Left = 40
    Top = 197
    Width = 51
    Height = 27
    Caption = #22995#21035': '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #24494#36719#38597#40657' Light'
    Font.Style = []
    ParentFont = False
  end
  object lblAge: TLabel
    Left = 40
    Top = 142
    Width = 51
    Height = 27
    Caption = #24180#40836': '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #24494#36719#38597#40657' Light'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 40
    Top = 274
    Width = 51
    Height = 27
    Caption = #29233#22909': '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #24494#36719#38597#40657' Light'
    Font.Style = []
    ParentFont = False
  end
  object lblAddress: TLabel
    Left = 40
    Top = 345
    Width = 51
    Height = 27
    Caption = #20303#22336': '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #24494#36719#38597#40657' Light'
    Font.Style = []
    ParentFont = False
  end
  object edtName: TEdit
    Left = 152
    Top = 91
    Width = 153
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object rgSex: TRadioGroup
    Left = 152
    Top = 199
    Width = 153
    Height = 32
    TabOrder = 1
    StyleElements = [seFont, seClient]
  end
  object rbMan: TRadioButton
    Left = 152
    Top = 199
    Width = 49
    Height = 32
    Caption = #30007
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object rbWoMan: TRadioButton
    Left = 263
    Top = 199
    Width = 41
    Height = 32
    Caption = #22899
    TabOrder = 3
  end
  object edtAge: TEdit
    Left = 152
    Top = 140
    Width = 153
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 4
  end
  object grp1: TGroupBox
    Left = 152
    Top = 274
    Width = 153
    Height = 63
    TabOrder = 5
    object chk1: TCheckBox
      Left = 0
      Top = 3
      Width = 57
      Height = 17
      Caption = #36816#21160
      TabOrder = 0
    end
    object chk2: TCheckBox
      Left = 111
      Top = 3
      Width = 57
      Height = 17
      Caption = #23398#20064
      TabOrder = 1
    end
    object chk3: TCheckBox
      Left = 3
      Top = 43
      Width = 57
      Height = 17
      Caption = #32534#31243
      TabOrder = 2
    end
  end
  object cbbAddress: TComboBox
    Left = 152
    Top = 343
    Width = 153
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Items.Strings = (
      #21271#20140#28023#28096
      #27827#21271#20445#23450
      #27827#21335#37073#24030)
  end
  object btnSave: TButton
    Left = 41
    Top = 400
    Width = 264
    Height = 41
    Caption = #20445#23384#35774#32622
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnSaveClick
  end
end
