unit CLMedia;

interface

uses Classes;

type

    TMedia = Class
    private
        FValor1: real;
        FValor2: real;
        procedure SetVal1(Valor: real);
        procedure SetVal2(Valor: real);
    public
        constructor Create;
        function CalcularMedia: real; virtual;

        property Valor1: real read FValor1 write SetVal1;
        property Valor2: real read FValor2 write SetVal2;

    End;


implementation

function Tmedia.CalcularMedia: real;
Begin
     Result:= (Valor1 + Valor2)/ 2;
End;

constructor TMedia.Create;
Begin
     FValor1:= 0;
     FValor2:= 0;
End;

procedure TMedia.SetVal1(Valor: Real);
Begin
     if valor > 0 then
        FValor1:= valor
     else
        FValor1:= 0;
End;

procedure TMedia.SetVal2(Valor: Real);
Begin
     if valor > 0  then
        FValor2 := valor
     else
        FValor2 := 0;
End;

End.
