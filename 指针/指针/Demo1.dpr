program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

{*------------------------------------------------------------------------------
  1.什么是指针；
    指针：一个存储了内存地址的变量
  2.指针的类型
    效率高  出错率高
  3.指针分类
    类型指针
      具有明确的数据类型
    无类型指针
      没有数据类型，可以指向任何地址
  4.指针怎么使用
    @  获取地址
    ^  定义指针


  -------------------------------------------------------------------------------}
var
    x: Integer;


var
    Pint: ^Integer;  // 定义一个整数类型的指针
    PInt2: PInteger;  // 利用系统封装好的指针

    Void: Pointer;  // 无类型指针




begin
    x := 100;
    Writeln(Integer(@x).ToHexString);
    Pint := @x;
    PInt2 := @x;
    PInt2 := Pointer($004258A4);
    Writeln(PInt2^);

    // 针对有类型的指针
    New(Pint2);       // 初始化指针
    Pint2^ := 100;
    Writeln(PInt2^);
    Dispose(PInt2);  // 释放指针
    // 针对无类型的指针
    // 通过这种方式能够分配一个指定大小的空间给指针；
    GetMem(Void, 1024);
//    Void^ := 'aaaaaa';
//    writeln(string(Void));
    FreeMem(Void);
    Readln;
end.

