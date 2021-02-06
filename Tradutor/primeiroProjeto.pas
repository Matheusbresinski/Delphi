unit primeiroProjeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, StrUtils;

type
  Week=(Monday, Tuesday, Wednesday, Thursday, Friday, Sartuday, Sunday);

  Tfrminicial = class(TForm)
    Button1: TButton;
    eConsoante: TEdit;
    Image1: TImage;
    Tradutor: TGroupBox;
    Label2: TLabel;
    Escolha: TLabel;
    eDia: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure eDiaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
     FDia: Week;
     FConsoante: String;
    Procedure SetDia(pValor: Week);
    Procedure TraduzDias;
  public
    Property Dia: Week Read FDia Write SetDia;
    Property Consoante: String Read FConsoante Write FConsoante;
    Function Iif(Condicao:Boolean;Verdadeiro,Falso:Variant):Variant;
  end;

var
  frminicial: Tfrminicial;

implementation

{$R *.dfm}

procedure Tfrminicial.Button1Click(Sender: TObject);
begin
     TraduzDias;
end;

procedure Tfrminicial.eDiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        If Key = VK_RETURN Then Begin
        TraduzDias;
        Button1.SetFocus;
     End;
end;

Procedure Tfrminicial.SetDia(pValor: Week);
begin
     FDia := pValor;

         case dia of
            Monday: Begin
              Consoante := 'Segunda';  //set
            end;
            Tuesday: Begin
              Consoante := 'Terça';   //set
            end;
            Wednesday: Begin
              Consoante:= 'Quarta';   //set
            End;
            Thursday: Begin
              Consoante:= 'Quinta';  //set
            End;
            Friday: begin
              Consoante:= 'Sexta';   //set
            end;
            Sartuday: begin
              Consoante:= 'Sabado';  //set
            end;
            Sunday: begin
              Consoante:= 'Domingo';  //set
            end;

         end;

end;

procedure Tfrminicial.TraduzDias;
begin
                {Exemplo de matchstr com biblioteca strUtils:
                  Iif(matchstr(eDia.Text,['Monday','monday','MONDAY'], Monday
                }
     Dia := Iif(LowerCase(eDia.Text) = 'monday', Monday,
             Iif(LowerCase(eDia.Text) = 'tuesday', Tuesday,
              Iif(LowerCase(eDia.Text) = 'wednesday', Wednesday,
               Iif(LowerCase(eDia.Text) = 'thursday', Thursday,
                Iif(LowerCase(eDia.Text) = 'friday', Friday,
                 Iif(LowerCase(eDia.Text) = 'sartuday', Sartuday,
                  Iif(LowerCase(eDia.Text) = 'sunday', Sunday, Thursday)))))));

     eConsoante.Text := Consoante ;  //get
end;
//  Iif(Condicao:Boolean faz a comparação de uma Variante que pode ser String Double...
Function Tfrminicial.Iif(Condicao:Boolean;Verdadeiro,Falso:Variant):Variant; Begin
     If Condicao Then Result := Verdadeiro Else Result := Falso;
End;

end.
