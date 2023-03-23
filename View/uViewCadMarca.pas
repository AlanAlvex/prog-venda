unit uViewCadMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniEdit, uniGUIBaseClasses,
  uniLabel, uControllerMarca;

type
  TViewCadMarca = class(TUniForm)
    lbCodigo: TUniLabel;
    lbDescricao: TUniLabel;
    edDescricao: TUniEdit;
    btSalvar: TUniButton;
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ViewCadMarca: TViewCadMarca;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, uEnumCrud;

function ViewCadMarca: TViewCadMarca;
begin
  Result := TViewCadMarca(UniMainModule.GetFormInstance(TViewCadMarca));
end;

procedure TViewCadMarca.btSalvarClick(Sender: TObject);
var
  MarcaControl : TControllerMarca;
  i :Integer;
begin
  MarcaControl := TControllerMarca.Create;

  try
    MarcaControl.ModelMarca.enInExDl := tIncluir;

    MarcaControl.ModelMarca.Marca := edDescricao.Text;

    if MarcaControl.persist then
      ShowMessage('Dados salvos com sucesso!')
    else
    begin
      if MarcaControl.ModelMArca.widAlerta = '' then
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
//            else if ((Components[i] is TMaskEdit)) and ((Components[i] as TMaskEdit).Tag = 1) then
//          begin
//            (Components[i] as TMaskEdit).color := $00bbbbff;
//          end;
        end;

        ShowMessage(MarcaControl.ModelMarca.widAlerta);
      end;
    end;
  finally
    FreeAndNil(MarcaControl);
  end;
end;

end.
