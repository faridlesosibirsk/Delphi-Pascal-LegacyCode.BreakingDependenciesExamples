unit UOrderProcessor;

interface

uses
  UOrder, UCustomer,
  System.Generics.Collections;

type
  OrderProcessor = class
  private
    orders: TList<Order>;
  public
    function GetAvailableOrdersFor(Customer: Customer): TList<Order>;
  published
    constructor create(orders: TList<Order>);
  end;

implementation

{ OrderProcessor }

function OrderProcessor.GetAvailableOrdersFor(Customer: Customer): TList<Order>;
var
  return: TList<Order>;
  order1: Order;
begin
  return := TList<Order>.create;
  for order1 in return do
  begin
    // ...

    order1.Recalculate;
    return.Add(order1);
  end;
  result := return;
end;

{ OrderProcessor }

constructor OrderProcessor.create(orders: TList<Order>);
begin
  self.orders := orders;
end;

end.
