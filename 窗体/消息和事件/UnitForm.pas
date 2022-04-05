unit UnitForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Unit1, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnMessage: TButton;
    btn2: TButton;
    procedure btnMessageClick(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
var
  Msg:TMyMsg;
  MsgAccepter:TMsgAccepter;
begin
  Msg.MsgNum:=2003;
  Msg.MsgText:='消息和事件';
  MsgAccepter:=TMsgAccepter.Create;
  // 分发消息
  MsgAccepter.Dispatch(Msg);
end;
procedure TForm1.btnMessageClick(Sender: TObject);
var
  Msg:TMyMsg;
  MsgAccepter:TMsgAccepter;
begin
  Msg.MsgNum:=2000;
  Msg.MsgText:='消息和事件';
  MsgAccepter:=TMsgAccepter.Create;
  // 分发消息
  MsgAccepter.Dispatch(Msg);
end;



end.
