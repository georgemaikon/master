unit uTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Datasnap.DBClient, Data.DB, Math;

type
  TTarefa3 = class
  private
    oCDSProjeto: TClientDataSet;
  public
    function RetornarDataSetCriado: TClientDataSet;
    function RetornarDataSetCarregado: TClientDataSet;
    function RetornarValorTotal: Double;
    function RetornarValorTotalDivisoes: Double;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TTarefa3 }

constructor TTarefa3.Create;
begin
  oCDSProjeto := TClientDataSet.Create(nil);
end;

destructor TTarefa3.Destroy;
begin
  if oCDSProjeto <> nil then
    oCDSProjeto.Free;
  inherited;
end;

function TTarefa3.RetornarDataSetCarregado: TClientDataSet;
var
  nContadorDataSet: Integer;
  nValorInicial: Double;
begin
  result := RetornarDataSetCriado;
  nContadorDataSet := 1;
  nValorInicial := 0;

  Result.Close;
  Result.Open;
  while nContadorDataSet <= 10 do
  begin
    Result.Append;
    Result.FieldByName('IdProjeto').AsInteger := nContadorDataSet;
    Result.FieldByName('NomeProjeto').AsString := 'Projeto ' + IntToStr(nContadorDataSet);
    Result.FieldByName('Valor').AsFloat := nValorInicial + 10;
    nValorInicial  := nValorInicial + 10;
    Result.Post;

    Inc(nContadorDataSet);
  end;
end;

function TTarefa3.RetornarDataSetCriado: TClientDataSet;
begin
  oCDSProjeto.Close;
  oCDSProjeto.FieldDefs.Clear;
  oCDSProjeto.FieldDefs.Add('IdProjeto', ftInteger);
  oCDSProjeto.FieldDefs.Add('NomeProjeto', ftString, 50);
  oCDSProjeto.FieldDefs.Add('Valor', ftFloat);
  oCDSProjeto.CreateDataSet;
  Result := oCDSProjeto;
end;

function TTarefa3.RetornarValorTotal: Double;
var
  oFieldValor: TField;
begin
  Result := 0;

  if oCDSProjeto.State = dsInactive then
    oCDSProjeto := RetornarDataSetCarregado;

  oFieldValor := TField.Create(nil);
  oFieldValor := oCDSProjeto.FindField('Valor');

  oCDSProjeto.DisableControls;
  try
    oCDSProjeto.First;
    while not oCDSProjeto.Eof do
    begin
      Result := Result + oFieldValor.AsFloat;

      oCDSProjeto.Next;
    end;

  finally
    oCDSProjeto.EnableControls;
  end;
end;

function TTarefa3.RetornarValorTotalDivisoes: Double;
var
  oFieldValor: TField;
  nValorAnterior: Double;
  nResultado: Double;
begin
  nResultado := 0;

  if oCDSProjeto.State = dsInactive then
    oCDSProjeto := RetornarDataSetCarregado;

  oFieldValor := TField.Create(nil);
  oFieldValor := oCDSProjeto.FindField('Valor');

  oCDSProjeto.DisableControls;
  try
    oCDSProjeto.First;
    nValorAnterior := oFieldValor.AsFloat;
    oCDSProjeto.Next;
    while not oCDSProjeto.Eof do
    begin
      nResultado := nResultado + (oFieldValor.AsFloat / nValorAnterior);
      nValorAnterior := oFieldValor.AsFloat;

      oCDSProjeto.Next;
    end;
    Result := SimpleRoundTo(nResultado, -2);
  finally
    oCDSProjeto.EnableControls;
  end;
end;

end.
