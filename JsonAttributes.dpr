program JsonAttributes;

uses
  Vcl.Forms,
  untJasonAttributes in 'untJasonAttributes.pas' {Form1},
  untPessoa in 'untPessoa.pas',
  Cadastro in 'Cadastro.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
