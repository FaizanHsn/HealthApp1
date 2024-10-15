object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Signup'
  ClientHeight = 160
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
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
  object Label3: TLabel
    Left = 19
    Top = 83
    Width = 81
    Height = 12
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Confirm Password:'
  end
  object EditUsername: TEdit
    Left = 120
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
    Left = 120
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
  object EditConfirmPassword: TEdit
    Left = 120
    Top = 80
    Width = 160
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    PasswordChar = '*'
    TabOrder = 2
  end
  object BtnSignup: TButton
    Left = 120
    Top = 112
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
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
