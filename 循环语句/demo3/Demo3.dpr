program Demo3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

procedure NarcissisticNumber();
var
    NarcissisticNum: Integer;
    {百位}
    Handreds: Integer;
    {十位}
    TenNumber: Integer;
    {个位}
    OneNumber: Integer;

begin

    Writeln('百位:', Handreds);
    Writeln('十位:', TenNumber);
    Writeln('个位:', OneNumber);
    for NarcissisticNum := 100 to 999 do begin
        Handreds := NarcissisticNum div 100;  {求百位值}
        TenNumber := (NarcissisticNum mod 100) div 10;  {求十位的值}
        OneNumber := (NarcissisticNum mod 100) mod 10;              {求个位的值}
        if (Handreds * Handreds * Handreds + TenNumber * TenNumber * TenNumber + OneNumber * OneNumber * OneNumber) = 153 then begin
          Writeln(Handreds,tennumber,onenumber);
        end;

    end;

end;

begin
    NarcissisticNumber();
    Readln;
end.

