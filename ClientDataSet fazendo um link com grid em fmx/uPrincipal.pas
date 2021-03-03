unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts, Data.DB,
  FMX.ListView, Datasnap.DBClient, FMX.Grid.Style, Fmx.Bind.Grid,
  Data.Bind.Grid, FMX.ScrollBox, FMX.Grid;

type
  TForm2 = class(TForm)
    cData: TClientDataSet;
    Layout1: TLayout;
    rQtd: TRectangle;
    lQtd: TLabel;
    rEditQtd: TRectangle;
    eQtd: TEdit;
    rCodProd: TRectangle;
    lCodProd: TLabel;
    rEditCodProd: TRectangle;
    eCodProd: TEdit;
    rVUnit: TRectangle;
    lVUnit: TLabel;
    rEditVUnit: TRectangle;
    eValorUnit: TEdit;
    rValorTotal: TRectangle;
    lVTotal: TLabel;
    rEditVTotal: TRectangle;
    eVTotal: TEdit;
    BindingsList1: TBindingsList;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    cDataPRODUTO: TStringField;
    cDataNOME_DO_PRODUTO: TStringField;
    cDataQUANTIDADE: TFloatField;
    cDataUNITARIO: TFloatField;
    cDataTOTAL: TFloatField;
    ENTER: TButton;
    Button2: TButton;
    procedure ENTERClick(Sender: TObject);
    procedure eCodProdExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Function StrZero(Num:Real;Zeros,Deci:Integer):String;
  Function Iif(Condicao:Boolean;Verdadeiro,Falso:Variant):Variant;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.ENTERClick(Sender: TObject);
begin
     cData.Append;
     cData.FieldByName('Produto').AsString         := eCodProd.Text;
     cData.FieldByName('Nome_Do_Produto').AsString := Iif(eCodProd.Text = '000001', 'COCA-COLA',
                                                       Iif(eCodProd.Text = '000002', 'CHOCOLATE GAROTO', 'PRODUTO DE TESTE'));
     cData.FieldByName('Quantidade').AsFloat       := StrToFloatDef(eQtd.Text, 1);
     cData.FieldByName('Unitario').AsFloat         := StrToFloatDef(eValorUnit.Text, 1);
     cData.FieldByName('Total').AsFloat            := cData.FieldByName('Quantidade').AsFloat * cData.FieldByName('Unitario').AsFloat;
     cData.Post;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
     cData.EmptyDataSet;
end;

procedure TForm2.eCodProdExit(Sender: TObject);
begin
     eCodProd.Text := StrZero(StrToIntDef(eCodProd.Text, 1), 6, 0);

end;

Function StrZero(Num:Real;Zeros,Deci:Integer):String;
Var
   Tam, z : Integer;
   Res,Zer: String;
Begin
     Str(Num:Zeros:Deci,Res);
     Res := Trim(Res);
     Tam := Length(Res);
     Zer := '';
     For z := 1 to (Zeros-Tam) Do
         Zer := Zer + '0';
         Result := Zer+Res;
End;

Function Iif(Condicao:Boolean;Verdadeiro,Falso:Variant):Variant;
Begin
     If Condicao Then Result := Verdadeiro Else Result := Falso;
End;

end.
