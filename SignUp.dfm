object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Signup'
  ClientHeight = 200
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 56
    Height = 15
    Caption = 'Username:'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 53
    Height = 15
    Caption = 'Password:'
  end
  object Label3: TLabel
    Left = 24
    Top = 104
    Width = 100
    Height = 15
    Caption = 'Confirm Password:'
  end
  object EditUsername: TEdit
    Left = 150
    Top = 20
    Width = 200
    Height = 23
    TabOrder = 0
  end
  object EditPassword: TEdit
    Left = 150
    Top = 60
    Width = 200
    Height = 23
    PasswordChar = '*'
    TabOrder = 1
  end
  object EditConfirmPassword: TEdit
    Left = 150
    Top = 100
    Width = 200
    Height = 23
    PasswordChar = '*'
    TabOrder = 2
  end
  object BtnSignup: TButton
    Left = 150
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Signup'
    TabOrder = 3
    OnClick = BtnSignupClick
  end
  object qWorkWrite: TFDQuery
    Left = 192
    Top = 104
  end
  object qWorkRead: TFDQuery
    Left = 200
    Top = 112
  end
end
