unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm) //klasa potomna
    Button1: TButton;  //  pola, obiekty
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1; // obiekt

implementation

{$R *.lfm}

{ TForm1 }

//metoda
procedure TForm1.Edit1Click(Sender: TObject);
begin
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 Edit2.text:=Edit1.text;
 Edit1.text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
var bok, pole : Integer;
begin
 bok:=StrToInt(Edit3.text);
 pole:=sqr(bok);
 Edit4.text:=IntToStr(pole);
 Label3.Caption:=Label3.Caption+' '+IntToStr(pole);
end;

procedure TForm1.Button3Click(Sender: TObject);
var bok, pole : double;
begin
 bok:=StrToFloat(Edit5.text);
 pole:=3.14*sqr(bok);
 Edit6.text:=FloatToStr(pole);
end;

procedure TForm1.Button4Click(Sender: TObject);
var delta,a,b,c: Real;
begin
 a:=StrToFloat(Edit7.Text);
 b:=StrToFloat(Edit8.text);
 c:=StrToFloat(Edit9.Text);
 delta:=sqr(b)-4*a*c;
  Edit12.Text:=FloatToStr(delta);
  if delta>0 then
  begin
    Edit10.Text:=FloatToStr((-1*b-sqrt(delta))/(2*a));
    Edit11.Text:=FloatToStr((-1*b+sqrt(delta))/(2*a));
  end;
  if delta=0 then
   begin
    Edit10.Text:=FloatToStr(-1*b/(2*a));
    Edit11.Text:='xxx'
   end;
  if delta<0 then
   begin
    Edit10.Text:='xxx';
    Edit11.Text:='xxx';
   end;
end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
 if CheckBox1.checked then Form1.Caption:='Radek Gryczan'
 else Form1.Caption:='Pierwsza aplikacja';
end;

procedure TForm1.CheckBox2Change(Sender: TObject);
begin
 if CheckBox2.checked then Form1.Caption:=DateToStr(Date())
  else Form1.Caption:='Pierwsza aplikacja';
end;

end.

