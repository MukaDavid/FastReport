object dmdRelatorio: TdmdRelatorio
  OldCreateOrder = False
  Height = 311
  Width = 687
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=E:\BANCO.GDB'
      'User_Name=MUKA'
      'Password=m12345'
      'Server=sistemas.rodrigues.poa.br'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object qryClientes: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select *'
      'from clientes')
    Left = 136
    Top = 32
  end
  object frxdtsClientes: TfrxDBDataset
    UserName = 'frxdtsClientes'
    CloseDataSource = False
    DataSet = qryClientes
    BCDToCurrency = False
    Left = 136
    Top = 96
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    ParentReport = 'RelBase.fr3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44001.946621365700000000
    ReportOptions.LastChange = 44001.951108090280000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 55
    Top = 97
  end
  object qryClienteContrato: TFDQuery
    Active = True
    OnCalcFields = qryClienteContratoCalcFields
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      '  cli.CLIENTECODIGOINTERNO,'
      '  cli.CLIENTENOME,'
      '  cli.CLIENTEEMAIL,'
      '  cli.ENDERECOCIDADE,'
      '  cli.ENDERECOUF,'
      '  SUM(con.CONTRATOVALORTOTAL) VALORTOTAL,'
      '  MIN(con.CADASTRODATA) DATAOPERACAO'
      'FROM CLIENTES Cli'
      'INNER JOIN EMPREENDIMENTOS Emp ON'
      '  Emp.CLIENTES_ID = Cli.ID'
      'INNER JOIN CONTRATOS Con on'
      '  Con.EMPREENDIMENTOS_ID = Emp.ID '
      'GROUP BY cli.CLIENTECODIGOINTERNO,'
      '  cli.CLIENTENOME,'
      '  cli.CLIENTEEMAIL,'
      '  cli.ENDERECOCIDADE,'
      '  cli.ENDERECOUF'
      'order by cli.ENDERECOUF, cli.ENDERECOCIDADE')
    Left = 424
    Top = 40
    object qryClienteContratoCLIENTECODIGOINTERNO: TStringField
      FieldName = 'CLIENTECODIGOINTERNO'
      Origin = 'CLIENTECODIGOINTERNO'
      Size = 9
    end
    object qryClienteContratoCLIENTENOME: TStringField
      FieldName = 'CLIENTENOME'
      Origin = 'CLIENTENOME'
      Size = 150
    end
    object qryClienteContratoCLIENTEEMAIL: TStringField
      FieldName = 'CLIENTEEMAIL'
      Origin = 'CLIENTEEMAIL'
      Size = 100
    end
    object qryClienteContratoENDERECOCIDADE: TStringField
      FieldName = 'ENDERECOCIDADE'
      Origin = 'ENDERECOCIDADE'
      Size = 40
    end
    object qryClienteContratoENDERECOUF: TStringField
      FieldName = 'ENDERECOUF'
      Origin = 'ENDERECOUF'
      Size = 2
    end
    object qryClienteContratoVALORTOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object qryClienteContratoDATAOPERACAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATAOPERACAO'
      Origin = 'DATAOPERACAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object frxdtsClienteContrato: TfrxDBDataset
    UserName = 'frxdtsClienteContrato'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLIENTECODIGOINTERNO=CODIGO'
      'CLIENTENOME=NOME'
      'CLIENTEEMAIL=EMAIL'
      'ENDERECOCIDADE=ENDERECOCIDADE'
      'ENDERECOUF=ENDERECOUF'
      'VALORTOTAL=VALORTOTAL'
      'DATAOPERACAO=DATAOPERACAO')
    DataSet = qryClienteContrato
    BCDToCurrency = False
    Left = 424
    Top = 105
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = 'RelClienteContrato.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44000.936577777780000000
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 544
    Top = 48
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 544
    Top = 104
  end
  object frxRTFExport1: TfrxRTFExport
    FileName = 'RelCliente.rtf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44000.937366041670000000
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = False
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 544
    Top = 160
  end
  object qryEmpreendimentos: TFDQuery
    Active = True
    MasterFields = 'ID'
    DetailFields = 'ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select *'
      'from empreendimentos'
      'where clientes_id = :ID')
    Left = 280
    Top = 33
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 10
      end>
  end
  object dscClientes: TDataSource
    DataSet = qryClientes
    Left = 208
    Top = 8
  end
  object frxdtsEmpreendimentos: TfrxDBDataset
    UserName = 'frxdtsEmpreendimentos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CLIENTES_ID=CLIENTES_ID'
      'EMPREENDIMENTONOME=EMPREENDIMENTONOME'
      'EMPREENDIMENTOEND_CEP=EMPREENDIMENTOEND_CEP'
      'EMPREENDIMENTOEND_LOGRADOR=EMPREENDIMENTOEND_LOGRADOR'
      'EMPREENDIMENTOEND_NUMERO=EMPREENDIMENTOEND_NUMERO'
      'EMPREENDIMENTOEND_BAIRRO=EMPREENDIMENTOEND_BAIRRO'
      'EMPREENDIMENTOEND_CIDADE=EMPREENDIMENTOEND_CIDADE'
      'EMPREENDIMENTOEND_UF=EMPREENDIMENTOEND_UF'
      'EMPREENDIMENTOEND_GEO=EMPREENDIMENTOEND_GEO'
      'EMPREENDIMENTOSIMCAR=EMPREENDIMENTOSIMCAR'
      'CADASTROUSER=CADASTROUSER'
      'CADASTRODATA=CADASTRODATA'
      'CADASTROIP=CADASTROIP'
      'EDICAOUSER=EDICAOUSER'
      'EDICAODATA=EDICAODATA'
      'EDICAOIP=EDICAOIP'
      'EXCLUIDO=EXCLUIDO'
      'EXCLUIDOMOTIVO=EXCLUIDOMOTIVO')
    DataSet = qryEmpreendimentos
    BCDToCurrency = False
    Left = 281
    Top = 96
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 160
    object cdsDadosNome: TStringField
      FieldName = 'Nome'
    end
    object cdsDadosData: TDateTimeField
      FieldName = 'Data'
    end
    object cdsDadosIndice: TIntegerField
      FieldName = 'Indice'
    end
  end
  object frxdtsDados: TfrxDBDataset
    UserName = 'frxdtsDados'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Nome=Nome'
      'Data=Data'
      'Indice=Indice')
    DataSet = cdsDados
    BCDToCurrency = False
    Left = 44
    Top = 216
  end
end
