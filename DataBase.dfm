object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form2'
  ClientHeight = 433
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object MyDailyWorkOut: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 433
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    TabOrder = 0
    Visible = False
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
  object dbgMyFoodReceipies: TDBGrid
    Left = 0
    Top = 0
    Width = 609
    Height = 433
    Align = alClient
    DataSource = Form1.dsMyFoodReceipies
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -10
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Receipe'
        Visible = True
      end>
  end
end
