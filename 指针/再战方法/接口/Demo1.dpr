program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,
    Unit1 in 'Unit1.pas';

{*------------------------------------------------------------------------------
      什么是接口
        一般情况下我们为了扩展某些事物的功能,而定义的一些功能
        更多的时候是一种规范;

      有什么用
        扩展
      怎么使用
        定义
        interface
        接口中只能有方法的声明,不能有实现,访问权限只能是public;
      注意事项
    -------------------------------------------------------------------------------}
var
    LaptopComputer: TLaptop;


begin
    LaptopComputer := TLaptop.Create;
    LaptopComputer.Run();
    
    LaptopComputer.read();
    LaptopComputer.write();
    Readln;
end.

