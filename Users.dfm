object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Users'
  ClientHeight = 353
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 12
  object BtnAdd: TButton
    Left = 6
    Top = 326
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Add'
    TabOrder = 1
    OnClick = BtnAddClick
  end
  object BtnDelete: TButton
    Left = 77
    Top = 326
    Width = 60
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Delete'
    TabOrder = 0
    OnClick = BtnDeleteClick
  end
  object dbgUsers: TDBGrid
    Left = 0
    Top = 0
    Width = 499
    Height = 321
    DataSource = Form1.dsUsers
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -10
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnDblClick = dbgUsersDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'UserName'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Password'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IsAdmin'
        ReadOnly = True
        Visible = True
      end>
  end
end
