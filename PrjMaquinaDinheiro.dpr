program PrjMaquinaDinheiro;

uses
  Vcl.Forms,
  FrmPrincipal in 'view\FrmPrincipal.pas' {FormPrincipal},
  uMaquinaDinheiro in 'class\uMaquinaDinheiro.pas',
  uEnumerado in 'class\uEnumerado.pas',
  uTroco in 'class\uTroco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
