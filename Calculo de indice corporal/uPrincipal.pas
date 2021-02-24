unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Edit, FMX.StdCtrls, FMX.Controls.Presentation, System.Actions,
  FMX.ActnList, uRequisitos, uResultado, uDadosPessoa;

type
  TForm2 = class(TForm)
    BtnResultado: TButton;
    BtnRequisitos: TButton;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    eAltura: TEdit;
    ePeso: TEdit;
    cmbSexo: TComboBox;
    ActionList1: TActionList;
    aRequisitos: TAction;
    aResultado: TAction;
    procedure aRequisitosExecute(Sender: TObject);
    procedure aResultadoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.aRequisitosExecute(Sender: TObject);
begin
     frmRequisitos.ShowModal;
end;

procedure TForm2.aResultadoExecute(Sender: TObject);
begin

     Try
        P_Dados_Pessoa.Altura := StrToFloat(eAltura.Text);
        P_Dados_Pessoa.Peso   := StrToFLoat(ePeso.Text) ;
        P_Dados_Pessoa.Sexo   := cmbSexo.Items.Text;
        P_Dados_Pessoa.IMC    := 'não definido';

        frmResultado.ShowModal;
     except
         ShowMessage('Dados Inválidos');
     End;

end;

end.
