object frmExercicio03ConsultaCidade: TfrmExercicio03ConsultaCidade
  Left = 0
  Top = 0
  Caption = 'frmExercicio03ConsultaCidade'
  ClientHeight = 396
  ClientWidth = 521
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
  object pnlBotoes: TPanel
    Left = 0
    Top = 362
    Width = 521
    Height = 34
    Align = alBottom
    TabOrder = 0
    object edtNome: TEdit
      Left = 0
      Top = 7
      Width = 281
      Height = 21
      TabOrder = 0
      OnKeyPress = edtNomeKeyPress
    end
    object btnPesquisar: TBitBtn
      Left = 287
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnPesquisarClick
    end
    object btnOk: TBitBtn
      Left = 365
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Ok'
      DoubleBuffered = True
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnOkClick
    end
    object btnCancelar: TBitBtn
      Left = 443
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = btnCancelarClick
    end
  end
  object gridCidade: TDBGrid
    Left = 0
    Top = 0
    Width = 521
    Height = 362
    Align = alClient
    DataSource = dsConsulta
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridCidadeDblClick
    OnKeyPress = gridCidadeKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CDCIDADE'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMCIDADE'
        Title.Caption = 'Nome'
        Width = 408
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 35
        Visible = True
      end>
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 72
    Top = 48
    object cdsConsultaCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
      Required = True
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
    Left = 72
    Top = 8
  end
  object sqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CIDADE C ')
    SQLConnection = DM.SQLConnection
    Left = 8
    Top = 8
    object sqlConsultaCDCIDADE: TIntegerField
      FieldName = 'CDCIDADE'
      Required = True
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
    Left = 8
    Top = 48
  end
end
