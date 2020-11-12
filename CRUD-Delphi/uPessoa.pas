unit uPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDM, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmPessoa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    RadioGroup1: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure RadioGroup1Exit(Sender: TObject);
  private
    procedure ValidarCPFCNPJ;
  public
    { Public declarations }
  end;

var
  frmPessoa: TfrmPessoa;

implementation

{$R *.dfm}

procedure TfrmPessoa.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbPost then
    ValidarCPFCNPJ;
end;

procedure TfrmPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmPessoa);
end;

procedure TfrmPessoa.RadioGroup1Exit(Sender: TObject);
begin
  ValidarCPFCNPJ;
end;

procedure TfrmPessoa.ValidarCPFCNPJ;
begin
  DBEdit3.ReadOnly := False;

  if RadioGroup1.ItemIndex = 0 then
    DBEdit3.Field.EditMask := '000.000.000-00;1;_'
  else if RadioGroup1.ItemIndex = 1 then
    DBEdit3.Field.EditMask := '99.999.999/9999-99;1;_';
end;

end.
