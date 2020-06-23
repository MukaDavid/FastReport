unit Fastreport.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  frxclass, midaslib, Datasnap.DBClient, Datasnap.Provider;

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
    procedure btnRelClienteClick(Sender: TObject);
    procedure btnRelClienteContratoPDFClick(Sender: TObject);
    procedure btnRelClienteContratoClick(Sender: TObject);
    procedure btnRelClienteContratoSelecionadoClick(Sender: TObject);
    procedure btnRelTotaoContratosUFClick(Sender: TObject);
    procedure BtnRelDadosCSVClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Fastreport.Relatorio;



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


end.
