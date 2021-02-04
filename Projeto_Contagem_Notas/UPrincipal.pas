unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, StrUtils;

type
    TfrmDLContagemCedulas = class(TForm)
    edtValorContagem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnProcessar: TBitBtn;
    mmeCedulas: TMemo;
    procedure btnProcessarClick(Sender: TObject);
    private
    { Private declarations }
    public

    end;

var
    frmDLContagemCedulas: TfrmDLContagemCedulas;

implementation

{$R *.dfm}
uses CLContagemCedulas;

  procedure TfrmDLContagemCedulas.btnProcessarClick(Sender: TObject);
  var
      loContagem : TContagemCedulas;
  Begin

       loContagem := TContagemCedulas.Create;
       try
          try
          loContagem.ValorContagem := StrToInt(edtValorContagem.text);
          mmeCedulas.Clear;
          mmeCedulas.Lines.AddStrings(loContagem.ObterDistribuicao);
          Except
              ShowMessage('Valor de contagem inv�lido');
          End;
       finally
          FreeAndNil(loContagem);
       end;

  End;

end.