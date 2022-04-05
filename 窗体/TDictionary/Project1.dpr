program Project1;

uses
  Vcl.Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitClass in 'UnitClass.pas',
  UnitDao in 'UnitDao.pas',
  UnitAdd in 'UnitAdd.pas' {FormAdd};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormAdd, FormAdd);
  Application.Run;
end.
