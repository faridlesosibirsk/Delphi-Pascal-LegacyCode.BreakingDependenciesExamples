program UnitTest;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  UCustomer in '..\Dodo.LegacyCode\1-SproutMethod\UCustomer.pas',
  UOrder in '..\Dodo.LegacyCode\1-SproutMethod\UOrder.pas',
  UOrderProcessor in '..\Dodo.LegacyCode\1-SproutMethod\UOrderProcessor.pas',
  DUnitTestRunner,
  UOrderCalculator in '..\Dodo.LegacyCode\0-PreserveSignatures\UOrderCalculator.pas',
  UOfficeManager in '..\Dodo.LegacyCode\2-SproutClass\UOfficeManager.pas',
  UOfficeManagerReport in '..\Dodo.LegacyCode\2-SproutClass\UOfficeManagerReport.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

