unit CLTexto;

interface

uses Classes,StdCtrls, CLEstilo;

type
    TTexto = class
    private
       FValor : string;
       FEstilo : TEstilo;
    public
       constructor Create;
       destructor Destroy;override;

       procedure formataTxt(componente : TLabel);

       Property Valor: string Read FValor Write FValor;
       Property Estilo: TEstilo Read FEstilo write FEstilo;
    end;

implementation

constructor TTexto.Create;
Begin
     Fvalor := '';
     FEstilo := TEstilo.Create;
End;

destructor TTexto.Destroy;
Begin
   FEstilo.Free;
   inherited;
End;

procedure TTexto.formataTxt(componente: TLabel);
Begin
     componente.Caption := Valor;
     componente.Font.Name := FEstilo.Fonte;
     componente.Font.Size := FEstilo.Tamanho;
End;
end.
