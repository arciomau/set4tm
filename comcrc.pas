unit comcrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Spin;

type
  Tcrcform = class(TForm)
    getcrc: TLabeledEdit;
    crcbutton: TButton;
    rslt: TLabel;
    testkanala: TComboBox;
    passw: TEdit;
    Label1: TLabel;
    sendit: TButton;
    Bevel1: TBevel;
    Label2: TLabel;
    time: TSpinEdit;
    massiv: TComboBox;
    zapytczasu: TButton;
    Label3: TLabel;
    adresa: TLabeledEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    getNetad: TButton;
    Bevel4: TBevel;
    Label4: TLabel;
    timeind: TSpinEdit;
    setindicat: TButton;
    Bevel5: TBevel;
    Label5: TLabel;
    czas: TSpinEdit;
    nazad: TCheckBox;
    czascorrect: TButton;
    Bevel6: TBevel;
    speedrs: TComboBox;
    bitnech: TCheckBox;
    speedzapros: TButton;
    procedure crcbuttonClick(Sender: TObject);
    procedure getcrcKeyPress(Sender: TObject; var typed: Char);
    procedure passwKeyPress(Sender: TObject; var Key: Char);
    procedure senditClick(Sender: TObject);
    procedure zapytczasuClick(Sender: TObject);
    procedure adresaKeyPress(Sender: TObject; var Key: Char);
    procedure getNetadClick(Sender: TObject);
    procedure setindicatClick(Sender: TObject);
    procedure czascorrectClick(Sender: TObject);
    procedure speedzaprosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  crcform: Tcrcform;

implementation

const
tableofcrc16: array[0..255] of word =(
    $0000, $C0C1, $C181, $0140, $C301,
    $03C0, $0280, $C241, $C601, $06C0,
    $0780, $C741, $0500, $C5C1, $C481,
    $0440, $CC01, $0CC0, $0D80, $CD41,
    $0F00, $CFC1, $CE81, $0E40, $0A00,
    $CAC1, $CB81, $0B40, $C901, $09C0,
    $0880, $C841, $D801, $18C0, $1980,
    $D941, $1B00, $DBC1, $DA81, $1A40,
    $1E00, $DEC1, $DF81, $1F40, $DD01,
    $1DC0, $1C80, $DC41, $1400, $D4C1,
    $D581, $1540, $D701, $17C0, $1680,
    $D641, $D201, $12C0, $1380, $D341,
    $1100, $D1C1, $D081, $1040, $F001,
    $30C0, $3180, $F141, $3300, $F3C1,
    $F281, $3240, $3600, $F6C1, $F781,
    $3740, $F501, $35C0, $3480, $F441,
    $3C00, $FCC1, $FD81, $3D40, $FF01,
    $3FC0, $3E80, $FE41, $FA01, $3AC0,
    $3B80, $FB41, $3900, $F9C1, $F881,
    $3840, $2800, $E8C1, $E981, $2940,
    $EB01, $2BC0, $2A80, $EA41, $EE01,
    $2EC0, $2F80, $EF41, $2D00, $EDC1,
    $EC81, $2C40, $E401, $24C0, $2580,
    $E541, $2700, $E7C1, $E681, $2640,
    $2200, $E2C1, $E381, $2340, $E101,
    $21C0, $2080, $E041, $A001, $60C0,
    $6180, $A141, $6300, $A3C1, $A281,
    $6240, $6600, $A6C1, $A781, $6740,
    $A501, $65C0, $6480, $A441, $6C00,
    $ACC1, $AD81, $6D40, $AF01, $6FC0,
    $6E80, $AE41, $AA01, $6AC0, $6B80,
    $AB41, $6900, $A9C1, $A881, $6840,
    $7800, $B8C1, $B981, $7940, $BB01,
    $7BC0, $7A80, $BA41, $BE01, $7EC0,
    $7F80, $BF41, $7D00, $BDC1, $BC81,
    $7C40, $B401, $74C0, $7580, $B541,
    $7700, $B7C1, $B681, $7640, $7200,
    $B2C1, $B381, $7340, $B101, $71C0,
    $7080, $B041, $5000, $90C1, $9181,
    $5140, $9301, $53C0, $5280, $9241,
    $9601, $56C0, $5780, $9741, $5500,
    $95C1, $9481, $5440, $9C01, $5CC0,
    $5D80, $9D41, $5F00, $9FC1, $9E81,
    $5E40, $5A00, $9AC1, $9B81, $5B40,
    $9901, $59C0, $5880, $9841, $8801,
    $48C0, $4980, $8941, $4B00, $8BC1,
    $8A81, $4A40, $4E00, $8EC1, $8F81,
    $4F40, $8D01, $4DC0, $4C80, $8C41,
    $4400, $84C1, $8581, $4540, $8701,
    $47C0, $4680, $8641, $8201, $42C0,
    $4380, $8341, $4100, $81C1, $8081,
    $4040);

function crc16(my:array of Word; sizeof:Word):Word;
var
i1:Integer;
newcrc:Word;
begin
newcrc:=$FFFF;
for i1:=0 to ((sizeof div 2)-1) do
begin
newcrc:=(newcrc shr 8) xor tableofcrc16[(newcrc and $FF) xor my[i1]];
end;
crc16:=(newcrc shr 8) or (newcrc shl 8);
end;

function StrmakeByte(getstr:string):integer;
const get16:array['A'..'F'] of Word=(10,11,12,13,14,15);
var
getint,i0:Integer;
begin
getint:=0;
for i0:=1 to length(getstr) do
if getstr[i0]<'A' then getint:= getint*16+ord(getstr[i0])-48
else getint:=getint*16+get16[getstr[i0]];
StrmakeByte:=getint;
end;

function Strmakehex(const stroka: string):string;
begin
setlength(result, 2*length(stroka));
binToHex(@stroka[1], @result[1], length(stroka));
end;

{$R *.dfm}

procedure Tcrcform.crcbuttonClick(Sender: TObject);
var
mycrc: Word;
i1,j1: Integer;
tmp: array[1..100] of Word;
begin
if getcrc.Text='' then
Windows.MessageBox(handle,Pchar('Поле ввода не может быть пустым'),Pchar('Введите команду!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP)
else
begin
j1:=1;
for i1:=1 to length(getcrc.Text) do
begin
tmp[i1]:=StrmakeByte(getcrc.Text[j1]+getcrc.Text[j1+1]);
j1:=j1+2;
end;
mycrc:=crc16(tmp, Length(getcrc.Text));
rslt.Visible:=true;
rslt.Caption:='Формат команды (hex): '+getcrc.text+'\'+IntToHex(mycrc, 4);
end;
end;

procedure Tcrcform.getcrcKeyPress(Sender: TObject; var typed: Char);
begin
if typed in [#8,'0'..'9','a'..'f','A'..'F'] then typed:=System.UpCase(typed) else
begin
Windows.MessageBox(handle,Pchar('Используйте только HEX!'),Pchar('Некорректные символы!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
typed:=#0;
end;
end;

procedure Tcrcform.passwKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in [#8,'0'..'9']) then key:=#0
end;

procedure Tcrcform.senditClick(Sender: TObject);
begin
case testkanala.ItemIndex of
-1: rslt.Caption:='Необходимо выбрать команду из списка';
0:
begin
getcrc.Text:='0000';
crcbutton.Click;
end;
1:
begin
getcrc.Text:='0001'+strmakehex(passw.Text);
crcbutton.Click;
end;
2:
begin
getcrc.Text:='0002';
crcbutton.Click;
end;
end;
end;

procedure Tcrcform.zapytczasuClick(Sender: TObject);
begin
if (60 mod time.Value)<>0 then
rslt.Caption:='Недопустимое значение времени'
else
case massiv.ItemIndex of
-1: rslt.Caption:='Выберите номер массива';
0: begin
getcrc.Text:='00030000'+inttohex((time.Value),0);
crcbutton.Click
end;
1: begin
getcrc.Text:='00030001'+inttohex((time.Value),0);
crcbutton.Click
end;
2: begin
getcrc.Text:='00030002'+inttohex((time.Value),0);
crcbutton.Click;
rslt.Caption:=rslt.Caption+' (только для СЭТ-4ТМ.03)';
end;
end;
end;

procedure Tcrcform.adresaKeyPress(Sender: TObject; var Key: Char);
begin
if not (Key in [#8,'0'..'9','a'..'f','A'..'F']) then key:=#0
else key:=System.UpCase(Key)
end;

procedure Tcrcform.getNetadClick(Sender: TObject);
begin
if (strmakebyte(adresa.Text)>$EF) then
begin
rslt.Caption:='Неправильный сетевой адрес';
exit;
end
else
getcrc.Text:='000305'+adresa.Text;
crcbutton.Click
end;

procedure Tcrcform.setindicatClick(Sender: TObject);
begin
getcrc.Text:='000307'+inttohex((timeind.Value),0);
crcbutton.Click
end;

procedure Tcrcform.czascorrectClick(Sender: TObject);
var tmp, tmp2: string;
begin
tmp2:=copy(inttohex((-1*czas.Value),2),length(inttohex((-1*czas.Value),2))-1,
length(inttohex((-1*czas.Value),2)));
if nazad.Checked then tmp:='00030BFF'+tmp2
else tmp:='00030B00'+inttohex((czas.Value),0);
getcrc.Text:=tmp;
crcbutton.Click
end;

procedure Tcrcform.speedzaprosClick(Sender: TObject);
var speed,bit:string;
begin
if bitnech.Checked then bit:='0' else bit:='1';
case speedrs.ItemIndex of
-1: begin
rslt.Caption:='Выберите скорость обмена из списка';
exit
end;
0: speed:='4';
1: speed:='3';
2: speed:='2';
3: speed:='1';
4: speed:='0';
5: speed:='6';
6: speed:='8';
end;
getcrc.Text:='000315'+bit+speed;
crcbutton.Click;
if ((speed='4') or (speed='6') or (speed='8')) then
rslt.Caption:=rslt.Caption+' (только для СЭТ-4ТМ.03)';
end;

end.
