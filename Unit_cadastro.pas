unit Unit_cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TForm_cadastro = class(TForm)
    DBNavigator_cadastro: TDBNavigator;
    DBGrid_cadastro: TDBGrid;
    Panel_cdastro: TPanel;
    Panel_mostra_total_media: TPanel;
    total_receber: TLabel;
    pagamentos_total: TEdit;
    atualizar: TButton;
    media_receber: TLabel;
    media_clientes: TEdit;
    id_cadastro: TLabel;
    DB_id_cadastro: TDBEdit;
    DataSource_cadastro: TDataSource;
    data_cadastro: TLabel;
    DB_data_cadastro: TDBEdit;
    numero_celular: TLabel;
    DB_numero_celular: TDBEdit;
    nome_cliente_select: TDBLookupComboBox;
    nome_cliente: TLabel;
    Salvar: TButton;
    Novo: TButton;
    Cancelar: TButton;
    Excluir: TButton;
    mensagem_erro: TLabel;
    Label1: TLabel;
    DB_valor_pagamento2: TDBEdit;
    erro_calculo: TLabel;
    sugestao_erro1: TLabel;
    sugestao_erro2: TLabel;
    sugestao_erro3: TLabel;
    DB_id_cliente: TDBEdit;
    id_cliente: TLabel;
    Label2: TLabel;
    DB_dia_pagamento: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure atualizarClick(Sender: TObject);
    procedure SalvarClick(Sender: TObject);
    procedure NovoClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure calctotal;
    procedure calcmedia;
    procedure esvaziar_msg_erro;
  public
    { Public declarations }
  end;

var
  Form_cadastro: TForm_cadastro;

implementation

{$R *.dfm}

uses Unit_dbs;

procedure TForm_cadastro.atualizarClick(Sender: TObject);
begin
  calctotal;
  calcmedia;
end;

procedure TForm_cadastro.Button1Click(Sender: TObject);
begin
  calctotal;
end;
procedure TForm_cadastro.calcmedia;
var
  soma,media: double;
  cont:integer;
begin
  soma := 0;
  cont:=0;
  try
    Datamodule1.FDTable_cadastro.First;
    while not Datamodule1.FDTable_cadastro.Eof do
      begin
        cont:= cont+1;
        soma := soma + strToFloat(Datamodule1.FDTable_cadastrovalor_pagamento2.Value);
        Datamodule1.FDTable_cadastro.Next;
      end;
      if cont <> 0 then
        media:= soma/cont
      else
        media:=soma;
      media_clientes.text:= 'R$: '+(FormatFloat('#####0.00', media));
  except
       erro_calculo.Caption:='Ocorreu um erro no cálculo';
  end;

end;

procedure TForm_cadastro.calctotal;
var
  soma: double;
begin
  soma := 0;
  try
     Datamodule1.FDTable_cadastro.First;
    while not Datamodule1.FDTable_cadastro.Eof do
      begin
        soma := soma + strToFloat(Datamodule1.FDTable_cadastrovalor_pagamento2.Value);
        Datamodule1.FDTable_cadastro.Next;
      end;
    pagamentos_total.text:= 'R$: '+(FormatFloat('#####0.00', soma));
  except
    erro_calculo.Caption:='Ocorreu um erro no cálculo';
  end;

end;

procedure TForm_cadastro.CancelarClick(Sender: TObject);
begin
  Datamodule1.FDTable_cadastro.Cancel;
  esvaziar_msg_erro;
end;

procedure TForm_cadastro.esvaziar_msg_erro;
begin
    mensagem_erro.caption:='';
    sugestao_erro1.caption:= '' ;
    sugestao_erro2.caption:= '';
    sugestao_erro3.caption:= '';
end;

procedure TForm_cadastro.ExcluirClick(Sender: TObject);
begin
  Datamodule1.FDTable_cadastro.Delete;
  esvaziar_msg_erro;
  calctotal;
  calcmedia;
end;

procedure TForm_cadastro.FormShow(Sender: TObject);
begin
   calctotal;
   calcmedia;
end;

procedure TForm_cadastro.NovoClick(Sender: TObject);
begin
  try
     Datamodule1.FDTable_cadastro.Append;
     DB_id_cadastro.SetFocus;
     esvaziar_msg_erro;
  except
    Datamodule1.FDTable_cadastro.cancel;
    Datamodule1.FDTable_cadastro.Append;
    esvaziar_msg_erro;
    DB_id_cadastro.SetFocus;

  end;

end;

procedure TForm_cadastro.SalvarClick(Sender: TObject);
var
  valor:double;
begin

  Try
    if tryStrToFloat(Datamodule1.FDTable_cadastrovalor_pagamento2.Value, valor) then
      begin
        if (strToInt(DB_dia_pagamento.Text) > 0) and (strToInt(DB_dia_pagamento.Text)< 32)then
          begin
            Datamodule1.FDTable_cadastrovalor_pagamento2.Value:= FormatFloat('#####0.00', valor);
            datamodule1.FDTable_cadastro.Post;
            esvaziar_msg_erro;
            sugestao_erro1.caption:='caiu no if';
          end
        else
          mensagem_erro.caption:= 'O dia do pagamento é inválido, digite um valor número de 1 à 31.';

      end

    else
      begin
        begin
          mensagem_erro.caption:= 'Ocorreu um erro, possivelmente um ou mais dos itens citados abaixo:';
          sugestao_erro1.caption:= '- Existem  campos vazios.' ;
          sugestao_erro2.caption:= '- Não houve alterações no formulario.';
          if DB_valor_pagamento2.Text <> '' then
            begin
              sugestao_erro3.caption:='- O Valor `'+ Datamodule1.FDTable_cadastrovalor_pagamento2.Value+'´ é inválido para valor em dinheiro, por favor corrija.';
              Datamodule1.FDTable_cadastrovalor_pagamento2.Value:='0,00';
            end;
        end;
      end;
  except
    esvaziar_msg_erro;
    mensagem_erro.caption:='Não houve alterações, ou existem  campos vazios!';
  End;


end;

end.
