program Demo4;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;  

procedure InvertedTriangle();
var x:integer;
var y:Integer ;
begin
  
end;
{九九乘法表
@param  row 乘法表乘数
@param  col 乘法表被乘数
}
procedure MultiplicationTable();
var
    row: Integer;
    col: Integer;
begin
    for row := 1 to 9 do begin
        for col := 1 to row do begin
            write(col, ' x ', row, ' = ', row * col,#$09);
        end;
        Writeln(''); 
    end;

end;

begin
  MultiplicationTable();
  Readln;  
end.

