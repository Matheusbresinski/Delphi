unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmFormatcao = class(TForm)
    btnFormatos: TButton;
    btnAplicar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFormatosClick(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormatcao: TfrmFormatcao;

implementation

uses CLTexto;
{$R *.dfm}

var
   loFormato1, loFormato2 : TTexto;

procedure TfrmFormatcao.btnAplicarClick(Sender: TObject);
begin
   loFormato1.formataTxt(Label1);
   loFormato1.formataTxt(Label2);
   loFormato2.formataTxt(Label3);
end;

procedure TfrmFormatcao.btnFormatosClick(Sender: TObject);
begin
   loFormato1.Valor := 'Linha em Arial - 20';
   loFormato1.Estilo.Fonte := 'Arial';
   loFormato1.Estilo.Tamanho := 20;

   loFormato2.Valor := 'Linha em Times - 26';
   loFormato2.Estilo.Fonte := 'Times New Roman';
   loFormato2.Estilo.Tamanho:=26;

   ShowMessage('Formatos criados corretamente');
end;

procedure TfrmFormatcao.FormCreate(Sender: TObject);
begin
   loFormato1 := TTexto.Create;
   loFormato2 := TTexto.Create;
end;

procedure TfrmFormatcao.FormDestroy(Sender: TObject);
begin
   FreeAndNil(loFormato1);
   FreeAndNil(loFormato2);
end;

end.