unit u_exercicio03_cadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, Provider, DBClient, SqlExpr,
  Mask, DBCtrls;

type
  TfrmExercicio03Cadastro = class(TForm)
    gbCadastro: TGroupBox;
    pnlBotoes: TPanel;
    btnNovo: TBitBtn;
    btnSalvar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    sqlCadastro: TSQLQuery;
    cdsCadastro: TClientDataSet;
    dspCadastro: TDataSetProvider;
    sqlCadastroCDPESSOA: TIntegerField;
    sqlCadastroNMPESSOA: TStringField;
    sqlCadastroDELOGRADOURO: TStringField;
    sqlCadastroDEBAIRRO: TStringField;
    sqlCadastroCDCIDADE: TIntegerField;
    cdsCadastroCDPESSOA: TIntegerField;
    cdsCadastroNMPESSOA: TStringField;
    cdsCadastroDELOGRADOURO: TStringField;
    cdsCadastroDEBAIRRO: TStringField;
    cdsCadastroCDCIDADE: TIntegerField;
    lbl1: TLabel;
    dbedtCDPESSOA: TDBEdit;
    lbl2: TLabel;
    dbedtNMPESSOA: TDBEdit;
    lbl3: TLabel;
    dbedtDELOGRADOURO: TDBEdit;
    lbl4: TLabel;
    dbedtDEBAIRRO: TDBEdit;
    lbl5: TLabel;
    dbedtCDCIDADE: TDBEdit;
    btnPesquisar: TBitBtn;
    lbl7: TLabel;
    dsCadastro: TDataSource;
    sqlCadastroNMCIDADE: TStringField;
    cdsCadastroNMCIDADE: TStringField;
    dbedtNMCIDADE: TDBEdit;
    procedure dbedtCDPESSOAKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    FCodigo: Integer;
    Sql: string;
    function BuscarCodigo: Integer;
  public
    procedure SetCodigo(const Value: Integer);
    property Codigo: Integer read FCodigo write SetCodigo;
  end;

var
  frmExercicio03Cadastro: TfrmExercicio03Cadastro;

implementation

uses
  u_dm, u_exercicio03_consulta_cidade;

{$R *.dfm}

procedure TfrmExercicio03Cadastro.dbedtCDPESSOAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(key in['0'..'9',#08]) then
    key := #0;
end;

procedure TfrmExercicio03Cadastro.FormCreate(Sender: TObject);
begin
  FCodigo := 0;
  Sql := sqlCadastro.SQL.Text;
end;

procedure TfrmExercicio03Cadastro.FormShow(Sender: TObject);
begin
  cdsCadastro.Close;
  if FCodigo <> 0 then
  begin
    sqlCadastro.SQL.Add('WHERE P.CDPESSOA = :CODIGO');
    sqlCadastro.ParamByName('CODIGO').AsInteger := FCodigo;
  end;
  cdsCadastro.Open;

  if FCodigo = 0 then
    cdsCadastro.Append
  else
    cdsCadastro.Edit;
end;

procedure TfrmExercicio03Cadastro.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TfrmExercicio03Cadastro.btnExcluirClick(Sender: TObject);
begin
  if (FCodigo <> 0) and (MessageDlg('Deseja excluir o registro?', mtInformation, [mbYes, mbNo], 0) = mrYes) then
  begin
    try
      cdsCadastro.Delete;
      if cdsCadastro.ApplyUpdates(0) = 0 then
        Application.MessageBox('Registro excluído com sucesso', 'Avaliação DB1');
    except
      on E : Exception do
        ShowMessage(E.ClassName + 'Erro ao excluir registro: '+E.Message);
    end;
  end;
end;

procedure TfrmExercicio03Cadastro.btnNovoClick(Sender: TObject);
begin
  if (cdsCadastro.ChangeCount > 0) and
    (MessageDlg('Existem alterações não salvas. Deseja descartar?', mtConfirmation, [mbYes,mbNo],0) = mrOk)  then
    Exit;

  FCodigo := 0;
  cdsCadastro.Close;
  sqlCadastro.SQL.Text := Sql;
  cdsCadastro.Open;
  cdsCadastro.Append;
  dbedtNMPESSOA.SetFocus;
end;

procedure TfrmExercicio03Cadastro.btnPesquisarClick(Sender: TObject);
begin
  if frmExercicio03ConsultaCidade = nil then
  begin
    frmExercicio03ConsultaCidade := TfrmExercicio03ConsultaCidade.Create(Self);
  end;

  frmExercicio03ConsultaCidade.ShowModal;

  if frmExercicio03ConsultaCidade.ModalResult = mrOk then
  begin
    cdsCadastroNMCIDADE.AsString  := frmExercicio03ConsultaCidade.Nome;
    cdsCadastroCDCIDADE.AsInteger := frmExercicio03ConsultaCidade.Codigo;
    frmExercicio03ConsultaCidade.Close;
  end;
end;

procedure TfrmExercicio03Cadastro.btnSairClick(Sender: TObject);
begin
  if (cdsCadastro.ChangeCount > 0) and
    (MessageDlg('Existem alterações não salvas. Deseja descartar?', mtConfirmation, [mbYes,mbNo],0) = mrOk)  then
    Exit;

  Self.Close;
end;

procedure TfrmExercicio03Cadastro.btnSalvarClick(Sender: TObject);
begin
  if cdsCadastro.State in [dsEdit, dsInsert] then
  begin
    if cdsCadastroNMPESSOA.AsString = EmptyStr then
    raise Exception.Create('Campo Nome da pessoa deve ser preenchido.');

    if cdsCadastro.State in [dsInsert] then
      cdsCadastroCDPESSOA.AsInteger := BuscarCodigo + 1;

    try
      cdsCadastro.Post;
      if cdsCadastro.ApplyUpdates(0) = 0 then
        Application.MessageBox('Registro salvo com sucesso', 'Avaliação DB1');

      cdsCadastro.Close;
    except
      on E : Exception do
        ShowMessage(E.ClassName + 'Erro ao salvar registro: ' + E.Message);
    end;
  end;
end;

function TfrmExercicio03Cadastro.BuscarCodigo: Integer;
var
  qryAux: TSQLQuery;
begin
  Result := 0;
  qryAux := TSQLQuery.Create(Self);
  try
    qryAux.SQLConnection := DM.SQLConnection;
    qryAux.SQL.Add('SELECT MAX(P.CDPESSOA) AS CODIGO FROM PESSOA P');
    qryAux.Open;

    if not qryAux.IsEmpty then
      Result := qryAux.FieldByName('CODIGO').AsInteger;
  finally
    FreeAndNil(qryAux);
  end;
end;

end.
