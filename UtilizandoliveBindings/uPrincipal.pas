unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, FMX.Colors, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListBox;

type
  TForm2 = class(TForm)
    Rectangle1: TRectangle;
    ColorPanel1: TColorPanel;
    BindingsList1: TBindingsList;
    LinkControlToPropertyFillColor: TLinkControlToProperty;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    LinkFillControlToPropertyPositionX: TLinkFillControlToProperty;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

end.
