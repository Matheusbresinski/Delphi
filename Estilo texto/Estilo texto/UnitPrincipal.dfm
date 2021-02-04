object frmFormatcao: TfrmFormatcao
  Left = 0
  Top = 0
  Caption = 'Formata'#231#227'o'
  ClientHeight = 290
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 96
    Width = 498
    Height = 42
    AutoSize = False
    Caption = 'Label1'
    Color = clWhite
    ParentColor = False
  end
  object Label2: TLabel
    Left = 32
    Top = 159
    Width = 498
    Height = 41
    AutoSize = False
    Caption = 'Label2'
    Color = clWhite
    ParentColor = False
  end
  object Label3: TLabel
    Left = 32
    Top = 216
    Width = 498
    Height = 41
    AutoSize = False
    Caption = 'Label3'
    Color = clWhite
    ParentColor = False
  end
  object btnFormatos: TButton
    Left = 32
    Top = 24
    Width = 110
    Height = 25
    Caption = 'Criar Formatos'
    TabOrder = 0
    OnClick = btnFormatosClick
  end
  object btnAplicar: TButton
    Left = 426
    Top = 24
    Width = 104
    Height = 25
    Caption = 'Aplicar Formatos'
    TabOrder = 1
    OnClick = btnAplicarClick
  end
end
