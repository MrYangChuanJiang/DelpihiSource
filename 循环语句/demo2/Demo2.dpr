program Demo2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;
  {*------------------------------------------------
  求1 到100 的和
  @param
  *}

procedure Sum();
var
    i: Integer;
    SumNum: Integer;

begin

    for i := 1 to 100 do begin
        SumNum := SumNum + i;
    end;
    Writeln('结果为:', SumNum);
end;

{打印1到100之间所有7的倍数的整合}
procedure Counter();
var
    i: Integer;
    {用来求和}
    Total: Integer;
    {用来计数}
    Amont: Integer;
begin
    for i := 1 to 100 do begin
        if (i mod 7) = 0 then begin
            Amont := Amont + 1;
            Total := Total + i;
        end;
    end;
    Writeln('统计的个数为:', Amont);
    Writeln('统计的个求和是:', Total);
end;

begin
    Counter();
    Readln;

end.

