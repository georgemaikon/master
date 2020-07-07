program AvaliacaoTecnica;

uses
  Forms,
  u_main in 'u_main.pas' {frmMain},
  u_exercicio01 in 'u_exercicio01.pas' {frmExercicio01},
  u_exercicio02 in 'u_exercicio02.pas' {frmExercicio02},
  u_dm in 'u_dm.pas' {DM: TDataModule},
  u_exercicio03_consulta in 'u_exercicio03_consulta.pas' {frmExercicio03Consulta},
  u_exercicio03_cadastro in 'u_exercicio03_cadastro.pas' {frmExercicio03Cadastro},
  u_exercicio03_consulta_cidade in 'u_exercicio03_consulta_cidade.pas' {frmExercicio03ConsultaCidade},
  u_exercicio05 in 'u_exercicio05.pas' {frmExercicio05},
  u_exercicio07 in 'u_exercicio07.pas' {frmExercicio07};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmExercicio02, frmExercicio02);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmExercicio03ConsultaCidade, frmExercicio03ConsultaCidade);
  Application.CreateForm(TfrmExercicio05, frmExercicio05);
  Application.CreateForm(TfrmExercicio07, frmExercicio07);
  //Application.CreateForm(TfrmExercicio03Consulta, frmExercicio03Consulta);
  //Application.CreateForm(TfrmExercicio03Cadastro, frmExercicio03Cadastro);
  //Application.CreateForm(TfrmExercicio01, frmExercicio01);
  Application.Run;
end.
