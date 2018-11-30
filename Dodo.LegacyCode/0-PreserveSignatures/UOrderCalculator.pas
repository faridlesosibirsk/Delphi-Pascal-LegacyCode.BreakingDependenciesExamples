unit UOrderCalculator;

interface

uses

  System.Generics.Collections;

type

  Order = class

  end;

  OrderCalculator = class
  public
    procedure Process(orders: TList<Order>; dailyTarget: integer;
      interestRate: double; compensationPercent: integer);
  end;

implementation

{ OrderCalculator }

procedure OrderCalculator.Process(orders: TList<Order>; dailyTarget: integer;
  interestRate: double; compensationPercent: integer);
begin
  // some complicated logic goes here ...
end;

end.
