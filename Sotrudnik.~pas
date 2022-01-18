unit Sotrudnik;
interface

uses Person, sysutils;
type
 TSotrudnik = class(TPerson)
private
  tabNum_: string;
public
	constructor Create(F: integer);overload;
	constructor Create(f,n,o, tn: string);overload;
  procedure SetTabNum(s:string);
  function GetFullData:string;override;
	property FullData:string read GetFullData;
	property tabNum:string read tabNum_ write SetTabNum;
end;
implementation
constructor  TSotrudnik.Create(F: integer);
  Begin
    tabNum:='';
  end;
constructor TSotrudnik.Create(f,n,o,tn: string);
begin
    inherited Create(f,n,o);
    tabNum:= tn; // прописать как в Person Set...
end;

procedure TSotrudnik.SetTabNum(s:string);
begin
      s:= LowerCase(s);
      s[1] :=UpCase(s[1]);
      tabNum_:=s;
end;

function TSotrudnik.GetFullData: string;
Begin
  result:= Fam+' '+Name+' '+Otch+' '+tabNum;
end;

end.

