unit calc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Grids, Math, ComCtrls, ExtCtrls;

type
  TcalcForm = class(TForm)
    volt: TStringGrid;
    izmer: TSpinEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    amper: TStringGrid;
    Label3: TLabel;
    count: TButton;
    rep: TMemo;
    save: TSaveDialog;
    Button2: TButton;
    cnst: TStringGrid;
    Label4: TLabel;
    poter: TButton;
    Inom: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Unom: TComboBox;
    Button3: TButton;
    Button4: TButton;
    PageControl1: TPageControl;
    vkl1: TTabSheet;
    vkl2: TTabSheet;
    Label7: TLabel;
    Rline: TLabeledEdit;
    Xline: TLabeledEdit;
    Label8: TLabel;
    koefTok: TLabeledEdit;
    koefNapr: TLabeledEdit;
    Label9: TLabel;
    nompow: TLabeledEdit;
    vysok: TLabeledEdit;
    nizk: TLabeledEdit;
    poteriKZ: TLabeledEdit;
    PoteriHH: TLabeledEdit;
    NaprKZ: TLabeledEdit;
    TokHH: TLabeledEdit;
    padlik: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure countClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure poterClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure InomChange(Sender: TObject);
    procedure UnomChange(Sender: TObject);
    procedure padlikClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calcForm: TcalcForm;
u1,u2,u3, i1,i2,i3,Ino,Uno: real;

implementation

{$R *.dfm}

procedure TcalcForm.Button1Click(Sender: TObject);
begin
amper.Enabled:=true;
volt.Enabled:=true;
volt.ColCount:=izmer.Value+1;
amper.ColCount:=izmer.Value+1;
count.Enabled:=true;
end;

procedure TcalcForm.FormCreate(Sender: TObject);
begin
decimalseparator:=',';
volt.RowCount:=3;
amper.RowCount:=3;
amper.Cells[0,0]:='Фаза А';
amper.Cells[0,1]:='Фаза В';
amper.Cells[0,2]:='Фаза С';
volt.Cells[0,0]:=amper.Cells[0,0];
volt.Cells[0,1]:=amper.Cells[0,1];
volt.Cells[0,2]:=amper.Cells[0,2];
cnst.Cells[0,0]:='Pп.л.ном';
cnst.Cells[1,0]:='Pп.н.ном';
cnst.Cells[2,0]:='Pп.хх.ном';
cnst.Cells[3,0]:='Qп.л.ном';
cnst.Cells[4,0]:='Qп.н.ном';
cnst.Cells[5,0]:='Qп.хх.ном';
count.Enabled:=false;
poter.Enabled:=false;
poter.Caption:='Расчет'+#13#10+'суммарных потерь';
Button3.Caption:='Тестовые'+#13#10+'значения';
Ino:=1;
Uno:=57.7;
end;

procedure TcalcForm.countClick(Sender: TObject);
var
j: byte;
p1, p2, p3: real;
s1, s2, s3: real;
q1, q2, q3: real;
allu1, alli1, allu2, alli2, allu3, alli3: string;
begin
u1:=0; u2:=0; u3:=0;
i1:=0; i2:=0; i3:=0;
p1:=0; p2:=0; p3:=0;
try
for j:=1 to volt.ColCount-1 do begin
u1:=u1+power(strtofloat(volt.Cells[j,0]),2);
u2:=u2+power(strtofloat(volt.Cells[j,1]),2);
u3:=u3+power(strtofloat(volt.Cells[j,2]),2);
i1:=i1+power(strtofloat(amper.Cells[j,0]),2);
i2:=i2+power(strtofloat(amper.Cells[j,1]),2);
i3:=i3+power(strtofloat(amper.Cells[j,2]),2);
p1:=p1+abs(strtofloat(volt.Cells[j,0]))*abs(strtofloat(amper.Cells[j,0]));
p2:=p2+abs(strtofloat(volt.Cells[j,1]))*abs(strtofloat(amper.Cells[j,1]));
p3:=p3+abs(strtofloat(volt.Cells[j,2]))*abs(strtofloat(amper.Cells[j,2]));
end;
u1:=sqrt(u1/izmer.Value);
u2:=sqrt(u2/izmer.Value);
u3:=sqrt(u3/izmer.Value);
i1:=sqrt(i1/izmer.Value);
i2:=sqrt(i2/izmer.Value);
i3:=sqrt(i3/izmer.Value);
p1:=p1/izmer.Value;
p2:=p2/izmer.Value;
p3:=p3/izmer.Value;
s1:=u1*i1;
s2:=u2*i2;
s3:=u3*i3;
q1:= sqrt(power(s1,2)-power(p1,2));
q2:= sqrt(power(s2,2)-power(p2,2));
q3:= sqrt(power(s3,2)-power(p3,2));
for j:=1 to volt.ColCount-1 do begin
allu1:=allu1+(volt.Cells[j,0])+'; ';
alli1:=alli1+(amper.Cells[j,0])+'; ';
allu2:=allu2+(volt.Cells[j,1])+'; ';
alli2:=alli2+(amper.Cells[j,1])+'; ';
allu3:=allu3+(volt.Cells[j,2])+'; ';
alli3:=alli3+(amper.Cells[j,2])+'; ';
end;
cnst.Enabled:=true;
poter.Enabled:=true;
with rep.Lines do
begin
clear;
add('Исходные данные');
add('');
add('Количество измерений: '+inttostr(izmer.Value));
add('Напряжения фазы А, B: '+allu1);
add('Напряжения фазы B, B: '+allu2);
add('Напряжения фазы C, B: '+allu3);
add('Токи фазы А, A: '+alli1);
add('Токи фазы B, A: '+alli2);
add('Токи фазы C, A: '+alli3);
add('');
add('Результаты расчета');
add('');
add('Среднеквадратическое напряжение фазы А (В): '+floattostr(roundto(u1,-3)));
add('Среднеквадратическое напряжение фазы B (В): '+floattostr(roundto(u2,-3)));
add('Среднеквадратическое напряжение фазы C (В): '+floattostr(roundto(u3,-3)));
add('Среднеквадратический ток фазы А (А): '+floattostr(roundto(i1,-3)));
add('Среднеквадратический ток фазы B (А): '+floattostr(roundto(i2,-3)));
add('Среднеквадратический ток фазы C (А): '+floattostr(roundto(i3,-3)));
add('Активная мощность фазы А (Вт): '+floattostr(roundto(p1,-3)));
add('Активная мощность фазы B (Вт): '+floattostr(roundto(p2,-3)));
add('Активная мощность фазы C (Вт): '+floattostr(roundto(p3,-3)));
add('Полная мощность фазы А (ВА): '+floattostr(roundto(s1,-3)));
add('Полная мощность фазы B (ВА): '+floattostr(roundto(s2,-3)));
add('Полная мощность фазы C (ВА): '+floattostr(roundto(s3,-3)));
add('Реактивная мощность фазы А (вар): '+floattostr(roundto(q1,-3)));
add('Реактивная мощность фазы B (вар): '+floattostr(roundto(q2,-3)));
add('Реактивная мощность фазы C (вар): '+floattostr(roundto(q3,-3)));
add('Среднее значение коэффициента мощности: '+floattostr(roundto((p1/s1+p2/s2+p3/s3)/3,-3)));
if ((u1>230) or (u2>230) or (u3>230)) or ((i1>10) or (i2>10) or (i3>10))
then add('Счетчик СЭТ-4ТМ не может применяться на данной линии')
else add('На данной линии возможно применение счетчиков СЭТ-4ТМ');
end
except
Windows.MessageBox(handle,Pchar('Ошибка в исходных данных!'),Pchar('Ошибка!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
exit;
end;
end;

procedure TcalcForm.Button2Click(Sender: TObject);
begin
if save.Execute then
begin
rep.Lines.SaveToFile(save.FileName);
Windows.MessageBox(handle,Pchar('Отчет успешно сохранен'),Pchar('Сохранение'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONINFORMATION);
end
else Windows.MessageBox(handle,Pchar('Отчет не сохранен!'),Pchar('Внимание!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONWARNING);
exit;
end;

procedure TcalcForm.poterClick(Sender: TObject);
var
pfull, qfull: real;
j:byte;
begin
try
for j:=0 to 1 do begin
Pfull:=power((i1/ino),2)*strtofloat(cnst.Cells[j,1])+
power((i2/ino),2)*strtofloat(cnst.Cells[j,1])+
power((i3/ino),2)*strtofloat(cnst.Cells[j,1]);
end;
pfull:=pfull+power((u1/uno),2)*strtofloat(cnst.Cells[2,1])+
power((u2/uno),2)*strtofloat(cnst.Cells[2,1])+
power((u3/uno),2)*strtofloat(cnst.Cells[2,1]);
for j:=3 to 4 do begin
Qfull:=power((i1/ino),2)*strtofloat(cnst.Cells[j,1])+
power((i2/ino),2)*strtofloat(cnst.Cells[j,1])+
power((i3/ino),2)*strtofloat(cnst.Cells[j,1]);
end;
Qfull:=Qfull+power((u1/uno),4)*strtofloat(cnst.Cells[5,1])+
power((u2/uno),4)*strtofloat(cnst.Cells[5,1])+
power((u3/uno),4)*strtofloat(cnst.Cells[5,1]);
with rep.Lines do
begin
add('');
add('Номинальная мощность счетчика (по одной фазе), ВА: '+floattostr(roundto(Ino*Uno,-3)));
add('Мощность потерь в линии и силовом трансформаторе');
for j:=0 to cnst.ColCount-1 do add(cnst.cells[j,0]+': '+cnst.Cells[j,1]);
add('Суммарная активная мощность потерь (Вт): '+floattostr(roundto(pfull,-3)));
add('Суммарная реактивная мощность потерь (вар): '+floattostr(roundto(qfull,-3)));
end
except
Windows.MessageBox(handle,Pchar('Ошибка в исходных данных!'),Pchar('Ошибка!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
exit;
end;
end;

procedure TcalcForm.Button3Click(Sender: TObject);
begin
cnst.Cells[0,1]:='1,224';
cnst.Cells[1,1]:='1,224';
cnst.Cells[2,1]:='0,992';
cnst.Cells[3,1]:='0,579';
cnst.Cells[4,1]:='13,19';
cnst.Cells[5,1]:='34,192';
end;

procedure TcalcForm.Button4Click(Sender: TObject);
var i,j:byte;
begin
rep.Clear;
rep.Lines.Add('Результаты расчета');
with cnst do begin
for i:=FixedCols to ColCount-1 do
for j:=FixedRows to RowCount-1 do
Cells[i, j]:='';
end;
with volt do begin
for i:=FixedCols to ColCount-1 do
for j:=FixedRows to RowCount-1 do
Cells[i, j]:='';
end;
with amper do begin
for i:=FixedCols to ColCount-1 do
for j:=FixedRows to RowCount-1 do
Cells[i, j]:='';
end;
izmer.Value:=1;
count.Enabled:=false;
volt.Enabled:=false;
amper.Enabled:=false;
poter.Enabled:=false;
end;

procedure TcalcForm.InomChange(Sender: TObject);
begin
case Inom.ItemIndex of
0:Ino:=1;
1:Ino:=5;
end;
end;

procedure TcalcForm.UnomChange(Sender: TObject);
begin
case Unom.ItemIndex of
0:Uno:=57.7;
1:Uno:=63.5;
2:Uno:=100;
3:Uno:=110;
4:Uno:=115;
5:Uno:=120;
6:Uno:=127;
7:Uno:=173;
8:Uno:=190;
9:Uno:=200;
10:Uno:=220;
11:Uno:=230;
end;
end;

procedure TcalcForm.padlikClick(Sender: TObject);
var rplnom, qplnom, Kts, Intr, rpnnom, qpnnom, qkz, rphhnom, qhh, qphhnom:real;
begin
try
Kts:=abs(strtofloat(vysok.Text)/strtofloat(nizk.Text));
rplnom:=abs(strtofloat(Rline.Text)*power((Ino/Kts),2)*(strtofloat(koeftok.Text)/strtofloat(koefnapr.Text)));
cnst.Cells[0,1]:=floattostr(roundto(rplnom,-4));
qplnom:=strtofloat(Xline.Text)*power((Ino/Kts),2)*(strtofloat(koeftok.Text)/strtofloat(koefnapr.Text));
cnst.Cells[3,1]:=floattostr(roundto(qplnom,-4));
Intr:=abs(strtofloat(nompow.Text)/(sqrt(3)*strtofloat(nizk.Text)));
rpnnom:=abs((strtofloat(poteriKZ.Text)/3)*(strtofloat(koeftok.Text)/strtofloat(koefnapr.Text))*power((Ino/Intr),2));
cnst.Cells[1,1]:=floattostr(roundto(rpnnom*1000,-4));
Qkz:=sqrt(power((strtofloat(naprKZ.Text)/100*strtofloat(nompow.Text)),2)-power(strtofloat(poteriKZ.Text),2));
Qpnnom:=(qkz/3)*(strtofloat(koeftok.Text)/strtofloat(koefnapr.Text))*power((Ino/Intr),2);
cnst.Cells[4,1]:=floattostr(roundto(qpnnom*1000,-4));
rphhnom:=abs((strtofloat(poteriHH.Text)/3)*power((sqrt(3)*Uno)/strtofloat(nizk.Text),2)*(strtofloat(koefnapr.Text)/strtofloat(koeftok.Text)));
cnst.Cells[2,1]:=floattostr(roundto(rphhnom/1000,-4));
qhh:=sqrt((power((strtofloat(nompow.Text)*strtofloat(tokHH.Text)/100),2))-(power(strtofloat(poteriHH.Text),2)));
qphhnom:=(qhh/3)*power((sqrt(3)*Uno/(strtofloat(nizk.Text))),4)*power(strtofloat(koefNapr.Text),3)/strtofloat(koeftok.Text)/power(10,6);
cnst.Cells[5,1]:=floattostr(roundto(qphhnom/1000,-4));
pagecontrol1.ActivePage:=pagecontrol1.Pages[0];
except
Windows.MessageBox(handle,Pchar('Проверьте корректность исходных данных!'),Pchar('Ошибка!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
end;
end;

end.
