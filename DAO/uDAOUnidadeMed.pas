unit uDAOUnidadeMed;

interface
uses
  SysUtils, uModelUnidadeMed, FireDAC.Comp.Client, uControllerConexao;
type
  TDAOUnidadeMed = class
    private
    public
      function selecionarCliente: TFDQuery;
      function incluir (ModelUnidadeMed : TModelUnidadeMed): Boolean;
      function excluir (ModelUnidadeMed : TModelUnidadeMed): Boolean;
      function alterar (ModelUnidadeMed : TModelUnidadeMed): Boolean;
  end;

implementation

{ TUnidadeMed }

function TDAOUnidadeMed.alterar(ModelUnidadeMed: TModelUnidadeMed): Boolean;
begin

end;

function TDAOUnidadeMed.excluir(ModelUnidadeMed: TModelUnidadeMed): Boolean;
begin

end;

function TDAOUnidadeMed.incluir(ModelUnidadeMed: TModelUnidadeMed): Boolean;
var
  qrUnidadeMed : TFDQuery;
  sSQL : string;
begin
  qrUnidadeMed := TControllerConexao.getInstanse.daoConexao.getQuery;
  try
    try
      TControllerConexao.getInstanse.daoConexao.getConexao.StartTransaction;

      sSQL := ' INSERT INTO UNIMEDIDA (UNIMEDIDA) '+
              ' VALUES ('+#39+ModelUnidadeMed.UnidadeMed+#39+')';

      qrUnidadeMed.ExecSQL(sSQL);

      TControllerConexao.getInstanse.daoConexao.getConexao.Commit;

      Result := True;
    except
      if TControllerConexao.getInstanse.daoConexao.getConexao.InTransaction then
        TControllerConexao.getInstanse.daoConexao.getConexao.Rollback;

      Result := False;
    end;
  finally
    qrUnidadeMed.Free;
  end;
end;

function TDAOUnidadeMed.selecionarCliente: TFDQuery;
var
  qrUnidadeMed : TFDQuery;
begin
  qrUnidadeMed := TControllerConexao.getInstanse.daoConexao.getQuery;

  qrUnidadeMed.Open('SELECT * FROM UNIDADEMED');

  Result := qrUnidadeMed;
end;

end.
