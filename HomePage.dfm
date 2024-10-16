object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'HomePage'
  ClientHeight = 410
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 105
    Top = 0
    Width = 409
    Height = 41
    BorderStyle = bsSingle
    Caption = 'HEALTHY LIVING PROGRAM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 56
    Width = 300
    Height = 170
    BorderStyle = bsSingle
    TabOrder = 1
    object imgDailyWorkoutPlan: TImage
      Left = 1
      Top = 50
      Width = 294
      Height = 115
      Align = alClient
      Stretch = True
      OnClick = imgDailyWorkoutPlanClick
      ExplicitLeft = 103
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 294
      Height = 49
      Align = alTop
      BorderStyle = bsSingle
      Caption = 'Daily Workout Plan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 307
    Top = 56
    Width = 300
    Height = 170
    BorderStyle = bsSingle
    TabOrder = 2
    object imgFoodReceipies: TImage
      Left = 1
      Top = 50
      Width = 294
      Height = 115
      Align = alClient
      Stretch = True
      OnClick = imgFoodReceipiesClick
      ExplicitLeft = 96
      ExplicitTop = 32
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 294
      Height = 49
      Align = alTop
      BorderStyle = bsSingle
      Caption = 'Healthy Food Recipies'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 1
    Top = 240
    Width = 300
    Height = 170
    BorderStyle = bsSingle
    TabOrder = 3
    object imgDietFood: TImage
      Left = 1
      Top = 50
      Width = 294
      Height = 115
      Align = alClient
      Stretch = True
      OnClick = imgDietFoodClick
      ExplicitLeft = 96
      ExplicitTop = 32
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 294
      Height = 49
      Align = alTop
      BorderStyle = bsSingle
      Caption = 'Diet Program'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel5: TPanel
    Left = 307
    Top = 240
    Width = 300
    Height = 170
    BorderStyle = bsSingle
    TabOrder = 4
    object ImgBMI: TImage
      Left = 1
      Top = 50
      Width = 294
      Height = 115
      Align = alClient
      Stretch = True
      OnClick = ImgBMIClick
      ExplicitLeft = 96
      ExplicitTop = 32
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 294
      Height = 49
      Align = alTop
      BorderStyle = bsSingle
      Caption = 'Calculate Your BMI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object BtnUsers: TButton
    Left = 524
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Users'
    TabOrder = 5
    Visible = False
    OnClick = BtnUsersClick
  end
  object idb: TFDConnection
    Params.Strings = (
      'Database=C:\HealthApp1\MyHealthApp.db'
      'DriverID=SQLite')
    TxOptions.Isolation = xiRepeatableRead
    LoginPrompt = False
    Left = 296
    Top = 208
  end
  object qWorkRead: TFDQuery
    Connection = idb
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    Left = 256
    Top = 256
  end
  object qMyFoodReceipies: TFDQuery
    Connection = idb
    SQL.Strings = (
      'select * from MyFoodReceipes')
    Left = 248
    Top = 144
    object qMyFoodReceipiesID: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qMyFoodReceipiesName: TStringField
      DisplayWidth = 50
      FieldName = 'Name'
      Origin = 'Name'
      Required = True
      Size = 50
    end
    object qMyFoodReceipiesReceipe: TStringField
      DisplayWidth = 255
      FieldName = 'Receipe'
      Origin = 'Receipe'
      Size = 255
    end
  end
  object dsMyFoodReceipies: TDataSource
    DataSet = qMyFoodReceipies
    Left = 200
    Top = 312
  end
  object qUsers: TFDQuery
    Connection = idb
    SQL.Strings = (
      'Select * from User')
    Left = 336
    Top = 144
    object qUsersUsername: TStringField
      DisplayWidth = 50
      FieldName = 'Username'
      Origin = 'Username'
      Required = True
    end
    object qUsersPassword: TStringField
      DisplayWidth = 50
      FieldName = 'Password'
      Origin = 'Password'
      Required = True
    end
    object qUsersID: TFDAutoIncField
      DisplayWidth = 10
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
      Visible = False
    end
    object qUsersIsAdmin: TBooleanField
      DisplayWidth = 5
      FieldName = 'IsAdmin'
      Origin = 'IsAdmin'
      Visible = False
    end
  end
  object dsUsers: TDataSource
    DataSet = qUsers
    Left = 440
    Top = 296
  end
  object qWorkWrite: TFDQuery
    Connection = idb
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'User'
    Left = 304
    Top = 216
  end
end
