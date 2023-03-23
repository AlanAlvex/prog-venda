unit uModelMarca;

interface

uses
  FireDAC.Comp.Client, System.SysUtils,  uFunctionValidaClasse,
  uEnumCrud;

type
  TModelMarca = class
    private
      FMarca: string;
      FEnum: TEnum;
      FAlerta   :WideString;
    public
      [TValidador('Marca não preenchida')]
      property Marca : string read FMarca write FMarca;

      property enInExDl : TEnum read FEnum write FEnum;
      property widAlerta : WideString read FAlerta write FAlerta;

      function persist: Boolean;
      function selecionar: TFDQuery;
  end;

implementation

uses uDAOMarca;

{ TModelMarca }

function TModelMarca.persist: Boolean;
var
  daoMarca :TDAOMarca;
begin
  Result := False;
  Self.widAlerta := '';
  daoMarca := TDAOMarca.Create;

  if Self.enInExDl <> tExcluir then
    self.widAlerta := TValidador.ValidaDados(self);

  try
    if Self.widAlerta = '' then
    begin
      case FEnum of
        tIncluir:
          Result := daoMarca.incluir(Self);
        tAlterar:
          Result := daoMarca.alterar(Self);
        tExcluir:
          Result := daoMarca.excluir(Self)
      end;
    end;
  finally
    FreeAndNil(daoMarca);
  end;
end;

function TModelMarca.selecionar: TFDQuery;
var
  daoMarca: TDAOMarca;
begin
  daoMarca := TDAOMarca.Create;
  try
    Result := daoMarca.selecionarCliente;
  finally
    FreeAndNil(daoMarca);
  end;
end;

end.
