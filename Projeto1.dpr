{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  Projeto1;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'View\Main.pas' {MainForm: TUniForm},
  uEnumCrud in 'Model\uEnumCrud.pas',
  uModelCliente in 'Model\uModelCliente.pas',
  uDAOCliente in 'DAO\uDAOCliente.pas',
  uDAOconexao in 'DAO\uDAOconexao.pas',
  uControllerCliente in 'Controller\uControllerCliente.pas',
  uControllerConexao in 'Controller\uControllerConexao.pas',
  uViewCadCliente in 'View\uViewCadCliente.pas' {ViewCadClientes: TUniForm},
  uViewCadProdutos in 'View\uViewCadProdutos.pas' {ViewCadProdutos: TUniForm},
  uViewCadMarca in 'View\uViewCadMarca.pas' {ViewCadMarca: TUniForm},
  uViewCadUniMedida in 'View\uViewCadUniMedida.pas' {ViewCadUniMedida: TUniForm},
  uFunctionValidaClasse in 'ClassFunctions\uFunctionValidaClasse.pas',
  uControllerMarca in 'Controller\uControllerMarca.pas',
  uModelMarca in 'Model\uModelMarca.pas',
  uDAOMarca in 'DAO\uDAOMarca.pas',
  uDAOUnidadeMed in 'DAO\uDAOUnidadeMed.pas',
  uModelUnidadeMed in 'Model\uModelUnidadeMed.pas',
  uControllerUnidadeMed in 'Controller\uControllerUnidadeMed.pas';

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
