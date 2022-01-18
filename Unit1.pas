unit Unit1; //main

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Person, Spisok, Sotrudnik, Student;

type
  TForm1 = class(TForm)
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    ListBox1: TListBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  L:TSpisok;
  typePers: string;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  i:integer;
begin
  typePers:='chel';
 if Form1.OpenDialog1.Execute then
    L:=TSpisok.Create(Form1.OpenDialog1.FileName)
 else
    L:=TSpisok.Create;
 for i:=1 to L.kol do
 begin
   Form1.ListBox1.AddItem(L.List[i].GetFullData, Sender);
 end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
    typePers:='stud';
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
    typePers:='sotr'
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
    typePers:='chel';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  p:TPerson;
  pSo:TSotrudnik;
  PSt:TStudent;
  i:integer;
  s:string;
begin
  if typePers = 'sotr'
  then begin
          pSo:=TSotrudnik.Create(Form1.Edit1.Text,Form1.Edit2.Text,Form1.Edit3.Text, Form1.Edit6.Text);
          L.AddPers(pSo);
          Form1.ListBox1.AddItem(pSo.GetFullData, Sender);
      end
  else if typePers = 'stud'
        then Begin
                pSt:=TStudent.Create(Form1.Edit1.Text,Form1.Edit2.Text,Form1.Edit3.Text,Form1.Edit4.Text,Form1.Edit5.Text);
                L.AddPers(pSt);
                Form1.ListBox1.AddItem(pSt.GetFullData, Sender);
             end
        else Begin
                p:=TPerson.Create(Form1.Edit1.Text,Form1.Edit2.Text,Form1.Edit3.Text);
                L.AddPers(p);
                Form1.ListBox1.AddItem(p.GetFullData, Sender);
             end;

end;

end.
