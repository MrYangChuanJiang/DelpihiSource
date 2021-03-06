unit Unit1;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
    Vcl.StdCtrls;

type
    TForm1 = class(TForm)
        btn1: TButton;
        btnMessage: TButton;
        procedure btn1Click(Sender: TObject);
        procedure btnMessageClick(Sender: TObject);
    private    { Private declarations }
    public    { Public declarations }
        procedure ShowMyMsg(var msg: TMessage); message WM_USER + 1; {消息编号}
    end;

var
    Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
//    ShowMessage('HELLO WORLD');
    Application.MessageBox('Hello world', PWideChar('温馨提示!!!'), 3)

end;

procedure TForm1.btnMessageClick(Sender: TObject);
begin
    {发送参数 参数1 窗体句柄  参数2 错误编号 参数3 消息类型,消息的内容}
    SendMessage(self.Handle, WM_USER + 1, 102, Integer(PChar('你好')));
end;

{消息处理过程,该过程无需显示调用}
procedure TForm1.ShowMyMsg(var msg: TMessage);
begin
    ShowMessage(PChar(msg.LParam));
end;

end.

