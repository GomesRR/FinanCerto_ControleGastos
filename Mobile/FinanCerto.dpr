program FinanCerto;

uses
  System.StartUpCopy,
  FMX.Forms,
  uLogin in 'uLogin.pas' {frmLogin},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uLancamento in 'uLancamento.pas' {frmLancamento},
  uConfiguracoes in 'uConfiguracoes.pas' {frmConfiguracoes},
  uLancamentoCad in 'uLancamentoCad.pas' {frmLancamentoCad};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmLancamento, frmLancamento);
  Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
  Application.CreateForm(TfrmLancamentoCad, frmLancamentoCad);
  Application.Run;
end.
