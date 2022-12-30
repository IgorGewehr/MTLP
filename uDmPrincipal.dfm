object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 420
  Width = 669
  object ConnPrincipal: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Igor Gewehr\Downloads\lotopremium teste\bd\bdn' +
        'umeros.db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Left = 504
    Top = 16
  end
  object qryNUMEROSUM: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_UM')
    Left = 24
    Top = 16
  end
  object qryNUMEROSSEIS: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_SEIS')
    Left = 24
    Top = 256
  end
  object qryNUMEROSDOIS: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_DOIS')
    Left = 24
    Top = 64
  end
  object qryNUMEROSQUATRO: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_QUATRO')
    Left = 24
    Top = 160
  end
  object qryNUMEROSTRES: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_TRES')
    Left = 24
    Top = 112
  end
  object qryNUMEROSOITO: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_OITO')
    Left = 24
    Top = 352
  end
  object qryNUMEROSSETE: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_SETE')
    Left = 24
    Top = 304
  end
  object qryNUMEROSCINCO: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_CINCO')
    Left = 24
    Top = 208
  end
  object qryNUMEROSNOVE: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_NOVE')
    Left = 88
    Top = 16
  end
  object qryNUMEROSDEZ: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM JOGO_DEZ')
    Left = 88
    Top = 64
  end
  object qryONLINEDATA: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM DATA_ATT')
    Left = 88
    Top = 112
  end
  object qryONLINEDELETAR: TFDQuery
    Connection = ConnPrincipal
    Left = 88
    Top = 160
  end
  object qryLOTOMANIAUm: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM LOTOMANIA_UM')
    Left = 168
    Top = 16
  end
  object qryLOTOMANIADois: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM LOTOMANIA_DOIS')
    Left = 168
    Top = 64
  end
  object qryLOTOMANIATres: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM LOTOMANIA_TRES'
      '')
    Left = 168
    Top = 120
  end
  object qryLIBERATION: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT DATE FROM DATA_LIBERA')
    Left = 168
    Top = 176
    object qryLIBERATIONDATE: TDateTimeField
      FieldName = 'DATE'
      Origin = 'DATE'
    end
  end
  object qryGERENCIAMENTO: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM GERENCIAMENTO')
    Left = 168
    Top = 224
  end
  object qryEditGerenciamento: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM GERENCIAMENTO'
      'WHERE'
      'ID = 1')
    Left = 168
    Top = 272
  end
  object qryVencedores: TFDQuery
    Connection = ConnPrincipal
    SQL.Strings = (
      'SELECT * FROM VENCEDORES '
      'WHERE'
      'ID = 1')
    Left = 160
    Top = 320
  end
end
