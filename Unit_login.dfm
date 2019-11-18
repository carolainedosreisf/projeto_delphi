object Form_login: TForm_login
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 281
  ClientWidth = 415
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
  object Mensagem_user: TLabel
    Left = 108
    Top = 163
    Width = 4
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object seu_user: TLabel
    Left = 108
    Top = 43
    Width = 128
    Height = 18
    Caption = 'Seu nome de Usu'#225'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object sua_senha: TLabel
    Left = 108
    Top = 107
    Width = 67
    Height = 18
    Caption = 'Sua Senha :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object mensagem_senha: TLabel
    Left = 108
    Top = 191
    Width = 4
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 12
    Top = 8
    Width = 395
    Height = 18
    Caption = 
      'Voc'#234' ser'#225' logado automaticamente quando o login estiver  correto' +
      '.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
  end
  object nome_user: TEdit
    Left = 108
    Top = 75
    Width = 193
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = nome_userChange
  end
  object senha: TEdit
    Left = 108
    Top = 131
    Width = 193
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Palatino Linotype'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnChange = senhaChange
  end
  object cadastro: TButton
    Left = 8
    Top = 248
    Width = 137
    Height = 25
    Caption = 'N'#227'o tenho Login'
    TabOrder = 2
    OnClick = cadastroClick
  end
  object pular_cadastro: TButton
    Left = 278
    Top = 248
    Width = 129
    Height = 25
    Caption = 'Entrar sem Login'
    TabOrder = 3
    OnClick = pular_cadastroClick
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 48
    object etste1: TMenuItem
      Caption = 'Op'#231#245'es'
      object QueromeCadastrar1: TMenuItem
        Caption = 'Quero me Cadastrar'
        OnClick = QueromeCadastrar1Click
      end
      object QueroentrarsemLogar1: TMenuItem
        Caption = 'Quero entrar sem Logar'
        OnClick = QueroentrarsemLogar1Click
      end
    end
  end
end
