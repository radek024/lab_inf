unit unitPracownik;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, unitOsoba;

type
  TPracownik=class(TOsoba)
   protected
    stanowisko:string;
    liczbaGodzin:Word;
    stawka:Real;
   public
  procedure wczytaj;
  procedure wyswietl;
  function pensja:real;
 end;

implementation

procedure TPracownik.wczytaj;
begin
 inherited wczytaj;
 write('Podaj stanowisko '); readln(stanowisko);
 write('Podaj liczbe godzin '); readln(liczbaGodzin);
 write('Podaj stawke '); readln(stawka);
end;

procedure TPracownik.wyswietl;
begin
 inherited wyswietl;
 write('Stanowisko: '); writeLn(stanowisko);
 write('Liczba godzin: '); writeLn(liczbaGodzin);
 write('Stawka: '); writeLn(stawka);
end;

function TPracownik.pensja:real;
begin
 pensja:=stawka*liczbaGodzin;
 writeLn('Pensja jest rowna: ',pensja);
end;

end.

