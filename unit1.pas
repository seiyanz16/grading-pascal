unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitung: TButton;
    edtNama: TEdit;
    edtNilai: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblGrade: TLabel;
    lblStatus: TLabel;
    Panel1: TPanel;
    procedure btnHitungClick(Sender: TObject);
    procedure edtNamaChange(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    nama: String;
    nilai: Double;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.edtNamaChange(Sender: TObject);
begin
  nama := edtNama.Text;
end;

procedure TForm1.btnHitungClick(Sender: TObject);
begin
    nilai := StrToFloat(edtNilai.Text);

    if nilai > 70 then
    lblStatus.Caption := 'Lulus'
    else
    lblStatus.Caption := 'Tidak Lulus';

    if nilai >= 85 then
    lblGrade.Caption := 'A'
    else if nilai >= 75 then
    lblGrade.Caption := 'B'
    else if nilai >= 60 then
    lblGrade.Caption := 'C'
    else if nilai >= 45 then
    lblGrade.Caption := 'D'
    else
    lblGrade.Caption := 'E';

    case lblGrade.Caption of
    'A', 'B': begin
      lblGrade.Font.Color := clGreen;
      lblStatus.Font.Color := clGreen;
    end;
    'C': begin
      lblGrade.Font.Color := clYellow;
      lblStatus.Font.Color := clYellow;
    end
    else begin
      lblGrade.Font.Color := clRed;
      lblStatus.Font.Color := clRed;
    end;
    end;

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

end.

