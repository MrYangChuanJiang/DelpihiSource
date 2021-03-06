program 异常机制;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;
  {*------------------------------------------------------------------------------
    1.什么是异常

    2.异常怎么使用


  -------------------------------------------------------------------------------}

type
    EMathException = class(Exception)
    end;

procedure MDivFun(Num1: Integer; Num2: Integer);
begin

    begin
        if Num2 = 0 then begin
            raise EMathException.Create('除数不能为0');
        end;
    end;
end;

begin

    try
        try
            MDivFun(10, 0);
        except
            on E: EMathException do begin
                Writeln(E.ClassName,'-',E.Message);
                Writeln(E.UnitName,' - ',E.Message);
                Writeln(E.Message);
            end;
        end;
    finally
      // 释放资源
        Writeln('释放资源');
    end;
    Readln;
end.

