unit UnitClass;

interface

type
    TStudent = class
    private
        FName: string;
        FAge: Integer;
        FId: string;
    public
        constructor Create(Name: string; Age: Integer; Id: string); overload;
        constructor Create(); overload;
        property Name: string read FName write FName;
        property Age: Integer read FAge write FAge;
        property Id: string read FId write FId;
    end;

implementation

{ TStudent }

constructor TStudent.Create(Name: string; Age: Integer; Id: string);
begin
    Self.FName := Name;
    Self.FAge := Age;
    Self.FId := Id;
end;

constructor TStudent.Create;
begin

end;

end.

