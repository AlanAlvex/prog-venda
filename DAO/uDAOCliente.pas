unit uDAOCliente;

interface

uses
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, SysUtils, uControllerConexao,
  uModelCliente;

type
  TDAOCliente = class

    private

    public
      function selecionarCliente: TFDQuery;
      function incluir (ModelCliente : TModelCliente): Boolean;
      function excluir (ModelCliente : TModelCliente): Boolean;
      function alterar (ModelCliente : TModelCliente): Boolean;
  end;

implementation

function TDAOCliente.alterar(ModelCliente: TModelCliente): Boolean;
var
  qrCliente : TFDQuery;
begin

end;

function TDAOCliente.excluir(ModelCliente: TModelCliente): Boolean;
var
  qrCliente : TFDQuery;
begin

end;

function TDAOCliente.incluir(ModelCliente: TModelCliente): Boolean;
var
  qrCliente : TFDQuery;
  sSQL : string;
begin
  qrCliente := TControllerConexao.getInstanse.daoConexao.getQuery;
  try
    try
      sSQL := ' INSERT INTO CLIENTES (NOME,CPF,CEP,ENDERECO,TELEFONE,DTNASC) '+
              ' VALUES ('+#39+ModelCliente.strNome+#39+','
                           +#39+ModelCliente.strCPF+#39+','
                           +#39+ModelCliente.strCEP+#39+','
                           +#39+ModelCliente.strEndereco+#39+','
                           +#39+ModelCliente.strTelefone+#39+','
                           +#39+DateToStr(ModelCliente.dtNasc)+#39+')';

      qrCliente.ExecSQL(sSQL);

      Result := True;
    except
      Result := False;
    end;
  finally
    qrCliente.Free;
  end;
end;

function TDAOCliente.selecionarCliente: TFDQuery;
var
  qrCliente : TFDQuery;
begin
  qrCliente := TControllerConexao.getInstanse.daoConexao.getQuery;

  qrCliente.Open('SELECT * FROM CLIENTES');

  Result := qrCliente;
end;

end.
