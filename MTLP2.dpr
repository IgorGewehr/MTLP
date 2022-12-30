program MTLP2;

uses
  System.StartUpCopy,
  FMX.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  Loading in 'Loading.pas',
  uDmPrincipal in 'uDmPrincipal.pas' {dmPrincipal: TDataModule},
  uFrmAuthenticator in 'uFrmAuthenticator.pas' {frmAuthent},
  uFancyDialog in 'unit_util\uFancyDialog.pas',
  uFrmVencedores in 'uFrmVencedores.pas' {FrmVencedores},
  uFrmLotomania in 'uFrmLotomania.pas' {FrmLotomania},
  uFrmTabela in 'uFrmTabela.pas' {FrmTabela},
  uFrmInicial in 'uFrmInicial.pas' {frmInicial},
  uFrmJogos in 'uFrmJogos.pas' {FrmJogos},
  uOpenViewUrl in 'uOpenViewUrl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAuthent, frmAuthent);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDatamodule1, dmPrincipal);
  Application.CreateForm(TFrmVencedores, FrmVencedores);
  Application.CreateForm(TFrmLotomania, FrmLotomania);
  Application.CreateForm(TFrmTabela, FrmTabela);
  Application.CreateForm(TfrmInicial, frmInicial);
  Application.CreateForm(TFrmJogos, FrmJogos);
  Application.Run;
end.
