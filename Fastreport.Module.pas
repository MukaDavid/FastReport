unit Fastreport.Module;

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
  TdmdModule = class(TDataModule)
    FDConnection1: TFDConnection;
    qryClientes: TFDQuery;
    frxdtsClientes: TfrxDBDataset;
    frxReport1: TfrxReport;
    qryClienteContrato: TFDQuery;
    frxdtsClienteContrato: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
  private
    { Private declarations }
  public
    procedure GerarRelClienteContratoPdf;
    { Public declarations }
  end;

var
  dmdModule: TdmdModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmdModule }

procedure TdmdModule.GerarRelClienteContratoPdf;
begin
  frxReport1.LoadFromFile('..\..\RelClienteContrato.fr3');

  frxPDFExport1.FileName := '..\..\RelClienteContrato3.pdf';
  frxPDFExport1.ShowDialog := False;

  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
  WinExec(pansichar('..\..\RelClienteContrato3.pdf'),SW_MAXIMIZE);
end;

end.
