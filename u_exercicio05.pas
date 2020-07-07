unit u_exercicio05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FMTBcd, Grids, DBGrids, DB, DBClient, Provider, SqlExpr,
  StdCtrls, Buttons;

type
  TfrmExercicio05 = class(TForm)
    pnlExportacao: TPanel;
    sqlConsulta: TSQLQuery;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sqlConsultaNMPESSOA: TStringField;
    sqlConsultaNMCIDADE: TStringField;
    sqlConsultaUF: TStringField;
    cdsConsultaNMPESSOA: TStringField;
    cdsConsultaNMCIDADE: TStringField;
    cdsConsultaUF: TStringField;
    grid1: TDBGrid;
    edtCaminho: TEdit;
    dlgArquivoTexto: TSaveDialog;
    btnPesquisar: TBitBtn;
    lbl1: TLabel;
    btnExportar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    function AjustaTexto(Texto: string; TamanhoTotal: Integer): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio05: TfrmExercicio05;

implementation

{$R *.dfm}

function TfrmExercicio05.AjustaTexto(Texto: string; TamanhoTotal: Integer): string;
var
  TamanhoTexto: Integer;
begin
  TamanhoTexto := Length(Texto);

  if TamanhoTexto <= 50 then
    Result := Texto + StringOfChar(' ', TamanhoTotal - TamanhoTexto)
  else
    Result := Copy(Texto, 1, TamanhoTotal);
end;

procedure TfrmExercicio05.FormShow(Sender: TObject);
begin
  cdsConsulta.Close;
  cdsConsulta.Open;
end;

procedure TfrmExercicio05.btnExportarClick(Sender: TObject);
var
  I, qtdRegistro: Integer;
  lista: TStringList;
begin
  if edtCaminho.Text = EmptyStr then
  begin
    Application.MessageBox('Caminho não informado.', 'Avaliação DB1');
  end;

  qtdRegistro := 100;
  if cdsConsulta.RecordCount < 100 then
    qtdRegistro := cdsConsulta.RecordCount;

  lista := TStringList.Create;
  try
    cdsConsulta.First;
    while (not cdsConsulta.Eof) and (cdsConsulta.RecNo <= qtdRegistro) do
    begin
      lista.Add(AjustaTexto(cdsConsultaNMPESSOA.AsString, 50) +
                AjustaTexto(cdsConsultaNMCIDADE.AsString, 30) +
                AjustaTexto(cdsConsultaUF.AsString, 2));

      cdsConsulta.Next;
    end;
    lista.SaveToFile(edtCaminho.Text);
  finally
    FreeAndNil(lista);
  end;

  if FileExists(edtCaminho.Text) then
    Application.MessageBox('Arquivo exportado com sucesso.', 'Avaliação DB1');
end;

procedure TfrmExercicio05.btnPesquisarClick(Sender: TObject);
begin
  dlgArquivoTexto.Execute;

  if dlgArquivoTexto.FileName <> EmptyStr then
    edtCaminho.Text := dlgArquivoTexto.FileName;
end;

procedure TfrmExercicio05.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
