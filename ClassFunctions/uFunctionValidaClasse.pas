unit uFunctionValidaClasse;

interface

uses
  SysUtils, FireDAC.Comp.Client, System.RTTI, System.Variants, Vcl.Dialogs, System.typInfo;

type
  TValidador = class(TCustomAttribute)
    private
      FDescricao: string;
    public
      constructor Create (const Descricao: string);
      property Descricao: string read FDescricao;

      class function ValidaDados (Objeto: TObject): WideString;
  end;

implementation

{ TValidador }

constructor TValidador.Create(const Descricao: string);
begin
  FDescricao := Descricao;
end;

class function TValidador.ValidaDados(Objeto: TObject): WideString;
var
  Contexto    :TRttiContext;
  Tipo        :TRttiType;
  Propriedade :TRttiProperty;
  Atributo    :TCustomAttribute;
  widAlerta   :WideString;
  Valor, ValorProp: Variant;
begin

  Contexto := TRttiContext.Create;

  Tipo := Contexto.GetType(Objeto.ClassInfo);

  widAlerta := '';

  for Propriedade in Tipo.GetProperties do
  begin
    // Percorre os atributos da propriedade
    for Atributo in Propriedade.GetAttributes do
    begin
      if Atributo is TValidador then
      begin
        //Pegar o valor da propriedade
        Valor := Propriedade.GetValue(Objeto).AsVariant;
        //Valida o valor, exigindo que seja diferente de 0 e diferente de vazio
        if not (VarToStr(Valor) <> EmptyStr) and (VarToStr(Valor) <> '0') then
        begin
          if widAlerta = '' then
            widAlerta := 'Valor n�o preenchido:' + #13#10;

          widAlerta := widAlerta + (Atributo as TValidador).Descricao + #13#10;
        end;
      end;
    end;
  end;

  Result := widAlerta;
end;
end.
