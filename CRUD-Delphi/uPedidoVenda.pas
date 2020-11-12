unit uPedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uPessoa, uProduto, uDM,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.DB, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmPedido = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Label8: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Label10: TLabel;
    btnAdicionar: TBitBtn;
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedido: TfrmPedido;

implementation

{$R *.dfm}

procedure TfrmPedido.DBLookupComboBox1Exit(Sender: TObject);
begin
  //DBEdit4.Text := DBLookupComboBox1.KeyValue;
end;

procedure TfrmPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmPedido);
end;

end.
