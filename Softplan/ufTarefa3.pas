unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, uTarefa3;

type
  TfTarefa3 = class(TForm)
    grdProjetos: TDBGrid;
    btnObterTotal: TBitBtn;
    btnTotalDivisoes: TBitBtn;
    edtTotal: TEdit;
    edtTotalDivisoes: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnTotalDivisoesClick(Sender: TObject);
  private
    oTarefa3: TTarefa3;
    oCDSGrid: TClientDataSet;
    oDSGrid: TDataSource;
    procedure CarregarGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

procedure TfTarefa3.btnTotalDivisoesClick(Sender: TObject);
begin
  edtTotalDivisoes.Text := FloatToStr(oTarefa3.RetornarValorTotalDivisoes);
end;

procedure TfTarefa3.CarregarGrid;
begin
  grdProjetos.DataSource := oDSGrid;
  oDSGrid.DataSet.Close;
  oDSGrid.DataSet.Open;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa3 := nil;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  oTarefa3 := TTarefa3.Create;
  oCDSGrid := oTarefa3.RetornarDataSetCarregado;
  oDSGrid := TDataSource.Create(nil);
  oDSGrid.DataSet := oCDSGrid;
end;

procedure TfTarefa3.FormDestroy(Sender: TObject);
begin
  oDSGrid.Free;
  oTarefa3.Free;
end;

procedure TfTarefa3.FormShow(Sender: TObject);
begin
  CarregarGrid;
end;

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
  edtTotal.Text := FloatToStr(oTarefa3.RetornarValorTotal);
end;

end.
