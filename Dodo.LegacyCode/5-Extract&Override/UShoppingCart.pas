unit UShoppingCart;

interface

type
  ShoppingCart = class
  private
    totalPrice_: integer;
  public
    property TotalPrice: integer read totalPrice_ write totalPrice_;
  end;

implementation

end.
