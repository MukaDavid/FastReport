unit Fastreport.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  frxclass, midaslib, Datasnap.DBClient, Datasnap.Provider, frxDBSet, Vcl.Mask, Vcl.DBCtrls,
  System.IOUtils;

type
  TfrmPrincipal = class(TForm)
    btnRelCliente: TButton;
    btnRelClienteContratoPDF: TButton;
    btnRelClienteContrato: TButton;
    btnRelClienteContratoSelecionado: TButton;
    btnRelTotaoContratosUF: TButton;
    Memo1: TMemo;
    BtnRelDadosCSV: TButton;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1CLIENTECODIGOINTERNO: TStringField;
    ClientDataSet1CLIENTENOME: TStringField;
    ClientDataSet1CLIENTEEMAIL: TStringField;
    ClientDataSet1ENDERECOCIDADE: TStringField;
    ClientDataSet1ENDERECOUF: TStringField;
    ClientDataSet1VALORTOTAL: TFMTBCDField;
    ClientDataSet1DATAOPERACAO: TSQLTimeStampField;
    ClientDataSet1TotalUf: TAggregateField;
    Button1: TButton;
    DBEdit1: TDBEdit;
    frxReport1: TfrxReport;
    btnListagemContrato: TButton;
    lbxRelatorios: TListBox;
    btnListarRelatorios: TButton;
    btnExecutarRel: TButton;
    btnAlterarComponente: TButton;
    procedure btnRelClienteClick(Sender: TObject);
    procedure btnRelClienteContratoPDFClick(Sender: TObject);
    procedure btnRelClienteContratoClick(Sender: TObject);
    procedure btnRelClienteContratoSelecionadoClick(Sender: TObject);
    procedure btnRelTotaoContratosUFClick(Sender: TObject);
    procedure BtnRelDadosCSVClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure btnListagemContratoClick(Sender: TObject);
    procedure btnListarRelatoriosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnExecutarRelClick(Sender: TObject);
    procedure btnAlterarComponenteClick(Sender: TObject);
  private
    { Private declarations }
  public
    FListaRelatorios : TStringList;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Fastreport.Relatorio;



procedure TfrmPrincipal.btnListagemContratoClick(Sender: TObject);
begin
//  dmdRelatorio.GerarRelatorio('..\..\RelContratoFiltro.fr3');
  //frxReport1.LoadFromFile('..\..\RelContratoFiltro.fr3');
  frxReport1.LoadFromFile('..\..\RelClienteContrato.fr3');
  frxReport1.DesignPreviewPage;
  frxReport1.ShowReport;
end;

procedure TfrmPrincipal.btnListarRelatoriosClick(Sender: TObject);
var
  lArquivos : TArray<String>;
  lTitulo, lArquivoFR3: string;

begin
  FListaRelatorios.Clear;
  lArquivos := TDirectory.GetFiles('..\..\','*.fr3');
  for lArquivoFR3 in lArquivos do
  begin

    frxReport1.LoadFromFile(lArquivoFR3);

    if not VarIsNull(frxReport1.Report.Variables['Titulo']) then
      lTitulo := frxReport1.Report.Variables['Titulo']
    else
      lTitulo := '';

    if lTitulo <> quotedstr('') then
    begin
      lbxRelatorios.Items.Add(lTitulo);
      FListaRelatorios.Add(lArquivoFR3);
    end;
  end;


end;

procedure TfrmPrincipal.btnRelClienteClick(Sender: TObject);
begin
  dmdRelatorio.GerarRelatorio('..\..\RelCliente.fr3');
end;

procedure TfrmPrincipal.btnRelClienteContratoClick(Sender: TObject);
var
  lBookmark: TBookmark;
begin
  lBookmark := dmdRelatorio.qryClienteContrato.Bookmark;
  dmdRelatorio.GerarRelatorio('..\..\RelClienteContrato.fr3');
  dmdRelatorio.qryClienteContrato.Bookmark := lBookmark;
end;

procedure TfrmPrincipal.btnRelClienteContratoPDFClick(Sender: TObject);
begin
  dmdRelatorio.GerarRelClienteContratoPdf;
end;

procedure TfrmPrincipal.btnRelClienteContratoSelecionadoClick(Sender: TObject);
begin
  dmdRelatorio.GerarRelClienteContratoSelecionado;
end;

procedure TfrmPrincipal.btnRelTotaoContratosUFClick(Sender: TObject);
begin
  dmdRelatorio.GerarRelatorio('..\..\RelClientesEmpreendimentos.fr3', 'Relatório Clientes Empreendimentos');
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  dmdRelatorio.GerarRelatorio('..\..\RelEmprendimentosContratos.fr3', 'Empreendimentos x Contrato');
end;

procedure TfrmPrincipal.btnAlterarComponenteClick(Sender: TObject);
begin
  dmdRelatorio.AlterarMemoView;
end;

procedure TfrmPrincipal.btnExecutarRelClick(Sender: TObject);
begin
  dmdRelatorio.GerarRelatorio(FListaRelatorios[lbxRelatorios.ItemIndex]);

end;

procedure TfrmPrincipal.BtnRelDadosCSVClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.LoadFromFile('..\..\dados.txt');

  dmdRelatorio.GerarRelatorioDeArquivo;



end;

procedure TfrmPrincipal.DBGrid1TitleClick(Column: TColumn);
begin
  dmdRelatorio.cdsDados.IndexFieldNames := Column.FieldName;
end;


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  FListaRelatorios := TStringList.Create;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  FListaRelatorios.Free;
end;

end.
