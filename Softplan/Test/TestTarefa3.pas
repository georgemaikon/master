unit TestTarefa3;

interface

uses
  TestFramework, Winapi.Messages, Data.DB, System.SysUtils, Datasnap.DBClient,
  Winapi.Windows, System.Variants, uTarefa3, System.Classes;

type
  TestTTarefa3 = class(TTestCase)
  strict private
    FTarefa3: TTarefa3;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestRetornarDataSetCriado;
    procedure TestRetornarDataSetCarregado;
    procedure TestRetornarValorTotal;
    procedure TestRetornarValorTotalDivisoes;
  end;

implementation

procedure TestTTarefa3.SetUp;
begin
  FTarefa3 := TTarefa3.Create;
end;

procedure TestTTarefa3.TearDown;
begin
  FTarefa3.Free;
  FTarefa3 := nil;
end;

procedure TestTTarefa3.TestRetornarDataSetCriado;
var
  ReturnValue: TClientDataSet;
begin
  ReturnValue := FTarefa3.RetornarDataSetCriado;
  CheckTrue(Assigned(ReturnValue));
end;

procedure TestTTarefa3.TestRetornarDataSetCarregado;
var
  ReturnValue: TClientDataSet;
begin
  ReturnValue := FTarefa3.RetornarDataSetCarregado;
  CheckTrue(ReturnValue.RecordCount > 0);
end;

procedure TestTTarefa3.TestRetornarValorTotal;
var
  ReturnValue: Double;
begin
  ReturnValue := FTarefa3.RetornarValorTotal;
  CheckTrue(ReturnValue = 550);
end;

procedure TestTTarefa3.TestRetornarValorTotalDivisoes;
var
  ReturnValue: Double;
  nResultadoEsperado: Double;
begin
  nResultadoEsperado := StrToFloat('11,83');
  ReturnValue := FTarefa3.RetornarValorTotalDivisoes;
  CheckTrue(ReturnValue = nResultadoEsperado);
end;

initialization
  RegisterTest(TestTTarefa3.Suite);
end.

