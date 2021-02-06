program tradutor;

uses
  Vcl.Forms,
  primeiroProjeto in 'primeiroProjeto.pas' {frminicial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrminicial, frminicial);
  Application.Run;
end.
