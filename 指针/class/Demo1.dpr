program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;
{*------------------------------------------------------------------------------
    1. 怎么样去创建一个类
      类的成员组成
        属性

        功能

    2. 如何创建一个类对象

    3. 对象的生命周期
        一个对象从创建到消亡的过程->生命周期；
      1.  对象的创建
        1） 构造方法  construcor
            a) 在内存中申请一个内存空间，从而实现对象的创建；
            b) 初始化成员的功能；
        2） 对象的销毁  Destructor
          ①.free
          ②.Destructor Destory(); overide;
          ③.feeeAndnil
          ④.Nil 控制 NULL
        3) self : 表示本类对象；
          ①.为了解决命名冲突；

        4）inherited ：表示父类对象


    4. Delphi中单元的概念
-------------------------------------------------------------------------------}

type
    TUser = class
  {字段}
        FName: string;
        Age: Integer;
        Sex: Integer;
        constructor Aaa(Name: string; Age: Integer = 18);  overload;
        constructor Aaa(Age: Integer);
  {声明，定义}
        procedure SetName(Name: string);
        {销毁对象的方法}
        destructor Destroy(); override;
    end;

constructor TUser.Aaa;
begin
    Self.FName := Name;
    Self.Age := Age;
end;

{销毁对象的方法实现}
destructor TUser.Destroy;
begin
    {调用父类销毁对象的方法}
    //Writeln('调用销毁方法。。。。');
    inherited;
end;

{ User }
procedure TUser.SetName(Name: string);
begin
    FName := Name;
end;

var
    User: TUser;


begin
  {通过类的构造方法创建一个类的对象}
    User := TUser.Aaa('小薇', 28);
    Writeln(User.FName, User.Age);
    FreeAndNil(User); // 销毁对象
    Readln;

end.

