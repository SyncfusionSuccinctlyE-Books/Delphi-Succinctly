program DelphiPad;

uses
  Vcl.Forms,
  Main in 'Main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DelphiPad';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
