unit Unit1;

interface

uses
    System.Generics.Collections, Unit2, Winapi.Windows, Winapi.Messages,
    System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
    Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        btnAdd: TButton;
        btnFind: TButton;
        btnDel: TButton;
        btnClear: TButton;
        btnUpdate: TButton;
        mmo1: TMemo;
        edtUserName: TEdit;
        procedure FormCreate(Sender: TObject);
        procedure btnFindClick(Sender: TObject);
        procedure btnAddClick(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    Form1: TForm1;
  // 学生列表
    StudentList: TList<TStudent>;


implementation

{$R *.dfm}

{显示学生列表}
procedure ShowStudentList();
var
    Stu: TStudent;
begin
    Form1.mmo1.Clear;
    for Stu in StudentList do begin
        Form1.mmo1.Lines.Add(Stu.Name);
    end;
end;

procedure TForm1.btnAddClick(Sender: TObject);
var
    Stu: string;
begin
    Stu := Self.edtUserName.Text;
    if Stu <> '' then begin
        StudentList.Add(TStudent.Create(Stu));
    end
    else begin
        MessageBox(Self.Handle, '请先输入需要添加的姓名', '温馨提示!', MB_OK);
        Self.edtUserName.SetFocus();
    end;
    ShowStudentList();

end;

procedure TForm1.btnFindClick(Sender: TObject);
begin
    // 遍历学生列表
    ShowStudentList();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    {初始化学生列表}
    StudentList := TList<TStudent>.Create;
    StudentList.Add(TStudent.Create('小明'));
    StudentList.Add(TStudent.Create('小强'));
    StudentList.Add(TStudent.Create('小王'));
    StudentList.Add(TStudent.Create('小化'));
    StudentList.Add(TStudent.Create('小花'));
    StudentList.Add(TStudent.Create('小黑'));
    StudentList.Add(TStudent.Create('小白'));
end;

end.

