program wkeTest;

uses
  Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  Wke in 'Wke.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
