unit UnitThreads;

interface

uses
    System.Classes, System.SysUtils;

type
    TWork = class(TThread)
    private    { Private declarations }
    protected
        procedure Execute; override;
    public
        procedure Operation;
    end;

implementation

//?ֲ?????
uses
    Unit1;
{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TWork.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

{ TWork }

procedure TWork.Execute;
begin
    Operation();
  { Place thread code here }
end;

procedure TWork.Operation;
var
    Num: Integer;
begin
    if FreeOnTerminate then
    begin
      Exit;
    end;

    for Num := 1 to 100000 do begin
        Form1.lbl2.Caption := Num.ToString;
        TThread.Sleep(100);
    end;
end;

end.

