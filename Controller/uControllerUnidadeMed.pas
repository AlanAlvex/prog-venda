unit uControllerUnidadeMed;

interface

uses
  uModelUnidadeMed, System.SysUtils, FireDAC.Comp.Client;

type
  TControllerUnidadeMed = class
    private
      FModelUnidadeMed: TModelUnidadeMed;
    public
      property ModelCliente : TModelUnidadeMed read FModelUnidadeMed write FModelUnidadeMed;

      function persist :Boolean;
      function selecionar: TFDQuery;

      constructor Create;
      destructor destroy; override;
  end;

implementation

{ TControllerUnidadeMed }

constructor TControllerUnidadeMed.Create;
begin
  inherited Create;

  FModelUnidadeMed := TModelUnidadeMed.Create;
end;

destructor TControllerUnidadeMed.destroy;
begin
  FreeAndNil(FModelUnidadeMed);
  inherited;
end;

function TControllerUnidadeMed.persist: Boolean;
begin
  Result := FModelUnidadeMed.persist;
end;

function TControllerUnidadeMed.selecionar: TFDQuery;
begin
  Result := FModelUnidadeMed.selecionar;
end;

end.
