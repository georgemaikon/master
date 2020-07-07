unit U_TDB1Data;

interface

uses
  SysUtils, Classes, DB, SqlExpr;

type
  TDB1Data = class(TSQLDataSet)
  private
    FListaCampos: string;
    FListaTabelas: string;
    FListaCondicoes: string;
    procedure setListaCampos(const Value: string);
    procedure setListaCondicoes(const Value: string);
    procedure setListaTabelas(const Value: string);
  protected
    procedure Open; override;
  published
    property ListaCampos: string read FListaCampos write setListaCampos;
    property ListaTabelas: string read FListaTabelas write setListaTabelas;
    property ListaCondicoes: string read FListaCondicoes write setListaCondicoes;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('DB1 Avaliação', [TDB1Data]);
end;

{ TDB1Data }

procedure TDB1Data.Open;
var
  strAux: string;
begin
  CommandText :=
  inherited;
end;

procedure TDB1Data.setListaCampos(const Value: string);
begin
  FListaCampos := Value;
end;

procedure TDB1Data.setListaCondicoes(const Value: string);
begin
  FListaCondicoes := Value;
end;

procedure TDB1Data.setListaTabelas(const Value: string);
begin
  FListaTabelas := Value;
end;

end.
