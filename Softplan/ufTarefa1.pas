unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TfTarefa1 = class(TForm)
    memColunas: TMemo;
    memTabelas: TMemo;
    memCondicoes: TMemo;
    Memo4: TMemo;
    edtColuna: TEdit;
    edtTabela: TEdit;
    edtCondicao: TEdit;
    btnColuna: TBitBtn;
    btnTabela: TBitBtn;
    btnCondicao: TBitBtn;
    lblColuna: TLabel;
    lblTabela: TLabel;
    lblCondicao: TLabel;
    btnGeraSql: TBitBtn;
    ospQuery: TspQuery;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDConnection: TFDConnection;
    procedure btnGeraSqlClick(Sender: TObject);
    procedure btnColunaClick(Sender: TObject);
    procedure btnTabelaClick(Sender: TObject);
    procedure btnCondicaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure AdicionarColuna;
    procedure AdicionarTabela;
    procedure AdicionarCondicao;
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.AdicionarColuna;
begin
  if Trim(edtColuna.Text) = EmptyStr then
    Exit;

  ospQuery.Colunas.Add(edtColuna.Text);
  memColunas.Lines.Add(edtColuna.Text);
end;

procedure TfTarefa1.AdicionarCondicao;
begin
  if Trim(edtCondicao.Text) = EmptyStr then
    Exit;

  ospQuery.Condicoes.Add(edtCondicao.Text);
  memCondicoes.Lines.Add(edtCondicao.Text);
end;

procedure TfTarefa1.AdicionarTabela;
begin
  if Trim(edtTabela.Text) = EmptyStr then
    Exit;

  if ospQuery.Tabelas.Count > 0 then
    raise Exception.Create('É permitido informar apenas uma tabela para a geração do SQL');

  ospQuery.Tabelas.Add(edtTabela.Text);
  memTabelas.Lines.Add(edtTabela.Text);
end;

procedure TfTarefa1.btnColunaClick(Sender: TObject);
begin
  AdicionarColuna;
  edtColuna.Clear;
end;

procedure TfTarefa1.btnCondicaoClick(Sender: TObject);
begin
  AdicionarCondicao;
  edtCondicao.Clear;
end;

procedure TfTarefa1.btnTabelaClick(Sender: TObject);
begin
  AdicionarTabela;
  edtTabela.Clear;
end;


procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa1 := nil;
end;

procedure TfTarefa1.btnGeraSqlClick(Sender: TObject);
begin
  ospQuery.GeraSQL;
  Memo4.Lines.Add(ospQuery.SQL.Text);
end;

end.


