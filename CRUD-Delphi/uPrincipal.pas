unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uPessoa, uProduto, uPedidoVenda;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pessoa1: TMenuItem;
    Produto1: TMenuItem;
    Movimentaes1: TMenuItem;
    Venda1: TMenuItem;
    procedure Pessoa1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;



implementation

{$R *.dfm}

procedure TForm1.Pessoa1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPessoa, frmPessoa);
end;

procedure TForm1.Produto1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmProduto, frmProduto);
end;

procedure TForm1.Venda1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPedido, frmPedido);
end;

end.
