unit Person;

interface
uses sysutils;
type
  TPerson=class
    private
       Fam_, Name_, Otch_:string;
    public
       procedure SetFam(s:string);
       procedure SetName(s:string);
       procedure SetOtch(s:string);
       constructor Create(f,n,o:string); overload;
       constructor Create;overload;
       constructor Create(P:TPerson);overload;
       function GetFullData:string;virtual;
       property Fam:string read Fam_ write SetFam;
       property Name:string read Name_ write SetName;
       property Otch:string read Otch_ write SetOtch;
    end;
implementation
    procedure TPerson.SetFam(s:string);
   var i:integer;
  begin
    s:= LowerCase(s);
    s[1] :=UpCase(s[1]);
    Fam_:=s;
  end;

  procedure TPerson.SetName(s:string);
  var i:integer;
  begin
    s:= LowerCase(s);
    s[1] :=UpCase(s[1]);
    Name_:=s;
  end;


  procedure TPerson.SetOtch(s:string);
  var i:integer;
  begin
     s:= LowerCase(s);
     s[1] :=UpCase(s[1]);
     Otch_:=s;
  end;

  constructor TPerson.Create;
       begin
          Fam:='';
          Name:='';
          Otch:='';
       end;
    constructor TPerson.Create(f,n,o:string);
       begin
          Fam:=f;
          Name:=n;
          Otch:=o;
       end;
    constructor TPerson.Create(p:TPerson);
       begin
          Fam:=p.Fam;
          Name:=p.Name;
          Otch:=p.Otch;
       end;
    function TPerson.GetFullData:string;
    begin
        result:=Fam+' '+Name+' '+Otch;
    end;
end.

