unit Unit1;

interface

type
    TAnimal = class
    public
        procedure Talk();
        {虚方法
          一般情况下,父类的虚拟方法会有一个空实现;
          主要作用是专门用来个子类覆盖实现的;
        }
        function Run(): Integer; virtual;   // 虚方法声明 Virtual    一般这种方法用的比较多;
        {类方法}

        class procedure Eat(); virtual;
        {构造方法}

        constructor Create1();

        {
         抽象方法
          规范,一般指规则;
          ->关键字 abstract
         }
        procedure Sleep(); virtual; abstract;

    end;

    TDog = class(TAnimal)
    public
        function Run(): Integer;
        procedure Eat();
        procedure Sleep();
    end;

    TCat = class(TAnimal)
    end;

implementation

{ TAinmal }
constructor TAnimal.Create1;
begin
    Writeln('构造方法执了');
end;

class procedure TAnimal.Eat;
begin
    Writeln('Eat');
end;

function TAnimal.Run: Integer;
begin

end;

procedure TAnimal.Talk;
begin

end;

{ TUser }
procedure TDog.Eat;
begin
    Writeln('狗啃骨头');
end;

function TDog.Run: Integer;
begin
    Writeln('狗,用四条腿跑...');
end;

procedure TDog.Sleep;
begin
  writeln('狗趴着睡觉');
end;

end.

