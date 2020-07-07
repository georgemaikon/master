unit u_exercicio03_consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, SqlExpr, Provider, DBClient, Grids,
  DBGrids, ExtCtrls;

type
  TfrmExercicio03Consulta = class(TForm)
    gbFiltros: TGroupBox;
    gbGradePesquisa: TGroupBox;
    edtNome: TEdit;
    edtLogradouro: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtCodigo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnPesquisaCidade: TBitBtn;
    dspConsulta: TDataSetProvider;
    sqlConsulta: TSQLQuery;
    sqlConsultaCDPESSOA: TIntegerField;
    sqlConsultaNMPESSOA: TStringField;
    sqlConsultaDELOGRADOURO: TStringField;
    sqlConsultaDEBAIRRO: TStringField;
    sqlConsultaCDCIDADE: TIntegerField;
    DBGrid1: TDBGrid;
    dsConsulta: TDataSource;
    sqlConsultaNMCIDADE: TStringField;
    sqlConsultaUF: TStringField;
    pnlBotoes: TPanel;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnPesquisar: TBitBtn;
    btnSair: TBitBtn;
    cdsConsulta: TClientDataSet;
    cdsConsultaCDPESSOA: TIntegerField;
    cdsConsultaNMPESSOA: TStringField;
    cdsConsultaDELOGRADOURO: TStringField;
    cdsConsultaDEBAIRRO: TStringField;
    cdsConsultaCDCIDADE: TIntegerField;
    cdsConsultaNMCIDADE: TStringField;
    cdsConsultaUF: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisaCidadeClick(Sender: TObject);
  private
    FSql: string;
  public
    { Public declarations }
  end;

var
  frmExercicio03Consulta: TfrmExercicio03Consulta;

implementation

uses
  u_dm, u_exercicio03_cadastro, u_exercicio03_consulta_cidade;

{$R *.dfm}

procedure TfrmExercicio03Consulta.FormCreate(Sender: TObject);
begin
  FSql := sqlConsulta.SQL.Text;
end;

procedure TfrmExercicio03Consulta.btnEditarClick(Sender: TObject);
begin
  if frmExercicio03Cadastro = nil then
    Application.CreateForm(TfrmExercicio03Cadastro, frmExercicio03Cadastro);

  frmExercicio03Cadastro.setCodigo(cdsConsultaCDPESSOA.AsInteger);
  frmExercicio03Cadastro.ShowModal;
end;

procedure TfrmExercicio03Consulta.btnExcluirClick(Sender: TObject);
begin
  if (cdsConsultaCDPESSOA.AsInteger <> 0) and
    (MessageDlg('Deseja excluir o registro?', mtInformation, [mbYes, mbNo], 0) = mrYes) then
  begin
    try
      cdsConsulta.Delete;
      if cdsConsulta.ApplyUpdates(0) = 0 then
        Application.MessageBox('Registro excluído com sucesso', 'Avaliação DB1');
    except
      on E : Exception do
        ShowMessage(E.ClassName + 'Erro ao excluir registro: '+E.Message);

    end;
  end;
end;

procedure TfrmExercicio03Consulta.btnNovoClick(Sender: TObject);
begin
  if frmExercicio03Cadastro = nil then
    Application.CreateForm(TfrmExercicio03Cadastro, frmExercicio03Cadastro);

  frmExercicio03Cadastro.ShowModal;
end;

procedure TfrmExercicio03Consulta.btnPesquisaCidadeClick(Sender: TObject);
begin
  if frmExercicio03ConsultaCidade = nil then
  begin
    frmExercicio03ConsultaCidade := TfrmExercicio03ConsultaCidade.Create(Self);
  end;

  frmExercicio03ConsultaCidade.ShowModal;

  if frmExercicio03ConsultaCidade.ModalResult = mrOk then
  begin
    edtCidade.Text := frmExercicio03ConsultaCidade.Nome;
    edtCodigo.Text := IntToStr(frmExercicio03ConsultaCidade.Codigo);
    frmExercicio03ConsultaCidade.Close;
  end;
end;

procedure TfrmExercicio03Consulta.btnPesquisarClick(Sender: TObject);
begin
  cdsConsulta.Close;
  sqlConsulta.SQL.Text := FSql;

  if Trim(edtNome.Text) <> EmptyStr then
  begin
    sqlConsulta.SQL.Add('AND P.NMPESSOA CONTAINING :NOME ');
    sqlConsulta.ParamByName('NOME').AsString := edtNome.Text;
  end;

  if Trim(edtLogradouro.Text) <> EmptyStr then
  begin
    sqlConsulta.SQL.Add('AND P.DELOGRADOURO CONTAINING :LOGRADOURO ');
    sqlConsulta.ParamByName('LOGRADOURO').AsString := edtLogradouro.Text;
  end;

  if Trim(edtBairro.Text) <> EmptyStr then
  begin
    sqlConsulta.SQL.Add('AND P.DEBAIRRO CONTAINING :BAIRRO ');
    sqlConsulta.ParamByName('BAIRRO').AsString := edtBairro.Text;
  end;

  if Trim(edtCidade.Text) <> EmptyStr then
  begin
    sqlConsulta.SQL.Add('AND C.CDCIDADE = :CIDADE ');
    sqlConsulta.ParamByName('CIDADE').AsInteger := StrToInt(edtCodigo.Text);
  end;

  cdsConsulta.Open;
end;

procedure TfrmExercicio03Consulta.btnSairClick(Sender: TObject);
begin
  if (MessageDlg('Desejar fechar a consulta?', mtConfirmation, [mbYes,mbNo],0) = mryes)  then
  begin
    Self.Close;
  end;
end;

end.
