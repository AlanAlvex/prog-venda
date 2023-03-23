unit uDAOconexao;

interface

uses
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.DApt, SysUtils;

Type
  TDAOConexao = class
    private
      FConexao : TFDConnection;
    public
      function getConexao : TFDConnection;
      function getQuery : TFDQuery;

      constructor Create;
      destructor Destroy; override;
 end;

implementation

{ TDAOConexao }

constructor TDAOConexao.Create;
begin
  inherited Create;

  FConexao                 := TFDConnection.Create(nil);
  FConexao.DriverName      := 'FB';
  FConexao.Params.DriverID := 'FB';
  FConexao.Params.Database := 'C:\BD\BANCODADOS.FDB';
  FConexao.Params.UserName := 'SYSDBA';
  FConexao.Params.Password := 'masterkey';
  FConexao.LoginPrompt     := False;
end;

destructor TDAOConexao.Destroy;
begin
  inherited;

  FreeAndNil(FConexao);
end;

function TDAOConexao.getConexao: TFDConnection;
begin
  Result := FConexao;
end;

function TDAOConexao.getQuery: TFDQuery;
var
 Query : TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  Query.Connection := FConexao;

  Result := Query;
end;

end.
