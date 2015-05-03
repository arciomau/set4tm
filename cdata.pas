unit cdata;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  Tdm = class(TDataModule)
    source: TDataSource;
    session: TSession;
    database: TDatabase;
    query: TQuery;
    namesof: TQuery;
    namesofID: TAutoIncField;
    namesofObozn: TStringField;
    queryID: TAutoIncField;
    queryInom: TSmallintField;
    queryImax: TSmallintField;
    queryUnom: TStringField;
    queryRS485: TSmallintField;
    queryCharging: TBooleanField;
    queryAccuracy: TStringField;
    queryVcharge: TStringField;
    queryVname: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure queryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const My_Alias='set4tm';
      datapth='DATA';
var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
session.Active:=false;
session.PrivateDir:=ExtractFilePath(ParamStr(0))+datapth;
session.Active:=true;
if not (session.IsAlias(My_Alias)) then
  begin
  session.ConfigMode:=cmPersistent;
  session.AddStandardAlias(My_Alias,ExtractFilePath(ParamStr(0))+datapth,'PARADOX');
  session.SaveConfigFile;
  end;
database.AliasName:=My_Alias;
database.Connected:=true;
with namesof do
  begin
  sql.Clear;
  SQL.Add('select * from namesof');
  Prepare;
  Open;
end;
with query do
  begin
  sql.Clear;
  SQL.Add('select * from counters');
  Prepare;
  Open;
end;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
if database.Connected=true then
  begin
  database.CloseDataSets;
  database.Connected:=false;
  end;
if session.Active=true then session.Close;
end;

procedure Tdm.queryCalcFields(DataSet: TDataSet);
begin
if query.FieldByName('Charging').AsBoolean then
queryVCharge.AsString:='Есть'
else
queryVCharge.AsString:='Нет'
end;

end.
