object frmMain: TfrmMain
  Left = 192
  Top = 113
  Caption = 'Avalia'#231#227'o T'#233'cnica DB1 - George Maikon Silva'
  ClientHeight = 504
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 160
    Top = 56
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
    object Exerccios1: TMenuItem
      Caption = '&Exerc'#237'cios'
      object Execcio1Cadastrodelistadenomes1: TMenuItem
        Caption = 'Exerc'#237'cio 1 - Cadastro de lista de nomes'
        OnClick = Execcio1Cadastrodelistadenomes1Click
      end
      object Exerccio2Classesdeconversodetexto1: TMenuItem
        Caption = 'Exerc'#237'cio 2 - Classes de convers'#227'o de texto'
        OnClick = Exerccio2Classesdeconversodetexto1Click
      end
      object Exerccio3Cadastrodepessoa1: TMenuItem
        Caption = 'Exerc'#237'cio 3 - Cadastro de pessoa'
        OnClick = Exerccio3Cadastrodepessoa1Click
      end
      object Exerccio5Criaodearquivo1: TMenuItem
        Caption = 'Exerc'#237'cio 5 - Cria'#231#227'o de arquivo'
        OnClick = Exerccio5Criaodearquivo1Click
      end
      object Exerccio7ProcessosConcorrentes1: TMenuItem
        Caption = 'Exerc'#237'cio 7 - Processos Concorrentes'
        OnClick = Exerccio7ProcessosConcorrentes1Click
      end
    end
  end
end
