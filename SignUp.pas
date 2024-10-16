unit SignUp;

interface

uses
  SysUtils, Dialogs, Classes, Controls, Forms, StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditUsername: TEdit;
    EditPassword: TEdit;
    EditConfirmPassword: TEdit;
    BtnSignup: TButton;
    qWorkWrite: TFDQuery;
    qWorkRead: TFDQuery;
    procedure BtnSignupClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
uses
  HomePage;

procedure TForm4.BtnSignupClick(Sender: TObject);
begin
  if ((EditPassword.text='') or (EditUserName.text='')) then
  begin
    showmessage('No field should be empty');
    abort;
  end;


  if EditPassword.text<>EditConfirmPassword.text then
  begin
    showmessage('Passwords Donot Match');
    abort;
  end;

  if Form1.qUsers.Locate('UserName',EditUsername.text,[]) then
  begin
    showmessage('User Already Present');
    abort;
  end;


  with Form1.qWorkRead do
  begin
    close;
    Sql.clear;
    Sql.Add('Select * from user where username=:username');
    Params.ParamByName('username').AsString:=editusername.text;
    Open;
    if recordcount>0 then
    begin
      showmessage('UserName Already Present');
      exit;
    end;
  end;

  with Form1.qWorkWrite do
  begin
    Close;
    Sql.clear;
    Sql.Add('insert into user (username,password) values (:username,:password)');
    Params.ParamByName('username').AsString:=editusername.text;
    Params.ParamByName('password').AsString:=editpassword.text;

    ExecSql;
  end;                               //inserting record in db adding logs
  ShowMessage('New User : '+ editusername.text + ' Added');
  Form1.WriteToFile('User: ' + editusername.text + ' Added');
  Close;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.qWorkWrite.close;
  Form1.qUsers.close;
  //MrCancel will close the form
  ModalResult:=MrCancel;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Form1.qUsers.Open;
end;

end.

