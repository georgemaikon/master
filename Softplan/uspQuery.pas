unit uspQuery;

interface

uses
  Vcl.Dialogs,
  System.Classes,
  FireDAC.Comp.Client;

type
  TpLista = (tpColuna, tpTabela, tpCondicao);

  TspQuery = class(TFDQuery)
  private
    spCondicoes: TStringList;
    spColunas: TStringList;
    spTabelas: TStringList;
    function RetornarColunas: string;
    function RetornarTabelas: string;
    function RetornarCondicoes: string;
    function RetornarDadosLista(const psLista: TStringList; pTipoLista: TpLista): string;
    procedure SetColunas(const Value: TStringList);
    procedure SetTabelas(const Value: TStringList);
    procedure SetCondicoes(const Value: TStringList);
  public
    procedure GeraSQL;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Colunas: TStringList read spColunas write SetColunas;
    property Tabelas: TStringList read spTabelas write SetTabelas;
    property Condicoes: TStringList read spCondicoes write SetCondicoes;
  end;

  procedure register;

implementation

{ TspQuery }

procedure register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  spCondicoes := TStringList.Create;
  spColunas := TStringList.Create;
  spTabelas := TStringList.Create;
end;

destructor TspQuery.Destroy;
begin
  spColunas.Free;
  spTabelas.Free;
  spCondicoes.Free;

  inherited;
end;

procedure TspQuery.GeraSQL;
var
  sMensagem: TStringList;
begin
  sMensagem := TStringList.Create;

  if spColunas.Count = 0 then
    sMensagem.Add('Colunas');

  if spTabelas.Count = 0 then
    sMensagem.Add('Tabelas');

  if spCondicoes.Count = 0 then
    sMensagem.Add('Condições');

  if sMensagem.Count > 0 then
  begin
    ShowMessage('É necessário preencher os campos: ' + sMensagem.Text);
    Exit;
  end;

  SQL.Clear;
  SQL.Add(RetornarColunas + RetornarTabelas + RetornarCondicoes);
end;

function TspQuery.RetornarColunas: string;
begin
  result := 'SELECT ' + RetornarDadosLista(spColunas, tpColuna);
end;

function TspQuery.RetornarTabelas: string;
begin
  result := ' FROM ' + RetornarDadosLista(spTabelas, tpTabela);
end;

function TspQuery.RetornarCondicoes: string;
begin
  result := ' WHERE ' + RetornarDadosLista(spCondicoes, tpCondicao);
end;

function TspQuery.RetornarDadosLista(const psLista: TStringList; pTipoLista: TpLista): string;
var
  nContador: Integer;
  sLinhasLista: string;
begin
  sLinhasLista := '';

  for nContador := 0 to psLista.Count -1 do
  begin
    sLinhasLista := sLinhasLista + psLista.Strings[nContador];

    if (pTipoLista = tpColuna) and (nContador < spColunas.Count) then
      sLinhasLista := sLinhasLista + ', ';

    if (pTipoLista = tpCondicao) then
    begin
      if (nContador > 0 ) and (nContador < spColunas.Count) then
        sLinhasLista := sLinhasLista+ 'AND ';

      sLinhasLista := sLinhasLista + ' = :' + psLista.Strings[nContador];
    end;
  end;

  result := sLinhasLista;
end;

procedure TspQuery.SetColunas(const Value: TStringList);
begin
  spColunas := Value;
end;

procedure TspQuery.SetCondicoes(const Value: TStringList);
begin
  spCondicoes := Value
end;

procedure TspQuery.SetTabelas(const Value: TStringList);
begin
  spTabelas := Value;
end;

end.
