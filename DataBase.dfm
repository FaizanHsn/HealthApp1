object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form2'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object dbgFoodReceipies: TwwDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Selected.Strings = (
      'ID'#9'10'#9'ID'#9'T'#9
      'Name'#9'50'#9'Name'#9'T'#9
      'Receipe'#9'255'#9'Receipe'#9'T'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    Align = alClient
    DataSource = Form1.dsMyFoodReceipies
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    Visible = False
    ExplicitWidth = 622
    ExplicitHeight = 433
  end
  object MyDailyWorkOut: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    TabOrder = 1
    Visible = False
    ExplicitWidth = 622
    ExplicitHeight = 433
    object WorkOut1: TImage
      Left = 16
      Top = 16
      Width = 145
      Height = 169
      Stretch = True
      OnClick = WorkOut1Click
    end
    object WorkOut2: TImage
      Left = 440
      Top = 16
      Width = 145
      Height = 169
      Stretch = True
      OnClick = WorkOut2Click
    end
    object WorkOut3: TImage
      Left = 224
      Top = 16
      Width = 145
      Height = 169
      Stretch = True
      OnClick = WorkOut3Click
    end
    object WorkOut4: TImage
      Left = 16
      Top = 232
      Width = 145
      Height = 169
      Stretch = True
      OnClick = WorkOut4Click
    end
    object WorkOut5: TImage
      Left = 224
      Top = 232
      Width = 145
      Height = 169
      Stretch = True
      OnClick = WorkOut5Click
    end
    object WorkOut6: TImage
      Left = 440
      Top = 232
      Width = 153
      Height = 169
      Stretch = True
      OnClick = WorkOut6Click
    end
    object Label1: TLabel
      Left = 16
      Top = 191
      Width = 104
      Height = 20
      Caption = 'Cardio Workout'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 440
      Top = 191
      Width = 93
      Height = 20
      Caption = 'Weight Lifting'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 224
      Top = 191
      Width = 93
      Height = 20
      Caption = 'Yoga Workout'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 407
      Width = 109
      Height = 20
      Caption = 'FatLoss WorkOut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 224
      Top = 407
      Width = 93
      Height = 20
      Caption = 'BodyBuilding '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 440
      Top = 407
      Width = 136
      Height = 20
      Caption = 'LowerBody WorkOut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
end
