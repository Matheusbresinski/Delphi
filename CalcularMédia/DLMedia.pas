unit DLMedia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TfrmMedia = class(TForm)
      edtValor1: TEdit;
      edtValor2: TEdit;
      edtPeso1: TEdit;
      edtPeso2: TEdit;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      btnMedia: TButton;
    procedure btnMediaClick(Sender: TObject);
    private
      { Private declarations }
    public
      { Public declarations }
    end;

var
  frmMedia: TfrmMedia;

implementation

{$R *.dfm}

uses CLMedia, CLMediaPonderada;


procedure TfrmMedia.btnMediaClick(Sender: TObject);
var
   loMedia: TMedia;
   _Media: Real;
Begin
     try
        Try
           if (edtPeso1.text = '') and (edtPeso2.Text = '') then Begin
              loMedia := TMedia.Create;
           End
           else Begin
              loMedia := TMediaPonderada.Create;

              with (loMedia as TMediaPonderada) do Begin
                   Peso1  := StrToIntDef(edtPeso1.Text, 0);
                   Peso2  := StrToIntDef(edtPeso2.Text, 0);
              End;
           End;

           loMedia.Valor1 := StrToFloatDef(edtValor1.Text, 0);
           loMedia.Valor2 := StrToFloatDef(edtValor2.Text, 0);

           _Media := loMedia.CalcularMedia;
           ShowMessage('A m�dia � ' + FloatToStr(_Media));
        Except
           ShowMessage('Problemas na associa��o dos valores');
        End;
     Finally
        FreeAndNil(loMedia);
     End;
End;

end.
