object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 509
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 509
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 673
    ExplicitHeight = 414
  end
  object Panel2: TPanel
    Left = 672
    Top = 0
    Width = 102
    Height = 509
    Align = alRight
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitLeft = 736
    ExplicitHeight = 414
    object Button3: TButton
      Left = 6
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Page1'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 6
      Top = 47
      Width = 75
      Height = 25
      Caption = 'Page1-Vue'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 6
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Page2'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button4: TButton
      Left = 6
      Top = 152
      Width = 83
      Height = 25
      Caption = 'BindJSFunction'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
end
