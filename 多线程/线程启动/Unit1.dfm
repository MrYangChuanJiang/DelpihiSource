object Form1: TForm1
  Left = 336
  Top = 133
  Caption = 'Form1'
  ClientHeight = 550
  ClientWidth = 886
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
  object lbl1: TLabel
    Left = 160
    Top = 168
    Width = 22
    Height = 48
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btn1: TButton
    Left = 160
    Top = 112
    Width = 75
    Height = 25
    Caption = #24320#22987#36816#31639
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 264
    Top = 112
    Width = 75
    Height = 25
    Caption = #36824#21407#26631#31614
    TabOrder = 1
    OnClick = btn2Click
  end
  object grp1: TGroupBox
    Left = 160
    Top = 222
    Width = 465
    Height = 195
    Caption = #22810#32447#31243#25511#21046
    TabOrder = 2
    object lbl2: TLabel
      Left = 24
      Top = 72
      Width = 16
      Height = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -53
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object btnStart: TButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = #24320#22987
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnSuspend: TButton
      Left = 128
      Top = 24
      Width = 75
      Height = 25
      Caption = #26242#20572
      TabOrder = 1
      OnClick = btnSuspendClick
    end
    object btnContinue: TButton
      Left = 240
      Top = 24
      Width = 75
      Height = 25
      Caption = #32487#32493
      TabOrder = 2
      OnClick = btnContinueClick
    end
    object btnStop: TButton
      Left = 352
      Top = 24
      Width = 75
      Height = 25
      Caption = #20572#27490
      TabOrder = 3
      OnClick = btnStopClick
    end
  end
end
