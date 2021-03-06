program 类属性;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,
    uTools in 'uTools.pas',
    Unit1 in 'Unit1.pas';

// 引入单元

{*------------------------------------------------------------------------------
    1. 单元
        什么是单元
        为什么要使用单元
          1.方便代码维护
          2.对代码进行分门别类的整理
        怎么使用

        注意事项

    2. 属性
        访问可见性(访问权限修饰符)
        ①.private 私有
        ②.public 公用
        ③.protected 受保护的,如果某个字段或者方法被该关键字修饰，那么他表示的意思是子类可以访问，那么该字段只能在子类中访问，其他类一样无法访问；
        ④.Published
 -------------------------------------------------------------------------------}
var
    Person: TPerson;


begin
    Person := TPerson.Create();
    writeln(Person.Name);
    Person.Age:=18;
    Writeln(Person.Age);
    //Writeln(Age);
    readln;
end.

