object dtmPrincipal: TdtmPrincipal
  OldCreateOrder = False
  Height = 388
  Width = 732
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    SQLHourGlass = True
    HostName = 'localhost'
    Port = 3306
    Database = 'vendas'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\Projeto_Delphi\libmysql.dll'
    Left = 480
    Top = 16
  end
end
