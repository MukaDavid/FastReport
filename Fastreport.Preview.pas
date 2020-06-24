unit Fastreport.Preview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Samples.Spin;

type
  TfrmPreview = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    frxPreview1: TfrxPreview;
    BitBtn1: TBitBtn;
    SpinEdit1: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreview: TfrmPreview;

implementation

{$R *.dfm}

procedure TfrmPreview.BitBtn1Click(Sender: TObject);
begin
  frxPreview1.Next;
end;

procedure TfrmPreview.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPreview.FormShow(Sender: TObject);
begin
  SpinEdit1.Value := trunc(frxPreview1.Zoom);


end;

procedure TfrmPreview.SpinEdit1Change(Sender: TObject);
begin
  frxPreview1.Zoom := SpinEdit1.Value ;
end;

end.
