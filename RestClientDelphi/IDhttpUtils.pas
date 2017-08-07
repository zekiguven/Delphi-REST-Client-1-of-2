unit IDhttpUtils;

interface
uses
 System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,IdHTTP, IdGlobal, Vcl.StdCtrls;

 type
 TIdHTTP = class(IdHttp.TIdHttp)
 public
 procedure DeleteEx( AURL:string;AReponseContent:TStream);
    end;

implementation


 procedure TIDHTTP.DeleteEx( AURL:string;AReponseContent:TStream);
begin
DoRequest(ID_HttpMethodDelete,AURL,nil,AReponseContent,[]);
end;

end.
