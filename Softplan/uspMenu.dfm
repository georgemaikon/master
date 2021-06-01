object fspMenu: TfspMenu
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object spQuery1: TspQuery
    Left = 432
    Top = 200
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 40
    object Tarefa1: TMenuItem
      Caption = 'Tarefa 1'
      OnClick = Tarefa1Click
    end
    object Tarefa2: TMenuItem
      Caption = 'Tarefa 2'
      OnClick = Tarefa2Click
    end
    object arefa31: TMenuItem
      Caption = 'Tarefa 3'
      OnClick = arefa31Click
    end
  end
end
