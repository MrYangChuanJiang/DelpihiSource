program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

procedure whileDemo();
var
    i: Integer;
begin
    while (true) do begin
        i := i + 1;
        Writeln(i);
        if (i = 3) then begin
            Writeln('����forѭ��');

        end;
        Break;
    end;
//    repeat
//        i := i + 1;
//        Writeln('---------', i);
//    until (not (i = 1000));

end;

procedure ForDemo();
var
    i: Integer;
begin
    for i := 0 to 100 do begin
        Writeln(i);
    end;

    Writeln('---------------------', i);

    for i := 100 downto 50 do begin
        Writeln(i);
    end;
    Writeln('---------------------', i);
end;

begin
    whileDemo();
//    ForDemo ();
    Readln;
end.

