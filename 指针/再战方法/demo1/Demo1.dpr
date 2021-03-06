program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
  1. delphi 方法种类
    1).构造方法

    2).析构方法

    3).静态方法
      关键字: 无
      规则:类的对象调用
    4).虚方法
      关键字:Virtual
      规则:
        如果子类(派生类)要覆盖父类(基类)的方法那么父类的方法必须是虚拟方法或者动态方法;
        一般这种方法用的比较多;
    5).动态方法
      关键字 Dynamic
      规则: 和虚方法的规则一直
    6).类方法
      关键字:class
      规则:
          类似于java中的静态方法
          当class修饰属性时,改属性为类属性
          通过类名直接调用

    7).抽象方法
          关键字:abstract
          规则:
            前提是该方法必须是虚方法(动态方法或虚拟方法);
            抽象方法一般写在父类中
            抽象方法只声明,没有实现;
    8).消息处理方法
       他需要处理的窗口消息;
    9).接口

-------------------------------------------------------------------------------}
uses
    System.SysUtils,
    Unit1 in 'Unit1.pas';

var
    Dog: TDog;
    Animal: TAnimal;


begin
    // c创建类的对象(类的实例化)
    TAnimal.Eat();
    Animal := TAnimal.Create1;
    Dog := TDog.Create;
    Dog.Talk();
    Dog.Eat();
    Dog.Sleep();
    Dog.Free;
    Readln;
end.

