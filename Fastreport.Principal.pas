unit Fastreport.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnRelCliente: TButton;
    btnRelClienteContrato: TButton;
    procedure btnRelClienteClick(Sender: TObject);
    procedure btnRelClienteContratoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Fastreport.Module;

procedure TfrmPrincipal.btnRelClienteClick(Sender: TObject);
begin
  dmdModule.frxReport1.LoadFromFile('..\..\RelCliente.fr3');
  dmdModule.frxReport1.ShowReport;
end;

procedure TfrmPrincipal.btnRelClienteContratoClick(Sender: TObject);
begin
  dmdModule.GerarRelClienteContratoPdf;
end;

end.
