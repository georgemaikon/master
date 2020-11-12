object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 457
  ClientWidth = 642
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
    Width = 642
    Height = 137
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 717
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 148
      Top = 8
      Width = 87
      Height = 13
      Caption = 'CODIGO_BARRAS'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 59
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 73
      Height = 13
      Caption = 'VALOR_CUSTO'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 148
      Top = 88
      Width = 72
      Height = 13
      Caption = 'VALOR_VENDA'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'ID'
      DataSource = DataModule1.dsProduto
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 148
      Top = 24
      Width = 186
      Height = 21
      DataField = 'CODIGO_BARRAS'
      DataSource = DataModule1.dsProduto
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 64
      Width = 326
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataModule1.dsProduto
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 104
      Width = 134
      Height = 21
      DataField = 'VALOR_CUSTO'
      DataSource = DataModule1.dsProduto
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 148
      Top = 104
      Width = 134
      Height = 21
      DataField = 'VALOR_VENDA'
      DataSource = DataModule1.dsProduto
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 642
    Height = 35
    Align = alTop
    TabOrder = 1
    ExplicitTop = 105
    ExplicitWidth = 717
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 640
      Height = 33
      DataSource = DataModule1.dsProduto
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 715
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 172
    Width = 642
    Height = 285
    Align = alClient
    TabOrder = 2
    ExplicitTop = 146
    ExplicitWidth = 717
    ExplicitHeight = 311
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 640
      Height = 283
      Align = alClient
      DataSource = DataModule1.dsProduto
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
