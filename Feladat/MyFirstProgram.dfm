object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'My Text Editor'
  ClientHeight = 818
  ClientWidth = 1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = PopulateComboBoxes
  TextHeight = 15
  object Termékek: TLabel
    Left = 80
    Top = 72
    Width = 50
    Height = 15
    Caption = 'Term'#233'kek'
    Color = clInactiveCaptionText
    ParentColor = False
  end
  object Label1: TLabel
    Left = 601
    Top = 289
    Width = 50
    Height = 15
    Caption = 'Term'#233'kek'
  end
  object Label2: TLabel
    Left = 8
    Top = 495
    Width = 50
    Height = 15
    Caption = 'Partnerek'
  end
  object Label3: TLabel
    Left = 880
    Top = 355
    Width = 63
    Height = 15
    Caption = 'Engedm'#233'ny'
  end
  object Label5: TLabel
    Left = 752
    Top = 355
    Width = 47
    Height = 15
    Caption = 'Egys'#233'g'#225'r'
  end
  object Label6: TLabel
    Left = 601
    Top = 355
    Width = 58
    Height = 15
    Caption = 'Mennyis'#233'g'
  end
  object Label7: TLabel
    Left = 879
    Top = 414
    Width = 49
    Height = 15
    Caption = 'Term'#233'kID'
  end
  object Label8: TLabel
    Left = 750
    Top = 414
    Width = 49
    Height = 15
    Caption = 'PartnerID'
  end
  object Label9: TLabel
    Left = 568
    Top = 550
    Width = 62
    Height = 15
    Caption = 'Megjegyz'#233's'
  end
  object Label11: TLabel
    Left = 221
    Top = 495
    Width = 78
    Height = 15
    Caption = 'Partner C'#237'me : '
  end
  object Label12: TLabel
    Left = 601
    Top = 414
    Width = 103
    Height = 15
    Caption = #193'r kedvezm'#233'nnyel: '
  end
  object Label13: TLabel
    Left = 752
    Top = 288
    Width = 51
    Height = 15
    Caption = 'Netto '#193'r :'
  end
  object Label14: TLabel
    Left = 879
    Top = 288
    Width = 54
    Height = 15
    Caption = 'Brutto '#193'r :'
  end
  object Label4: TLabel
    Left = 336
    Top = 724
    Width = 96
    Height = 15
    Caption = #214'sszesen (nett'#243') : '
  end
  object Label15: TLabel
    Left = 336
    Top = 768
    Width = 161
    Height = 15
    Caption = ' '#220'gyfelek '#246'sszforgalma(nett'#243'):'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 33
    Width = 537
    Height = 185
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'term'#233'k_id'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cikksz'#225'm'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'megnevez'#233's'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #225'fa_kulcs'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'elad'#225'si_egys'#233'g'#225'r'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 224
    Width = 240
    Height = 25
    DataSource = DataSource
    TabOrder = 1
  end
  object DBNavigator2: TDBNavigator
    Left = 0
    Top = 719
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object Button1: TButton
    Left = 872
    Top = 764
    Width = 215
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 3
    OnClick = QuitApplication
  end
  object ComboBox1: TComboBox
    Left = 601
    Top = 310
    Width = 145
    Height = 23
    ItemIndex = 0
    TabOrder = 4
    Text = 'term'#233'k'
    OnChange = AssignTermék
    Items.Strings = (
      'Ferike')
  end
  object ComboBox2: TComboBox
    Left = 8
    Top = 516
    Width = 145
    Height = 23
    TabOrder = 5
    Text = 'partner'
    OnChange = AssignPartner
  end
  object Edit1: TEdit
    Left = 879
    Top = 435
    Width = 121
    Height = 23
    TabOrder = 6
    Text = 'Term'#233'k azonos'#237't'#243
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 270
    Width = 537
    Height = 188
    DataSource = DataSource2
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'partner_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'n'#233'v'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ir'#225'ny'#237't'#243'sz'#225'm'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'utca'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'h'#225'zsz'#225'm'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'engedm'#233'ny'
        Width = 100
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 752
    Top = 435
    Width = 121
    Height = 23
    TabOrder = 8
    Text = 'Partner azonos'#237't'#243
  end
  object Label10: TEdit
    Left = 879
    Top = 376
    Width = 121
    Height = 23
    TabOrder = 9
    Text = 'Engedm'#233'ny'
    OnChange = ChangeEngedmény
  end
  object Edit3: TEdit
    Left = 752
    Top = 376
    Width = 121
    Height = 23
    TabOrder = 10
    Text = 'Egys'#233'g'#225'r'
  end
  object Edit4: TEdit
    Left = 601
    Top = 376
    Width = 121
    Height = 23
    TabOrder = 11
    Text = 'Mennyis'#233'g'
    OnChange = AssignMennyiség
  end
  object Memo1: TMemo
    Left = 568
    Top = 571
    Width = 519
    Height = 142
    Hint = 'Megjegyz'#233's'
    Lines.Strings = (
      'Memo1')
    TabOrder = 12
    OnChange = AssignMegjegyzés
  end
  object Button2: TButton
    Left = 606
    Top = 764
    Width = 235
    Height = 25
    Caption = 'T'#233'tel Hozz'#225'ad'#225'sa'
    TabOrder = 13
    OnClick = CreateTétel
  end
  object Edit5: TEdit
    Left = 221
    Top = 516
    Width = 265
    Height = 23
    TabOrder = 14
    Text = 'C'#237'm'
  end
  object Edit6: TEdit
    Left = 752
    Top = 309
    Width = 121
    Height = 23
    TabOrder = 15
    Text = 'Nett'#243' '#193'r :'
  end
  object Edit7: TEdit
    Left = 879
    Top = 309
    Width = 121
    Height = 23
    TabOrder = 16
    Text = 'Brutt'#243' '#193'r :'
  end
  object Edit8: TEdit
    Left = 601
    Top = 435
    Width = 121
    Height = 23
    TabOrder = 17
    Text = 'FT'
  end
  object DBNavigator3: TDBNavigator
    Left = 0
    Top = 464
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 18
  end
  object Edit9: TEdit
    Left = 336
    Top = 745
    Width = 193
    Height = 23
    TabOrder = 19
    Text = #214'sszesen'
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 571
    Width = 537
    Height = 142
    DataSource = DataSource1
    TabOrder = 20
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 't'#233'tel_id'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partner_n'#233'v'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'term'#233'k'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'egys'#233'g'#225'r'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'netto_forgamli_'#233'rt'#233'k'
        Width = 100
        Visible = True
      end>
  end
  object Edit10: TEdit
    Left = 336
    Top = 787
    Width = 193
    Height = 23
    TabOrder = 21
    Text = #214'sszforgalom'
  end
  object DBGrid4: TDBGrid
    Left = 568
    Top = 33
    Width = 519
    Height = 185
    DataSource = DataSource3
    TabOrder = 22
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 't'#233'tel_id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partner_id'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'partner_n'#233'v'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'term'#233'k'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mennyis'#233'g'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'egys'#233'g'#225'r'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'engedm'#233'ny'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'megjegyz'#233's'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'term'#233'k_id'
        Width = 50
        Visible = True
      end>
  end
  object DBNavigator4: TDBNavigator
    Left = 568
    Top = 224
    Width = 240
    Height = 25
    DataSource = DataSource3
    TabOrder = 23
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Vector;Data Source=DESKTOP-BVUD28V\MSSQ' +
      'LSERVER01;Use Procedure for Prepare=1;Auto Translate=True;Packet' +
      ' Size=4096;Workstation ID=DESKTOP-BVUD28V;Use Encryption for Dat' +
      'a=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 360
    Top = 112
  end
  object DataSource: TDataSource
    DataSet = ADOQuery1
    Left = 280
    Top = 96
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [term'#233'k_id]'
      '      ,[cikksz'#225'm]'
      '      ,[megnevez'#233's]'
      '      ,['#225'fa_kulcs]'
      '      ,[elad'#225'si_egys'#233'g'#225'r]'
      '  FROM [Vector].[production].[Term'#233'kek]')
    Left = 232
    Top = 104
    object ADOQuery1termék_id: TAutoIncField
      FieldName = 'term'#233'k_id'
      ReadOnly = True
    end
    object ADOQuery1cikkszám: TIntegerField
      FieldName = 'cikksz'#225'm'
    end
    object ADOQuery1megnevezés: TStringField
      FieldName = 'megnevez'#233's'
      Size = 255
    end
    object ADOQuery1áfa_kulcs: TBCDField
      FieldName = #225'fa_kulcs'
      Precision = 4
      Size = 2
    end
    object ADOQuery1eladási_egységár: TBCDField
      FieldName = 'elad'#225'si_egys'#233'g'#225'r'
      Precision = 5
      Size = 2
    end
  end
  object ADOQuery2: TADOQuery
    Connection = Tételek
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select * from Vector.production.T'#233'telek'
      '')
    Left = 304
    Top = 624
  end
  object Tételek: TADOConnection
    ConnectionString = 'Provider=SQLOLEDB.1'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 208
    Top = 624
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 144
    Top = 624
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource
    Parameters = <>
    SQL.Strings = (
      'SELECT megnevez'#233's FROM [Vector].[production].[Term'#233'kek]')
    Left = 680
    Top = 304
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      #9'  [n'#233'v]'
      '  FROM [Vector].[production].[Partnerek]')
    Left = 104
    Top = 496
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Vector.production.Partnerek')
    Left = 176
    Top = 296
  end
  object ADOConnection3: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=Vector;Data Source=DESKTOP-BVUD28V\MSSQ' +
      'LSERVER01'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 360
    Top = 296
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery5
    Left = 288
    Top = 296
  end
  object ADOQuery6: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT partner_id  FROM Vector.production.Partnerek')
    Left = 800
    Top = 432
  end
  object ADOQuery7: TADOQuery
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Vector.production.Partnerek')
    Left = 680
    Top = 368
  end
  object ADOQuery8: TADOQuery
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT engedm'#233'ny FROM Vector.production.Partnerek')
    Left = 952
    Top = 376
  end
  object ADOQuery9: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT elad'#225'si_egys'#233'g'#225'r  FROM Vector.production.Term'#233'kek')
    Left = 816
    Top = 376
  end
  object ADOQuery10: TADOQuery
    Connection = Tételek
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Vector.production.T'#233'telek')
    Left = 944
    Top = 448
  end
  object ADOQuery11: TADOQuery
    Active = True
    Connection = ADOConnection3
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Vector.production.Partnerek')
    Left = 352
    Top = 504
  end
  object ADOQuery12: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Vector.production.Term'#233'kek')
    Left = 816
    Top = 296
  end
  object ADOQuery13: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Vector.production.Term'#233'kek')
    Left = 1048
    Top = 464
  end
  object ADOQuery14: TADOQuery
    Connection = Tételek
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Select netto_forgamli_'#233'rt'#233'k From Vector.production.T'#233'telek')
    Left = 472
    Top = 784
  end
  object ADOQuery15: TADOQuery
    Connection = Tételek
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Vector.production.T'#233'telek')
    Left = 952
    Top = 48
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery15
    Left = 816
    Top = 80
  end
end
