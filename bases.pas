unit bases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cdata, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  Tdbase = class(TForm)
    tokRad: TRadioGroup;
    UnomRad: TRadioGroup;
    RSRad: TRadioGroup;
    klassRad: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    chargRad: TRadioGroup;
    DBGrid1: TDBGrid;
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbase: Tdbase;

implementation

{$R *.dfm}

procedure Tdbase.FormResize(Sender: TObject);
const w:array[0..6] of real=(0.2,0.1,0.1,0.15,0.11,0.15,0.16);
var i:byte;
begin
for i:=0 to length(w)-1 do
DBGrid1.Columns[i].Width:=trunc((DBGrid1.Width-GetSystemMetrics(SM_CXVSCROLL)-LENGTH(w))*w[i])-1;
dbgrid1.Width:=dbase.Width-50;
end;

procedure Tdbase.Button1Click(Sender: TObject);
var newsql: array of string;
begin
setlength(newsql,5);

case tokrad.ItemIndex of
-1: newsql[0]:='';
0: newsql[0]:=' and Inom=1';
1: newsql[0]:=' and Inom=5';
end;

case UnomRad.ItemIndex of
-1: newsql[1]:='';
0: newsql[1]:=' and Unom="3x(57,7-115)"';
1: newsql[1]:=' and Unom="3x(120-230)"';
end;

case RSRad.ItemIndex of
-1: newsql[2]:='';
0: newsql[2]:=' and rs485=1';
1: newsql[2]:=' and rs485=2';
end;

case klassRad.ItemIndex of
-1: newsql[3]:='';
0: newsql[3]:=' and accuracy="0,2S/0,5"';
1: newsql[3]:=' and accuracy="0,5S/1,0"';
end;

case chargrad.ItemIndex of
-1: newsql[4]:='';
0: newsql[4]:=' and charging=true';
1: newsql[4]:=' and charging=false';
end;

with dm.query do
begin
Close;
SQL.Clear;
SQL.Add('select * from counters where ID<=(select max (ID) from counters)'+
newsql[0]+newsql[1]+newsql[2]+newsql[3]+newsql[4]+
' order by ID');
Prepare;
Open;
end;
end;

procedure Tdbase.Button2Click(Sender: TObject);
begin
chargrad.ItemIndex:=-1;
klassrad.ItemIndex:=-1;
rsrad.ItemIndex:=-1;
tokrad.ItemIndex:=-1;
unomrad.ItemIndex:=-1;
with dm.query do
begin
close;
sql.Clear;
sql.Add('select * from counters');
prepare;
open;
end;
end;

end.
