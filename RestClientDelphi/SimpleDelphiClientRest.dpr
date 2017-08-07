program SimpleDelphiClientRest;

uses
  Vcl.Forms,
  IDhttpUtils in 'D:\Delphi\Final Working Rest\Client Json\IDhttpUtils.pas',
  main in 'D:\Delphi\Final Working Rest\Client Json\main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
