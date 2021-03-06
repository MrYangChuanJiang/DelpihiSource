program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;
  {*
  子界
    为什么使用,为了防止出现越界
    定义格式...
    type
    TSubbound=1..10;
    注意事项,上界和下界必须是有序的数据类型..  整数,字符,枚举
  *}

type
    {子界}
    TSubbound = 1..10;

    TSubBoundChar = 'a'..'z';

    {枚举:颜色}
    EColors = (RED, GREEN, BLUE);
    {枚举:季节}

    ESeason = (SPRING, SUMMER, AUTUMN, WINTER);

    TSubBoundEColors = EColors.RED..EColors.BLUE;
    {子界:月份}

    TSubBoundMonth = 1..12;
    

{习题:打印输出闰年还是平年,每个月的天数和所属季节}

var
    Season: ESeason;
    Month: TSubBoundMonth;
    UserYear: Integer;
    IsLeapYear: Boolean;
    UserMonth: Integer;


begin
    Writeln('请输入一个年份,格式为YYYY');
    Readln(UserYear);
    IsLeapYear := false;  //默认为平年
    if (UserYear mod 4 = 0) then begin
        if UserYear mod 100 = 0 then begin
            if UserYear mod 400 = 0 then begin
                IsLeapYear := true;
            end;
        end;
    end
    else begin
        IsLeapYear := true;
    end;
    Writeln('请输入一个月份,格式为ＭＭ');
    Readln(UserMonth);
    if (UserMonth >= Low(Month)) and (UserMonth <= High(Month)) then begin
        if (UserMonth >= 1) and (UserMonth <= 3) then
            write('当前是春季', UserMonth, '月的天数是:');
        begin
            case UserMonth of
                1:
                    begin
                        write(31, '天');
                    end;
                2:
                    begin
                        if (IsLeapYear) then begin
                            write(29, '天');
                        end
                        else begin
                            write(28, '天');
                        end;
                    end;
                3:
                    begin
                        write(31, '天');
                    end;
            end;
        end else;
                    

    else begin
        Writeln('对不起,您输入月份错误');
    end ;

    Readln;
end.

