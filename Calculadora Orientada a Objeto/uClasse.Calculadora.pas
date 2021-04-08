unit uClasse.Calculadora;

interface

uses
  System.SysUtils;


Type

  iCalculadora = interface
    ['{1E03AF97-2B78-42C5-A0FB-C23DAF20095D}']

    Function Operacao(Num1, Num2 : Double) : Double;
  End;

  TSoma = Class(TInterfacedObject, iCalculadora)
    Function Operacao(Num1, Num2 : Double) : Double;
  End;
  TSubtrair = Class(TInterfacedObject, iCalculadora)
    Function Operacao(Num1, Num2 : Double) : Double;
  End;
  TDividir = Class(TInterfacedObject, iCalculadora)
    Function Operacao(Num1, Num2 : Double) : Double;
  End;
  TMultiplicar = Class(TInterfacedObject, iCalculadora)
    Function Operacao(Num1, Num2 : Double) : Double;
  End;

implementation



{ TSoma }

Function TSoma.Operacao(Num1, Num2: Double): Double;
Begin
     Result := Num1 + Num2;
End;

{ TSubtrair }

Function TSubtrair.Operacao(Num1, Num2: Double): Double;
Begin
     Result := Num1 - Num2;
End;

{ TMultiplicar }

Function TMultiplicar.Operacao(Num1, Num2: Double): Double;
Begin
     Result := Num1 * Num2;
End;

{ TDividir }

Function TDividir.Operacao(Num1, Num2: Double): Double;
Begin
     If Num2 <= 0 then
        Raise Exception.Create('Valor não pode ser dividido por zero');
     Result := Num1 / Num2;
End;

End.
