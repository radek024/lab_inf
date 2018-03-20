program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var num1, num2, num3, nrzad : Integer;  znak: char;

procedure oddOrEven;
var liczba: Integer;
begin
 writeLn('Podaj dowolna liczbe: ');
 readLn(liczba);
 if liczba mod 2 = 1 then writeLn('Liczba ', liczba,' jest nieparzysta')
 else writeLn('Liczba jest parzysta');
end;

function nieparzyste(liczba : integer) : boolean;
begin
  if liczba mod 2 = 1 then nieparzyste:= TRUE
 else nieparzyste:=FALSE;
 writeLn('Czy funkcja jest nieparzysta? ',nieparzyste);
end;

function nieparzyste2(liczba : integer) : char;
begin
  if liczba mod 2 = 1 then nieparzyste2:= 't'
 else nieparzyste2:='n';
 writeLn('Czy funkcja jest nieparzysta? ',nieparzyste2);
end;

function nieparzyste3(liczba : integer) : Integer;
begin
  if liczba mod 2 = 1 then nieparzyste3:= 1
 else nieparzyste3:=0;
 writeLn('Czy funkcja jest nieparzysta? ',nieparzyste3);
end;

function nieparzyste4(liczba : integer) : String;
begin
  if liczba mod 2 = 1 then nieparzyste4:= 'TAK'
 else nieparzyste4:='NIE';
 writeLn('Czy funkcja jest nieparzysta? ',nieparzyste4);
end;

function heron(a,b,c: Real) : Real;
var p: real;
begin
 if (a+b>c) and (a+c>b) and (b+c>a) then p:=(a+b+c)/2
 else p:=0;
 heron:=sqrt(p*(p-a)*(p-b)*(p-c));
 writeLn('Pole jest rowne: ', heron:0:2);
 end;

function axis(x,y: Real) : boolean;
begin
 if (x>=1) and (x<=-1) and (y>=1) and (y<=-1) then writeln('Punkt (',x,',',y,') nie nalezy do obszaru')
 else write('Punkt (',x:0:2,',',y:0:2,') nalezy do obszaru.');
end;


//4.4
function recognizeASCII(napis: char) : String;
begin
case napis of
  '0'..'9': writeLn('To liczba');
  'A'..'Z': writeLn('To wielka litera');
  'a'..'z': writeLn('To mala litera');
   else writeLn('To cos innego niz litera i liczba');
   end;

end;

//4.5
function dayOfWeek(ktorydzien : integer): string;
type DZIEN=(Poniedzialek,Wtorek,Sroda,Czwartek,Piatek,Sobota,Niedziela);
var dzien1 : DZIEN;
begin
case ktorydzien of
  1: writeLn(DZIEN(0));
  2: writeLn(DZIEN(1));
  3: writeLn(DZIEN(2));
  4: writeLn(DZIEN(3));
  5: writeLn(DZIEN(4));
  6: writeLn(DZIEN(5));
  7: writeLn(DZIEN(6));
   else writeLn('To nie dzien tygodnia');
   end;
end;

function mathCalcs(num1, num2 : real; znak: char): Real;
var wynik: Real;
begin
case znak of
  '+': write(num1:0:2, '+', num2:0:2,'= ', num1+num2);
  '-': write(num1:0:2, '-', num2:0:2,'= ', num1-num2);
  '*': write(num1:0:2, '*', num2:0:2,'= ', num1*num2);
  '/': write(num1:0:2, '/', num2:0:2,'= ', num1/num2);
  else writeLn('To nie znak operacji');
   end;
end;

begin
  //oddOrEven;

  //4.1
  //writeLn('Podaj dowolna liczbe: ');
  //readLn(num1);
  //nieparzyste(num1);

  //readLn(num1);
  //nieparzyste3(num1);

  //4.2
  //writeLn('Podaj 3 dowolne liczby: ');
  //readLn(num1);
  //readLn(num2);
  //readLn(num3);
  //heron(num1, num2, num3);

  //4.3
  //writeLn('Podaj 2 dowolne liczby: ');
  //readLn(num1);
  //readLn(num2);
  //axis(num1, num2);

  //4.4
  //writeLn('Podaj dowolny znak: ');
  //readLn(znak);
  //recognizeASCII(znak);

  //4.5
  //write('Podaj liczbe z [1..7] a dam dzien tygodnia: ');
  //readLn(num1);
  //dayOfWeek(num1);


  //4.6
  //write('Podaj dwie liczby: ');
  //readLn(num1);
  //readLn(num2);
  //write('Podajznak [+,-,*,/]: ');
  //readLn(znak);
  //mathCalcs(num1, num2, znak);

  //4.7
  write('Podaj numer zadania: ');
  readLn(nrzad);

  case nrzad of
  1: begin
     writeLn('Podaj dowolna liczbe: ');
     readLn(num1);
     nieparzyste(num1);
     end;
  2: begin
     writeLn('Podaj 3 dowolne liczby: ');
     readLn(num1);
     readLn(num2);
     readLn(num3);
     heron(num1, num2, num3);
     end;
  3: begin
     writeLn('Podaj 2 dowolne liczby: ');
     readLn(num1);
     readLn(num2);
     axis(num1, num2);
     end;
  4: begin
     writeLn('Podaj dowolny znak: ');
     readLn(znak);
     recognizeASCII(znak);
     end;
  5: begin
     write('Podaj liczbe z [1..7] a dam dzien tygodnia: ');
     readLn(num1);
     dayOfWeek(num1);
     end;
  6: begin
     write('Podaj dwie liczby: ');
     readLn(num1);
     readLn(num2);
     write('Podajznak [+,-,*,/]: ');
     readLn(znak);
     mathCalcs(num1, num2, znak);
     end;
  else write('Nie ma takiego zadania');
  end;

  readLn();
end.
