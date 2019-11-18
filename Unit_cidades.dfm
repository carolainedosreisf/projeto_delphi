object Form_cidades: TForm_cidades
  Left = 0
  Top = 0
  Caption = 'Cidades'
  ClientHeight = 482
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid_cidades: TDBGrid
    Left = 0
    Top = 0
    Width = 625
    Height = 120
    Align = alTop
    DataSource = DataSource_cidades
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator_ciddades: TDBNavigator
    Left = 0
    Top = 457
    Width = 625
    Height = 25
    DataSource = DataSource_cidades
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    Align = alBottom
    TabOrder = 1
  end
  object Panel_cidades: TPanel
    Left = 0
    Top = 120
    Width = 625
    Height = 337
    Align = alClient
    TabOrder = 2
    object id_cidade: TLabel
      Left = 40
      Top = 24
      Width = 102
      Height = 18
      Caption = 'C'#243'digo da cidade'
      FocusControl = DB_id_cidade
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object nome_cidade: TLabel
      Left = 40
      Top = 85
      Width = 96
      Height = 18
      Caption = 'Nome da cidade'
      FocusControl = DB_cidade
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object sigla_uf: TLabel
      Left = 40
      Top = 146
      Width = 89
      Height = 18
      Caption = 'Sigla do estado'
      FocusControl = DB_sigla_uf
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object mensagem_erro: TLabel
      Left = 40
      Top = 216
      Width = 3
      Height = 18
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
    end
    object DB_id_cidade: TDBEdit
      Left = 40
      Top = 48
      Width = 233
      Height = 26
      DataField = 'id_cidade'
      DataSource = DataSource_cidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DB_cidade: TDBEdit
      Left = 40
      Top = 109
      Width = 233
      Height = 26
      DataField = 'nome_cidade'
      DataSource = DataSource_cidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DB_sigla_uf: TDBEdit
      Left = 40
      Top = 170
      Width = 233
      Height = 26
      DataField = 'sigla_estado'
      DataSource = DataSource_cidades
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Palatino Linotype'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Salvar: TButton
      Left = 40
      Top = 241
      Width = 102
      Height = 25
      Caption = 'Salvar'
      Default = True
      TabOrder = 3
      OnClick = SalvarClick
    end
    object Novo: TButton
      Left = 176
      Top = 241
      Width = 97
      Height = 25
      Caption = 'Novo'
      TabOrder = 4
      OnClick = NovoClick
    end
    object Cancelar: TButton
      Left = 40
      Top = 272
      Width = 102
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = CancelarClick
    end
    object Excluir: TButton
      Left = 176
      Top = 272
      Width = 97
      Height = 25
      Caption = 'Excluir'
      TabOrder = 6
      OnClick = ExcluirClick
    end
  end
  object DataSource_cidades: TDataSource
    DataSet = DataModule1.FDTable_cidades
    Left = 400
    Top = 176
  end
end
