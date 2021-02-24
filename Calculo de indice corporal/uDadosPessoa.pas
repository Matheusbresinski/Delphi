unit uDadosPessoa;

interface

uses
  System.SysUtils;

type

      RDados_Pessoa = record

      Altura: Double;
      Peso: Double;
      Sexo: String;
      IMC: String;
end;

   function CalcularIMC(p_Peso, p_Altura, p_Sexo: String): String;
var
   P_Dados_Pessoa : RDados_Pessoa;
implementation

function CalcularIMC(p_Peso, p_Altura, p_Sexo: String): String;

var
   l_IMC: Double;
   l_StrIMC: String;
Begin
     if p_Sexo = '' then
        raise Exception.Create('Obrigatório informar o sexo');
     try

        L_IMC := p_Peso/(p_Altura*p_Altura);
        if p_Sexo = 'f' then  Begin
           if (l_IMC < 19.1) then
              l_StrIMC := 'abaixo do peso';
        End;

     finally

     end;
End;


end.
