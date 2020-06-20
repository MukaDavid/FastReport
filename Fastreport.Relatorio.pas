unit Fastreport.Relatorio;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, Datasnap.DBClient, frxExportRTF, frxExportHTML, frxExportBaseDialog, frxExportPDF,
  Winapi.Windows, shellapi;

type
  TdmdRelatorio = class(TDataModule)
    FDConnection1: TFDConnection;
    qryClientes: TFDQuery;
    frxdtsClientes: TfrxDBDataset;
    frxReport1: TfrxReport;
    qryClienteContrato: TFDQuery;
    frxdtsClienteContrato: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    qryClienteContratoCLIENTECODIGOINTERNO: TStringField;
    qryClienteContratoCLIENTENOME: TStringField;
    qryClienteContratoCLIENTEEMAIL: TStringField;
    qryClienteContratoENDERECOCIDADE: TStringField;
    qryClienteContratoENDERECOUF: TStringField;
    qryClienteContratoVALORTOTAL: TFMTBCDField;
    qryClienteContratoDATAOPERACAO: TSQLTimeStampField;
    qryEmpreendimentos: TFDQuery;
    dscClientes: TDataSource;
    frxdtsEmpreendimentos: TfrxDBDataset;
    cdsDados: TClientDataSet;
    cdsDadosNome: TStringField;
    cdsDadosData: TDateTimeField;
    cdsDadosIndice: TIntegerField;
    frxdtsDados: TfrxDBDataset;
    procedure qryClienteContratoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure GerarRelClienteContratoPdf;
    procedure GerarRelClienteContratoSelecionado;
    procedure GerarRelatorioDoRegistroCorrente(pNomeArquivo:String; pfrxDBDataset: TfrxDBDataset);
    procedure GerarRelatorio(pNomeArquivo:String); overload;
    procedure GerarRelatorio(pNomeArquivo, pTitulo: String); overload;
    procedure GerarRelatorioDeArquivo;
    { Public declarations }
  end;

var
  dmdRelatorio: TdmdRelatorio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmdModule }

procedure TdmdRelatorio.GerarRelClienteContratoPdf;
begin
  frxReport1.LoadFromFile('..\..\RelClienteContrato.fr3');

  frxPDFExport1.FileName := 'RelClienteContrato4.pdf';
  frxPDFExport1.ShowDialog := False;

  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);

  WinExec('C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe RelClienteContrato4.pdf',SW_SHOWNORMAL);

end;

procedure TdmdRelatorio.GerarRelClienteContratoSelecionado;
begin
  GerarRelatorioDoRegistroCorrente('..\..\RelClienteContrato.fr3',frxdtsClienteContrato);
end;

procedure TdmdRelatorio.qryClienteContratoCalcFields(DataSet: TDataSet);
begin
  if qryClienteContrato.FieldByName('DATAOPERACAO').AsDateTime >= StrToDate('01/01/2020') then
    qryClienteContrato.FieldByName('ValorAnoAtual').AsFloat := qryClienteContrato.FieldByName('VALORTOTAL').AsFloat
  else
    qryClienteContrato.FieldByName('ValorAnoAtual').AsFloat := 0;

end;

procedure TdmdRelatorio.GerarRelatorio(pNomeArquivo: String);
begin
  frxReport1.LoadFromFile(pNomeArquivo);
  frxReport1.PrepareReport;
  frxReport1.ShowReport;
end;


procedure TdmdRelatorio.GerarRelatorio(pNomeArquivo, pTitulo: String);
begin
  frxReport1.LoadFromFile(pNomeArquivo);
  //frxReport1.PrepareReport;
  frxReport1.Report.Variables['Titulo'] := QuotedStr(pTitulo);
  frxReport1.ShowReport;
end;


procedure TdmdRelatorio.GerarRelatorioDoRegistroCorrente(pNomeArquivo: String; pfrxDBDataset: TfrxDBDataset);
begin
  pfrxDBDataset.RangeBegin := TfrxRangeBegin.rbCurrent;
  pfrxDBDataset.RangeEnd := TfrxRangeEnd.reCurrent;
  try
    frxReport1.LoadFromFile(pNomeArquivo);
    frxReport1.ShowReport;
  finally
    pfrxDBDataset.RangeBegin := TfrxRangeBegin.rbFirst;
    pfrxDBDataset.RangeEnd := TfrxRangeEnd.reLast;
  end;
end;


procedure TdmdRelatorio.GerarRelatorioDeArquivo;
var
  lArquivo, lLinha: TStringList;
  li : integer;
begin
  cdsDados.Close;
  cdsDados.CreateDataSet;

  lArquivo:= TStringList.Create;
  lLinha:= TStringList.Create;
  lLinha.Delimiter := ';';

  lArquivo.LoadFromFile('..\..\dados.txt');
  for li := 0 to lArquivo.Count - 1 do
  begin
    lLinha.DelimitedText := lArquivo[li];
    cdsDados.Append;
    cdsDadosNome.Value := lLinha[0];
    cdsDadosData.Value := StrToDate(lLinha[1]);
    cdsDadosIndice.Value := StrToInt(lLinha[2]);
    cdsDados.Post;
  end;
  frxReport1.Report.Variables['Titulo'] := QuotedStr('Listagem de dados');
  frxReport1.LoadFromFile('..\..\RelDados.fr3');
  frxReport1.ShowReport;

  lArquivo.free;
  lLinha.free;

end;

end.
