object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 577
  ClientWidth = 921
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
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
    Left = 264
    Top = 32
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio Cliente x Contrato'
    TabOrder = 2
    OnClick = btnRelClienteContratoClick
  end
  object btnRelClienteContratoSelecionado: TButton
    Left = 264
    Top = 63
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio Cliente x Contrato (Reg Selecionado)'
    TabOrder = 3
    OnClick = btnRelClienteContratoSelecionadoClick
  end
  object btnRelTotaoContratosUF: TButton
    Left = 264
    Top = 94
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio de total de contratos por UF'
    TabOrder = 4
    OnClick = btnRelTotaoContratosUFClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 234
    Width = 201
    Height = 145
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object BtnRelDadosCSV: TButton
    Left = 8
    Top = 169
    Width = 153
    Height = 25
    Caption = 'Relat'#243'rio de Dados CSV'
    TabOrder = 6
    OnClick = BtnRelDadosCSVClick
  end
  object DBGrid1: TDBGrid
    Left = 224
    Top = 234
    Width = 225
    Height = 145
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
    Top = 393
    Width = 441
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
  object Button1: TButton
    Left = 264
    Top = 127
    Width = 241
    Height = 25
    Caption = 'Relat'#243'rio Emprendimentos X Contratos'
    TabOrder = 9
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 121
    Width = 121
    Height = 21
    DataField = 'DATAOPERACAO'
    DataSource = DataSource1
    TabOrder = 10
  end
  object btnListagemContrato: TButton
    Left = 264
    Top = 162
    Width = 241
    Height = 25
    Caption = 'Listagem de Contratos'
    TabOrder = 11
    OnClick = btnListagemContratoClick
  end
  object lbxRelatorios: TListBox
    Left = 455
    Top = 234
    Width = 145
    Height = 193
    ItemHeight = 13
    TabOrder = 12
  end
  object btnListarRelatorios: TButton
    Left = 455
    Top = 464
    Width = 145
    Height = 25
    Caption = 'Listar Relat'#243'rios'
    TabOrder = 13
    OnClick = btnListarRelatoriosClick
  end
  object btnExecutarRel: TButton
    Left = 455
    Top = 433
    Width = 145
    Height = 25
    Caption = 'Visualizar Relat'#243'rio'
    TabOrder = 14
    OnClick = btnExecutarRelClick
  end
  object btnAlterarComponente: TButton
    Left = 264
    Top = 193
    Width = 153
    Height = 25
    Caption = 'Alterar Componente'
    TabOrder = 15
    OnClick = btnAlterarComponenteClick
  end
  object ClientDataSet1: TClientDataSet
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
    Left = 40
    Top = 408
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
    Left = 128
    Top = 408
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 224
    Top = 408
  end
  object frxReport1: TfrxReport
    Version = '6.7.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44000.840901250000000000
    ReportOptions.LastChange = 44018.518715659720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 256
    Datasets = <
      item
        DataSet = dmdRelatorio.frxdtsClientes
        DataSetName = 'frxdtsClientes'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Titulo'
        Value = #39'Telat'#243'rio de Clientes'#39
      end>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220472000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 175.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTECODIGOINTERNO')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 175.000000000000000000
          Width = 163.825156025381000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTENOME')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 338.825156025381000000
          Width = 141.803822784700000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTEEMAIL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 480.628978810081000000
          Width = 140.481257410391000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERECOCIDADE')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 621.110236220472000000
          Width = 97.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERECOUF')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        DataSet = dmdRelatorio.frxdtsClientes
        DataSetName = 'frxdtsClientes'
        RowCount = 0
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 175.000000000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTECODIGOINTERNO'
          DataSet = dmdRelatorio.frxdtsClientes
          DataSetName = 'frxdtsClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdtsClientes."CLIENTECODIGOINTERNO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 175.000000000000000000
          Width = 163.825156025381000000
          Height = 18.897650000000000000
          DataField = 'CLIENTENOME'
          DataSet = dmdRelatorio.frxdtsClientes
          DataSetName = 'frxdtsClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdtsClientes."CLIENTENOME"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 338.825156025381000000
          Width = 141.803822784700000000
          Height = 18.897650000000000000
          DataField = 'CLIENTEEMAIL'
          DataSet = dmdRelatorio.frxdtsClientes
          DataSetName = 'frxdtsClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdtsClientes."CLIENTEEMAIL"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 480.628978810081000000
          Width = 140.481257410391000000
          Height = 18.897650000000000000
          DataField = 'ENDERECOCIDADE'
          DataSet = dmdRelatorio.frxdtsClientes
          DataSetName = 'frxdtsClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdtsClientes."ENDERECOCIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 621.110236220472000000
          Width = 97.000000000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECOUF'
          DataSet = dmdRelatorio.frxdtsClientes
          DataSetName = 'frxdtsClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdtsClientes."ENDERECOUF"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 730.000000000000000000
          Top = 1.318800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[<frxdtsClientes."ID"> + <frxdtsClientes."TB_REPRESENTANTES_ID">' +
              ']')
          ParentFont = False
        end
        object frxdtsClientesID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 835.000000000000000000
          Top = 0.216450000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = dmdRelatorio.frxdtsClientes
          DataSetName = 'frxdtsClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdtsClientes."ID"]')
          ParentFont = False
        end
        object frxdtsClientesTB_REPRESENTANTES_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 931.250000000000000000
          Top = -1.181200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TB_REPRESENTANTES_ID'
          DataSet = dmdRelatorio.frxdtsClientes
          DataSetName = 'frxdtsClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdtsClientes."TB_REPRESENTANTES_ID"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
end
