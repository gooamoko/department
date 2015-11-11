unit dep_coursereportform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TPractReportForm = class(TForm)
    PractRep: TQuickRep;
    TitleBand: TQRBand;
    MinistryLabel: TQRLabel;
    SchoolNameLabel: TQRLabel;
    QRLabel3: TQRLabel;
    CourseLabel: TQRLabel;
    GroupLabel: TQRLabel;
    SpecLabel: TQRLabel;
    DetailBand: TQRBand;
    ColumnHeaderBand: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel50: TQRLabel;
    NumLabel: TQRLabel;
    StudNameText: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    procedure NumLabelPrint(sender: TObject; var Value: String);
    procedure QRLabel20Print(sender: TObject; var Value: String);
    procedure QRLabel6Print(sender: TObject; var Value: String);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure StudNameTextPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PractReportForm: TPractReportForm;

implementation

uses dep_main;

{$R *.dfm}

procedure TPractReportForm.NumLabelPrint(sender: TObject;
  var Value: String);
begin
Value := IntToStr(MainForm.StudentsQuery.RecNo);
end;

procedure TPractReportForm.QRLabel20Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TPractReportForm.QRLabel6Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TPractReportForm.QRLabel7Print(sender: TObject;
  var Value: String);
begin
Value := '';
end;

procedure TPractReportForm.StudNameTextPrint(sender: TObject;
  var Value: String);
begin
Value := ' '+Value;
end;

end.
