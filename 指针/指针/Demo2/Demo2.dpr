program Demo2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,
    uExtends in 'uExtends.pas';

{*------------------------------------------------------------------------------
   继承->派生（继承）
      派生指类和类之间的关系，继承更多的是指定对象和对象之间的关系

   1.特点
    ①.提高代码的复用  例如 TForm
    ②.一但产生派生关系后，他们就具备了多态的特性； 一种事物以多种形态存在，就是多态；
    ③.Delphi中是单继承，但是可以是多层继承；
   2.继承中的构造方法
    构造方法
      ①.定义


    销毁方法有叫析构方法；

  -------------------------------------------------------------------------------}

var
    Dog: TDog;

begin
    Dog := TDog.Create();

    Dog.GetName;
    Readln;
end.

