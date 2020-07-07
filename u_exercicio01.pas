unit u_exercicio01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmExercicio01 = class(TForm)
    gbInserirNome: TGroupBox;
    lblNome: TLabel;
    edtNome: TEdit;
    btnInserirNome: TButton;
    gbListaNomes: TGroupBox;
    gbFuncionalidades: TGroupBox;
    btnExibir: TButton;
    btnRemoverPrimeiro: TButton;
    btnRemoverUltimo: TButton;
    btnContar: TButton;
    listaNomes: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure btnInserirNomeClick(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnRemoverUltimoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRemoverPrimeiroClick(Sender: TObject);
    procedure btnContarClick(Sender: TObject);
  private
    FListaNomes: array of string;
    FCountArray: Integer;
    procedure TrataBotoes;
    procedure InserirNome(psNome: string);
    procedure ExibirLista;
    procedure RemoverUltimo;
    procedure RemoverPrimeiro;
  public
    { Public declarations }
  end;

var
  frmExercicio01: TfrmExercicio01;

implementation

{$R *.dfm}

procedure TfrmExercicio01.FormCreate(Sender: TObject);
begin
  FCountArray := 0;
  SetLength(FListaNomes, FCountArray);
end;

procedure TfrmExercicio01.InserirNome(psNome: string);
begin
  if Trim(psNome) <> EmptyStr then
  begin
    SetLength(FListaNomes, FCountArray + 1);
    FListaNomes[FCountArray] := psNome;
    FCountArray   := FCountArray + 1;
  end;
end;

procedure TfrmExercicio01.btnInserirNomeClick(Sender: TObject);
begin
  InserirNome(edtNome.Text);
  edtNome.Text  := EmptyStr;
  edtNome.SetFocus;
end;

procedure TfrmExercicio01.ExibirLista;
var
  I: Integer;
begin
  if FCountArray = 0 then
  begin
    listaNomes.Clear;
    listaNomes.Items.Add('Lista vazia.');
  end
  else
  begin
    listaNomes.Clear;
    for I :=0 to FCountArray - 1 do
    begin
      listaNomes.Items.Add(FListaNomes[I]);
    end;
  end;
end;

procedure TfrmExercicio01.btnExibirClick(Sender: TObject);
begin
  ExibirLista;
  TrataBotoes;
end;

procedure TfrmExercicio01.TrataBotoes;
begin
  if FCountArray = 0 then
  begin
    btnRemoverPrimeiro.Enabled  := False;
    btnRemoverUltimo.Enabled    := False;
    btnContar.Enabled           := False;
  end
  else
  begin
    btnRemoverPrimeiro.Enabled  := True;
    btnRemoverUltimo.Enabled    := True;
    btnContar.Enabled           := True;
  end;
end;

procedure TfrmExercicio01.FormDestroy(Sender: TObject);
begin
  FreeAndNil(frmExercicio01);
  Finalize(FListaNomes);
end;

procedure TfrmExercicio01.RemoverUltimo;
begin
  SetLength(FListaNomes, FCountArray - 1);
  FCountArray := FCountArray - 1;
end;

procedure TfrmExercicio01.btnRemoverUltimoClick(Sender: TObject);
begin
  RemoverUltimo;
  ExibirLista;
  TrataBotoes;
end;

procedure TfrmExercicio01.RemoverPrimeiro;
var
  I: Integer;
begin
  for I := 0 to FCountArray - 1 do
  begin
    if I < FCountArray - 1 then
      FListaNomes[I] := FListaNomes[I + 1];
  end;
  FCountArray := FCountArray - 1;
  SetLength(FListaNomes, FCountArray);
end;

procedure TfrmExercicio01.btnRemoverPrimeiroClick(Sender: TObject);
begin
  RemoverPrimeiro;
  ExibirLista;
  TrataBotoes;
end;

procedure TfrmExercicio01.FormShow(Sender: TObject);
begin
  edtNome.SetFocus;
end;

procedure TfrmExercicio01.btnContarClick(Sender: TObject);
var
  I: Integer;
  Count: Integer;
begin
  Count := 0;
  for I := 0 to High(FListaNomes) do
    Count := Count + 1;
  ShowMessageFmt('Existem %s nomes na lista.', [IntToStr(Count)]);
end;

end.
