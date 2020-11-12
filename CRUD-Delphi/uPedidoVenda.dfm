object frmPedido: TfrmPedido
  Left = 0
  Top = 0
  Caption = 'Pedido de Venda'
  ClientHeight = 471
  ClientWidth = 636
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 153
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 29
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 148
      Top = 29
      Width = 43
      Height = 13
      Caption = 'NUMERO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 288
      Top = 29
      Width = 78
      Height = 13
      Caption = 'DATA_EMISSAO'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 69
      Width = 58
      Height = 13
      Caption = 'ID_CLIENTE'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 109
      Width = 94
      Height = 13
      Caption = 'VALOR_PRODUTOS'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 148
      Top = 109
      Width = 94
      Height = 13
      Caption = 'VALOR_DESCONTO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 288
      Top = 109
      Width = 71
      Height = 13
      Caption = 'VALOR_TOTAL'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 148
      Top = 69
      Width = 41
      Height = 13
      Caption = 'CLIENTE'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 45
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'ID'
      DataSource = DataModule1.dsPedido
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 148
      Top = 45
      Width = 134
      Height = 21
      DataField = 'NUMERO'
      DataSource = DataModule1.dsPedido
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 288
      Top = 45
      Width = 134
      Height = 21
      DataField = 'DATA_EMISSAO'
      DataSource = DataModule1.dsPedido
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 82
      Width = 134
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = DataModule1.dsPedido
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 8
      Top = 125
      Width = 134
      Height = 21
      DataField = 'VALOR_PRODUTOS'
      DataSource = DataModule1.dsPedido
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 148
      Top = 125
      Width = 134
      Height = 21
      DataField = 'VALOR_DESCONTO'
      DataSource = DataModule1.dsPedido
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 288
      Top = 125
      Width = 134
      Height = 21
      DataField = 'VALOR_TOTAL'
      DataSource = DataModule1.dsPedido
      TabOrder = 7
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 148
      Top = 85
      Width = 274
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = DataModule1.dsPedido
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = DataModule1.dsPessoa
      TabOrder = 4
      OnExit = DBLookupComboBox1Exit
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 634
      Height = 25
      DataSource = DataModule1.dsPedido
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 8
      ExplicitLeft = 352
      ExplicitTop = 144
      ExplicitWidth = 240
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 153
    Width = 636
    Height = 48
    Align = alTop
    TabOrder = 1
    object Label9: TLabel
      Left = 8
      Top = 3
      Width = 66
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = DBEdit8
    end
    object Label10: TLabel
      Left = 148
      Top = 6
      Width = 49
      Height = 13
      Caption = 'PRODUTO'
      FocusControl = DBEdit8
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 22
      Width = 134
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = DataModule1.dsItemPedido
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 148
      Top = 21
      Width = 274
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = DataModule1.dsItemPedido
      ListField = 'ID'
      ListSource = DataModule1.dsProduto
      TabOrder = 1
    end
    object btnAdicionar: TBitBtn
      Left = 428
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 201
    Width = 636
    Height = 270
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 504
    ExplicitTop = 448
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 634
      Height = 268
      Align = alClient
      DataSource = DataModule1.dsItemPedido
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
