object frmExercicio03Consulta: TfrmExercicio03Consulta
  Left = 0
  Top = 0
  Caption = 'Exerc'#237'cio 03 - Cadastro de Pessoa - Consulta'
  ClientHeight = 363
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbFiltros: TGroupBox
    Left = 0
    Top = 0
    Width = 737
    Height = 89
    Align = alTop
    Caption = 'Filtros para pesquisa'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 35
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 8
      Top = 58
      Width = 59
      Height = 13
      Caption = 'Logradouro:'
    end
    object Label3: TLabel
      Left = 383
      Top = 31
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label4: TLabel
      Left = 383
      Top = 58
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object edtNome: TEdit
      Left = 64
      Top = 32
      Width = 310
      Height = 21
      TabOrder = 0
    end
    object edtLogradouro: TEdit
      Left = 64
      Top = 55
      Width = 310
      Height = 21
      TabOrder = 1
    end
    object edtBairro: TEdit
      Left = 420
      Top = 28
      Width = 310
      Height = 21
      TabOrder = 2
    end
    object edtCidade: TEdit
      Left = 420
      Top = 55
      Width = 205
      Height = 21
      TabOrder = 3
    end
    object edtCodigo: TEdit
      Left = 623
      Top = 55
      Width = 41
      Height = 21
      TabOrder = 4
    end
    object btnPesquisaCidade: TBitBtn
      Left = 669
      Top = 53
      Width = 61
      Height = 25
      Hint = 'Pesquisa uma Cidade'
      Caption = 'Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = btnPesquisaCidadeClick
    end
  end
  object gbGradePesquisa: TGroupBox
    Left = 0
    Top = 89
    Width = 737
    Height = 244
    Align = alClient
    Caption = 'Resultado '
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 733
      Height = 227
      Align = alClient
      DataSource = dsConsulta
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CDPESSOA'
          Title.Caption = 'C'#243'digo'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMPESSOA'
          Title.Caption = 'Nome'
          Width = 235
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DELOGRADOURO'
          Title.Caption = 'Logradouro'
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBAIRRO'
          Title.Caption = 'Bairro'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMCIDADE'
          Title.Caption = 'Cidade'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end>
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 333
    Width = 737
    Height = 30
    Align = alBottom
    TabOrder = 2
    object btnNovo: TBitBtn
      Left = 51
      Top = 1
      Width = 120
      Height = 25
      Caption = 'Novo'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TBitBtn
      Left = 177
      Top = 3
      Width = 120
      Height = 25
      Caption = 'Editar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TBitBtn
      Left = 307
      Top = 1
      Width = 120
      Height = 25
      Caption = 'Excluir'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnPesquisar: TBitBtn
      Left = 435
      Top = 1
      Width = 120
      Height = 25
      Caption = 'Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnPesquisarClick
    end
    object btnSair: TBitBtn
      Left = 561
      Top = 1
      Width = 120
      Height = 25
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqlConsulta
    Left = 624
    Top = 280
  end
  object sqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PESSOA P, CIDADE C '
      'WHERE P.CDCIDADE = C.CDCIDADE ')
    SQLConnection = DM.SQLConnection
    Left = 624
    Top = 240
    object sqlConsultaCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      Required = True
    end
    object sqlConsultaNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object sqlConsultaDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object sqlConsultaDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object sqlConsultaCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
    end
    object sqlConsultaNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      ProviderFlags = []
      Size = 100
    end
    object sqlConsultaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 688
    Top = 240
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 688
    Top = 280
    object cdsConsultaCDPESSOA: TIntegerField
      FieldName = 'CDPESSOA'
      Required = True
    end
    object cdsConsultaNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object cdsConsultaDELOGRADOURO: TStringField
      FieldName = 'DELOGRADOURO'
      Size = 100
    end
    object cdsConsultaDEBAIRRO: TStringField
      FieldName = 'DEBAIRRO'
      Size = 100
    end
    object cdsConsultaCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
    end
    object cdsConsultaNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      ProviderFlags = []
      Size = 100
    end
    object cdsConsultaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
  end
end
