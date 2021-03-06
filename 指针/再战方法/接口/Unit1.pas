unit Unit1;

interface

type
    {定义一个接口}
    IUsb2_0 = interface
        ['{EC6FA220-B197-41E0-A865-19817C7BC91C}']   // ctrl+shift+G 自动生成 GUID
        procedure read();
    end;

    IUsb3_0 = interface  // 接口之间也是单继承
        ['{2FDFCE8B-B0C8-4D70-8DEE-CDF9EAACD0DB}']
        procedure read();
        procedure write();
    end;
    {定义一个类}

    TComputer = class(TInterfacedObject)
    public
        procedure Run(); virtual; abstract;
    end;
    {定义一个子类}

    TLaptop = class(TComputer, IUsb2_0, IUsb3_0)
        procedure Run();
        procedure read();
        procedure write();
    end;

implementation

{ TLaptop }
procedure TLaptop.read;
begin
    Writeln('笔记本电脑读数据');
end;

procedure TLaptop.Run;
begin
    Writeln('笔记本电脑运行');
end;

procedure TLaptop.write;
begin
    Writeln('笔记本电脑写数据');
end;

end.

