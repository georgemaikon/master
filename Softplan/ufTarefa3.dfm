object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 313
  ClientWidth = 717
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grdProjetos: TDBGrid
    Left = 8
    Top = 32
    Width = 701
    Height = 217
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProjeto'
        Title.Caption = 'ID Projeto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeProjeto'
        Title.Caption = 'Nome do Projeto'
        Width = 467
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 106
        Visible = True
      end>
  end
  object btnObterTotal: TBitBtn
    Left = 516
    Top = 253
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = btnObterTotalClick
  end
  object btnTotalDivisoes: TBitBtn
    Left = 516
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Total Divis'#245'es'
    TabOrder = 2
    OnClick = btnTotalDivisoesClick
  end
  object edtTotal: TEdit
    Left = 592
    Top = 255
    Width = 117
    Height = 21
    TabOrder = 3
  end
  object edtTotalDivisoes: TEdit
    Left = 592
    Top = 282
    Width = 117
    Height = 21
    TabOrder = 4
  end
end
