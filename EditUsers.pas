unit EditUsers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, vcl.wwdbedit;

type
  TForm6 = class(TForm)
    EditUserName1: TwwDBEdit;
    EditPassword1: TwwDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    BtnOK: TButton;
    BtnCancel: TButton;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  UserName,Password:String;

implementation

{$R *.dfm}
Uses
  HomePage;

procedure TForm6.BtnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TForm6.BtnOKClick(Sender: TObject);
var
Id:Integer;
begin
  if ((UserName=EditUserName1.text) and (Password=EditPassword1.text)) then
    ModalResult := mrCancel;

  if ((Form1.qUsers.Locate('UserName',editusername1.text,[])) and (Password=EditPassword1.text)) then
  begin
    showmessage('User Already Present');
    abort;
  end;
  if Form6.Caption='EditUser' then
  begin
      with Form1.qWorkRead do
      begin
        Close;
        Sql.clear;
        Sql.Add('Select * from User where Username=:username');
        Params.ParambyName('UserName').AsString:= EditUserName1.text;
        Open;
        Id:=FieldByName('ID').AsInteger;
      end;

    with Form1.qWorkWrite do
    begin
      Close;
      Sql.clear;
      Sql.Add('UPDATE user SET username = :username, password = :password WHERE Id=:id');
      Params.ParamByName('username').AsString:=editusername1.text;
      Params.ParamByName('password').AsString:=editpassword1.text;
      Params.ParamByName('id').AsInteger:=Id;

      Form1.qWorkWrite.ExecSql;
    end;
  end;
  ModalResult:=MrOK;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  UserName:=EditUserName1.text;
  Password:=EditPassword1.text;
end;

end.
