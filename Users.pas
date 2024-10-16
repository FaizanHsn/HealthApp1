unit Users;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    dbgUsers: TwwDBGrid;
    BtnAdd: TButton;
    BtnDelete: TButton;
    procedure dbgUsersDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}
uses
  HomePage,EditUsers;

procedure TForm5.BtnAddClick(Sender: TObject);
begin
  Form1.qUsers.Append;
  with TForm6.create(self) do
    begin
      Form6.Caption:='AddUser';
      if ShowModal = mrCancel then
            dbgUsers.DataSource.DataSet.Cancel;
    end;

end;

procedure TForm5.BtnDeleteClick(Sender: TObject);
begin
//Admin cant be changed
  if Form1.qUsersUsername.value='Admin' then
  begin
    ShowMessage('Cant mess with Admin User');
    abort;
  end;
  //Locate against the user id and then delete
  Form1.qUsers.Locate('UserName',Form1.qUsersUsername.value,[]);
  with Form1.qWorkWrite do
  begin
    Close;
    Sql.clear;
    Sql.Add('delete from user where username=:username');
    Params.ParamByName('username').AsString:=Form1.qUsersUsername.value;

    Form1.qWorkWrite.ExecSql;
    Form1.WriteToFile('User: ' + Form1.qUsersUsername.value + ' Deleted');
    Form1.qUsers.refresh;
    //Deleting the user adding a log and then refreshing the query component
  end;
end;

procedure TForm5.dbgUsersDblClick(Sender: TObject);
begin
  if Form1.qUsersUsername.value='Admin' then
  begin
    ShowMessage('Cant mess with Admin User');
    abort;
  end;
  Form1.qUsers.Locate('UserName',Form1.qUsersUsername.value,[]);
  if Form1.qUsers.IsEmpty then
    exit;
  with TForm6.create(self) do
  begin
    Form6.Caption:='EditUser';
    //if user presses cancel or X then exit
    if ShowModal = mrCancel then
          dbgUsers.DataSource.DataSet.Cancel;
  end;

end;


procedure TForm5.FormActivate(Sender: TObject);
begin
//Loading the query
  Form1.qUsers.open;
  Form1.qUsers.refresh;
end;

end.
