unit u_exercicio02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TExportacao = class
  public
    function Exportar: string; virtual; abstract;
  end;

  TExportaTexto = class(TExportacao)
  private
    FTexto: string;
    FQuantidade: Integer;
    procedure SetTexto(const value: string);
    procedure SetQuantidade(const Value: integer);
  public
    property Texto: string read FTexto write SetTexto;
    property Quantidade: integer read FQuantidade write SetQuantidade;
  end;

  TExportaInvertido = class(TExportaTexto)
  public
    function Exportar: string; override;
  end;

  TExportaPrimeiraMaiuscula = class(TExportaTexto)
  public
    function Exportar: string; override;
  end;

  TExportaOrdenado = class(TExportaTexto)
  public
    function Exportar: string; override;
  end;

  TfrmExercicio02 = class(TForm)
    gbTextoOriginal: TGroupBox;
    gbOpcoes: TGroupBox;
    gbTextoExportado: TGroupBox;
    memOriginal: TMemo;
    memExportado: TMemo;
    rbInvertido: TRadioButton;
    rbPrimeiraMaiuscula: TRadioButton;
    rbOrdemAlfabetica: TRadioButton;
    edtQuantidade: TEdit;
    Label1: TLabel;
    btnExportar: TButton;
    procedure btnExportarClick(Sender: TObject);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExercicio02: TfrmExercicio02;

implementation

{$R *.dfm}

{ TExportaTexto }

procedure TExportaTexto.SetQuantidade(const Value: integer);
begin
  FQuantidade := Value;
end;

procedure TExportaTexto.SetTexto(const value: string);
begin
  if Trim(value) = EmptyStr then
    ShowMessage('Não é permitido incluir texto vazio.')
  else
    FTexto := value;
end;



{ TExportaInvertido }

function TExportaInvertido.Exportar: string;
var
  I: Integer;
begin
  Result := EmptyStr;
  for I := Length(FTexto) downto 1 do
  begin
    Result := Result + Copy(FTexto, I, 1);
  end;

  if FQuantidade > 0 then
      Result := Copy(Result, 1, FQuantidade);
end;

{ TExportaPrimeiraMaiuscula }

function TExportaPrimeiraMaiuscula.Exportar: string;
begin
  Result := EmptyStr;
  Result := UpperCase(Copy(FTexto, 1, 1));

  if FQuantidade = 0 then
    Result := Result + Copy(FTexto, 2, Length(FTexto) - 1)
  else
    Result := Result + Copy(FTexto, 2, FQuantidade - 1);
end;

{ TExportaOrdenado }

function TExportaOrdenado.Exportar: string;
var
  I: Integer;
  listAux: TStringList;
begin
  Result := EmptyStr;
  listAux := TStringList.Create;
  try
    for I:= 1 to Length(FTexto) do
      listAux.Add(Copy(FTexto, I, 1));
    listAux.Sort;
    for I:= 0 to listAux.Count - 1 do
      Result := Result + listAux[I];

    if FQuantidade > 0 then
      Result := Copy(Result, 1, FQuantidade);
  finally
    listAux.Free;
  end
end;

procedure TfrmExercicio02.btnExportarClick(Sender: TObject);
var
  textAux: string;
  QtdeCaracteres: Integer;
begin
  QtdeCaracteres := 0;
  memExportado.Clear;

  if Trim(edtQuantidade.Text) <> EmptyStr then
    QtdeCaracteres := StrToInt(edtQuantidade.Text);

  textAux := Trim(memOriginal.Text);
  if rbInvertido.Checked then
  begin
    with TExportaInvertido.Create do
    try
      SetTexto(textAux);
      FQuantidade := QtdeCaracteres;

      textAux := Exportar;
    finally
      Free
    end;
  end;

  if rbPrimeiraMaiuscula.Checked then
  begin
    with TExportaPrimeiraMaiuscula.Create do
    try
      SetTexto(textAux);
      FQuantidade := QtdeCaracteres;

      textAux := Exportar;
    finally
      Free
    end;
  end;

  if rbOrdemAlfabetica.Checked then
  begin
    with TExportaOrdenado.Create do
    try
      SetTexto(textAux);
      FQuantidade := QtdeCaracteres;

      textAux := Exportar;
    finally
      Free
    end;
  end;
  memExportado.Lines.Add(textAux);
end;

procedure TfrmExercicio02.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#08]) then
    key := #0;
end;

end.
