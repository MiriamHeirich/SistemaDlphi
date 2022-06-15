program projetoVendas;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDTMConexao in 'DataModule\uDTMConexao.pas' {dtmPrincipal: TDataModule},
  utTlaHeranca in 'Heranca\utTlaHeranca.pas' {frmTelaHeranca},
  uCadCategoria in 'Heranca\uCadCategoria.pas' {frmCadCategoria},
  Enter in 'C:\Users\Bsoft\Downloads\curso_delphi-master\curso_delphi-master\terceiros\Enter.pas',
  uEnum in 'Heranca\uEnum.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
