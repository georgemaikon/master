object frmExercicio03Cadastro: TfrmExercicio03Cadastro
  Left = 0
  Top = 0
  Caption = 'Exercicio 03 - Tela de Cadastro'
  ClientHeight = 254
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbCadastro: TGroupBox
    Left = 0
    Top = 0
    Width = 421
    Height = 224
    Align = alClient
    Caption = 'Dados pessoais'
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 19
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbedtCDPESSOA
    end
    object lbl2: TLabel
      Left = 8
      Top = 59
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbedtNMPESSOA
    end
    object lbl3: TLabel
      Left = 8
      Top = 99
      Width = 55
      Height = 13
      Caption = 'Logradouro'
      FocusControl = dbedtDELOGRADOURO
    end
    object lbl4: TLabel
      Left = 8
      Top = 139
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = dbedtDEBAIRRO
    end
    object lbl5: TLabel
      Left = 8
      Top = 179
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = dbedtCDCIDADE
    end
    object lbl7: TLabel
      Left = 50
      Top = 179
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object dbedtCDPESSOA: TDBEdit
      Left = 8
      Top = 35
      Width = 54
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'CDPESSOA'
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = dbedtCDPESSOAKeyPress
    end
    object dbedtNMPESSOA: TDBEdit
      Left = 8
      Top = 75
      Width = 400
      Height = 21
      DataField = 'NMPESSOA'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object dbedtDELOGRADOURO: TDBEdit
      Left = 8
      Top = 115
      Width = 400
      Height = 21
      DataField = 'DELOGRADOURO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object dbedtDEBAIRRO: TDBEdit
      Left = 8
      Top = 155
      Width = 400
      Height = 21
      DataField = 'DEBAIRRO'
      DataSource = dsCadastro
      TabOrder = 3
    end
    object dbedtCDCIDADE: TDBEdit
      Left = 8
      Top = 195
      Width = 41
      Height = 21
      DataField = 'CDCIDADE'
      DataSource = dsCadastro
      TabOrder = 4
    end
    object btnPesquisar: TBitBtn
      Left = 333
      Top = 193
      Width = 75
      Height = 25
      Hint = 'Pesquisar Cidade'
      Caption = 'Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = btnPesquisarClick
    end
    object dbedtNMCIDADE: TDBEdit
      Left = 49
      Top = 195
      Width = 278
      Height = 21
      DataField = 'NMCIDADE'
      DataSource = dsCadastro
      TabOrder = 6
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 224
    Width = 421
    Height = 30
    Align = alBottom
    TabOrder = 1
    object btnNovo: TBitBtn
      Left = 3
      Top = 1
      Width = 100
      Height = 25
      Caption = 'Novo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnSalvar: TBitBtn
      Left = 107
      Top = 1
      Width = 100
      Height = 25
      Caption = 'Salvar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnExcluir: TBitBtn
      Left = 211
      Top = 1
      Width = 100
      Height = 25
      Caption = 'Excluir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 315
      Top = 1
      Width = 100
      Height = 25
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
  object sqlCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.*, C.NMCIDADE  FROM PESSOA P, CIDADE C'
      ''
      '   ')
    SQLConnection = DM.SQLConnection
    Left = 280
    Top = 136
    object sqlCadastroCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      Required = True
    end
    object sqlCadastroNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object sqlCadastroDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object sqlCadastroDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object sqlCadastroCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
    end
    object sqlCadastroNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      ProviderFlags = []
      Required = True
      Size = 100
    end
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadastro'
    Left = 328
    Top = 136
    object cdsCadastroCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      Required = True
    end
    object cdsCadastroNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object cdsCadastroDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object cdsCadastroDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object cdsCadastroCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
    end
    object cdsCadastroNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      ProviderFlags = []
      Required = True
      Size = 100
    end
  end
  object dspCadastro: TDataSetProvider
    DataSet = sqlCadastro
    Left = 240
    Top = 136
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 192
    Top = 144
  end
end
