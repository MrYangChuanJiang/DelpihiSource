program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {*------------------------------------------------------
  1. 表达式
      由运算符和合法的标识符组成的序列
      划分:根据运算结果的类型 1<2
  2. 语句,选择语句
      语句主要由关键字和操作指令组成

  --------------------------------------------------------*}

begin
  if 1 < 2 then
  begin
    Writeln('结果为真'); // 向控制台写出一句话
  end;

  if true then
  begin
    Writeln('结果为真'); // 向控制台写出一句话
  end
  else
  begin
    Writeln('结果为真'); // 向控制台写出一句话
  end;


  // 简写方式写if else
  if True then
     Writeln('1111')
  else
    Write('aaaa');




  Readln; // 从控制台读入一行文本,直到遇到回车换行符;
end.

