unit about;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, shellAPI;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    mail: TLabel;
    procedure OKButtonClick(Sender: TObject);
    procedure mailClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
close
end;

procedure TAboutBox.mailClick(Sender: TObject);
begin
shellexecute(Handle,nil,'mailto:ja@paet.by?subject=Set4tm',nil,nil,SW_RESTORE);
end;

end.
