unit CLContagemCedulas;

interface

uses
    Classes, Dialogs, SysUtils;
type

    TContagemCedulas = class
    private
      FValorContagem: integer;
      FQtdNotas100: integer;
      FQtdNotas50: integer;
      FQtdNotas10: integer;
      FQtdNotas5: integer;
      FQtdNotas2: integer;
      FQtdNotas1: integer;
      procedure Distribuicao;
      procedure DefineValorContagem(valor: integer);
    public

      Property ValorContagem: integer read FValorContagem write DefineValorContagem;
      Property QtdNotas100  : integer read FQtdNotas100;
      Property QtdNotas50   : integer read FQtdNotas50;
      Property QtdNotas10   : integer read FQtdNotas10;
      Property QtdNotas5    : integer read FQtdNotas5;
      Property QtdNotas2    : integer read FQtdNotas2;
      Property QtdNotas1    : integer read FQtdNotas1;

      function ObterDistribuicao: TStringList;

    End;

implementation

uses Math;

Procedure TContagemCedulas.Distribuicao;
var
   _Aux: integer;
Begin
     _Aux := FValorContagem;
     FQtdNotas100 := _Aux div 100;
     _Aux := _Aux mod 100;
             If _Aux > 0 then Begin
                FQtdNotas50:= _Aux div 50;
                _Aux := _Aux mod 50 ;
                    If _Aux > 0 Then Begin
                       FQtdNotas10:= _Aux div 10;
                       _Aux := _Aux mod 10;
                           if _Aux > 0 then Begin
                              FQtdNotas5:= _Aux div 5;
                              _Aux := _Aux mod 5;
                                  if _Aux > 0 then Begin
                                         FQtdNotas2:= _Aux div 2;
                                         _Aux := _Aux mod 2;
                                         FQtdNotas1:= _Aux;
                                  End;

                           End;

                    End;

             End;

End;

  procedure TContagemCedulas.DefineValorContagem(valor: Integer);
    Begin
       if valor < 0 then
          FValorContagem := 0
       else Begin
          FValorContagem := valor;
          Distribuicao;
       End;

    End;
  function TContagemCedulas.ObterDistribuicao:TstringList;
  var loLista : TStringList;
    Begin
        try
           loLista := TStringList.Create;
           loLista.Add(IntToStr(FQtdNotas100) + ' nota(s) de 100 ');
           loLista.Add(IntToStr(FQtdNotas50) + ' nota(s) de 50 ');
           loLista.Add(IntToStr(FQtdNotas10) + ' nota(s) de 10 ');
           loLista.Add(IntToStr(FQtdNotas5) + ' nota(s) de 5 ');
           loLista.Add(IntToStr(FQtdNotas2) + ' nota(s) de 2 ');
           loLista.Add(IntToStr(FQtdNotas1) + ' nota(s) de 1 ');
           result := loLista;
        finally
           loLista := Nil;
           FreeAndNil(loLista);
        end;

    End;
end.
