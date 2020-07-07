unit u_exercicio07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TThread1 = class(TThread)
  private
    Contador: Integer;
    procedure AtualizaProgrees;
  protected
    procedure Execute; override;
  end;

  TThread2 = class(TThread)
  private
    Contador: Integer;
    procedure AtualizaProgrees;
  protected
    procedure Execute; override;
  end;

  TfrmExercicio07 = class(TForm)
    pbThread1: TProgressBar;
    pbThread2: TProgressBar;
    lbl1: TLabel;
    lbl2: TLabel;
    btnExecutar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmExercicio07: TfrmExercicio07;

implementation

{$R *.dfm}


procedure TfrmExercicio07.btnExecutarClick(Sender: TObject);
var
  Thread1: TThread1;
  Thread2: TThread2;
begin
  Thread1 := TThread1.Create(True);
  Thread2 := TThread2.Create(True);
  Application.ProcessMessages;
  Thread1.Resume;
  Application.ProcessMessages;
  Thread2.Resume;
end;

procedure TfrmExercicio07.btnSairClick(Sender: TObject);
begin
  Close;
end;

{ TThread1 }

procedure TThread1.AtualizaProgrees;
begin
  frmExercicio07.pbThread1.Position := Contador;
end;

procedure TThread1.Execute;
begin
  inherited;
  FreeOnTerminate := True;
  while Contador <= 100 do
  begin
    Inc(Contador);
    Sleep(10);
    Synchronize(AtualizaProgrees);
  end;
end;

{ TThread2 }

procedure TThread2.AtualizaProgrees;
begin
  frmExercicio07.pbThread2.Position := Contador;
  Application.ProcessMessages;
end;

procedure TThread2.Execute;
begin
  inherited;
  FreeOnTerminate := True;
  while Contador <= 100 do
  begin
    Inc(Contador);
    Sleep(13);
    Synchronize(AtualizaProgrees);
  end;
end;

end.
