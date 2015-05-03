unit counter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NewOGL, StdCtrls, ExtCtrls, lexx;

type

  TForm1 = class(TForm)
    NewOGL1: TNewOGL;
    Timer1: TTimer;
    Button2: TButton;
    Button3: TButton;
    Timer2: TTimer;
    Timer3: TTimer;
    Button1: TButton;
    Timer4: TTimer;
    CheckBox1: TCheckBox;
    Button4: TButton;
    Timer5: TTimer;
    Timer6: TTimer;
    CheckBox2: TCheckBox;
    Button5: TButton;
    Timer7: TTimer;
    Timer8: TTimer;
    CheckBox3: TCheckBox;
    Button6: TButton;
    Timer9: TTimer;
    Timer10: TTimer;
    Edit1: TEdit;
    Button7: TButton;
    Button8: TButton;
    Acts: TPanel;
    Button9: TButton;
    Button10: TButton;
    Label1: TLabel;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const step=5;

var
  Form1: TForm1;
  i1:word;
  i2:word;
  i3,i4, i5:word;
  LA:TlexicalAnalyzer;

implementation

{$R *.dfm}

Procedure Delay(Time: Cardinal);
Var tm0: cardinal;
begin
tm0:=GetTickCount;
While (GetTickCount<=tm0+Time) Do
  Begin
  Application.ProcessMessages;
  Sleep(1);
  End;
End;

procedure nachalo;
begin
Form1.NewOGL1.Zoom:=200;
Form1.NewOGL1.BackColor:=clnavy;
Form1.NewOGL1.AngleX:=45;
Form1.NewOGL1.AngleY:=45;
form1.NewOGL1.AngleZ:=0;
form1.NewOGL1.ShiftX:=-100;
form1.NewOGL1.ShiftY:=-120;
i1:=0;
i2:=0;
i3:=0;
i4:=0;
i5:=0;
end;

Procedure knopka1;
begin
 repeat
   i3:=i3+round(step/5);
 form1.NewOgl1.Move('knopka1',0,0,-i3/2);
 form1.NewOgl1.Move('knopka1',0,0,1);
 until i3=5;
end;

Procedure knopka1R;
begin
 repeat
   i3:=i3-round(step/5);
 form1.NewOgl1.Move('knopka1',0,0,i3/4);
 until i3=0;
end;

Procedure knopka2;
begin
repeat
   i4:=i4+round(step/5);
 form1.NewOgl1.Move('knopka2',0,0,-i4/2);
 form1.NewOgl1.Move('knopka2',0,0,1);
 until i4=5;
end;

Procedure knopka2R;
begin
 repeat
   i4:=i4-round(step/5);
 form1.NewOgl1.Move('knopka2',0,0,i4/4);
 until i4=0;
end;

Procedure knopka3;
begin
 repeat
   i5:=i5+round(step/5);
 form1.NewOgl1.Move('knopka3',0,0,-i5/2);
 form1.NewOgl1.Move('knopka3',0,0,1);
 until i5=5;
end;

Procedure knopka3R;
begin
 repeat
   i5:=i5-round(step/5);
 form1.NewOgl1.Move('knopka3',0,0,i5/4);
 until i5=0;
end;

Procedure kryshka1;
begin
if i1<25 then
    begin
   i1:=i1+step;
   form1.NewOgl1.Move('kryshka',0,-i1,0);
    end;
end;

Procedure kryshka1R;
begin
form1.NewOgl1.Move('kryshka',0,3*i1,0);
end;

Procedure steklo;
begin
form1.NewOGL1.CreateSatelliteAxis('Axis1',0,0,0,10,0,0);
  if i2<25 then
    begin
   i2:=i2+step;
   form1.NewOgl1.Move('steklo',0,trunc(i2/4),trunc(i2/6));
 form1.newogl1.RotatePart('Axis1','steklo',i2+2);
    end;
end;

Procedure stekloR;
begin
  form1.newogl1.RotatePart('Axis1','steklo',-85);
     form1.NewOgl1.Move('steklo',0,-17,-10);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.NewOGL1.SourceFile:=application.GetNamePath+'counter.ogl';
Form1.NewOGL1.Initiate;
nachalo;
form1.NewOGL1.Wireframe:=false;
LA:=TLexicalAnalyzer.Create;
button9.Caption:='Выбор вида'+#13#10+'энергии';
button10.Caption:='Возврат к'+#13#10+'актив. эн.';
button11.Caption:='Индикация'+#13#10+'основ. парам.';
button12.Caption:='Индикация'+#13#10+'актив. эн.';
button13.Caption:='Выбор фазы'+#13#10+'для тарифа';
button14.Caption:='Коррекция'+#13#10+'часов';
button15.Caption:='Сброс'+#13#10+'параметров';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
i3:=0;
timer3.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
timer1.Enabled:=true;
i1:=0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
kryshka1;
button2.Enabled:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  timer2.Enabled:=true;
i2:=0;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
steklo;
button3.Enabled:=false;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
knopka1;
 form1.button1.Enabled:=false;
 form1.timer3.Enabled:=false;
 form1.timer4.Enabled:=true;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
if checkbox1.Checked=true then
begin
Delay(900);
end;
knopka1R;
timer4.Enabled:=false;
button1.Enabled:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 i4:=0;
timer5.Enabled:=true;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
 knopka2;
  form1.button4.Enabled:=false;
 form1.timer5.Enabled:=false;
 form1.timer6.Enabled:=true;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
 if checkbox2.Checked=true then
begin
Delay(900);
end;
knopka2R;
timer6.Enabled:=false;
button4.Enabled:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  i5:=0;
timer7.Enabled:=true;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
knopka3;
 form1.button5.Enabled:=false;
 form1.timer7.Enabled:=false;
 form1.timer8.Enabled:=true;
end;

procedure TForm1.Timer8Timer(Sender: TObject);
begin
 if checkbox3.Checked=true then
begin
Delay(900);
end;
knopka3R;
timer8.Enabled:=false;
button5.Enabled:=true;
end;

procedure TForm1.Timer9Timer(Sender: TObject);
begin
if (timer1.Enabled=true) and (timer2.Enabled=true) then
begin
  button6.Enabled:=true;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
kryshka1R;
stekloR;
       timer1.Enabled:=false;
       timer2.Enabled:=false;
 button6.Enabled:=false;
 timer9.Enabled:=false;
 button2.Enabled:=true;
button3.Enabled:=true;
nachalo;
end;

procedure TForm1.Timer10Timer(Sender: TObject);
begin
  form1.Timer9.Enabled:=true;
end;

procedure TForm1.Button7Click(Sender: TObject);
var j0,i0:integer;
begin
j0:=0;
LA.Parse(edit1.Text);
for i0:=0 to length(la.LexemList)-1 do begin
case la.LexemList[j0].LexemeType of
kryshka:
begin
i1:=0;
timer1.Enabled:=true;
button2.Enabled:=false;
inc(j0);
end;

szklo:
begin
i2:=0;
timer2.Enabled:=true;
button3.Enabled:=false;
inc(j0);
end;

button1a:
begin
if (la.LexemList[j0-1].LexemeType=lb) and (la.LexemList[j0+1].LexemeType=rb) then
begin
if (la.LexemList[j0-2].LexemeType=longpress) then
begin
 checkbox1.Checked:=true;
 button1.Click;
inc(j0,2);
end;
if (la.LexemList[j0-2].LexemeType=press)
then
begin
checkbox1.Checked:=false;
button1.Click;
inc(j0,2);
end
end;
end;

button2a:
begin
if (la.LexemList[j0-1].LexemeType=lb) and (la.LexemList[j0+1].LexemeType=rb) then begin
if (la.LexemList[j0-2].LexemeType=longpress) then
begin
 checkbox2.Checked:=true;
 button4.Click;
inc(j0,2);
end;
if (la.LexemList[j0-2].LexemeType=press)
then
begin
checkbox2.Checked:=false;
button4.Click;
inc(j0,2);
end
end;
end;

button3a:
begin
if (la.LexemList[j0-1].LexemeType=lb) and (la.LexemList[j0+1].LexemeType=rb) then
begin
if (la.LexemList[j0-2].LexemeType=longpress) then
begin
 checkbox3.Checked:=true;
 button5.Click;
inc(j0,2);
end;
if (la.LexemList[j0-2].LexemeType=press)
then
begin
checkbox3.Checked:=false;
button5.Click;
inc(j0,2);
end
end;
end;
lb,rb,press,longpress,amp:
  begin
    inc(j0)
  end;
eoe:
  begin
    exit
  end;
end;
end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var f: Textfile;
st:string;
begin
assignfile(f,ExtractFilePath(paramstr(0))+'mova.set');
{$I-}
Reset(f);
{$I+}
if IOResult<>0 then
begin
Windows.MessageBox(handle,Pchar('Ошибка открытия файла справки mova.set'),Pchar('Ошибка!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
Exit;
end;
While not EOF(f) do
begin
ReadLn(f,st);
Windows.MessageBox(handle,Pchar(st),Pchar('Справка'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONINFORMATION);
end;
CloseFile(f);
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
edit1.Text:='P(2)&P(1)';
button7.Click;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
edit1.Text:='P(2)&L(3)';
button7.Click;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
edit1.Text:='P(1)&L(2)';
button7.Click;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
edit1.Text:='P(1)&P(3)';
button7.Click;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
edit1.Text:='P(3)&L(2)';
button7.Click;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
edit1.Text:='P(3)&L(1)';
button7.Click;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
edit1.Text:='L(1)&L(2)&L(3)';
button7.Click;
end;

end.
