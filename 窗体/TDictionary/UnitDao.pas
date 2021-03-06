unit UnitDao;

interface

uses
    UnitClass, System.Generics.Collections, Winapi.Windows, Winapi.Messages,
    System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
    Vcl.Forms, Vcl.Dialogs;

type
    TDao = class
      //   新增方法
        class procedure Add(Student: TStudent);
        class function ListStu(): TDictionary<string, TStudent>;
        class procedure Clear();

    end;

implementation

var
    StudentList: TDictionary<string, TStudent>;


{ TDao }
class procedure TDao.Add(Student: TStudent);
begin
    if not StudentList.ContainsKey(Student.Name) then begin
        StudentList.Add(Student.name, Student);
        ShowMessage('保存成功' + Student.name);
    end
    else begin
        ShowMessage('姓名存在,不能重复');
        Exit;
    end;
end;

class procedure TDao.Clear;
begin
  StudentList.Clear;
end;

class function TDao.ListStu: TDictionary<string, TStudent>;
begin
  Result:=StudentList;
end;

initialization
    StudentList := TDictionary<string, TStudent>.Create();

end.

