unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Notification, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components;

type
  TForm2 = class(TForm)
    NotificationCenter1: TNotificationCenter;
    Button1: TButton;
    Edit1: TEdit;
    BindingsList1: TBindingsList;
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
var
   notificacao: TNotification;
Begin
     notificacao              := NotificationCenter1.CreateNotification;
     try
        notificacao.Name      := 'MensagemNotificação';
        notificacao.Title     := 'Atenção';
        notificacao.AlertBody := Edit1.Text;
        NotificationCenter1.PresentNotification(notificacao);
     finally

        notificacao.Free;
     end;
End;



end.
