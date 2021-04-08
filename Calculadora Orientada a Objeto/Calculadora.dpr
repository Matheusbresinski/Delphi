program Calculadora;

uses
  Vcl.Forms,
  UPrincipa in 'UPrincipa.pas' {Form1},
  uClasse.Calculadora in 'uClasse.Calculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
