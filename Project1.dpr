program Project1;

uses
  Vcl.Forms,
  Unit_cadastro in 'Unit_cadastro.pas' {Form_cadastro},
  Unit_dbs in 'Unit_dbs.pas' {DataModule1: TDataModule},
  Unit_clientes in 'Unit_clientes.pas' {Form1},
  Unit_inicial in 'Unit_inicial.pas' {Form1},
  Unit_cidades in 'Unit_cidades.pas' {Form_cidades},
  Unit_login in 'Unit_login.pas' {Form_login},
  Unit_cadastar_user in 'Unit_cadastar_user.pas' {Form_cadastrar_user};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_login, Form_login);
  Application.CreateForm(TForm_inicial, Form_inicial);
  Application.CreateForm(TForm_clientes, Form_clientes);
  Application.CreateForm(TForm_cadastro, Form_cadastro);
  Application.CreateForm(TForm_cadastro, Form_cadastro);
  Application.CreateForm(TForm_clientes, Form_clientes);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm_cidades, Form_cidades);
  Application.CreateForm(TForm_cadastrar_user, Form_cadastrar_user);
  //Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
