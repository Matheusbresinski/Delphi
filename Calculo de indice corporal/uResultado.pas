unit uResultado;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, uDadosPessoa;

type
  TfrmResultado = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lAltura: TLabel;
    lPeso: TLabel;
    lSexo: TLabel;
    lIMC: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmResultado: TfrmResultado;

implementation

{$R *.fmx}

procedure TfrmResultado.FormShow(Sender: TObject);
Begin
     lAltura.Text := FloatToStr(P_Dados_Pessoa.Altura);
     lPeso.Text   := FloatToStr(P_Dados_Pessoa.Peso);
     lSexo.Text   := P_Dados_Pessoa.Sexo;
     lIMC.Text    := P_Dados_Pessoa.IMC;
End;

end.
