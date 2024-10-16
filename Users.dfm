object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Users'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object dbgUsers: TwwDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 401
    Selected.Strings = (
      'Username'#9'50'#9'Username'#9'T'
      'Password'#9'50'#9'Password'#9'T')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    DataSource = Form1.dsUsers
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = dbgUsersDblClick
  end
  object BtnAdd: TButton
    Left = 8
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = BtnAddClick
  end
  object BtnDelete: TButton
    Left = 96
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
    OnClick = BtnDeleteClick
  end
end
