object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 222
  Width = 366
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\George\Documents\Git\CRUD-Delphi\DB\DATABASE.F' +
        'DB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object qryPessoa: TFDQuery
    Active = True
    BeforePost = qryPessoaBeforePost
    Connection = FDConnection
    SQL.Strings = (
      'Select * from Pessoa')
    Left = 48
    Top = 88
    object qryPessoaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 128
    end
    object qryPessoaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 18
    end
    object qryPessoaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 13
    end
    object qryPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 14
    end
    object qryPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 128
    end
    object qryPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 128
    end
    object qryPessoaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 128
    end
    object qryPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 128
    end
    object qryPessoaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-999;1;_'
      Size = 128
    end
    object qryPessoaDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qryPessoaDATA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object qryPessoaDATA_ULTIMA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
  end
  object dsPessoa: TDataSource
    DataSet = qryPessoa
    Enabled = False
    Left = 48
    Top = 136
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 144
    Top = 24
  end
  object qryProduto: TFDQuery
    Active = True
    BeforePost = qryProdutoBeforePost
    Connection = FDConnection
    SQL.Strings = (
      'Select * from Produto')
    Left = 112
    Top = 88
    object qryProdutoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoCODIGO_BARRAS: TStringField
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 14
    end
    object qryProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 128
    end
    object qryProdutoVALOR_CUSTO: TSingleField
      FieldName = 'VALOR_CUSTO'
      Origin = 'VALOR_CUSTO'
    end
    object qryProdutoVALOR_VENDA: TSingleField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
    end
    object qryProdutoDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qryProdutoDATA_ATUALIZACAO: TSQLTimeStampField
      FieldName = 'DATA_ATUALIZACAO'
      Origin = 'DATA_ATUALIZACAO'
    end
    object qryProdutoDATA_ULTIMA_VENDA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
  end
  object dsProduto: TDataSource
    DataSet = qryProduto
    Left = 112
    Top = 136
  end
  object qryPedido: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from PedidoVenda')
    Left = 176
    Top = 88
    object qryPedidoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPedidoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object qryPedidoDATA_EMISSAO: TSQLTimeStampField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qryPedidoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object qryPedidoVALOR_PRODUTOS: TSingleField
      FieldName = 'VALOR_PRODUTOS'
      Origin = 'VALOR_PRODUTOS'
    end
    object qryPedidoVALOR_DESCONTO: TSingleField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
    end
    object qryPedidoVALOR_TOTAL: TSingleField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
    end
  end
  object dsPedido: TDataSource
    Left = 176
    Top = 136
  end
  object qryItemPedido: TFDQuery
    MasterSource = dsPedido
    MasterFields = 'ID_PEDIDO'
    Connection = FDConnection
    SQL.Strings = (
      'select * from ItemPedidoVenda')
    Left = 240
    Top = 88
    object qryItemPedidoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemPedidoID_PEDIDO_VENDA: TIntegerField
      FieldName = 'ID_PEDIDO_VENDA'
      Origin = 'ID_PEDIDO_VENDA'
    end
    object qryItemPedidoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object qryItemPedidoDESCRICAO_PRODUTO: TStringField
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 128
    end
    object qryItemPedidoVALOR_VENDA: TFloatField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
    end
    object qryItemPedidoVALOR_CUSTO: TFloatField
      FieldName = 'VALOR_CUSTO'
      Origin = 'VALOR_CUSTO'
    end
    object qryItemPedidoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object qryItemPedidoVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
    end
  end
  object dsItemPedido: TDataSource
    Left = 240
    Top = 136
  end
end
