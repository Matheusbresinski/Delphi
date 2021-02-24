program Calculo_de_indice_corporal;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'uPrincipal.pas' {Form2},
  uRequisitos in 'uRequisitos.pas' {frmRequisitos},
  uResultado in 'uResultado.pas' {frmResultado},
  uDadosPessoa in 'uDadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfrmRequisitos, frmRequisitos);
  Application.CreateForm(TfrmResultado, frmResultado);
  Application.Run;
end.
