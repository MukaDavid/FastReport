unit fConverteFastReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Datasnap.DBClient,
  frxDBSet;

type
  TForm4 = class(TForm)
    Button1: TButton;
    frxReport1: TfrxReport;
    cdsEmpresa: TClientDataSet;
    cdsEmpresaEMP_RAZAO_SOCIAL: TStringField;
    cdsEmpresaLOGO: TGraphicField;
    cdsEmpresaversao_sistema: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBImage1: TDBImage;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    cdsMoeda: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    frxdbEmpresa: TfrxDBDataset;
    frxdbMoeda: TfrxDBDataset;
    cdsMoedaMOE_ID: TIntegerField;
    cdsMoedaMOE_DESCRICAO: TStringField;
    cdsMoedaMOE_SIMBOLO: TStringField;
    cdsMoedaMOE_VALOR: TFloatField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin


  frxReport1.LoadFromFile('..\..\relatorio.rtm');
  frxReport1.SaveToFile('..\..\relatorio.fr3');
  //frxReport1.DesignPreviewPage;
  frxReport1.ShowReport;

end;

end.
