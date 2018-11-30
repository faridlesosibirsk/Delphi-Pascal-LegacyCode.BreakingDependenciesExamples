unit UEmployee;

interface

uses
  UMoney,
  UTimeEntry, UPaymentService,
  System.Generics.Collections;

type
  Employee = class
  private
    hourlyPayRateUsd: integer;
  public
    procedure Pay(timeEntries: TList<TimeEntry>;
      paymentService: PaymentService);
  published
    constructor create;
  end;

implementation

{ Employee }

constructor Employee.create;
begin
  hourlyPayRateUsd := 35;
end;

procedure Employee.Pay(timeEntries: TList<TimeEntry>;
  paymentService: paymentService);
var
  totalAmount: Money;
  entry: TimeEntry;
begin
  totalAmount := Money.create;
  for entry in timeEntries do
  begin
    // var amount = entry.Hours * hourlyPayRateUsd;
    // totalAmount.Add(amount);
  end;
  // paymentService.Pay(this, totalAmount);
end;

end.
