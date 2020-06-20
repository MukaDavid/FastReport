program CursoFastReport;

uses
  Vcl.Forms,
  Fastreport.Principal in 'Fastreport.Principal.pas' {frmPrincipal},
  Fastreport.Relatorio in 'Fastreport.Relatorio.pas' {dmdRelatorio: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmdRelatorio, dmdRelatorio);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
