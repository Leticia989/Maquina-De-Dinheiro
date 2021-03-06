unit FrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uMaquinaDinheiro,
  Vcl.ExtCtrls;

type
  TFormPrincipal = class(TForm)
    btnCalcular: TButton;
    edtValorTroco: TLabeledEdit;
    Panel1: TPanel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MaquinaDinheiro: TMaquinaDinheiro;
    function MontaTroco(pTroco: Double): String;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

{ TForm1 }

procedure TFormPrincipal.btnCalcularClick(Sender: TObject);
begin
  MontaTroco(StrToFloat(edtValorTroco.Text));
end;


function TFormPrincipal.MontaTroco(pTroco: Double): String;
var
  Troco: String;
begin
  troco := MaquinaDinheiro.MontarTroco(pTroco);

  ShowMessage(troco);
end;

end.
