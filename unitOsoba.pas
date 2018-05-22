unit unitOsoba;  //naglowek modulu

{$mode objfpc}{$H+}

interface //czesc publiczna widoczna w programie

uses
  Classes, SysUtils;

type TOsoba = class
  private //czesc prywatna klasy niedostepna w programie glownym
  protected //czesc chroniona klasy niedostepna w programie glownym, ale przy dziedziczeniu
  imie, nazwisko : String;  //pola
  wiek: Byte;

  public //czesc publiczna klasy dostepna w programie glownym
  procedure wczytaj; //metody
  procedure wczytaj(im: String; naz: String; w: Byte);
  procedure wyswietl;
  end;

implementation //czesc prywatna niewidoczna w programie

procedure TOsoba.wczytaj;
begin
  write('Podaj imie: '); readLn(imie);
  write('Podaj nazwisko: '); readLn(nazwisko);
  write('Podaj wiek: '); readLn(wiek);
end;

procedure TOsoba.wczytaj(im: String; naz: String; w: Byte);
begin
  imie:=im; nazwisko:=naz; wiek:=w;
end;

procedure TOsoba.wyswietl;
begin
  writeLn('Witaj ', imie,' ',nazwisko,', ktory to masz ', wiek,' lat.');
end;

end. //koniec modulu

