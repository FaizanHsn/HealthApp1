unit DataBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid,
  Vcl.ExtCtrls, Vcl.StdCtrls, ShellAPI;

type
  TForm2 = class(TForm)
    dbgFoodReceipies: TwwDBGrid;
    MyDailyWorkOut: TPanel;
    WorkOut1: TImage;
    WorkOut2: TImage;
    WorkOut3: TImage;
    WorkOut4: TImage;
    WorkOut5: TImage;
    WorkOut6: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure WorkOut1Click(Sender: TObject);
    procedure WorkOut3Click(Sender: TObject);
    procedure WorkOut2Click(Sender: TObject);
    procedure WorkOut4Click(Sender: TObject);
    procedure WorkOut5Click(Sender: TObject);
    procedure WorkOut6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
uses
  HomePage;

procedure TForm2.FormShow(Sender: TObject);
begin
  Form1.qMyFoodReceipies.open;
  //Assigning images to every timage component
  WorkOut1.Picture.LoadFromFile('images\Workout1.jpg');
  WorkOut2.Picture.LoadFromFile('images\Workout2.jpeg');
  WorkOut3.Picture.LoadFromFile('images\Workout3.jpg');
  WorkOut4.Picture.LoadFromFile('images\Workout4.jpeg');
  WorkOut5.Picture.LoadFromFile('images\Workout5.jpeg');
  WorkOut6.Picture.LoadFromFile('images\Workout6.jpeg');
end;

procedure TForm2.WorkOut1Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.youtube.com/watch?v=_fesO5oNcEs', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm2.WorkOut2Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.youtube.com/watch?v=34LJX-arUo8', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm2.WorkOut3Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.youtube.com/watch?v=v7AYKMP6rOE', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm2.WorkOut4Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.youtube.com/watch?v=7fICF_O5esc', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm2.WorkOut5Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.youtube.com/watch?v=71op1DQ2gyo&t=53s', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm2.WorkOut6Click(Sender: TObject);
begin
ShellExecute(0, 'open', 'https://www.youtube.com/watch?v=H6mRkx1x77k', nil, nil, SW_SHOWNORMAL);
end;

end.
