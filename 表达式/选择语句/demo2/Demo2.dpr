program Demo2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  i: Integer = 3;


begin
  case i of
    1:
      begin
        Writeln('这是i==1时');
      end;
    2:
      begin
       Writeln('这是i==2时');
      end;
  else
    begin
        Writeln('这个排除完了');
    end;

  end;
  readln;
end.

