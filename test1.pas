unit test1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls;

type
  Tregform = class(TForm)
    forname: TEdit;
    Label1: TLabel;
    forsurname: TEdit;
    Label2: TLabel;
    vhod: TButton;
    sbros: TButton;
    connect: TADOConnection;
    testquery: TADOQuery;
    testqueryID: TAutoIncField;
    testqueryUsername: TWideStringField;
    testqueryUsersurname: TWideStringField;
    testquerycorrect: TSmallintField;
    testquerymistake: TSmallintField;
    testquerydateofbegin: TWideStringField;
    testquerydateofend: TWideStringField;
    RadioGroup1: TRadioGroup;
    qst: TADOQuery;
    qstID: TAutoIncField;
    qstquestion: TWideStringField;
    qstans1: TWideStringField;
    qstans2: TWideStringField;
    qstans3: TWideStringField;
    qstans4: TWideStringField;
    qstprav: TSmallintField;
    procedure sbrosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vhodClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  regform: Tregform;
  right, mistake: smallint;

implementation

{$R *.dfm}

procedure disableall;
begin
with regform do
begin
forname.Enabled:=false;
forsurname.Enabled:=false;
vhod.Enabled:=false;
sbros.Enabled:=false;
end;
end;

procedure enableall;
begin
with regform do
begin
forname.Enabled:=true;
forsurname.Enabled:=true;
vhod.Enabled:=true;
sbros.Enabled:=true;
end;
end;

procedure Tregform.sbrosClick(Sender: TObject);
begin
forname.Text:='';
forsurname.Text:='';
end;

procedure Tregform.FormCreate(Sender: TObject);
begin
right:=0;
mistake:=0;
connect.ConnectionString:=
'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DATA\vopr.mdb'+
';Mode=ReadWrite|Share Deny None;Persist Security Info=False;Jet OLEDB:Database Password=Artemov662191';
connect.Connected:=true;
testquery.Active:=true;
qst.Active:=true;
end;

procedure Tregform.vhodClick(Sender: TObject);
var i: smallint;
begin
with testquery do begin
Active:=false;
SQL.Clear;
SQL.Add('select * from results');
Active:=true;
end;
with qst do begin
Active:=false;
sql.Clear;
SQL.Add('select * from voprosy order by rnd(-(1000*ID)*Time())');
Active:=true;
end;
if (forname.Text='') or (forsurname.Text='') then
begin
MessageBox(Handle,Pchar('Введите имя и фамилию'),Pchar('Ошибка!'),
    MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
exit
end;
with testquery do
begin
Last;
Insert;
fieldbyname('Username').AsString:=forname.Text;
fieldbyname('Usersurname').AsString:=forsurname.Text;
fieldbyname('Dateofbegin').AsString:=Datetostr(Now)+' '+Timetostr(Now);
Post;
end;
disableall;
qst.First;
radiogroup1.Enabled:=true;
radiogroup1.Caption:=qst.FieldByName('question').AsString;
for i:=0 to 3 do
radiogroup1.Items[i]:=qst.FieldByName('ans'+inttostr(i+1)).AsString;
radiogroup1.ItemIndex:=-1;
end;

procedure Tregform.RadioGroup1Click(Sender: TObject);
var i:smallint;
begin
if radiogroup1.ItemIndex+1=qst.FieldByName('prav').AsInteger then
right:=right+1
else
mistake:=mistake+1;
qst.Next;
if right+mistake=10 then
begin
qst.First;
MessageBox(Handle,Pchar('Ваш результат:'+#13#10+'правильных ответов - '+inttostr(right)
+#13#10+'неправильных ответов - '+inttostr(mistake)),Pchar('Тестирование окончено'),
    MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONINFORMATION);
radiogroup1.Enabled:=false;
with testquery do
begin
last;
edit;
fieldbyname('correct').AsInteger:=right;
fieldbyname('mistake').AsInteger:=mistake;
fieldbyname('dateofend').AsString:=Datetostr(Now)+' '+Timetostr(Now);
post;
end;
mistake:=0;
right:=0;
enableall;
end;
sleep(300);
radiogroup1.Caption:=qst.FieldByName('question').AsString;
for i:=0 to 3 do
radiogroup1.Items[i]:=qst.FieldByName('ans'+inttostr(i+1)).AsString;
radiogroup1.ItemIndex:=-1;
end;

end.
