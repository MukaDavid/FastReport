object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 513
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnRelCliente: TButton
    Left = 16
    Top = 24
    Width = 153
    Height = 25
    Caption = 'Relat'#243'rio de Cliente Atual'
    TabOrder = 0
    OnClick = btnRelClienteClick
  end
  object btnRelClienteContratoPDF: TButton
    Left = 16
    Top = 72
    Width = 193
    Height = 25
    Caption = 'Relat'#243'rio Cliente x Contrato PDF'
    TabOrder = 1
    OnClick = btnRelClienteContratoPDFClick
  end
  object btnRelClienteContrato: TButton
    Left = 352
    Top = 24
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio Cliente x Contrato'
    TabOrder = 2
    OnClick = btnRelClienteContratoClick
  end
  object btnRelClienteContratoSelecionado: TButton
    Left = 352
    Top = 55
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio Cliente x Contrato (Reg Selecionado)'
    TabOrder = 3
    OnClick = btnRelClienteContratoSelecionadoClick
  end
  object btnRelTotaoContratosUF: TButton
    Left = 352
    Top = 86
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio de total de contratos por UF'
    TabOrder = 4
    OnClick = btnRelTotaoContratosUFClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 200
    Width = 281
    Height = 145
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object Button1: TButton
    Left = 320
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 320
    Top = 200
    Width = 289
    Height = 145
    DataSource = dscDados
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Indice'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 359
    Width = 609
    Height = 130
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIENTECODIGOINTERNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTENOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTEEMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECOCIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECOUF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORTOTAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAOPERACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalUf'
        Width = 85
        Visible = True
      end>
  end
  object dscDados: TDataSource
    DataSet = dmdRelatorio.cdsDados
    Left = 160
    Top = 128
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'idxENDERECOUF'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'CLIENTECODIGOINTERNO'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CLIENTENOME'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'CLIENTEEMAIL'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENDERECOCIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDERECOUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'VALORTOTAL'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DATAOPERACAO'
        Attributes = [faReadonly]
        DataType = ftTimeStamp
      end>
    IndexDefs = <
      item
        Name = 'idxENDERECOUF'
        Fields = 'ENDERECOUF'
        GroupingLevel = 1
      end>
    IndexName = 'idxENDERECOUF'
    Params = <>
    ProviderName = 'DataSetProvider1'
    StoreDefs = True
    Left = 88
    Top = 128
    object ClientDataSet1CLIENTECODIGOINTERNO: TStringField
      FieldName = 'CLIENTECODIGOINTERNO'
      Origin = 'CLIENTECODIGOINTERNO'
      Size = 9
    end
    object ClientDataSet1CLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'CLIENTENOME'
      Size = 150
    end
    object ClientDataSet1CLIENTEEMAIL: TStringField
      FieldName = 'CLIENTEEMAIL'
      Origin = 'CLIENTEEMAIL'
      Size = 100
    end
    object ClientDataSet1ENDERECOCIDADE: TStringField
      FieldName = 'ENDERECOCIDADE'
      Origin = 'ENDERECOCIDADE'
      Size = 40
    end
    object ClientDataSet1ENDERECOUF: TStringField
      FieldName = 'ENDERECOUF'
      Origin = 'ENDERECOUF'
      Size = 2
    end
    object ClientDataSet1VALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object ClientDataSet1DATAOPERACAO: TSQLTimeStampField
      FieldName = 'DATAOPERACAO'
      Origin = 'DATAOPERACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object ClientDataSet1TotalUf: TAggregateField
      FieldName = 'TotalUf'
      Active = True
      DisplayName = ''
      Expression = 'sum(ValorTotal)'
      GroupingLevel = 1
      IndexName = 'idxENDERECOUF'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = dmdRelatorio.qryClienteContrato
    Left = 240
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 240
    Top = 80
  end
end
