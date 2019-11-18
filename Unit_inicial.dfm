object Form_inicial: TForm_inicial
  Left = 0
  Top = 0
  Caption = 'P'#225'gina Inicial'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bem_vindo: TLabel
    Left = 56
    Top = 48
    Width = 302
    Height = 32
    Caption = 'Seja bem Vindo ao Sistema!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Palatino Linotype'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object instrucao: TLabel
    Left = 57
    Top = 110
    Width = 301
    Height = 26
    Caption = 'Navegue pelo menu ou pelos bot'#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object chama_cadastro: TButton
    Left = 32
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Cadastro'
    TabOrder = 0
    OnClick = chama_cadastroClick
  end
  object chama_clientes: TButton
    Left = 160
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Clientes'
    TabOrder = 1
    OnClick = chama_clientesClick
  end
  object chama_cidades: TButton
    Left = 304
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Cidades'
    TabOrder = 2
    OnClick = chama_cidadesClick
  end
  object MainMenu1: TMainMenu
    Left = 384
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      OnClick = Cadastro1Click
    end
    object Clientes1: TMenuItem
      Caption = 'Clientes'
      OnClick = Clientes1Click
    end
    object Cidades1: TMenuItem
      Caption = 'Cidades'
      OnClick = Cidades1Click
    end
  end
end
