unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,IdHTTP, IdGlobal, Vcl.StdCtrls;



type
  TForm1 = class(TForm)
    btnput: TButton;
    Memo1: TMemo;
    btnpost: TButton;
    Memo2: TMemo;
    Edit1: TEdit;
    ID: TLabel;
    btnget: TButton;
    btndelete: TButton;
    Memo3: TMemo;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnreset: TButton;
    Label3: TLabel;
    Memo4: TMemo;
    procedure btnputClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnpostClick(Sender: TObject);
    procedure btngetClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnresetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses IDhttpUtils;

{$R *.dfm}

//Put(update)
procedure TForm1.btnputClick(Sender: TObject);
var
jsontosend:TStream;
 http:TIDHttp;
 id:string;
begin
http := TIdHttp.Create(nil);
http.HandleRedirects := true;
http.ReadTimeout := 5000;
http.MaxAuthRetries := 0;
http.HTTPOptions := [hoInProcessAuth];

 // Http.Request.CustomHeaders.Clear;
 // Http.Request.CustomHeaders.AddStrings('');
  Http.Request.BasicAuthentication := true;
 // Http.Request.Username := '';
 // Http.Request.Password := '';
  Http.Request.Accept := 'http';
  Http.Request.ContentType := 'application/json';
  id:= edit1.Text;
jsonToSend := TStringStream.create(memo2.Text,system.sysUtils.TEncoding.UTF8);
Memo2.Lines.Text := http.Put('http://localhost/htdocs/Rest/CHRestAPI/public/api/pricing/update/'+id, jsonToSend);
http.free;
jsontoSend.free;
end;

//Post
procedure TForm1.btnpostClick(Sender: TObject);
 var
jsontosend:TStream;
 http:TIDHttp;
begin
http := TIdHttp.Create(nil);
http.HandleRedirects := true;
http.ReadTimeout := 5000;
http.MaxAuthRetries := 0;
http.HTTPOptions := [hoInProcessAuth];

 // Http.Request.CustomHeaders.Clear;
 // Http.Request.CustomHeaders.AddStrings('');
  Http.Request.BasicAuthentication := true;
 // Http.Request.Username := '';
 // Http.Request.Password := '';
  Http.Request.Accept := 'http';
  Http.Request.ContentType := 'application/json';

jsonToSend := TStringStream.create(memo1.Text,system.sysUtils.TEncoding.UTF8);
Memo1.Lines.Text := http.Post('http://localhost/htdocs/Rest/CHRestAPI/public/api/pricing/add', jsonToSend);
http.free;
jsontoSend.free;
end;

 //Get
procedure TForm1.btngetClick(Sender: TObject);
var
//jsontoReceive:TStream;
 http:TIDHttp;
begin
http := TIdHttp.Create(nil);
http.HandleRedirects := true;
http.ReadTimeout := 5000;
http.MaxAuthRetries := 0;
http.HTTPOptions := [hoInProcessAuth];

 // Http.Request.CustomHeaders.Clear;
 // Http.Request.CustomHeaders.AddStrings('');
  Http.Request.BasicAuthentication := true;
 // Http.Request.Username := '';
 // Http.Request.Password := '';
  Http.Request.Accept := 'http';
  Http.Request.ContentType := 'application/json';

//jsonToReceive := TStream.Create;
Memo3.Lines.Text := http.Get('http://localhost/htdocs/Rest/CHRestAPI/public/api/pricing');


http.free;
//jsontoSend.free;
end;
 //Delete
procedure TForm1.btndeleteClick(Sender: TObject);
var
jsontosend:TStream;
 http:TIDHttp;
 id:string;
begin
http := TIdHttp.Create(nil);
http.HandleRedirects := true;
http.ReadTimeout := 5000;
http.MaxAuthRetries := 0;
http.HTTPOptions := [hoInProcessAuth];
 {
 //Basic Delete function without confirmation response.
   Http.Request.BasicAuthentication := true;
   Http.Request.Accept := 'http';
  Http.Request.ContentType := 'application/json';
  id:= edit2.Text;
http.Delete('http://localhost/htdocs/Rest/CHRestAPI/public/api/pricing/delete/'+id);
http.free;
}
// Uses Added IDhttpUtils which creatres a restresponse
  Http.Request.BasicAuthentication := true;
 // Http.Request.Username := '';
 // Http.Request.Password := '';
  Http.Request.Accept := 'http';
  Http.Request.ContentType := 'application/json';
  id:= edit2.Text;
  memo4.Text := edit2.Text;
 jsonToSend := TStringStream.create(memo4.text,system.sysUtils.TEncoding.UTF8);
http.Deleteex('http://localhost/htdocs/Rest/CHRestAPI/public/api/pricing/delete/',jsonToSend);
http.free;
jsontoSend.free;
end;

procedure TForm1.btnresetClick(Sender: TObject);
begin
memo1.Clear;
memo2.Clear;
memo3.clear;
 formshow(self);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  memo1.Text:= '   {  '+ #13#10+
         '  "sku" : "Tas023", '+ #13#10+
  '  "skusize" : "1x6", '+ #13#10+
  '  "barcode" : "6348976967485", '+ #13#10+
  '  "description" : "Pet Edables ",   '+ #13#10+
  '  "price" : "102.99"     '+ #13#10+
  '}     ';

   memo2.Text:= '   {  '+ #13#10+
         '  "sku" : "Tas032", '+ #13#10+
  '  "skusize" : "1", '+ #13#10+
  '  "barcode" : "569865698569-", '+ #13#10+
  '  "description" : "Pet Cats ",   '+ #13#10+
  '  "price" : "1092.00"     '+ #13#10+
  '}     ';

  edit1.text:= '7';

  edit2.Text:= '12'

end;


end.


