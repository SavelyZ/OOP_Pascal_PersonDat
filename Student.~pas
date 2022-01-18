unit Student;

interface
uses Person, sysutils;
type
 TStudent = class(TPerson)
private
  group_, kurs_: string;
public
	constructor Create(F: integer);overload;
	constructor Create(f,n,o,g,k: string);overload;
  procedure SetGroup(s: string);
  procedure SetKurs(s:string);
  function GetFullData:string;override;
	property FullData:string read GetFullData;
	property group:string read group_ write SetGroup;
	property kurs: string read kurs_ write SetKurs;
end;
implementation
constructor  TStudent.Create(F: integer);
  Begin
    group:='';
    kurs:='';
  end;
constructor TStudent.Create(f,n,o,g,k: string);
begin
    inherited Create(f,n,o);
    group:= g; // прописать как в Person Set...
    kurs:= k;
end;
procedure  TStudent.SetGroup(s:string);
  Begin
      s:= LowerCase(s);
      s[1] :=UpCase(s[1]);
      group_:=s;
  end;
procedure TStudent.SetKurs(s: string);
Begin
    s:= LowerCase(s);
    s[1] :=UpCase(s[1]);
    kurs_:=s;
End;

function TStudent.GetFullData: string;
Begin
  result:= Fam+' '+Name+' '+Otch+' '+group+' '+kurs;
end;

end.


