program Demo1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------

  ʲô�Ƕ�̬
    ��װ.�̳�.��̬
    ��̬
    һ�������Զ�����̬����,����: ������͹���,è��Ĺ�ϵ
    ǰ��,2����2�����ϵ���߱��̳�(����)��ʵ�������ֹ�ϵ��һ��
    ��������:������ջ�ָ�����������;

  ��ʲô��
    ��ߴ���ĸ�����,�������ǶԴ�����н���(���֮�䲻Ҫ����ֱ�ӵ�������ϵ)

  ��ôʹ��

-------------------------------------------------------------------------------}
uses
    System.SysUtils,
    Unit1 in 'Unit1.pas';

var
    Animal: TAnimal;
    ColorDog: IColor;

// ����ת��:��������������ת���ɸ������������
procedure ShowAnimalRun(Animal: TAnimal);
var
    Dog: TDog;
begin
//    if Assigned(Animal) then begin   //�жϿ�ֵ
//      Writeln('�ǿ�ֵ');
//      Exit;
//    end;
    //����ʱ����������
    Animal.Run();
    //����ת��:�Ѹ�����������ת�����������������;
    // Writeln(Animal.ClassName);
    // ����1,ʹ��classname ��ȡ������,ʹ��if�����ж�
    if Animal.ClassName = 'TDog' then begin
        Dog := TDog(Animal);
        Dog.LookDoor();
    end;

    // ����2,ʹ��is�ؼ����ж϶��������Ƿ����,ʹ��as �ؼ��ֽ��ж���ת��;
    // �ж�һ�������Ƿ��һ�����ͼ���
    if Animal is TDog then begin

        Dog := Animal as TDog;
        Dog.LookDoor();
    end;

end;

begin
    ShowAnimalRun(TDog.Create);
    //ColorDog := TDog.Create;
    Readln;
end.

