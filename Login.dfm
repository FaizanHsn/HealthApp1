object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 157
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
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
  object EditUsername: TEdit
    Left = 100
    Top = 20
    Width = 200
    Height = 23
    TabOrder = 0
  end
  object EditPassword: TEdit
    Left = 100
    Top = 60
    Width = 200
    Height = 23
    PasswordChar = '*'
    TabOrder = 1
  end
  object BtnLogin: TButton
    Left = 100
    Top = 100
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = BtnLoginClick
  end
  object BtnSignUp: TButton
    Left = 200
    Top = 100
    Width = 75
    Height = 25
    Caption = 'SignUp'
    TabOrder = 3
    OnClick = BtnSignUpClick
  end
end
