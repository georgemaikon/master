object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 574
  ClientWidth = 721
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
  object lblColuna: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = 'Colunas:'
  end
  object lblTabela: TLabel
    Left = 256
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Tabelas:'
  end
  object lblCondicao: TLabel
    Left = 501
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Condi'#231#227'o:'
  end
  object memColunas: TMemo
    Left = 8
    Top = 50
    Width = 211
    Height = 140
    TabOrder = 0
  end
  object memTabelas: TMemo
    Left = 256
    Top = 50
    Width = 211
    Height = 140
    TabOrder = 1
  end
  object memCondicoes: TMemo
    Left = 501
    Top = 47
    Width = 211
    Height = 140
    TabOrder = 2
  end
  object Memo4: TMemo
    Left = 8
    Top = 248
    Width = 704
    Height = 313
    TabOrder = 3
  end
  object edtColuna: TEdit
    Left = 8
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edtTabela: TEdit
    Left = 256
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edtCondicao: TEdit
    Left = 501
    Top = 23
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object btnColuna: TBitBtn
    Left = 144
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 7
    OnClick = btnColunaClick
  end
  object btnTabela: TBitBtn
    Left = 392
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 8
    OnClick = btnTabelaClick
  end
  object btnCondicao: TBitBtn
    Left = 638
    Top = 21
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 9
    OnClick = btnCondicaoClick
  end
  object btnGeraSql: TBitBtn
    Left = 581
    Top = 197
    Width = 131
    Height = 42
    Caption = 'Gerar SQL'
    TabOrder = 10
    OnClick = btnGeraSqlClick
  end
  object ospQuery: TspQuery
    Connection = FDConnection
    Left = 528
    Top = 208
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 456
    Top = 208
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=IB'
      'User_Name=sysdba'
      'Password=masterkey')
    Left = 400
    Top = 208
  end
end
