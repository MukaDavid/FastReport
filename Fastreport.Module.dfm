object dmdModule: TdmdModule
  OldCreateOrder = False
  Height = 270
  Width = 520
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
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44000.840901250000000000
    ReportOptions.LastChange = 44000.844912546300000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 47
    Top = 97
  end
  object qryClienteContrato: TFDQuery
    Active = True
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
      '  cli.ENDERECOUF')
    Left = 232
    Top = 32
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
    Left = 232
    Top = 97
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
    Left = 352
    Top = 40
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
    Left = 352
    Top = 96
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
    Left = 352
    Top = 152
  end
end
