unit u_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TfrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    Exerccios1: TMenuItem;
    Execcio1Cadastrodelistadenomes1: TMenuItem;
    Exerccio2Classesdeconversodetexto1: TMenuItem;
    Exerccio3Cadastrodepessoa1: TMenuItem;
    Exerccio5Criaodearquivo1: TMenuItem;
    Exerccio7ProcessosConcorrentes1: TMenuItem;
    procedure Execcio1Cadastrodelistadenomes1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exerccio2Classesdeconversodetexto1Click(Sender: TObject);
    procedure Exerccio3Cadastrodepessoa1Click(Sender: TObject);
    procedure Exerccio5Criaodearquivo1Click(Sender: TObject);
    procedure Exerccio7ProcessosConcorrentes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  u_exercicio01, Math, u_exercicio02, u_exercicio03_consulta, u_exercicio05, u_exercicio07;

{$R *.dfm}

procedure TfrmMain.Execcio1Cadastrodelistadenomes1Click(Sender: TObject);
begin
  if frmExercicio01 = nil then
  begin
    frmExercicio01 := TfrmExercicio01.Create(Self);
  end;
  frmExercicio01.ShowModal;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(frmExercicio01);
end;

procedure TfrmMain.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(frmExercicio01);
end;

procedure TfrmMain.Exerccio2Classesdeconversodetexto1Click(
  Sender: TObject);
begin
  if frmExercicio02 = nil then
  begin
    frmExercicio02 := TfrmExercicio02.Create(Self);
  end;
  frmExercicio02.ShowModal;
end;

procedure TfrmMain.Exerccio3Cadastrodepessoa1Click(Sender: TObject);
begin
  if frmExercicio03Consulta = nil then
  begin
    frmExercicio03Consulta := TfrmExercicio03Consulta.Create(Self);
  end;
  frmExercicio03Consulta.ShowModal;
end;

procedure TfrmMain.Exerccio5Criaodearquivo1Click(Sender: TObject);
begin
  if frmExercicio05 = nil then
  begin
    frmExercicio05 := TfrmExercicio05.Create(Self);
  end;
  frmExercicio05.ShowModal;
end;

procedure TfrmMain.Exerccio7ProcessosConcorrentes1Click(Sender: TObject);
begin
  if frmExercicio07 = nil then
  begin
    frmExercicio07 := TfrmExercicio07.Create(Self);
  end;
  frmExercicio07.ShowModal;
end;

end.
