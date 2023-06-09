unit uModelUnidadeMed;

interface

uses
  SysUtils, uFunctionValidaClasse, uEnumCrud, FireDAC.Comp.Client;

type
  TModelUnidadeMed = class
    private
      FUnidadeMed: string;
      FEnum: TEnum;
      FAlerta   :WideString;
    public
      [TValidador('Unidade de Medida n�o preenchida')]
      property UnidadeMed : string read FUnidadeMed write FUnidadeMed;

      property enInExDl : TEnum read FEnum write FEnum;
      property widAlerta : WideString read FAlerta write FAlerta;

      function persist: Boolean;
      function selecionar: TFDQuery;
  end;

implementation

uses
  uDAOUnidadeMed;

{ TModelUnidadeMed }

function TModelUnidadeMed.persist: Boolean;
var
  daoUnidadeMed: TDAOUnidadeMed;
begin
  Result := False;
  Self.widAlerta := '';
  daoUnidadeMed := TDAOUnidadeMed.Create;

  if Self.enInExDl <> tExcluir then
    self.widAlerta := TValidador.ValidaDados(self);

  try
    if Self.widAlerta = '' then
    begin
      case FEnum of
        tIncluir:
          Result := daoUnidadeMed.incluir(Self);
        tAlterar:
          Result := daoUnidadeMed.alterar(Self);
        tExcluir:
          Result := daoUnidadeMed.excluir(Self)
      end;
    end;
  finally
    FreeAndNil(daoUnidadeMed);
  end;
end;

function TModelUnidadeMed.selecionar: TFDQuery;
var
  daoUnidadeMed: TDAOUnidadeMed;
begin
  daoUnidadeMed := TDAOUnidadeMed.Create;
  try
    Result := daoUnidadeMed.selecionarCliente;
  finally
    FreeAndNil(daoUnidadeMed);
  end;
end;

end.
