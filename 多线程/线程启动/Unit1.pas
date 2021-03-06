unit Unit1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    Vcl.StdCtrls, UnitThreads;

type
    TForm1 = class(TForm)
        btn1: TButton;
        lbl1: TLabel;
        btn2: TButton;
        grp1: TGroupBox;
        lbl2: TLabel;
        btnStart: TButton;
        btnSuspend: TButton;
        btnContinue: TButton;
        btnStop: TButton;
        procedure btn2Click(Sender: TObject);
        procedure btn1Click(Sender: TObject);
        procedure btnStartClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure btnSuspendClick(Sender: TObject);
        procedure btnContinueClick(Sender: TObject);
        procedure btnStopClick(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
    end;

var
    Form1: TForm1;
    WorkThread: TWork;


implementation

{$R *.dfm}
procedure TForm1.btn1Click(Sender: TObject);
begin
    //表示线程创建完成后是立即执行还是先挂起
    WorkThread.Start;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
    Self.lbl1.Caption := '0';
    //Num := 0;

end;

procedure TForm1.btnContinueClick(Sender: TObject);
begin
    WorkThread.Resume;
end;

procedure TForm1.btnStartClick(Sender: TObject);
begin
    try
        WorkThread.Start;
    except
        on E: Exception do
            ShowMessage('启动失败');
    end;
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
    WorkThread.FreeOnTerminate:=True;
end;

procedure TForm1.btnSuspendClick(Sender: TObject);
begin
    WorkThread.Suspended := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    WorkThread := TWork.Create(True);
end;

end.

