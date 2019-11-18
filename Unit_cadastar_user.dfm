object Form_cadastrar_user: TForm_cadastrar_user
  Left = 0
  Top = 0
  Caption = 'Casdastrar-se'
  ClientHeight = 369
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_cadastar_user: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 344
    Align = alClient
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 383
    object user: TLabel
      Left = 48
      Top = 40
      Width = 107
      Height = 18
      Caption = 'Nome de Usu'#225'rio:'
      FocusControl = DB_user
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object senha: TLabel
      Left = 48
      Top = 91
      Width = 39
      Height = 18
      Caption = 'Senha:'
      FocusControl = DB_senha
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object mensagem_sucesso: TLabel
      Left = 48
      Top = 224
      Width = 4
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object mensagem_erro: TLabel
      Left = 48
      Top = 200
      Width = 4
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object DB_user: TDBEdit
      Left = 48
      Top = 59
      Width = 265
      Height = 26
      DataField = 'nome_user'
      DataSource = DataSource_cadastar_user
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DB_senha: TDBEdit
      Left = 48
      Top = 115
      Width = 265
      Height = 26
      DataField = 'senhar_user'
      DataSource = DataSource_cadastar_user
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Cadastrar: TButton
      Left = 48
      Top = 157
      Width = 107
      Height = 25
      Caption = 'Cadastrar'
      Default = True
      TabOrder = 2
      OnClick = CadastrarClick
    end
    object voltar_login: TButton
      Left = 161
      Top = 157
      Width = 152
      Height = 26
      Caption = 'Voltar p/ login'
      TabOrder = 3
      OnClick = voltar_loginClick
    end
  end
  object DBNavigator_cadastar_user: TDBNavigator
    Left = 0
    Top = 344
    Width = 592
    Height = 25
    DataSource = DataSource_cadastar_user
    VisibleButtons = []
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 464
    ExplicitWidth = 702
  end
  object DataSource_cadastar_user: TDataSource
    DataSet = DataModule1.FDTable_usuarios
    Left = 520
    Top = 208
  end
end
