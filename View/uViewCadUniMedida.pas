unit uViewCadUniMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniEdit, uniGUIBaseClasses,
  uniLabel, uControllerUnidadeMed, uEnumCrud;

type
  TViewCadUniMedida = class(TUniForm)
    lbCodigo: TUniLabel;
    lbDescricao: TUniLabel;
    edUniMedida: TUniEdit;
    btSalvar: TUniButton;
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ViewCadUniMedida: TViewCadUniMedida;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function ViewCadUniMedida: TViewCadUniMedida;
begin
  Result := TViewCadUniMedida(UniMainModule.GetFormInstance(TViewCadUniMedida));
end;

procedure TViewCadUniMedida.btSalvarClick(Sender: TObject);
var
  ctUnidadeMed :TControllerUnidadeMed;
  i :Integer;
begin
  ctUnidadeMed := TControllerUnidadeMed.Create;

  try
    try
      ctUnidadeMed.ModelCliente.enInExDl := tIncluir;

      ctUnidadeMed.ModelCliente.UnidadeMed := edUniMedida.Text;

      if ctUnidadeMed.persist then
        ShowMessage('Dados salvos com sucesso!')
      else
      begin
        if ctUnidadeMed.ModelCliente.widAlerta = '' then
        begin
          Application.MessageBox('Não foi possivel realizar a operação!', '',
            MB_OK + MB_ICONINFORMATION);
        end
        else
        begin
          for i := 0 to ComponentCount -1 do
          begin
            if ((Components[i] is TUniEdit)) and ((Components[i] as TUniEdit).Tag = 1) then
            begin
              (Components[i] as TUniEdit).color := $00bbbbff;
            end
           //   else if ((Components[i] is TMaskEdit)) and ((Components[i] as TMaskEdit).Tag = 1) then
//            begin
//              (Components[i] as TMaskEdit).color := $00bbbbff;
//            end;
          end;

          ShowMessage(ctUnidadeMed.ModelCliente.widAlerta);
        end;
      end;
    except
      on E: Exception do
    end;
  finally
    FreeAndNil(ctUnidadeMed);
  end;
end;

end.
