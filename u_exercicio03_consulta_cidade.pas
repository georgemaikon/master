unit u_exercicio03_consulta_cidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, Provider, DB, SqlExpr, DBClient,
  Grids, DBGrids;

type
  TfrmExercicio03ConsultaCidade = class(TForm)
    pnlBotoes: TPanel;
    edtNome: TEdit;
    btnPesquisar: TBitBtn;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sqlConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    sqlConsultaCDCIDADE: TIntegerField;
    sqlConsultaNMCIDADE: TStringField;
    sqlConsultaUF: TStringField;
    cdsConsultaCDCIDADE: TIntegerField;
    cdsConsultaNMCIDADE: TStringField;
    cdsConsultaUF: TStringField;
    gridCidade: TDBGrid;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure gridCidadeDblClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure gridCidadeKeyPress(Sender: TObject; var Key: Char);
  private
    FSql: string;
    FCodigo: Integer;
    FNome: string;
  public
    property Codigo: Integer read FCodigo;
    property Nome: string read FNome;
  end;

var
  frmExercicio03ConsultaCidade: TfrmExercicio03ConsultaCidade;

implementation

{$R *.dfm}

{ TForm1 }


procedure TfrmExercicio03ConsultaCidade.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExercicio03ConsultaCidade.btnOkClick(Sender: TObject);
begin
  FCodigo := cdsConsultaCDCIDADE.AsInteger;
  FNome   := cdsConsultaNMCIDADE.AsString;
end;

procedure TfrmExercicio03ConsultaCidade.btnPesquisarClick(Sender: TObject);
begin
  sqlConsulta.SQL.Clear;
  sqlConsulta.SQL.Add(FSql);
  if Trim(edtNome.Text) <> EmptyStr then
  begin
    sqlConsulta.SQL.Add('WHERE C.NMCIDADE CONTAINING :NOME');
    sqlConsulta.ParamByName('NOME').AsString := edtNome.Text;
  end;
  cdsConsulta.Open;
  gridCidade.SetFocus;
end;

procedure TfrmExercicio03ConsultaCidade.edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnPesquisar.Click;
end;

procedure TfrmExercicio03ConsultaCidade.FormCreate(Sender: TObject);
begin
  FSql := sqlConsulta.SQL.Text;
end;

procedure TfrmExercicio03ConsultaCidade.gridCidadeDblClick(Sender: TObject);
begin
  btnOk.Click;
end;

procedure TfrmExercicio03ConsultaCidade.gridCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    btnOk.Click;
end;

end.
