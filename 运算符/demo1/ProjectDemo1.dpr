program ProjectDemo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {
  1. 变量 (编程中最小的存储单元(空间),它的空间大小由它在什么时的数据类型决定)
    1). 声明 :
        定义声明一个变量,告诉delphi我们要使用一个名字是xxx空间大小是xxx的内存空间
        var 变量名:数据类型; (分号表示结束)
    2). 初始化:给变量的第一赋值
        赋值:变量名:=变量的值;


  2.运算符
    +-*/   div(整除) 取模mod()
  3.表达式
  }
// 下面的声明变量只是进行声明
var
  Age:Integer ;
// 下面的这种方式是声明并且初始化变量
var
  Name:string='小黑';
begin
  //初始化变量
  Age:=18;

  Writeln(6 / 4);
  Writeln (Age div 3);
  Writeln(6 mod 3);

  readln;

end.
