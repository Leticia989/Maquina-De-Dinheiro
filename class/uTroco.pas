unit uTroco;

interface

uses
  uEnumerado;

type
  TTroco = class
  private
    FTipo: TCedula;
    FQuantidade: Integer;
  public
    constructor Create(Tipo: TCedula; Quantidade: Integer); reintroduce;
    function GetTipo: TCedula;
    function GetQuantidade: Integer;
    function ValorCedulas(Cedula: TCedula): Double;
    procedure SetQuantidade(Quantidade: Integer);
  end;
implementation

{ TTroco }

constructor TTroco.Create(Tipo: TCedula; Quantidade: Integer);
begin
end;

function TTroco.GetQuantidade: Integer;
begin
  Result := FQuantidade;
end;

function TTroco.GetTipo: TCedula;
begin
  Result := FTipo;
end;

procedure TTroco.SetQuantidade(Quantidade: Integer);
begin
  FQuantidade := Quantidade;
end;

function TTroco.ValorCedulas(Cedula: TCedula): Double;
begin
  case Cedula of
    ceNota100:  Result := 100.00;
    ceNota50:   Result := 50.00;
    ceNota20:   Result := 20.00;
    ceNota10:   Result := 10.00;
    ceNota5:    Result := 5.00;
    ceNota2:    Result := 2.00;
    ceMoeda100: Result := 1.00;
    ceMoeda50:  Result := 0.50;
    ceMoeda25:  Result := 0.25;
    ceMoeda10:  Result := 0.10;
    ceMoeda5:   Result := 0.05;
    ceMoeda1:   Result := 0.01;
  end;
end;

end.
