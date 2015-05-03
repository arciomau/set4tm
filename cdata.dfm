object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 192
  Top = 125
  Height = 172
  Width = 224
  object source: TDataSource
    DataSet = query
    Left = 16
    Top = 8
  end
  object session: TSession
    Active = True
    SessionName = 'set4'
    Left = 56
    Top = 8
  end
  object database: TDatabase
    AliasName = 'set4tm'
    DatabaseName = 'counters'
    SessionName = 'set4'
    Left = 104
    Top = 8
  end
  object query: TQuery
    OnCalcFields = queryCalcFields
    DatabaseName = 'set4tm'
    SessionName = 'set4'
    RequestLive = True
    SQL.Strings = (
      'select * from counters')
    Left = 152
    Top = 8
    object queryID: TAutoIncField
      FieldName = 'ID'
      Origin = 'SET4TM."counters.DB".ID'
      ReadOnly = True
    end
    object queryInom: TSmallintField
      FieldName = 'Inom'
      Origin = 'SET4TM."counters.DB".Inom'
    end
    object queryImax: TSmallintField
      FieldName = 'Imax'
      Origin = 'SET4TM."counters.DB".Imax'
    end
    object queryUnom: TStringField
      FieldName = 'Unom'
      Origin = 'SET4TM."counters.DB".Unom'
    end
    object queryRS485: TSmallintField
      FieldName = 'RS485'
      Origin = 'SET4TM."counters.DB".RS485'
    end
    object queryCharging: TBooleanField
      FieldName = 'Charging'
      Origin = 'SET4TM."counters.DB".Charging'
    end
    object queryAccuracy: TStringField
      FieldName = 'Accuracy'
      Origin = 'SET4TM."counters.DB".Accuracy'
    end
    object queryVcharge: TStringField
      FieldKind = fkCalculated
      FieldName = 'Vcharge'
      Size = 10
      Calculated = True
    end
    object queryVname: TStringField
      FieldKind = fkLookup
      FieldName = 'Vname'
      LookupDataSet = namesof
      LookupKeyFields = 'ID'
      LookupResultField = 'Obozn'
      KeyFields = 'ID'
      Lookup = True
    end
  end
  object namesof: TQuery
    DatabaseName = 'set4tm'
    SessionName = 'set4'
    RequestLive = True
    SQL.Strings = (
      'select * from namesof')
    Left = 16
    Top = 64
    object namesofID: TAutoIncField
      FieldName = 'ID'
      Origin = 'SET4TM."namesof.DB".ID'
      ReadOnly = True
    end
    object namesofObozn: TStringField
      FieldName = 'Obozn'
      Origin = 'SET4TM."namesof.DB".Obozn'
    end
  end
end
