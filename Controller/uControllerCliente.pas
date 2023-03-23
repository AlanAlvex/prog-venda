unit uControllerCliente;

interface

uses
  uModelCliente, SysUtils,
  FireDAC.Comp.Client;

type
  TControllerCliente = class
    private
      FModelCliente: TModelCliente;
    public
      property ModelCliente : TModelCliente read FModelCliente write FModelCliente;

      function persist :Boolean;
      function selecionar: TFDQuery;

      constructor Create;
      destructor destroy; override;
  end;

implementation

{ TControllerCliente }

constructor TControllerCliente.Create;
begin
  inherited Create;

  FModelCliente := TModelCliente.Create;
end;

destructor TControllerCliente.destroy;
begin
  FreeAndNil(FModelCliente);

  inherited;
end;

function TControllerCliente.persist: Boolean;
begin
  Result := FModelCliente.persist;
end;

function TControllerCliente.selecionar: TFDQuery;
begin
  Result := FModelCliente.selecionar;
end;

end.
