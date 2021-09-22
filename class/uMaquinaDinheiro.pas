unit uMaquinaDinheiro;

interface

uses
  System.Classes, System.SysUtils;

type
  IMaquina = interface
    function MontarTroco(Troco: Double): String;
  end;

  TMaquinaDinheiro = class(TInterfacedObject, IMaquina)
    function MontarTroco(Troco: Double): String;
  end;

implementation

{ TMaquinaDinheiro }

function TMaquinaDinheiro.MontarTroco(Troco: Double): String;
const
  nota: array[1..7] of integer = (100, 50, 20, 10, 5, 2, 1);
  centavos: array[1..5] of integer = (50, 25, 10, 5, 1);
var
  i, vlr, ct: integer;
             s: string;
begin
  s := 'Troco = R$ ' + FloatToStr(troco);
  s := s + #13#10 + #13#10;

  vlr := trunc(troco);
  i := 1;
  while (vlr <> 0) do
  begin
   ct := vlr div nota[i];
   if (ct <> 0)
      then begin
             s := s + IntToStr(ct) +
               ' nota(s) de R$ ' + IntToStr(nota[i]) + #13#10;
             vlr := vlr mod nota[i];
           end;
   i := i + 1;
  end;

  s := s + #13#10;

  vlr := round(frac(troco) * 100);
  i := 1;
  while (vlr <> 0) do
  begin
   ct := vlr div centavos[i];
   if (ct <> 0)
      then begin
             s := s + IntToStr(ct) + ' moeda(s) de ' +
               IntToStr(centavos[i]) + ' centavo(s)' + #13#10;
             vlr := vlr mod centavos[i];
           end;
   i := i + 1;
  end;

  Result := s;
  end;
end.
