object frmMedia: TfrmMedia
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo de M'#233'dia'
  ClientHeight = 178
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 32
    Width = 47
    Height = 16
    Caption = '1'#186' Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 80
    Width = 47
    Height = 16
    Caption = '2'#186' Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 211
    Top = 32
    Width = 32
    Height = 16
    Caption = 'Peso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 211
    Top = 81
    Width = 32
    Height = 16
    Caption = 'Peso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtValor1: TEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 0
    Text = '0'
  end
  object edtValor2: TEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 21
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object edtPeso1: TEdit
    Left = 264
    Top = 32
    Width = 121
    Height = 21
    Alignment = taRightJustify
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
  end
  object edtPeso2: TEdit
    Left = 264
    Top = 80
    Width = 121
    Height = 21
    Alignment = taRightJustify
    TabOrder = 3
    Text = '0'
  end
  object btnMedia: TButton
    Left = 168
    Top = 128
    Width = 113
    Height = 25
    Caption = 'Calcular M'#233'dia'
    TabOrder = 4
    OnClick = btnMediaClick
  end
end
