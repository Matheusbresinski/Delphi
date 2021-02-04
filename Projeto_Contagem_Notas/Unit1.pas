unit Unit1;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;
type
  TForm1 = class(TForm)
  protected
    FValorContagem : integer;
    FQtdNotas100 : integer;
    FQtdNotas50 : integer;
    FQtdNotas10 : integer;
    FQtdNotas5 : integer;
    FQtdNotas2 : integer;
    FQtdNotas1 : integer;
    procedure Distribuicao;
    procedure DefineValorContagem(Valor:integer);
  private
    { Private declarations }
  public
    property ValorContagem: integer read FValorContagem
                                    write DefineValorContagem;
    function ObterDistribuicao: Tstringlist;
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}
{TcontagemCedulas}
  procedure Tform1.Distribuicao;
  var iAux: Integer;
    begin
        iAux := FValorContagem;
        FQtdNotas100 := iAux div 100;
        iAux := iAux mod 100;
        if iAux > 0 then
          Begin
             FQtdNotas50 := iAux div 50;
             iAux := iAux mod 50;
             if iAux > 0 then
               Begin
                 FQtdNotas50 := iAux div 10;
                 iAux := iAux mod 10;
                 if iAux > 0 then
                    Begin
                      FQtdNotas50 := iAux div 5;
                      iAux := iAux mod 5;
                      if iAux > 0 then
                        Begin
                          FQtdNotas50 := iAux div 2;
                          iAux := iAux mod 2;
                          FQtdNotas1 := iAux;
                        End;
                    End;
               End;
          End;
    end;
  function Tform1.ObterDistribuicao: Tstringlist;
begin
     Result:= Nil;
end;
procedure Tform1.DefineValorContagem(valor: Integer);
  begin
    if valor < 0 then
      FValorContagem := 0
    else
    begin
      FValorContagem := Valor;
      Distribuicao();
    end;
end;
end.

