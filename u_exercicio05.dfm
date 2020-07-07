object frmExercicio05: TfrmExercicio05
  Left = 0
  Top = 0
  Caption = 'Exercicio 05 - Cria'#231#227'o de arquivos'
  ClientHeight = 405
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlExportacao: TPanel
    Left = 0
    Top = 364
    Width = 662
    Height = 41
    Align = alBottom
    TabOrder = 0
    object lbl1: TLabel
      Left = 8
      Top = 9
      Width = 51
      Height = 13
      Caption = 'Salvar em:'
    end
    object edtCaminho: TEdit
      Left = 65
      Top = 6
      Width = 356
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object btnPesquisar: TBitBtn
      Left = 431
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
    object btnExportar: TBitBtn
      Left = 506
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Exportar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnExportarClick
    end
    object btnSair: TBitBtn
      Left = 580
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
  object grid1: TDBGrid
    Left = 0
    Top = 0
    Width = 662
    Height = 364
    Align = alClient
    DataSource = dsConsulta
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NMPESSOA'
        Title.Caption = 'Pessoa'
        Width = 293
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMCIDADE'
        Title.Caption = 'Cidade'
        Width = 294
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 21
        Visible = True
      end>
  end
  object sqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.NMPESSOA, C.NMCIDADE, C.UF FROM PESSOA P, CIDADE C '
      'WHERE P.CDCIDADE = C.CDCIDADE ')
    SQLConnection = DM.SQLConnection
    Left = 216
    Top = 32
    object sqlConsultaNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object sqlConsultaNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
    object sqlConsultaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sqlConsulta
    Left = 216
    Top = 72
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 280
    Top = 72
    object cdsConsultaNMPESSOA: TStringField
      FieldName = 'NMPESSOA'
      Required = True
      Size = 100
    end
    object cdsConsultaNMCIDADE: TStringField
      FieldName = 'NMCIDADE'
      Required = True
      Size = 100
    end
    object cdsConsultaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 280
    Top = 32
  end
  object dlgArquivoTexto: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'Lista de pessoa'
    Filter = 'txt|.txt'
    InitialDir = 'C:\DB1'
    Left = 456
    Top = 192
  end
end
