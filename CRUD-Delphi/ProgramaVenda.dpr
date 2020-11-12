program ProgramaVenda;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uPessoa in 'uPessoa.pas' {frmPessoa},
  uDM in 'uDM.pas' {DataModule1: TDataModule},
  uProduto in 'uProduto.pas' {frmProduto},
  uPedidoVenda in 'uPedidoVenda.pas' {frmPedido};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
