unit UnitAdd;

interface

uses
    UnitClass, UnitDao, Winapi.Windows, Winapi.Messages, System.SysUtils,
    System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
    Vcl.Dialogs, Vcl.StdCtrls;

type
    TFormAdd = class(TForm)
        lblName: TLabel;
        lblAge: TLabel;
        edtName: TEdit;
        edtAge: TEdit;
        btnSave: TButton;
        btnCancel: TButton;
        procedure btnSaveClick(Sender: TObject);
        procedure btnCancelClick(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    FormAdd: TFormAdd;


implementation

{$R *.dfm}

procedure TFormAdd.btnCancelClick(Sender: TObject);
begin
    Self.Close;
end;

procedure TFormAdd.btnSaveClick(Sender: TObject);
var
    Name: string;
    Id: string;
    Age: Integer;

begin

    try
        try
            Name := Self.edtName.Text;
            Id := TGUID.NewGuid.ToString;
         if not Name.Equals(Name) then begin
                ShowMessage('姓名不能为空');
            end;

            TDao.Add(TStudent.Create(Name, StrToInt(Self.edtAge.Text), Id));
        except
            on E: Exception do
            ShowMessage('请输入内容后保存');
        end;

    finally
    end;

end;

end.

