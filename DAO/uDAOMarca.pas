unit uDAOMarca;

interface

uses
  SysUtils, uModelMarca, FireDAC.Comp.Client, uControllerConexao;

type
  TDAOMarca = class
    private
    public
      function selecionarCliente: TFDQuery;
      function incluir (ModelMarca : TModelMarca): Boolean;
      function excluir (ModelMarca : TModelMarca): Boolean;
      function alterar (ModelMarca : TModelMarca): Boolean;

  end;

implementation

{ TDAOMarca }

function TDAOMarca.alterar(ModelMarca : TModelMarca): Boolean;
begin

end;

function TDAOMarca.excluir(ModelMarca : TModelMarca): Boolean;
begin

end;

function TDAOMarca.incluir(ModelMarca : TModelMarca): Boolean;
var
  qrMarca : TFDQuery;
  sSQL : string;
begin
  try
    try
      TControllerConexao.getInstanse.daoConexao.getConexao.StartTransaction;

      qrMarca := TControllerConexao.getInstanse.daoConexao.getQuery;

      sSQL := ' INSERT INTO MARCA (MARCA) '+
              ' VALUES ('+#39+ModelMarca.Marca+#39+')';

      qrMarca.ExecSQL(sSQL);

      TControllerConexao.getInstanse.daoConexao.getConexao.Commit;

      Result := True;
    except
      if TControllerConexao.getInstanse.daoConexao.getConexao.InTransaction then
        TControllerConexao.getInstanse.daoConexao.getConexao.Rollback;

      Result := False;
    end;
  finally
    qrMarca.Free;
  end;
end;

function TDAOMarca.selecionarCliente: TFDQuery;
var
  qrMarca : TFDQuery;
begin
  qrMarca := TControllerConexao.getInstanse.daoConexao.getQuery;

  qrMarca.SQL.Add('SELECT * FROM MARCA');

  Result := qrMarca;
end;

end.
