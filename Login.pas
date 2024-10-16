unit Login;

interface

uses
  SysUtils, Classes,Dialogs, Controls, Forms, StdCtrls, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EditUsername: TEdit;
    EditPassword: TEdit;
    BtnLogin: TButton;
    BtnSignUp: TButton;
    procedure BtnSignUpClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    IsAdmin:Boolean;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
uses
  SignUp,DataBase,HomePage;

procedure TForm3.BtnLoginClick(Sender: TObject);
var
NewForm: Tform1;
begin
  //Cant have empty fields
  if ((EditPassword.text='') or (EditUserName.text='')) then
    showmessage('No field should be empty');
  //cant have the same username
  with Form1.qWorkRead do
  begin
    Close;
    Sql.clear;
    Sql.Add('Select * from User where Username=:username and Password=:password');
    Params.ParambyName('UserName').AsString:= EditUserName.text;
    Params.ParambyName('Password').AsString:= EditPassword.text;
    Open;
    IsAdmin:=FieldByName('IsAdmin').AsBoolean;
    if IsAdmin then
      Form1.BtnUsers.visible:=True;

    if recordCount>0 then
    begin
      showmessage('Welcome '+ EditUserName.text);
      ModalResult:=MrOK;
    end
    else
    begin
    showmessage('Invalid UserName Or Password');
    //invalid password enter again
    Abort;
    end;
  end;
end;

procedure TForm3.BtnSignUpClick(Sender: TObject);
var
  NewForm: Tform4;
begin
  with Tform4.Create(self) do
  begin
  NewForm := Tform4.Create(Self);
  try
    NewForm.ShowModal;
  finally
    NewForm.Free;
  end;
  end;
end;

end.
