program Project2;

uses
  System.StartUpCopy,
  FMX.Forms,
  uAnBotao in 'uAnBotao.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
