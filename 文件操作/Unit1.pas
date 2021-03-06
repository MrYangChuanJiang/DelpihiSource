unit Unit1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    Vcl.StdCtrls, Vcl.ExtCtrls, System.iniFiles;

type
    TFormINI = class(TForm)
        lblName: TLabel;
        edtName: TEdit;
        lblSex: TLabel;
        rgSex: TRadioGroup;
        rbMan: TRadioButton;
        rbWoMan: TRadioButton;
        lblAge: TLabel;
        edtAge: TEdit;
        grp1: TGroupBox;
        lbl1: TLabel;
        chk1: TCheckBox;
        chk2: TCheckBox;
        chk3: TCheckBox;
        cbbAddress: TComboBox;
        lblAddress: TLabel;
        btnSave: TButton;
        procedure btnSaveClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    FormINI: TFormINI;


implementation

{$R *.dfm}

procedure TFormINI.btnSaveClick(Sender: TObject);
var
    Inifile: TIniFile;
    AcFilePath: string;
    Section: string;
begin
  // ?????ļ?
    AcFilePath := ExtractFilePath(ExtractFileDir(Application.ExeName) + '..') + 'UserConfig.ini';
    Inifile := TIniFile.Create(AcFilePath);

    Section := 'Basic';
    Inifile.WriteString(Section, 'edtName', Self.edtName.text);
    Inifile.WriteString(Section, 'edtAge', Self.edtAge.text);
    Inifile.WriteBool(Section, 'rbMan', Self.rbMan.Checked);
    Inifile.WriteBool(Section, 'rbWoMan', Self.rbWoMan.Checked);
    Inifile.WriteBool(Section, 'chk1', Self.chk1.Checked);
    Inifile.WriteBool(Section, 'chk2', Self.chk2.Checked);
    Inifile.WriteBool(Section, 'chk3', Self.chk3.Checked);
    Inifile.WriteInteger(Section, 'cbbAddress', cbbAddress.ItemIndex);

end;

procedure TFormINI.FormCreate(Sender: TObject);
var
    IniFile: TIniFile;
    AcFilePath: string;
    Section: string;

begin
    Section := 'Basic';
    AcFilePath := ExtractFilePath(ExtractFileDir(Application.ExeName) + '..') + 'UserConfig.ini';
    IniFile := TIniFile.Create(AcFilePath);
    edtName.Text := IniFile.ReadString(Section, 'edtName', '');
    edtAge.Text := IniFile.ReadString(Section, 'edtAge', '');
    rbMan.Checked := IniFile.ReadBool(Section, 'rbMan', false);
    rbWoMan.Checked := IniFile.ReadBool(Section, 'rbWoMan', false);
    Self.chk1.Checked := IniFile.ReadBool(Section, 'chk1', false);
    Self.chk2.Checked := IniFile.ReadBool(Section, 'chk2', false);
    Self.chk3.Checked := IniFile.ReadBool(Section, 'chk3', false);
    Self.cbbAddress.ItemIndex:=IniFile.ReadInteger(Section,'cbbAddress',0);
end;

end.

