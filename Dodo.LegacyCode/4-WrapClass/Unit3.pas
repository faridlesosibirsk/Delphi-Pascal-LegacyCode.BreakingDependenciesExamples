unit Unit3;

interface

uses
  {UEmployee,} UMoney;

type
  PaymentService = class
  public
    procedure Pay( { employee: Employee; } totalAmount: Money);
  end;

implementation

{ PaymentService }

procedure PaymentService.Pay({ employee: Employee; } totalAmount: Money);
begin
  // ...
end;

end.
