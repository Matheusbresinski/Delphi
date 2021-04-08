object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 95
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 144
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 271
    Top = 16
    Width = 66
    Height = 21
    TabOrder = 2
  end
  object Multiplicar: TButton
    Left = 8
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 3
    OnClick = MultiplicarClick
  end
  object Dividir: TButton
    Left = 89
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 4
    OnClick = DividirClick
  end
  object Somar: TButton
    Left = 170
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Somar'
    TabOrder = 5
    OnClick = SomarClick
  end
  object Subtrair: TButton
    Left = 262
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Subtrair'
    TabOrder = 6
    OnClick = SubtrairClick
  end
end
