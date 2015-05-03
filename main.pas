unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, counter, StdCtrls, bases, calc, test1, about, comcrc, shellAPI;

type
  TMainForm = class(TForm)
    MenuAll: TMainMenu;
    N1: TMenuItem;
    N3D1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label1: TLabel;
    N4: TMenuItem;
    opis: TMemo;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    CRC1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N3D1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure CRC1Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
mainform.Constraints.MinHeight:=400;
mainform.Constraints.MaxHeight:=mainform.Constraints.MinHeight;
mainform.Constraints.MinWidth:=600;
mainform.Constraints.MaxWidth:=mainform.Constraints.MinWidth;
mainform.Position:=poDesktopCenter;
opis.Width:=MainForm.Width-30;
opis.Height:=MainForm.Height-120;
opis.Lines.LoadFromFile('whatis.set');
end;

procedure TMainForm.N3D1Click(Sender: TObject);
begin
form1.Show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
close;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
dbase.Show;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
calcform.Show;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
LA.Free
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
regform.Show
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
aboutbox.Show;
end;

procedure TMainForm.CRC1Click(Sender: TObject);
begin
crcform.Show;
end;

procedure TMainForm.N9Click(Sender: TObject);
begin
shellexecute(Handle,nil, PChar(ExtractFilePath(Application.ExeName)+'man\protokol.pdf'),nil,nil,SW_SHOWNORMAL);
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
shellexecute(Handle,nil, PChar(ExtractFilePath(Application.ExeName)+'man\hlp.pdf'),nil,nil,SW_SHOWNORMAL);
end;

end.
