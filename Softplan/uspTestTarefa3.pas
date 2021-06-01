unit uspTestTarefa3;

interface

uses
  TestFramework, uTarefa3;

type
  TestTarefa3 = class(TTestCase)
  private
    oTarefa3: TTarefa3;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestRetornarDataSetCarregado;
    procedure TestRetornarValorTotal;
  end;

implementation

{ TestTarefa3 }

procedure TestTarefa3.SetUp;
begin
  inherited;
  oTarefa3 := TTarefa3.Create;
end;

procedure TestTarefa3.TearDown;
begin
  inherited;
  oTarefa3.Free;
  oTarefa3 := Nil;
end;

procedure TestTarefa3.TestRetornarDataSetCarregado;
begin
  CheckTrue(oTarefa3.RetornarDataSetCriado.RecordCount > 0);
end;

procedure TestTarefa3.TestRetornarValorTotal;
begin
  CheckTrue(oTarefa3.RetornarValorTotal = 550);
end;

initialization
   RegisterTest(TestTarefa3.Suite);
end.
