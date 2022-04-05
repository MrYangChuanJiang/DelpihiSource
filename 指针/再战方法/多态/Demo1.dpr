program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------

  什么是多态
    封装.继承.多态
    多态
    一类事物以多种形态存在,例如: 动物类和狗类,猫类的关系
    前提,2个或2个以上的类具备继承(派生)和实现这两种关系的一种
    具体体现:父类接收或指向其子类对象;

  有什么用
    提高代码的复用性,方便我们对代码进行解耦(类和之间不要出现直接的依赖关系)

  怎么使用

-------------------------------------------------------------------------------}
uses
    System.SysUtils,
    Unit1 in 'Unit1.pas';

var
    Animal: TAnimal;
    ColorDog: IColor;

// 向上转型:把子类对象的类型转换成父类的数据类型
procedure ShowAnimalRun(Animal: TAnimal);
var
    Dog: TDog;
begin
//    if Assigned(Animal) then begin   //判断空值
//      Writeln('是空值');
//      Exit;
//    end;
    //运行时的数据类型
    Animal.Run();
    //向下转型:把父类对象的类型转换成子类的数据类型;
    // Writeln(Animal.ClassName);
    // 方法1,使用classname 获取对象名,使用if进行判断
    if Animal.ClassName = 'TDog' then begin
        Dog := TDog(Animal);
        Dog.LookDoor();
    end;

    // 方法2,使用is关键字判断对象类型是否兼容,使用as 关键字进行对象转换;
    // 判断一个对象是否和一个类型兼容
    if Animal is TDog then begin

        Dog := Animal as TDog;
        Dog.LookDoor();
    end;

end;

begin
    ShowAnimalRun(TDog.Create);
    //ColorDog := TDog.Create;
    Readln;
end.

