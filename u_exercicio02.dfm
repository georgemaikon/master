object frmExercicio02: TfrmExercicio02
  Left = 192
  Top = 117
  Caption = 'Exerc'#237'cio 02 - Classes de convers'#227'o de texto'
  ClientHeight = 434
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gbTextoOriginal: TGroupBox
    Left = 0
    Top = 0
    Width = 377
    Height = 169
    Caption = 'Texto original'
    TabOrder = 0
    object memOriginal: TMemo
      Left = 8
      Top = 16
      Width = 361
      Height = 145
      TabOrder = 0
    end
  end
  object gbOpcoes: TGroupBox
    Left = 0
    Top = 168
    Width = 377
    Height = 105
    Caption = 'Op'#231#245'es de exporta'#231#227'o'
    TabOrder = 1
    object Label1: TLabel
      Left = 168
      Top = 24
      Width = 123
      Height = 13
      Caption = 'Quantidade de caracteres'
    end
    object rbInvertido: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Texto invertido'
      TabOrder = 0
    end
    object rbPrimeiraMaiuscula: TRadioButton
      Left = 8
      Top = 52
      Width = 113
      Height = 17
      Caption = 'Primeira Mai'#250'scula'
      TabOrder = 1
    end
    object rbOrdemAlfabetica: TRadioButton
      Left = 8
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Ordem Alfab'#233'tica'
      TabOrder = 2
    end
    object edtQuantidade: TEdit
      Left = 168
      Top = 41
      Width = 123
      Height = 21
      MaxLength = 8
      TabOrder = 3
      OnKeyPress = edtQuantidadeKeyPress
    end
    object btnExportar: TButton
      Left = 168
      Top = 64
      Width = 123
      Height = 25
      Caption = 'Exportar'
      TabOrder = 4
      OnClick = btnExportarClick
    end
  end
  object gbTextoExportado: TGroupBox
    Left = 0
    Top = 272
    Width = 377
    Height = 169
    Caption = 'Texto exportado'
    TabOrder = 2
    object memExportado: TMemo
      Left = 8
      Top = 16
      Width = 361
      Height = 145
      TabOrder = 0
    end
  end
end
