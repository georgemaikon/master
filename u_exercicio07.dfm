object frmExercicio07: TfrmExercicio07
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 07 - Processos Concorrentes'
  ClientHeight = 120
  ClientWidth = 379
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 8
    Width = 43
    Height = 13
    Caption = 'Thread 1'
  end
  object lbl2: TLabel
    Left = 16
    Top = 47
    Width = 43
    Height = 13
    Caption = 'Thread 2'
  end
  object pbThread1: TProgressBar
    Left = 16
    Top = 24
    Width = 345
    Height = 17
    TabOrder = 0
  end
  object pbThread2: TProgressBar
    Left = 16
    Top = 64
    Width = 345
    Height = 17
    TabOrder = 1
  end
  object btnExecutar: TBitBtn
    Left = 205
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Executar'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = btnExecutarClick
  end
  object btnSair: TBitBtn
    Left = 286
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Sair'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = btnSairClick
  end
end
