unit Unit2;

interface

type
    TStudent = class
    private
        FName: string;
    public

        property Name: string read FName write FName;

        // ���췽��
        constructor Create; overload;
        // �вι��췽��
        constructor Create(FName: string); overload;

    end;

implementation

{ TStudent }

constructor TStudent.Create;
begin

end;

constructor TStudent.Create(FName: string);
begin
    Self.FName := FName;
end;

end.

