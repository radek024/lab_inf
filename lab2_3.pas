program lab2_3;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

procedure dane;
var imie, naz:String[20];
begin
 write('Podaj imie i nazwisko: ');
 readLn(imie);
 readLn(naz);
 write(imie, naz);
 writeLn;
end;

procedure KmNaW;
var km, waty: Real;
begin
  write('Podaj KM: ');
  read(km);
  waty:=km*735;
  writeLn(km:1:0, 'KM to ',waty:1:2,'W');
  readLn;
end;

procedure KmhNaMs;
var KmH, Ms: Real;
begin
  write('Podaj Km/h: ');
  read(KmH);
  Ms:=KmH*(10/36);
  writeLn(KmH:4:2, 'km/h jest rowna ', Ms:4:2, ' M/s.');
end;


procedure CNaF;
var stC, stF: Real;
begin
  write('Podaj F: ');
  read(stF);
  stC:=5*(stF-32)/9;
  writeLn(stF:4:2, 'F to ',stC:4:2,'C');
  readLn;
end;

begin
  dane;
  KmNaW;
  CNaF;
  KmhnaMs;
  readLn;
  
end.

