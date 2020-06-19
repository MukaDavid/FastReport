program CursoFastReport;

uses
  Vcl.Forms,
  Fastreport.Principal in 'Fastreport.Principal.pas' {frmPrincipal},
  Fastreport.Module in 'Fastreport.Module.pas' {dmdModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmdModule, dmdModule);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
