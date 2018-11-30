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
  UOfficeManagerReport in '..\Dodo.LegacyCode\2-SproutClass\UOfficeManagerReport.pas',
  UEmployee in '..\Dodo.LegacyCode\3-WrapMethod\UEmployee.pas',
  UMoney in '..\Dodo.LegacyCode\3-WrapMethod\UMoney.pas',
  UPaymentService in '..\Dodo.LegacyCode\3-WrapMethod\UPaymentService.pas',
  UTimeEntry in '..\Dodo.LegacyCode\3-WrapMethod\UTimeEntry.pas',
  Unit1 in '..\Dodo.LegacyCode\4-WrapClass\Unit1.pas',
  Unit4 in '..\Dodo.LegacyCode\4-WrapClass\Unit4.pas',
  Unit2 in '..\Dodo.LegacyCode\4-WrapClass\Unit2.pas',
  Unit3 in '..\Dodo.LegacyCode\4-WrapClass\Unit3.pas',
  UPrinter in '..\Dodo.LegacyCode\5-Extract&Override\UPrinter.pas',
  UShoppingCart in '..\Dodo.LegacyCode\5-Extract&Override\UShoppingCart.pas',
  UTerminal in '..\Dodo.LegacyCode\5-Extract&Override\UTerminal.pas',
  UContractorLegacy in '..\Dodo.LegacyCode\6-ParallelDesign\UContractorLegacy.pas',
  UUtils in '..\Dodo.LegacyCode\7-StaticClass\UUtils.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

