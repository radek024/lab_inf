program Project1;

{$mode objfpc}{$H+}

uses
  Math;

var bokK, a, b, x, y: Real; znak : Char; i: Integer;

procedure obliczenia;
var pole, obwod, objetosc, promien : Real;
begin
  write('Podaj promien: ');
  readLn(promien);
  //pole := PI*promien*promien;
  //pole := PI*sqr(promien);
  pole := PI*sqr(promien);
  obwod := 2*PI*promien;
  //objetosc := (4/3)*PI*promien*promien*promien;
  objetosc := (4/3)*PI*power(promien,3);
  write('Pole jest rowne ', pole:4:2, ', obwod: ', obwod:4:2, ' objetosc: ',objetosc:4:2);
end;

procedure polekwadratu;
var pole, bok, obwod, objetosc: Real;
begin
    write('podaj bok');
    readLn(bok);
    pole:= sqr(bok);
    obwod:= 4*bok;
    objetosc:= power(bok,3);
    write('wartosc pola', pole:0:2, 'wartosc obwodu', obwod:0:2, 'wartosc objetosci', objetosc:0:2);
end;


procedure pKv2(bok: real);
var poleK, obwK, objK : Real;
begin
   poleK:=sqr(bok);
   obwK:=4*bok;
   objK:=power(bok, 3);
   write('wartosc pola', poleK:0:2, 'wartosc obwodu', obwK:0:2, 'wartosc objetosci', objK:0:2);
end;

function srArytm(x,y: Real) : real;
begin
  srArytm:= (x+y)/2;
end;

procedure sredniaArytm;
var num1, num2, srA: Real;
begin
  write('Podaj pierwsza i druga liczbe');
  read(num1);
  read(num2);
  srA:=srArytm(num1, num2);
  write('Srednia arytm. jest rowna: ',srA:0:2);
  readLn;
end;

function srGeo(a, b : real) : real;
begin
 srGeo := sqrt(a * b) ;
end;

procedure sredniaGeo(num1, num2: real);
var srG: Real;
begin
  srG:=srGeo(num1, num2);
  write('Srednia geo jest rowna: ',srG:0:2);
  readLn;
end;

function oblicz1(a, b: real) : real;
begin
   oblicz1:=(b+sqr(sin(power(PI,4))))/(cos(2)+abs(tan(a)));
end;

function oblicz2(x, y: real) : real;
begin
   oblicz2:=sqrt(((x*y)+(3.3*power(x,20))/(x+y)));
end;

function ASCIItoNum(znak: Char) : Integer;
begin
   ASCIItoNum:=Integer(znak);
end;

procedure znakkodu;
begin
   for i:=0 to 127 do
   WriteLn(i, ' ', char(i));
   readLn;
end;


begin
  //3.1
  //obliczenia;
  //polekwadratu;

  //write('podaj bok pKv2: ');
  //readLn(bokK);
  //pKv2(bokK);

  //3.2
  //write('Podaj a,b: ');
  //readLn(a);
  //readLn(b);
  //write('funkcja1: ',oblicz1(a, b):0:2);

  //write('Podaj x,y: ');
  //readLn(x);
  //readLn(y);
  //write('funkcja2: ',oblicz2(x, y):0:2);
  //sredniaArytm;

  //3.3
  //write('Podaj pierwsza i druga liczbe');
  //read(a);
  //read(b);
  //sredniaGeo(a, b);

  //3.4.1
  //write('Podaj znak aby uzyskac kod ASCII: ');
  //readLn(znak);
  //write(ASCIItoNum(znak));

  //3.4.2
  //znakkodu;

  write(Length('abc'));
  readLn;


end.

























