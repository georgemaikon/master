unit ufTarefa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Vcl.Mask;

type
  TspThread = class(TThread)
  private
    FContador: Integer;
    FTempoEspera: Integer;
    procedure AtualizaProgrees;
    procedure SetTempoEspera(const Value: integer);
  protected
    procedure Execute; override;
  public
    property TempoEspera: integer read FTempoEspera write SetTempoEspera;
  end;

  TfTarefa2 = class(TForm)
    pbThread1: TProgressBar;
    pbThread2: TProgressBar;
    lbl1: TLabel;
    lbl2: TLabel;
    btnExecutar: TBitBtn;
    edtTempo1: TMaskEdit;
    edtTempo2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnExecutarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FCodThread1: Cardinal;
    FCodThread2: Cardinal;
    procedure SetCodThread1(const Value: Cardinal);
    procedure SetCodThread2(const Value: Cardinal);
  public
    { Public declarations }
    property CodThread1: Cardinal read FCodThread1 write SetCodThread1;
    property CodThread2: Cardinal read FCodThread2 write SetCodThread2;
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}


procedure TfTarefa2.btnExecutarClick(Sender: TObject);
var
  Thread1: TspThread;
  Thread2: TspThread;
  nCodThread: Integer;
begin
  Thread1 := TspThread.Create(True);
  FCodThread1 := Thread1.ThreadID;
  Thread1.TempoEspera := StrToint(Trim(edtTempo1.Text));

  Thread2 := TspThread.Create(True);
  FCodThread2 := Thread2.ThreadID;
  Thread2.TempoEspera := StrToint(Trim(edtTempo2.Text));

  Application.ProcessMessages;
  Thread1.Resume;

  Application.ProcessMessages;
  Thread2.Resume;

  btnExecutar.Enabled := False;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa2 := nil;
end;

procedure TfTarefa2.SetCodThread1(const Value: Cardinal);
begin
  FCodThread1 := Value;
end;

procedure TfTarefa2.SetCodThread2(const Value: Cardinal);
begin
  FCodThread2 := Value;
end;

procedure TspThread.AtualizaProgrees;
begin
  if ThreadID = fTarefa2.CodThread1 then
  begin
    fTarefa2.pbThread1.Position := FContador;
    fTarefa2.lbl1.Caption := IntToStr(FContador);
  end;

  if ThreadID = fTarefa2.CodThread2 then
  begin
    fTarefa2.pbThread2.Position := FContador;
    fTarefa2.lbl2.Caption := IntToStr(FContador);
  end;

  if (fTarefa2.pbThread1.Position = 100) and (fTarefa2.pbThread2.Position = 100) then
    fTarefa2.btnExecutar.Enabled := True;

  Application.ProcessMessages;
end;

procedure TspThread.Execute;
begin
  inherited;
  FreeOnTerminate := True;
  while FContador < 100 do
  begin
    Inc(FContador);
    Sleep(FTempoEspera);
    Synchronize(AtualizaProgrees);
  end;
end;

procedure TspThread.SetTempoEspera(const Value: integer);
begin
  FTempoEspera := Value;
end;

end.
