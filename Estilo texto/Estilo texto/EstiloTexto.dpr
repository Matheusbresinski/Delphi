program EstiloTexto;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {frmFormatcao},
  CLTexto in 'CLTexto.pas',
  CLEstilo in 'CLEstilo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmFormatcao, frmFormatcao);
  Application.Run;
end.
