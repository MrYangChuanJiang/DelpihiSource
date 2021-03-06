program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,System.Generics.Collections;
    {*------------------------------------------------------------------------------
      泛型参考书籍:Delphi2010 语法手册

      1. 什么是泛型
          广泛的数据类型
      2. 为什么使用泛型
          1) 为了避免在程序中的数据类型强制转换
          2) 在容器中我们使用数据类型更为灵活

      3. 怎么使用泛型
        TArrayss<T>=array of T;
      4. 泛型的使用场景
        1) 泛型容器

        2) 反射的时候
    -------------------------------------------------------------------------------}

type
    TStringArr = array of string;

    TNumberArr = array of Integer;

    TArrayss<T>= array of T;

    TStudent<T> = class
    end;

    TPerson = class
    end;

var
    StringArr: TStringArr;
    NumberArr: TNumberArr;
    Arrayss: TArrayss<string>;
    MyElem: string;
    i: Integer;
    Ss:TArray<string>;

begin
    StringArr := ['aa', 'bb'];
    NumberArr := [11, 22, 33];
    Arrayss := ['AA', 'BB', 'CC'];


    for MyElem in Arrayss do begin
        Writeln(MyElem);
    end;

    Writeln('');
    for i := Low(Arrayss) to High(Arrayss) do begin
        Writeln(Arrayss[i]);
    end;
    TStudent<TPerson>.Create;


    Readln;
end.

