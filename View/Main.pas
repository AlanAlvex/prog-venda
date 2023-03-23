unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniLabel,
  uniEdit, uniGUIBaseClasses, uniTabControl, Vcl.Menus, uniMainMenu,
  uViewCadCliente, uViewCadProdutos, uViewCadMarca, uViewCadUniMedida;

type
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    Cadastros1: TUniMenuItem;
    miCadClientes: TUniMenuItem;
    miCadProdutos: TUniMenuItem;
    esteSistemas1: TUniMenuItem;
    Modulos1: TUniMenuItem;
    Vender1: TUniMenuItem;
    miMarca: TUniMenuItem;
    miUniMedida: TUniMenuItem;
    procedure miCadClientesClick(Sender: TObject);
    procedure miCadProdutosClick(Sender: TObject);
    procedure miMarcaClick(Sender: TObject);
    procedure miUniMedidaClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,
  uControllerCliente, uControllerConexao, uEnumCrud;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.miCadClientesClick(Sender: TObject);
begin
  TViewCadClientes.Create(UniApplication);
end;

procedure TMainForm.miCadProdutosClick(Sender: TObject);
begin
  TViewCadProdutos.Create(UniApplication);
end;

procedure TMainForm.miMarcaClick(Sender: TObject);
begin
  TViewCadMarca.Create(UniApplication);
end;

procedure TMainForm.miUniMedidaClick(Sender: TObject);
begin
  TViewCadUniMedida.Create(UniApplication);
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  TControllerConexao.getInstanse().daoConexao.getConexao.Connected := True;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
