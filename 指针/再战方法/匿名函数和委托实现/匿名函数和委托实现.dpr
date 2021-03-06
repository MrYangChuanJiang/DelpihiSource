program 匿名函数和委托实现;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;
{*------------------------------------------------------------------------------
  1.匿名函数
    关键字: reference
    定义格式:
    TFun:=reference to function(const num:Integer):Integer
  2.函数指针

    实现要求=>
-------------------------------------------------------------------------------}

type
  {声明一个函数类型}
    TFunDemo = function(Age: Integer): Integer;
    {定义一个匿名函数}

    TFun = reference to function(num1: Integer; num2: Integer): Integer;

function Demo1(Age: integer): Integer;
begin
    Writeln(Age);
    Result := Age;
    Exit;
end;

{把函数当作一个对象进行传递}
function Demo2(num1: Integer; num2: Integer; fun: TFun): Integer;
begin
    Result := fun(num1, num2);
end;

var
    fun1: TFunDemo;
    fun2: TFun;
    NumResult: Integer;


begin
    NumResult := Demo2(10, 20,
        function(num1: Integer; num2: Integer): Integer
        begin
            Result := num1 + num2;
        end);
    Writeln(NumResult);
    Readln;
end.

