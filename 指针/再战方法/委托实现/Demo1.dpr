program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,
    Unit1 in 'Unit1.pas';

var
    Dog: TDog;
    Cat: TCat;
    Demo:TDemo;

begin
    Cat := TCat.Create;
    Dog:=TDog.Create;
    Cat.Eat := Dog;
    Cat.Eat.EatIng;
    Demo:=TDemo.Create;
    Demo.Eat:=Dog.Create;
    Demo.Eat.EatIng;
    Readln;
end.

