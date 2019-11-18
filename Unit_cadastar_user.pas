unit Unit_cadastar_user;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm_cadastrar_user = class(TForm)
    Panel_cadastar_user: TPanel;
    DBNavigator_cadastar_user: TDBNavigator;
    user: TLabel;
    DB_user: TDBEdit;
    DataSource_cadastar_user: TDataSource;
    senha: TLabel;
    DB_senha: TDBEdit;
    Cadastrar: TButton;
    voltar_login: TButton;
    mensagem_sucesso: TLabel;
    mensagem_erro: TLabel;
    procedure FormShow(Sender: TObject);
    procedure CadastrarClick(Sender: TObject);
    procedure voltar_loginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_cadastrar_user: TForm_cadastrar_user;

implementation

{$R *.dfm}

uses Unit_dbs, Unit_login;

procedure TForm_cadastrar_user.CadastrarClick(Sender: TObject);
begin
Try
  datamodule1.FDTable_usuarios.Post;
  mensagem_erro.caption:='';
  datamodule1.FDTable_usuarios.Append;
  Mensagem_sucesso.Caption:= 'Você foi cadastrado com sucesso.';
  mensagem_erro.Caption:='';
except
    mensagem_erro.caption:='Por favor preencha todos os campos!';
    mensagem_sucesso.Caption:='';

End;

end;

procedure TForm_cadastrar_user.FormShow(Sender: TObject);
begin
  Datamodule1.FDTable_usuarios.Append;
  DB_user.SetFocus;
end;

procedure TForm_cadastrar_user.voltar_loginClick(Sender: TObject);
begin
  Form_login.Show;
  form_cadastrar_user.Close;
end;

end.
