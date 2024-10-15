object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'HomePage'
  ClientHeight = 328
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 84
    Top = 0
    Width = 327
    Height = 33
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BorderStyle = bsSingle
    Caption = 'HEALTHY LIVING PROGRAM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 240
    Height = 136
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BorderStyle = bsSingle
    TabOrder = 1
    object imgDailyWorkoutPlan: TImage
      Left = 1
      Top = 50
      Width = 234
      Height = 81
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
      Width = 234
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
    Left = 246
    Top = 45
    Width = 240
    Height = 136
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BorderStyle = bsSingle
    TabOrder = 2
    object imgFoodReceipies: TImage
      Left = 1
      Top = 50
      Width = 234
      Height = 81
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
      Width = 234
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
    Top = 192
    Width = 240
    Height = 136
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BorderStyle = bsSingle
    TabOrder = 3
    object imgDietFood: TImage
      Left = 1
      Top = 50
      Width = 234
      Height = 81
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
      Width = 234
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
    Left = 246
    Top = 192
    Width = 240
    Height = 136
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    BorderStyle = bsSingle
    TabOrder = 4
    object ImgBMI: TImage
      Left = 1
      Top = 50
      Width = 234
      Height = 81
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
      Width = 234
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
    Left = 419
    Top = 6
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Users'
    TabOrder = 5
    Visible = False
    OnClick = BtnUsersClick
  end
  object idb: TFDConnection
    Params.Strings = (
      'Database=C:\HealthApp1\Database1.accdb'
      'DriverID=MSAcc')
    TxOptions.Isolation = xiRepeatableRead
    Connected = True
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
      'select * from [MyFoodReceipes]')
    Left = 248
    Top = 144
    object qMyFoodReceipiesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qMyFoodReceipiesName: TWideStringField
      DisplayWidth = 40
      FieldName = 'Name'
      Origin = 'Name'
      Size = 255
    end
    object qMyFoodReceipiesReceipe: TWideStringField
      DisplayWidth = 100
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
      'Select * from [User]')
    Left = 336
    Top = 144
    object qUsersID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qUsersUserName: TWideStringField
      DisplayWidth = 25
      FieldName = 'UserName'
      Origin = 'UserName'
      Size = 255
    end
    object qUsersPassword: TWideStringField
      DisplayWidth = 60
      FieldName = 'Password'
      Origin = '[Password]'
      Size = 255
    end
    object qUsersIsAdmin: TBooleanField
      FieldName = 'IsAdmin'
      Origin = 'IsAdmin'
      Required = True
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
    Left = 232
    Top = 232
  end
end
