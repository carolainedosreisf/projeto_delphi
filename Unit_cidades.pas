unit Unit_cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TForm_cidades = class(TForm)
    DBGrid_cidades: TDBGrid;
    DBNavigator_ciddades: TDBNavigator;
    Panel_cidades: TPanel;
    id_cidade: TLabel;
    DB_id_cidade: TDBEdit;
    DataSource_cidades: TDataSource;
    nome_cidade: TLabel;
    DB_cidade: TDBEdit;
    sigla_uf: TLabel;
    DB_sigla_uf: TDBEdit;
    Salvar: TButton;
    Novo: TButton;
    Cancelar: TButton;
    Excluir: TButton;
    mensagem_erro: TLabel;
    procedure SalvarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_cidades: TForm_cidades;

implementation

{$R *.dfm}

uses Unit_dbs;

procedure TForm_cidades.CancelarClick(Sender: TObject);
begin
  Datamodule1.FDTable_cidades.Cancel;
  mensagem_erro.caption:='';
end;

procedure TForm_cidades.ExcluirClick(Sender: TObject);
begin
  Datamodule1.FDTable_cidades.Delete;
  mensagem_erro.caption:='';
end;

procedure TForm_cidades.NovoClick(Sender: TObject);
begin
  try
     Datamodule1.FDTable_cidades.Append;
     mensagem_erro.caption:='';
     DB_id_cidade.SetFocus;
  except
    Datamodule1.FDTable_cidades.cancel;
    Datamodule1.FDTable_cidades.Append;
    mensagem_erro.caption:='';
    DB_id_cidade.SetFocus;

  end;
end;

procedure TForm_cidades.SalvarClick(Sender: TObject);
begin
  Try
    datamodule1.FDTable_cidades.Post;
    mensagem_erro.caption:='';
  except
      mensagem_erro.caption:='N�o houve altera��es, ou existem  campos vazios!';

  End;
end;

end.
