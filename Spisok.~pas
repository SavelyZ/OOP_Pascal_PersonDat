unit Spisok;

interface
   uses Person;
type
  TSpisok=class
    private
        f:text;
        Spis:array[1..10] of TPerson;
        n:integer;
    public
        property kol:integer read n;
        procedure AddPers(p:TPerson);
        function GetPers(i:integer):TPerson;
        function GetStringData(i:integer):string;
        constructor Create;  overload;
        constructor Create(s:string); overload;
        destructor Destroy; overload;
        property List[i:integer]:TPerson read GetPers;
        property PersonListS [i:integer] :string read GetStringData;
    end;
implementation
    procedure TSpisok.AddPers(p:TPerson);
      begin
         n:=n+1;
         Spis[n]:=p;
      end;
    function TSpisok.GetPers(i:integer):TPerson;
    begin
       result:=Spis[i];
    end;

    constructor TSpisok.Create(s:string);
     var
       s1,s2,s3:string;
       p:Tperson;
    begin
       AssignFile(f,s);
       Reset(f);
       while not eof(f) do
         begin
            readln(f,s1);
            readln(f,s2);
            readln(f,s3);
            p:=TPerson.Create(s1,s2,s3);
            AddPers(p);
         end;
       Close(f);
    end;

    constructor TSpisok.Create;
    var
       s,s1,s2,s3:string;
       p:Tperson;
        begin
         s:='D:\3\text.txt';
       AssignFile(f,s);
       Reset(f);
       while not eof(f) do
      begin
        readln(f,s1);
            readln(f,s2);
            readln(f,s3);
            p:=TPerson.Create(s1,s2,s3);
            AddPers(p);
         end;
       Close(f);
      end;

     function TSpisok.GetStringData(i:integer):string;
     begin
        result:=List[i].GetFullData;
     end;

     destructor TSpisok.Destroy;
     var  s: string;
     i:integer;
     begin
     s:='text.txt';
    AssignFile(f, s);
    Rewrite(f);
    for i:=1 to kol do
    begin
      Writeln(f,Spis[i].Fam);
      Writeln(f,Spis[i].Name);
      Writeln(f,Spis[i].Otch);
    end;
    CloseFile(f);
  end;
end.

