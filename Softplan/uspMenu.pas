unit uspMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery, Vcl.Menus;

type
  TfspMenu = class(TForm)
    spQuery1: TspQuery;
    MainMenu1: TMainMenu;
    Tarefa1: TMenuItem;
    Tarefa2: TMenuItem;
    arefa31: TMenuItem;
    procedure Tarefa1Click(Sender: TObject);
    procedure Tarefa2Click(Sender: TObject);
    procedure arefa31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fspMenu: TfspMenu;

implementation

{$R *.dfm}

uses ufTarefa1, ufTarefa2, ufTarefa3;

procedure TfspMenu.arefa31Click(Sender: TObject);
begin
  if fTarefa3 = nil then
    fTarefa3 := TfTarefa3.Create(nil);

  fTarefa3.Show;
end;

procedure TfspMenu.Tarefa1Click(Sender: TObject);
begin
  if fTarefa1 = nil then
    fTarefa1 := TfTarefa1.Create(nil);

  fTarefa1.Show;
end;

procedure TfspMenu.Tarefa2Click(Sender: TObject);
begin
  if fTarefa2 = nil then
    fTarefa2 := TfTarefa2.Create(nil);

  fTarefa2.Show;
end;

end.
