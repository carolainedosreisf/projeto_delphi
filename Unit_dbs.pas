unit Unit_dbs;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDConnection_db: TFDConnection;
    FDPhysSQLiteDriverLink_db: TFDPhysSQLiteDriverLink;
    FDQuery_clientes: TFDQuery;
    FDTable_clientes: TFDTable;
    FDTable_clientesid: TIntegerField;
    FDTable_clientesnome: TStringField;
    FDTable_clientesendereco: TStringField;
    FDTable_clientesid_cidade: TIntegerField;
    FDQuery_cidades: TFDQuery;
    FDTable_cidades: TFDTable;
    FDTable_cidadesid_cidade: TIntegerField;
    FDTable_cidadesnome_cidade: TStringField;
    FDTable_cidadessigla_estado: TStringField;
    FDTable_clientesnome_cidade: TStringField;
    FDQuery_cadastro: TFDQuery;
    FDTable_cadastro: TFDTable;
    FDTable_cadastroid_cadastro: TIntegerField;
    FDTable_cadastrodata_cadastro: TStringField;
    FDTable_cadastroid_cliente: TIntegerField;
    FDTable_cadastronumero_celular: TStringField;
    FDTable_cadastronome_cliente: TStringField;
    FDQuery_usuario: TFDQuery;
    FDTable_usuarios: TFDTable;
    FDTable_usuariosnome_user: TStringField;
    FDTable_usuariossenhar_user: TStringField;
    FDTable_cadastrovalor_pagamento2: TStringField;
    FDTable_cadastrodia_pagamento2: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
