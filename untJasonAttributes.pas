unit untJasonAttributes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, untPessoa;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses REST.Json, System.JSON;

procedure TForm1.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
  JSONPessoa: TJSONObject;
begin
  Pessoa := TPessoa.Create;
//  Pessoa.Id := 1;
  Pessoa.Nome := 'Otavio';
  Pessoa.Ativa := True;

  JSONPessoa := TJson.ObjectToJsonObject(Pessoa);
  JSONPessoa.RemovePair('ativa').Free;

  Memo1.Lines.Text := JSONPessoa.Format;
end;

end.
