object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 401
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ID: TLabel
    Left = 32
    Top = 225
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label1: TLabel
    Left = 400
    Top = 227
    Width = 131
    Height = 13
    Caption = 'Enter ID (integer) to delete'
  end
  object Label2: TLabel
    Left = 394
    Top = 357
    Width = 311
    Height = 26
    Caption = 
      'No request response in Delete process. Need to upgrade to later ' +
      'version of Indy where this has been included'
    WordWrap = True
  end
  object Label3: TLabel
    Left = 55
    Top = 0
    Width = 562
    Height = 23
    Caption = 'Client CRUD INDY Functions Sending and Receiving encoded Json '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnput: TButton
    Left = 32
    Top = 189
    Width = 75
    Height = 25
    Caption = 'Put'
    TabOrder = 0
    OnClick = btnputClick
  end
  object Memo1: TMemo
    Left = 32
    Top = 78
    Width = 313
    Height = 105
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object btnpost: TButton
    Left = 32
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Post'
    TabOrder = 2
    OnClick = btnpostClick
  end
  object Memo2: TMemo
    Left = 32
    Top = 249
    Width = 313
    Height = 105
    Lines.Strings = (
      'Memo2')
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 55
    Top = 222
    Width = 52
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object btnget: TButton
    Left = 400
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Get'
    TabOrder = 5
    OnClick = btngetClick
  end
  object btndelete: TButton
    Left = 400
    Top = 189
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 6
    OnClick = btndeleteClick
  end
  object Memo3: TMemo
    Left = 400
    Top = 78
    Width = 313
    Height = 105
    Lines.Strings = (
      'Memo3')
    TabOrder = 7
  end
  object Edit2: TEdit
    Left = 545
    Top = 221
    Width = 58
    Height = 21
    TabOrder = 8
    Text = 'Edit2'
  end
  object btnreset: TButton
    Left = 305
    Top = 29
    Width = 75
    Height = 25
    Caption = 'Reset'
    TabOrder = 9
    OnClick = btnresetClick
  end
  object Memo4: TMemo
    Left = 401
    Top = 248
    Width = 311
    Height = 106
    TabOrder = 10
  end
end
