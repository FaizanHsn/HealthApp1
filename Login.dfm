object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 126
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 19
    Top = 19
    Width = 46
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Username:'
  end
  object Label2: TLabel
    Left = 19
    Top = 51
    Width = 43
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Password:'
  end
  object EditUsername: TEdit
    Left = 80
    Top = 16
    Width = 160
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object EditPassword: TEdit
    Left = 80
    Top = 48
    Width = 160
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    PasswordChar = '*'
    TabOrder = 1
  end
  object BtnLogin: TButton
    Left = 80
    Top = 80
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Login'
    TabOrder = 2
    OnClick = BtnLoginClick
  end
  object BtnSignUp: TButton
    Left = 160
    Top = 80
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'SignUp'
    TabOrder = 3
    OnClick = BtnSignUpClick
  end
end
