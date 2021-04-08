unit UPrincipa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uClasse.Calculadora;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Multiplicar: TButton;
    Dividir: TButton;
    Somar: TButton;
    Subtrair: TButton;
    procedure MultiplicarClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure SomarClick(Sender: TObject);
    procedure SubtrairClick(Sender: TObject);
  private
    FCalculadora: iCalculadora;
    procedure SetCalculadora(const Value: iCalculadora);
    procedure Operacao;
    { Private declarations }
  public
    { Public declarations }
    property Calculadora: iCalculadora read FCalculadora write SetCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.DividirClick(Sender: TObject);
Begin
     Calculadora := TDividir.Create;
     Operacao;
End;

procedure TForm1.MultiplicarClick(Sender: TObject);
Begin
     Calculadora := TMultiplicar.Create;
     Operacao;
End;

procedure TForm1.SomarClick(Sender: TObject);
Begin
     Calculadora := TSoma.Create;
     Operacao;
End;

procedure TForm1.SubtrairClick(Sender: TObject);
Begin
     Calculadora := TSubtrair.Create;
     Operacao;
End;

procedure TForm1.Operacao;
Begin
     Edit3.Text := FloatToStr(Calculadora.Operacao(StrToFloat(edit1.Text), StrToFloat(edit2.Text)));
End;

procedure TForm1.SetCalculadora(const Value: iCalculadora);
begin
  FCalculadora := Value;
end;
End.
