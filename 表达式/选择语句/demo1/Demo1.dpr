program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {*------------------------------------------------------
  1. ���ʽ
      ��������ͺϷ��ı�ʶ����ɵ�����
      ����:���������������� 1<2
  2. ���,ѡ�����
      �����Ҫ�ɹؼ��ֺͲ���ָ�����

  --------------------------------------------------------*}

begin
  if 1 < 2 then
  begin
    Writeln('���Ϊ��'); // �����̨д��һ�仰
  end;

  if true then
  begin
    Writeln('���Ϊ��'); // �����̨д��һ�仰
  end
  else
  begin
    Writeln('���Ϊ��'); // �����̨д��һ�仰
  end;


  // ��д��ʽдif else
  if True then
     Writeln('1111')
  else
    Write('aaaa');




  Readln; // �ӿ���̨����һ���ı�,ֱ�������س����з�;
end.

