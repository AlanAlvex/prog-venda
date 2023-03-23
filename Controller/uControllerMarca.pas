unit uControllerMarca;

interface
  uses
    SysUtils, uModelMarca, FireDAC.Comp.Client;

type
  TControllerMarca = class
    private
      FModelMarca : TModelMarca;

    public
      property ModelMarca: TModelMarca read FModelMarca write FModelMarca;

      function persist :Boolean;
      function selecionar: TFDQuery;

      constructor Create;
      destructor destroy; override;
  end;

implementation

{ TControllerMarca }

constructor TControllerMarca.Create;
begin
  inherited Create;

  FModelMarca := TModelMarca.Create;
end;

destructor TControllerMarca.destroy;
begin

  inherited;
end;

function TControllerMarca.persist: Boolean;
begin
  Result := FModelMarca.persist;
end;

function TControllerMarca.selecionar: TFDQuery;
begin
  Result := FModelMarca.selecionar;
end;

end.
