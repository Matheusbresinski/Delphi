unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Ani,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm2 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Button1: TButton;
    FloatAnimation1: TFloatAnimation;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
begin
     Rectangle1.Visible := True;
     Rectangle2.Visible := True;

end;

end.
