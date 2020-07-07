object DM: TDM
  OldCreateOrder = False
  Height = 150
  Width = 215
  object SQLConnection: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database= localhost:C:\DB1\AVALIACAODB1.FDB')
    Left = 8
    Top = 8
  end
end
