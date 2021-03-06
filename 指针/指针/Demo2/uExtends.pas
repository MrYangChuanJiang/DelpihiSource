unit uExtends;

interface
{定义一个动物基类}

type
    TAnimal = class
    private
        FWeight: Double;
        FSex: Integer;
    protected
        FName:string;

    public    {定义一个方法}
        constructor Create(FWeight: Double);

    {定义属性}
        property Weight: Double read FWeight write FWeight;
        // FSex: read FSex write FSex;
        {声明一个虚方法}
        procedure GetName();virtual;

    end;
{定义一个派生类 狗类=>继承动物基类}
type
    TDog = class(TAnimal)
    public
        {定义方法}
        constructor Create();
        {重写父类中的虚方法}
        procedure GetName();override;
    end;

implementation

{ TAnimal }
constructor TAnimal.Create(FWeight: Double);
begin
    Self.FWeight := FWeight;
end;
procedure TAnimal.GetName;
begin
  Writeln('动物类的方法');
end;

{ TDog }

constructor TDog.Create;
begin
  FWeight:=100;
  Writeln('狗类的构造方法');
end;

procedure TDog.GetName;
begin
  inherited;
  Writeln('Dog类的GetName方法');
end;

initialization

finalization

end.

