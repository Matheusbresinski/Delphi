unit uAnBotao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FMX.Layouts;

type
  TForm2 = class(TForm)
    Circle4: TCircle;
    Layout2: TLayout;
    Layout4: TLayout;
    Circle2: TCircle;
    FloatAnimation1: TFloatAnimation;
    Layout3: TLayout;
    Circle1: TCircle;
    Layout1: TLayout;
    Circle5: TCircle;
    Image1: TImage;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    FloatAnimation4: TFloatAnimation;
    FloatAnimation5: TFloatAnimation;
    FloatAnimation6: TFloatAnimation;
    procedure Circle1Click(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
  private
  var
     MenuAberto : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Circle1Click(Sender: TObject);
begin

     if MenuAberto then Begin

        FloatAnimation1.OnFinish :=  nil;
        FloatAnimation6.Inverse := true;
        FloatAnimation6.Start;

        FloatAnimation5.Inverse := true;
        FloatAnimation5.Start;

        FloatAnimation4.Inverse := true;
        FloatAnimation4.Start;

        FloatAnimation3.Inverse := true;
        FloatAnimation3.Start;

        FloatAnimation2.Inverse := true;
        FloatAnimation2 .Start;



        MenuAberto := false;

     End
     Else Begin

          MenuAberto := true;
          Layout2.Visible := true;
          FloatAnimation1.OnFinish := FloatAnimation1Finish;

          FloatAnimation1.Inverse := false;
          FloatAnimation1.StartValue := Layout1.Position.Y;
          FloatAnimation1.StopValue := Layout1.Position.Y - 120;
          FloatAnimation1.Start;

          FloatAnimation6.Inverse := false;
          FloatAnimation6.StartValue := 0;
          FloatAnimation6.StopValue  := 225;
          FloatAnimation6.Start;

     End;


end;

procedure TForm2.FloatAnimation1Finish(Sender: TObject);
begin
     Layout3.Visible := true;
     FloatAnimation2.Inverse := false;
     FloatAnimation2.StartValue := Layout2.Position.X;
     FloatAnimation2.StopValue  := Layout2.Position.x - 120;
     FloatAnimation2.Start;

     FloatAnimation3.Inverse := false;
     FloatAnimation3.StartValue := Layout2.Position.Y;
     FloatAnimation3.StopValue  := Layout2.Position.Y + 20;
     FloatAnimation3.Start;

     Layout4.Visible := true;
     FloatAnimation4.Inverse := false;
     FloatAnimation4.StartValue := Layout2.Position.x;
     FloatAnimation4.StopValue  := Layout2.Position.x - 150;
     FloatAnimation4.Start;

     FloatAnimation5.Inverse := false;
     FloatAnimation5.StartValue := Layout2.Position.y;
     FloatAnimation5.StopValue  := Layout2.Position.Y + 130;
     FloatAnimation5.Start;

end;


procedure TForm2.FloatAnimation5Finish(Sender: TObject);
begin
     if not MenuAberto then  Begin
        Layout3.Visible := false;
        Layout4.Visible := false;

        FloatAnimation1.Inverse := true;
        FloatAnimation1.Start;
     End;

end;

procedure TForm2.FormShow(Sender: TObject);
begin
     MenuAberto:= false;
     Layout2.Visible := false;
     Layout3.Visible := false;
     Layout4.Visible := false;
end;

end.
