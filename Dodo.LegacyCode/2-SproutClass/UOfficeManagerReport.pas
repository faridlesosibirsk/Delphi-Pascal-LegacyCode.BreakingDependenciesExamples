unit UOfficeManagerReport;

interface

uses
  UOfficeManager,
  System.Generics.Collections;

type

  StringBuilder = class
  public
    procedure AppendLine(line: string);
    function ToString: string;
  end;

  OfficeManagerReport = class
  private
    function GetDatabaseRecordsFor(officeManager: officeManager): TList<string>;
  public
    function BuildHtmlStatement(officeManager: officeManager): string;
  end;

implementation

{ OfficeManagerReport }

function OfficeManagerReport.BuildHtmlStatement(officeManager
  : officeManager): string;
var
  records: TList<string>;
  return: StringBuilder;
  header: string;
  record1: string;
  footer: string;
begin
  records := GetDatabaseRecordsFor(officeManager);
  return := StringBuilder.Create;
  return.AppendLine('<table>');
  header := '<h1> Office Manager Report   for <b> { officeManager.Name } < / b > < / h1 > ';
  return.AppendLine(header);
  for record1 in records do
  begin
    return.AppendLine('<p>Record - {' + record1 + ' } - < / p > ');
  end;
  footer := '<p> - - - - - - - - - -2017(c) - - - - - - - - - - < / p > ';
  return.AppendLine(footer);
  return.AppendLine(' < / table > ');

  result := return.ToString();
end;

function OfficeManagerReport.GetDatabaseRecordsFor(officeManager: officeManager)
  : TList<string>;
begin
  // some complicated DB call to get records
  result := TList<string>.Create;
end;

{ StringBuilder }

procedure StringBuilder.AppendLine(line: string);
begin
  //
end;

function StringBuilder.ToString: string;
begin
  result := '';
end;

end.
