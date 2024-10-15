program Project1;

uses
  Vcl.Forms,
  HomePage in 'HomePage.pas' {Form1},
  DataBase in 'DataBase.pas' {Form2},
  Login in 'Login.pas' {Form3},
  SignUp in 'SignUp.pas' {Form4},
  Users in 'Users.pas' {Form5},
  EditUsers in 'EditUsers.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
