object frmPessoa: TfrmPessoa
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pessoas'
  ClientHeight = 548
  ClientWidth = 585
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
    Width = 585
    Height = 257
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 11
      Height = 13
      Caption = 'ID'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 295
      Top = 48
      Width = 50
      Height = 13
      Caption = 'CPF_CNPJ'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 50
      Height = 13
      Caption = 'TELEFONE'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 155
      Top = 88
      Width = 44
      Height = 13
      Caption = 'CELULAR'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 128
      Width = 54
      Height = 13
      Caption = 'ENDERECO'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 295
      Top = 128
      Width = 39
      Height = 13
      Caption = 'BAIRRO'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 8
      Top = 168
      Width = 75
      Height = 13
      Caption = 'COMPLEMENTO'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 295
      Top = 168
      Width = 38
      Height = 13
      Caption = 'CIDADE'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 8
      Top = 208
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = DBEdit10
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 29
      Height = 13
      Caption = 'NOME'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 134
      Height = 21
      TabStop = False
      Color = clInfoBk
      DataField = 'ID'
      DataSource = DataModule1.dsPessoa
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 295
      Top = 64
      Width = 134
      Height = 21
      DataField = 'CPF_CNPJ'
      DataSource = DataModule1.dsPessoa
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 104
      Width = 134
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DataModule1.dsPessoa
      MaxLength = 13
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 155
      Top = 104
      Width = 134
      Height = 21
      DataField = 'CELULAR'
      DataSource = DataModule1.dsPessoa
      MaxLength = 14
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 8
      Top = 144
      Width = 281
      Height = 21
      DataField = 'ENDERECO'
      DataSource = DataModule1.dsPessoa
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 295
      Top = 144
      Width = 281
      Height = 21
      DataField = 'BAIRRO'
      DataSource = DataModule1.dsPessoa
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 8
      Top = 184
      Width = 281
      Height = 21
      DataField = 'COMPLEMENTO'
      DataSource = DataModule1.dsPessoa
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 295
      Top = 184
      Width = 281
      Height = 21
      DataField = 'CIDADE'
      DataSource = DataModule1.dsPessoa
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 8
      Top = 224
      Width = 281
      Height = 21
      DataField = 'CEP'
      DataSource = DataModule1.dsPessoa
      MaxLength = 9
      TabOrder = 9
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 64
      Width = 281
      Height = 21
      DataField = 'NOME'
      DataSource = DataModule1.dsPessoa
      TabOrder = 1
    end
    object RadioGroup1: TRadioGroup
      Left = 159
      Top = 8
      Width = 120
      Height = 44
      Caption = 'Tipo Pessoa'
      Columns = 2
      Items.Strings = (
        'F'#237'sica '
        'Jur'#237'dica')
      TabOrder = 10
      OnExit = RadioGroup1Exit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 292
    Width = 585
    Height = 256
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 583
      Height = 254
      Align = alClient
      DataSource = DataModule1.dsPessoa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 257
    Width = 585
    Height = 35
    Align = alTop
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 583
      Height = 33
      DataSource = DataModule1.dsPessoa
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alClient
      TabOrder = 0
      OnClick = DBNavigator1Click
    end
  end
end
