unit CLMediaPonderada;

interface

uses Classes, CLMedia;


type

    TMediaPonderada = class(TMedia)
    private
        FPeso1: integer;
        FPeso2: integer;
        procedure SetPeso1(valor : integer);
        procedure SetPeso2(valor : integer);
    public
        constructor Create;
        function CalcularMedia: real; override;

        property Peso1: integer read FPeso1 write SetPeso1;
        property Peso2: integer read FPeso2 write SetPeso2;

    End;


implementation

function TMediaPonderada.CalcularMedia;
var
   _Media: real;
   _SomaPesos: integer;
begin
     _Media := (valor1 * Peso1) + (Valor2 * Peso2);
     _SomaPesos := Peso1 + Peso2;

     _Media := _Media / _SomaPesos;
     Result := _Media;
End;

constructor TMediaPonderada.Create;
Begin
     inherited;
     FPeso1:= 1;
     FPeso2:= 1;
End;
procedure TMediaPonderada.SetPeso1(Valor: Integer);
Begin
     if valor > 1 then
        FPeso1 := valor
    else
        FPeso1 := 1;
End;

procedure TMediaPonderada.SetPeso2(valor: integer);
Begin
    if valor > 1 then
       FPeso2 := valor
    else
       FPeso1 := 1;
End;

End.
