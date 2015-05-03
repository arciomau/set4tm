program set4tm;

uses
  Forms,
  BDE,
  windows,
  main in 'main.pas' {MainForm},
  lexx in 'lexx.pas',
  counter in 'counter.pas' {Form1},
  cdata in 'cdata.pas' {dm: TDataModule},
  bases in 'bases.pas' {dbase},
  calc in 'calc.pas' {calcForm},
  test1 in 'test1.pas' {regform},
  about in 'about.pas' {AboutBox},
  comcrc in 'comcrc.pas' {crcform};

{$R *.res}

var SV: sysversion;
hnd:cardinal;

begin
if (dbiGetSysVersion(SV)<>DBIERR_None) or (SV.iVersion<400) then
begin
Windows.MessageBox(application.Handle,Pchar('BDE не установлен или версия слишком старая. '+
'Дальнейшая работа программы невозможна!'),Pchar('Ошибка!'),
MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
Halt(1)
end;
hnd:=createMutex(nil,true,'set4tmprogram');
if GetlastError=ERROR_ALREADY_EXISTS then
begin
Windows.MessageBox(application.Handle,Pchar('Программа уже запущена на этом компьютере!'),
Pchar('Ошибка!'), MB_SYSTEMMODAL or MB_TOPMOST or MB_ICONSTOP);
Halt(1)
end;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tdbase, dbase);
  Application.CreateForm(TcalcForm, calcForm);
  Application.CreateForm(Tregform, regform);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(Tcrcform, crcform);
  Application.Run;
end.
