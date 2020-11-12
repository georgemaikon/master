unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.UI,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    FDConnection: TFDConnection;
    qryPessoa: TFDQuery;
    dsPessoa: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    qryPessoaID: TIntegerField;
    qryPessoaNOME: TStringField;
    qryPessoaCPF_CNPJ: TStringField;
    qryPessoaTELEFONE: TStringField;
    qryPessoaCELULAR: TStringField;
    qryPessoaENDERECO: TStringField;
    qryPessoaBAIRRO: TStringField;
    qryPessoaCOMPLEMENTO: TStringField;
    qryPessoaCIDADE: TStringField;
    qryPessoaCEP: TStringField;
    qryPessoaDATA_CADASTRO: TSQLTimeStampField;
    qryPessoaDATA_ATUALIZACAO: TSQLTimeStampField;
    qryPessoaDATA_ULTIMA_VENDA: TSQLTimeStampField;
    qryProduto: TFDQuery;
    qryProdutoID: TIntegerField;
    qryProdutoCODIGO_BARRAS: TStringField;
    qryProdutoDESCRICAO: TStringField;
    qryProdutoVALOR_CUSTO: TSingleField;
    qryProdutoVALOR_VENDA: TSingleField;
    qryProdutoDATA_CADASTRO: TSQLTimeStampField;
    qryProdutoDATA_ATUALIZACAO: TSQLTimeStampField;
    qryProdutoDATA_ULTIMA_VENDA: TSQLTimeStampField;
    dsProduto: TDataSource;
    qryPedido: TFDQuery;
    dsPedido: TDataSource;
    qryItemPedido: TFDQuery;
    dsItemPedido: TDataSource;
    qryPedidoID: TIntegerField;
    qryPedidoNUMERO: TIntegerField;
    qryPedidoDATA_EMISSAO: TSQLTimeStampField;
    qryPedidoID_CLIENTE: TIntegerField;
    qryPedidoVALOR_PRODUTOS: TSingleField;
    qryPedidoVALOR_DESCONTO: TSingleField;
    qryPedidoVALOR_TOTAL: TSingleField;
    qryItemPedidoID: TIntegerField;
    qryItemPedidoID_PEDIDO_VENDA: TIntegerField;
    qryItemPedidoID_PRODUTO: TIntegerField;
    qryItemPedidoDESCRICAO_PRODUTO: TStringField;
    qryItemPedidoVALOR_VENDA: TFloatField;
    qryItemPedidoVALOR_CUSTO: TFloatField;
    qryItemPedidoQUANTIDADE: TFloatField;
    qryItemPedidoVALOR_TOTAL: TFloatField;
    procedure qryPessoaBeforePost(DataSet: TDataSet);
    procedure qryProdutoBeforePost(DataSet: TDataSet);
  private
    function RetornarUltimoId(NomeTabela: string): integer;
    procedure GravarDatasPessoa;
    procedure GravarDatasProduto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDataModule1.RetornarUltimoId(NomeTabela: string): integer;
const
  SQLUltimoId = 'Select coalesce(max(ID), 0) as ID from ';
var
  Query: TFDQuery;
begin
  result := 0;

  Query := TFDQuery.Create(nil);
  try
    Query.Connection := FDConnection;
    Query.SQL.Clear;
    Query.SQL.Add(SQLUltimoId + NomeTabela);
    Query.OpenOrExecute;

    if not Query.IsEmpty then
      result := Query.FieldByName('ID').AsInteger;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TDataModule1.qryPessoaBeforePost(DataSet: TDataSet);
begin
  if qryPessoaID.AsInteger = 0 then
    qryPessoaID.AsInteger := RetornarUltimoId('Pessoa') + 1;

  GravarDatasPessoa;
end;

procedure TDataModule1.qryProdutoBeforePost(DataSet: TDataSet);
begin
  if qryProdutoID.AsInteger = 0 then
    qryProdutoID.AsInteger := RetornarUltimoId('Produto') + 1;

  GravarDatasProduto;
end;

procedure TDataModule1.GravarDatasPessoa;
begin
  if qryPessoa.State in [dsInsert] then
  begin
    qryPessoaDATA_CADASTRO.AsDateTime := Now;
    qryPessoaDATA_ATUALIZACAO.AsDateTime := Now;
  end;

  if qryPessoa.State in [dsEdit] then
    qryPessoaDATA_ATUALIZACAO.AsDateTime := Now;
end;


procedure TDataModule1.GravarDatasProduto;
begin
  if qryProduto.State in [dsInsert] then
  begin
    qryProdutoDATA_CADASTRO.AsDateTime := Now;
    qryProdutoDATA_ATUALIZACAO.AsDateTime := Now;
  end;

  if qryProduto.State in [dsEdit] then
    qryProdutoDATA_ATUALIZACAO.AsDateTime := Now;
end;

end.
