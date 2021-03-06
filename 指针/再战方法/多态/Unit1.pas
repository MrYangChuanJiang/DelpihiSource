unit Unit1;

interface

type
    {定义一个接口}
    IColor = interface
    end;

    {定义一个父类 继承接口基类IInterfaacedObject}
    TAnimal = class(TInterfacedObject)
    public
        procedure Run(); virtual; abstract;
    end;

    {定义一个子类,继承TAnimal,接口Tcolor}
    TDog = class(TAnimal, IColor)
    public
        procedure Run(); override;
        procedure LookDoor();
    end;

    TCat = class(TAnimal, IColor)
    public
        procedure Run(); override;
        procedure CathMouse();

    end;

implementation

{ TDog }

procedure TDog.LookDoor;
begin
    Writeln('狗看门');
end;

procedure TDog.Run;
begin
    Writeln('狗在跑..........');
end;

{ TCat }

procedure TCat.CathMouse;
begin
    Writeln('猫抓老鼠');
end;

procedure TCat.Run;
begin
    Writeln('猫在跑..........');
end;

end.

