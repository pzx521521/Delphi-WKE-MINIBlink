unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Wke, ExtCtrls;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    FWebView: TWkeWebView;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
function test: String;
var
  AMsg: string;
begin
  AMsg := '这是Delphi字符串!!!';
  ShowMessage(AMsg);
  Result := AMsg;
end;

function test1(msg: String): String;
var
  AMsg: string;
begin
  AMsg := msg + ', 这是Delphi字符串!!!';
  Result := AMsg;
end;

function _Test(p1, p2, es_: wkeJSState): wkeJSValue;
begin
  Result := es_.String_(test);
end;

function _Test1(p1, p2, es_: wkeJSState): wkeJSValue;
var
  _msg: String;
begin
  _msg := (es_.ArgToString(es_, 0));  // 获取从Html传入的参数
  Result := es_.String_(test1(_msg));
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FWebView:= wkeCreateWebWindow(WKE_WINDOW_TYPE_CONTROL, Panel1.Handle, 0, 0, Panel1.Width, Panel1.Height);
  FWebView.Initialize;
  FWebView.ShowWindow(True);
  JScript.BindFunction('delphi_Test', @_Test, 1);
  JScript.BindFunction('delphi_Test1', @_Test1, 1);
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  FWebView.LoadFile('html\BallPool.html');
end;

procedure TfrmMain.Button2Click(Sender: TObject);
begin
  wkeRunJS(FWebView, 'appTitle.checkText = "hahaha"')
end;

procedure TfrmMain.Button3Click(Sender: TObject);
begin
  FWebView.LoadFile('html\index.vue.html');
end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
  FWebView.LoadFile('html\index.html');
end;

end.
