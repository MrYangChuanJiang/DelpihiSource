program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FormINI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormINI, FormINI);
  Application.Run;
end.
