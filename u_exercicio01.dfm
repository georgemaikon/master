object frmExercicio01: TfrmExercicio01
  Left = 245
  Top = 157
  Align = alCustom
  Caption = 'Exerc'#237'cio 01 - Trabalhando com arrays'
  ClientHeight = 219
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbInserirNome: TGroupBox
    Left = 0
    Top = 0
    Width = 345
    Height = 57
    Caption = 'Inserir nomes'
    TabOrder = 0
    object lblNome: TLabel
      Left = 8
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object edtNome: TEdit
      Left = 48
      Top = 20
      Width = 201
      Height = 21
      TabOrder = 0
    end
    object btnInserirNome: TButton
      Left = 256
      Top = 18
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 1
      OnClick = btnInserirNomeClick
    end
  end
  object gbListaNomes: TGroupBox
    Left = 153
    Top = 56
    Width = 192
    Height = 169
    Caption = 'Lista de nomes'
    TabOrder = 1
    object listaNomes: TListBox
      Left = 8
      Top = 16
      Width = 177
      Height = 145
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object gbFuncionalidades: TGroupBox
    Left = 1
    Top = 56
    Width = 152
    Height = 169
    Caption = 'Funcionalidades'
    TabOrder = 2
    object btnExibir: TButton
      Left = 8
      Top = 21
      Width = 130
      Height = 25
      Caption = 'Exibir Nomes'
      TabOrder = 0
      OnClick = btnExibirClick
    end
    object btnRemoverPrimeiro: TButton
      Left = 8
      Top = 58
      Width = 130
      Height = 25
      Caption = 'Remover primeiro inserido'
      Enabled = False
      TabOrder = 1
      OnClick = btnRemoverPrimeiroClick
    end
    object btnRemoverUltimo: TButton
      Left = 8
      Top = 96
      Width = 130
      Height = 25
      Caption = 'Remover '#250'ltimo inserido'
      Enabled = False
      TabOrder = 2
      OnClick = btnRemoverUltimoClick
    end
    object btnContar: TButton
      Left = 8
      Top = 133
      Width = 130
      Height = 25
      Caption = 'Contar nomes'
      Enabled = False
      TabOrder = 3
      OnClick = btnContarClick
    end
  end
end
