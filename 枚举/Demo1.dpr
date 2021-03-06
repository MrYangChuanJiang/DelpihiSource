program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.TypInfo,
    System.SysUtils;

type
    Ecolors = (RED, GREEN, BLUE);

    Eweek = (SUM = 1, MON = 2, TUE = 3, WED = 4, THU = 5, FRI = 6, SmallInt = 7);

   {*
    枚举,相当于常量的集合
    type
      枚举名=(标识符1,标识符2,标识符2.....)
   *}

var
    color: Ecolors;
    week: Eweek;
    EIndex: Integer;
    Ename: string;
    Evalue: Integer;


procedure Demo_1();
begin
    week := Eweek.SUM;
    Color := Ecolors.RED;
    Writeln(Ord(color), ',', ord(week));

end;

procedure Demo_2();
begin
    EIndex := 0;
    for Color := Low(Ecolors) to High(Ecolors) do begin
        Ename := GetEnumName(TypeInfo(Ecolors), EIndex);
        Inc(EIndex);
    end;
    EIndex := 0;
    for week := Low(Eweek) to High(Eweek) do begin
        Inc(Eindex);
        Writeln(GetEnumName(TypeInfo(Eweek), Eindex));

    end;
end;

begin
    Demo_2();
    Readln;
end.

