program ProvaDelphiApp;

uses
  Vcl.Forms,
  uspMenu in 'uspMenu.pas' {fspMenu},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  uTarefa3 in 'uTarefa3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfspMenu, fspMenu);
  Application.Run;
end.
