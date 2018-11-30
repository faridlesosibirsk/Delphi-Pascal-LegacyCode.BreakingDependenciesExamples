unit UCustomer;

interface

uses
  UOrder;

type

  Customer = class
  public
    function HasOrder(Order: Order): boolean;
  public
    procedure Refresh(Order: Order);
  end;

implementation

{ Customer }

function Customer.HasOrder(Order: Order): boolean;
begin
  // some logic here ...
  result := false;
end;

procedure Customer.Refresh(Order: Order);
begin
  // some logic here...
end;

end.
