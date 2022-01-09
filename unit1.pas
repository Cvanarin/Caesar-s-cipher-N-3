unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private

  public

  end;

var
  Form1: TForm1;
  st, st1, st2, st3: String;
  i, j, k, n, c, w: integer;
  t, t1: array [1..10000] of integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  k:=3*(StrToInt(Edit1.Text));
  st:=(Memo1.Text);
  for i:=1 to length(st) do
  begin
    n:=n+1;
    for j:=1 to 128 do
    begin
      if st[i]=chr(j) then t[i]:=j;
    end;
  end;
  for i:=1 to n do
  begin
    if (t[i]>64) and (91>t[i]) then
    begin
      c:=t[i];
      c:=c+k;
      while c>90 do c:=c-26;
      t[i]:=c;
    end;
    if t[i]>96 then
    begin
      c:=t[i];
      c:=c+k;
      while c>122 do c:=c-26;
      t[i]:=c;
    end;
  end;
  for i:=1 to length(st) do st1:=st1+(chr(t[i]));
  n:=0;
  Memo2.Text:=st1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  st3:='';
  st2:='';
  st2:=Memo2.Text;
  k:=3*(StrToInt(Edit1.Text));
  for i:=1 to length(st2) do
  begin
    n:=n+1;
    for j:=1 to 128 do
    begin
      if st2[i]=chr(j) then t1[i]:=j;
    end;
  end;
  for i:=1 to n do
  begin
    if (t1[i]>64) and (91>t1[i]) then
    begin
      c:=t1[i];
      c:=c-k;
      while c<65 do c:=c+26;
      t1[i]:=c;
    end;
    if t1[i]>96 then
    begin
      c:=t1[i];
      c:=c-k;
      while c<97 do c:=c+26;
      t1[i]:=c;
    end;
  end;
  for i:=1 to length(st2) do st3:=st3+(chr(t1[i]));
  n:=0;
  Memo3.Text:=st3;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  n:=0;
  Memo1.Text:='';
  Memo2.Text:='';
  Memo3.Text:='';
  st1:='';
  st2:='';
  st:='';
  st3:='';
  Edit1.text:='1';
  w:=0;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ListBox1.Visible:=true;
  Button5.Visible:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ListBox1.Visible:=false;
  Button5.Visible:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button3Click(Sender);
end;

end.

