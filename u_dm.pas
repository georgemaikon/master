unit u_dm;

interface

uses
  SysUtils, Classes, WideStrings, DB, SqlExpr;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
