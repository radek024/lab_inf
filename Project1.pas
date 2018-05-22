program Project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, unitOsoba, unitSamochod, unitPracownik
  { you can add units after this };

//1 definuj klase o polach i metodach

//2 zdefiniuj metody zadeklarowane w klasie


//3 zadeklaruj obiekt danej klasy
var Osoba : TOsoba;
samochod: TSamochod;
pracownik: TPracownik;
begin
  //4 utworz obiekt
  {Osoba:=TOsoba.Create;
  //5 wywolaj meotdy dla obiektu
  Osoba.wczytaj;
  //Osoba.wiek:=100; //hermetyzacja dziala, bo klasa nie jest w tym samym pliku
  Osoba.wyswietl;
  //6 usun obiekt
  Osoba.Destroy;

  samochod:=TSamochod.Create;
  samochod.wczytaj;
  samochod.wyswietl;
  samochod.Destroy;}

  pracownik:=TPracownik.Create;
  pracownik.wczytaj;
  pracownik.wyswietl;
  pracownik.pensja;
  pracownik.Destroy;
  readLn();

end.

