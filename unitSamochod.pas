unit unitSamochod;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

{ TSamochod }

 TSamochod = class
  private
  marka, model : String;
  rocznik : Integer;
  wyjazdy: Array[1..3] of Integer;

  public
  procedure wczytaj;
  procedure wyswietl;
  function sumujWyjazdy:Integer;
  end;
implementation
{ TSamochod }
procedure TSamochod.wczytaj;
var i: integer;
begin
  writeLn('Podaj marke i model:');
  readLn(marka);
  readLn(model);
  writeLn('Podaj rocznik: ');
  readLn(rocznik);
  for i:=1 to 3 do
  begin
    writeLn('Podaj', i, ' wyjazd:');
    readLn(wyjazdy[i]);
  end;

end;

procedure TSamochod.wyswietl;
begin
  writeLn('Marka: ', marka, '| ', model, '|', rocznik);
end;

function TSamochod.sumujWyjazdy():Integer;
var i: Integer;
begin
sumujWyjazdy:=0;
 for i:=1 to 3 do
  begin
    sumujWyjazdy:=sumujWyjazdy+wyjazdy[i];
  end;
end;

end.

