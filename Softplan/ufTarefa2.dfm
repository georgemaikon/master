object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 07 - Processos Concorrentes'
  ClientHeight = 119
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 102
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Thread 1'
  end
  object lbl2: TLabel
    Left = 102
    Top = 47
    Width = 43
    Height = 13
    Caption = 'Thread 2'
  end
  object Label1: TLabel
    Left = 10
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Tempo 1'
  end
  object Label2: TLabel
    Left = 10
    Top = 47
    Width = 41
    Height = 13
    Caption = 'Tempo 2'
  end
  object pbThread1: TProgressBar
    Left = 102
    Top = 24
    Width = 345
    Height = 17
    TabOrder = 0
  end
  object pbThread2: TProgressBar
    Left = 102
    Top = 64
    Width = 345
    Height = 17
    TabOrder = 1
  end
  object btnExecutar: TBitBtn
    Left = 372
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
  object edtTempo1: TMaskEdit
    Left = 10
    Top = 22
    Width = 74
    Height = 21
    EditMask = '!9999;1; '
    MaxLength = 4
    TabOrder = 3
    Text = '    '
  end
  object edtTempo2: TMaskEdit
    Left = 10
    Top = 62
    Width = 78
    Height = 21
    EditMask = '!9999;1; '
    MaxLength = 4
    TabOrder = 4
    Text = '    '
  end
end
