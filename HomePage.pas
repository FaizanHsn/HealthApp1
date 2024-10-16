unit HomePage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.IOUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, System.ImageList, Vcl.ImgList, DataBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, ShellAPI ;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    imgDailyWorkoutPlan: TImage;
    imgDietFood: TImage;
    idb: TFDConnection;
    qWorkRead: TFDQuery;
    qMyFoodReceipies: TFDQuery;
    qMyFoodReceipiesID: TFDAutoIncField;
    qMyFoodReceipiesName: TStringField;
    qMyFoodReceipiesReceipe: TStringField;
    dsMyFoodReceipies: TDataSource;
    ImgBMI: TImage;
    imgFoodReceipies: TImage;
    BtnUsers: TButton;
    qUsers: TFDQuery;
    dsUsers: TDataSource;
    qUsersID: TFDAutoIncField;
    qUsersUsername: TStringField;
    qUsersPassword: TStringField;
    qUsersIsAdmin: TBooleanField;
    qWorkWrite: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure imgDailyWorkoutPlanClick(Sender: TObject);
    procedure imgDietFoodClick(Sender: TObject);
    procedure ImgBMIClick(Sender: TObject);
    procedure imgFoodReceipiesClick(Sender: TObject);
    procedure BtnUsersClick(Sender: TObject);
  private
    { Private declarations }
  public
  BrowseForm : Tform2;
  procedure WriteToFile(const Content: string);

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
  Login,Users;

procedure TForm1.WriteToFile(const Content: string);
var
  Writer: TStreamWriter;
  FileName,TimeStamp: string;
begin
  TimeStamp:=FormatDateTime('yyyy-mm-dd hh:nn:ss', Now) + ' - ' + Content;
  FileName := 'C:\HealthApp1\NewUser.txt'; // File name, create if doesn't exist
  try
    // True in TStreamWriter.Create ensures the file is opened in append mode
    // and creates the file if it doesn't exist
    Writer := TStreamWriter.Create(FileName, True);
    try
      Writer.WriteLine(TimeStamp); // Write the string to the file
    finally
      Writer.Free; // Ensure Writer is freed after use
    end;
  except
    on E: Exception do
      ShowMessage('Error writing to file: ' + E.Message); // Error handling
  end;
end;

procedure TForm1.BtnUsersClick(Sender: TObject);
var
  NewForm: Tform5;
begin
  NewForm := Tform5.Create(Self);
  try
    //To display the form
    NewForm.ShowModal;
  finally
    NewForm.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  with Tform3.Create(Self) do
  begin
    try
    //if user press cancel or X button terminate application
      if ShowModal<>MrOK then
        Application.terminate;
    finally
      Free;
    end;
  end;
  // Assigning the Timage object images
  imgDailyWorkoutPlan.Picture.LoadFromFile('images\DailyWorkout.jpeg');
  imgDietFood.Picture.LoadFromFile('images\DietFood.jpeg');
  imgBMI.Picture.LoadFromFile('images\BMI.jpg');
  imgFoodReceipies.Picture.LoadFromFile('images\DietFood.jpeg');
  //qMyFoodReceipies.open;
end;

procedure TForm1.ImgBMIClick(Sender: TObject);
begin
  //This will open this url in the default browser
  ShellExecute(0, 'open', 'https://www.cdc.gov/bmi/adult-calculator/index.html', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm1.imgDailyWorkoutPlanClick(Sender: TObject);
var
  NewForm: Tform2;
begin
  NewForm := Tform2.Create(Self);
  try
  //Assigning name to the form
    NewForm.caption:='DailyWorkOutPlan';
    NewForm.MyDailyWorkout.visible:=True;
    NewForm.ShowModal;
  finally
    NewForm.Free;
  end;
end;

procedure TForm1.imgDietFoodClick(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://www.betterhealth.vic.gov.au/', nil, nil, SW_SHOWNORMAL);
end;


procedure TForm1.imgFoodReceipiesClick(Sender: TObject);
var
  NewForm: Tform2;
begin
  NewForm := Tform2.Create(Self);
  try
    NewForm.Caption:='MyFoodReceipies';
    NewForm.dbgFoodReceipies.visible:=True;
    NewForm.ShowModal;
  finally
    NewForm.Free;
  end;
end;

end.
