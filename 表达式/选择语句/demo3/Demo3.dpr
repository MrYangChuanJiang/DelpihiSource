program Demo3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {
    1. 对于学生成绩>60的输出合格,其他的显示不合格
    2. 根据用于指定的月份打印月份所属的季节
  }

var
  fraction: Integer;
  // 过程
  {*定义一个过程

  比较分数
  *}


procedure ComparFraction();
// 过程的具体实现
{*-----------------------------------------------------------------*}
var
  Fraction: Integer;
{*-----------------------------------------------------------------*
下面,函数体
}
begin
  Writeln('请输入需要判断的分数');
  Readln(Fraction);
  if Fraction >= 60 then
  begin
    Writeln('合格');
  end
  else
  begin
    Writeln('不合格');
  end;

  readln;
end;
{*----------------------------------------------------------------*}

{*----------------------------------------------------------------
 判断季节 345 春季 678 夏季 9 10 11 秋季 12 1 2 冬季
 @param   Month 需要判断的月份
*}

procedure JudgmentSeasonByIf();
var
  Month: Integer;
begin
  Writeln('请输入你要判断的月份');
  Readln(Month);
  if not ((Month > 0) and (Month < 13)) then
  begin
    Writeln('输入的月份错误!!!');
    Exit;
  end;

  if (Month > 2) and (Month < 5) then
  begin
    Writeln('春季');
    Exit;
  end;
  if (Month > 4) and (Month < 8) then
  begin
    Writeln('夏季');
    Exit;
  end;
  if (Month) < 8 and (Month < 12) then
  begin
    Writeln('秋季');
    Exit;
  end;
  if (Month) > 11 or ((Month > 0 and (Month < 3))) then
  begin
    Writeln('冬季');
    Exit;
  end;

  Readln;
end;

procedure JudgmentSeasonByCase();
var
  Month: Integer;
begin
  case Month of
    5:


  end;
end;

{*--------------------------------------------------------------------------

@param  Height 身高
@param  Money 财富
@param  IsCool 帅不帅

*}
procedure MarriageConditions(Height: Integer; Money: Double; IsCool: Boolean);
begin
  if (Height > 180) and (Money >= 1000000) and (IsCool) then
  begin
    Writeln('我一定要嫁给他');
    Exit;
  end;
  if (Height > 180) or (Money >= 1000000) or (IsCool) then
  begin
    Writeln('嫁吧,比上不足,比下有余');
    Exit;
  end;
  if not ((Height > 180) and (Money >= 1000000) and (IsCool)) then
  begin
    Writeln('不嫁给他');
    Exit;
  end;
end;

begin
//  JudgmentSeasonByIf();
  //ComparFraction();
  MarriageConditions(180, 5000000, true);
  Readln;
end.

