//Eu fiz um sistema de login na página inicial, com um tabaela de usuários e página de cadastro.
unit Unit_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm_login = class(TForm)
    nome_user: TEdit;
    senha: TEdit;
    Mensagem_user: TLabel;
    seu_user: TLabel;
    sua_senha: TLabel;
    mensagem_senha: TLabel;
    cadastro: TButton;
    pular_cadastro: TButton;
    MainMenu1: TMainMenu;
    etste1: TMenuItem;
    QueromeCadastrar1: TMenuItem;
    QueroentrarsemLogar1: TMenuItem;
    Label1: TLabel;
    procedure entrarClick(Sender: TObject);
    procedure nome_userChange(Sender: TObject);
    procedure senhaChange(Sender: TObject);
    procedure cadastroClick(Sender: TObject);
    procedure pular_cadastroClick(Sender: TObject);
    procedure QueromeCadastrar1Click(Sender: TObject);
    procedure QueroentrarsemLogar1Click(Sender: TObject);
  private
    { Private declarations }
    procedure verificaLogin ;
  public
    { Public declarations }
  end;

var
  Form_login: TForm_login;

implementation

{$R *.dfm}

uses Unit_dbs, Unit_cadastro, Unit_inicial, Unit_cadastar_user;

procedure TForm_login.cadastroClick(Sender: TObject);
begin
  Form_cadastrar_user.show;
  //form_login.Close;
end;

procedure TForm_login.entrarClick(Sender: TObject);
begin
   verificaLogin;
end;

procedure TForm_login.nome_userChange(Sender: TObject);
begin
    verificaLogin;
end;

procedure TForm_login.pular_cadastroClick(Sender: TObject);
begin
  form_inicial.show;
end;

procedure TForm_login.QueroentrarsemLogar1Click(Sender: TObject);
begin
  form_inicial.show;
  //form_login.Close;
end;

procedure TForm_login.QueromeCadastrar1Click(Sender: TObject);
begin
    form_cadastrar_user.show;
end;

procedure TForm_login.senhaChange(Sender: TObject);
begin
  verificaLogin;
end;

procedure TForm_login.verificaLogin;
var
  encontrado:string;
  nome_correto,senha_correto:integer;
begin
  nome_correto:=0;
  senha_correto:=0;
  Datamodule1.FDTable_usuarios.First;
  while not Datamodule1.FDTable_usuarios.Eof do
    begin
      if (Datamodule1.FDTable_usuariosnome_user.Value = nome_user.text) and (Datamodule1.FDTable_usuariossenhar_user.Value = senha.text) then
        begin
          nome_correto:=1;
          senha_correto:=1;
        end ;
        if (senha_correto = 1 )and (nome_correto = 1) then
          Form_inicial.Show;
      Datamodule1.FDTable_usuarios.Next;
    end;
end;

end.
