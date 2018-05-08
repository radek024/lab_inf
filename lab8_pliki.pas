program lab8_pliki;
uses Math;
var pliktxt: textfile; nazwaPliku: String;


procedure zapiszDaneTekst(var plik : textfile; tytul: string);
var nazwisko : String[20];
    ocena : Byte;
begin
 assignfile(plik, tytul);
 {$i-}append(plik);{$i+}
 if(IOResult<>0) then
   rewrite(plik);
 writeLn('Podaj nazwisko');
 readLn(nazwisko);
 writeLn('Podaj ocene');
 readLn(ocena);
 writeLn(plik, nazwisko:20, ocena:2);
 closefile(Plik);
end;

procedure czytajDane(var plik: textfile; tytul: string);
var nazwisko : String[20];
    ocena : Byte;
begin
  assignfile(plik, tytul);
 {$i-}reset(plik);{$i+}
 if ioresult=0 then
   begin

   while not eof(plik) do
    begin
     readLn(plik, nazwisko, ocena);
     writeLn(nazwisko, ocena);
    end;
   end
 else writeLn('404 dude');
 closefile(plik);
end;


begin
writeLn('Jaka nazwa pliku?');
readLn(nazwaPliku);
nazwaPliku:=nazwaPliku+'.txt';
zapiszDaneTekst(pliktxt, nazwaPliku);

czytajDane(pliktxt, nazwaPliku);
readLn();
end.

