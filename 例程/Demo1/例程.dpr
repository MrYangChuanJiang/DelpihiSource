program 例程;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;
  {*--------------------------------------------------------------
   1. 例程是什么
      Delphi中独有的称呼,其实例程只是将具有某一个功能的代码片段进行封装
      具体的表现形式
      1) 过程
         procedure Demo1();

      2) 函数


      3) 过程和函数的区别在于有没有返回值


   2. 例程的作用
      1) 可以解决命名冲突的问题
      2) 提高代码的重用率;
      3) 提高代码的可维护性;

   3. 怎么使用例程
      1) 定义

  -----------------------------------------------------------------*}
{
  函数的定义
  @param
  @return
}
{var  传地址..}
{A: Integer; b: Integer  传值..}

function Add(A: Integer; b: Integer): Integer;
begin
    Add := A + b;
end;



//procedure Demo2(const Number: array of integer);
//var
//    Total: integer;
//const
//begin
//    for Total in Number do begin
//        Total := Total + Total;
//    end;
//    writeln(Total);
//end;

begin
    writeln(Add(1,2));
    Readln;
end.

