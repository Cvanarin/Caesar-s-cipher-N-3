unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit1;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  ListBox1.Items.Add(Form1.edit1.text);
  ListBox1.Items.SaveToFile('Number.txt');
  ListBox2.Items.Add(Form1.Memo2.text);
  ListBox2.Items.SaveToFile('Text.txt');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  ListBox1.Items.LoadFromFile('Number.txt');
  ListBox2.Items.LoadFromFile('Text.txt');
end;

procedure TForm2.ListBox1DblClick(Sender: TObject);
var k:integer;
begin
  k:=ListBox1.ItemIndex;
  Form1.Memo2.Clear;
  Form1.Memo2.Text:=ListBox2.Items[k];
  Form1.Edit1.Text:=ListBox1.Items[k];
end;

procedure TForm2.ListBox2DblClick(Sender: TObject);
begin
  k:=ListBox2.ItemIndex;
  Form1.Memo2.Clear;
  Form1.Memo2.Text:=ListBox2.Items[k];
  Form1.Edit1.Text:=ListBox1.Items[k];
end;

end.

