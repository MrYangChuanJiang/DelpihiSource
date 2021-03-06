unit UnitMain;

interface

uses
    System.Generics.Collections, UnitClass, UnitDao, UnitAdd, Winapi.Windows,
    Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
    Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TFormMain = class(TForm)
        lblHeader: TLabel;
        btn1: TButton;
        btn2: TButton;
        btn3: TButton;
        btn4: TButton;
        mmo1: TMemo;
        procedure btn1Click(Sender: TObject);
        procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    private{ Private declarations }
    public    { Public declarations }
    { Public declarations }
    end;

var
    FormMain: TFormMain;


implementation

{$R *.dfm}

procedure TFormMain.btn1Click(Sender: TObject);
var
    FromAdd: TFormAdd;
begin
    FromAdd := TFormAdd.Create(self);
    FromAdd.Top := Self.Top + ((Self.Height-FromAdd.Height) div 2);
    FromAdd.Left := Self.Left + ((Self.Width-FromAdd.Width) div 2);
    FromAdd.ShowModal
end;

procedure TFormMain.btn3Click(Sender: TObject);
begin
  TDao.Clear();
  mmo1.Clear;
end;

procedure TFormMain.btn4Click(Sender: TObject);
var
    Student: TDictionary<string, TStudent>;
    Id: string;
    Stu:TStudent;

begin
    Self.mmo1.Clear;
    Student := TDao.ListStu();
    if Student.Count<1 then
    begin
      ShowMessage('无可查看信息...');
      exit;
    end;

    for Stu in Student.Values do
    begin
      mmo1.Lines.Add(Stu.Id+','+Stu.Name+','+Stu.Age.ToString);
    end;
end;

end.

