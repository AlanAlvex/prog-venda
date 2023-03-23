unit uControllerConexao;

interface

uses uDAOconexao, SysUtils;

type
  TControllerConexao = class
    private
    FConexao: TDAOConexao;

      constructor Create;
      destructor Destroy; Override;
    public
      property daoConexao : TDAOConexao read FConexao write Fconexao;

      class function getInstanse : TControllerConexao;
  end;

implementation

var
  instanciaBD : TControllerConexao;

{ TControllerConexao }

constructor TControllerConexao.Create;
begin
  inherited Create;

  FConexao := TDAOConexao.Create;
end;

destructor TControllerConexao.Destroy;
begin
  inherited;

  FreeAndNil(FConexao);
end;

class function TControllerConexao.getInstanse: TControllerConexao;
begin
  if instanciaBD = nil then
    instanciaBD := TControllerConexao.Create;

  Result := instanciaBD;
end;

initialization
  instanciaBD := nil;

finalization
  if instanciaBD <> nil then
    instanciaBD.Free;

end.
