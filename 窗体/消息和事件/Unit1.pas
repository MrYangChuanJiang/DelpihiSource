unit Unit1;

interface

uses
    System.SysUtils, Winapi.Windows, Vcl.Dialogs;

type
    {用户传输消息的结构}
    TMyMsg = record
        MsgNum: Cardinal;  {消息编号}
        MsgText: ShortString; {传输消息内容}
    end;

    {消息处理类}
    TMsgAccepter = class(TObject)
    private    {用于处理消息编号为2000的消息}
        procedure AccpeterMsg2000(var msg: TMyMsg); message 2000;
        procedure AccpeterMsg2002(var msg: TMyMsg); message 2002;
    public        // 默认实现方法
        procedure DefaultHandler(var message); override;
    end;

implementation

{ IMsgAccepter }
procedure TMsgAccepter.AccpeterMsg2000(var msg: TMyMsg);
var
    messageStr: string;
begin
    messageStr := '接收到消息,编号是:' + msg.MsgNum.ToString + '消息内容是:' + msg.MsgText;
    ShowMessage(messageStr);
end;

procedure TMsgAccepter.AccpeterMsg2002(var msg: TMyMsg);
var
    messageStr: string;
begin
    messageStr := '接收到消息,编号是:' + msg.MsgNum.ToString + '消息内容是:' + msg.MsgText;
    ShowMessage(messageStr);
end;

procedure TMsgAccepter.DefaultHandler(var message);
var
    messageStr: string;
    Msg:TMyMsg;
begin
    Msg:=TMyMsg(message);
    messageStr := '对不起,改消息编号无法处理...'+Msg.MsgNum.ToString;
    ShowMessage(messageStr);
end;

end.

