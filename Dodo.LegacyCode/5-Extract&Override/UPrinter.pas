unit UPrinter;

interface

uses
  UTerminal,
  UShoppingCart;

type
  Printer = class
  public
    procedure PrintReceipt(ShoppingCart: ShoppingCart);
  end;

implementation

{ Printer }

procedure Printer.PrintReceipt(ShoppingCart: ShoppingCart);
var
  terminal1: terminal;
begin

  system.Writeln('-----Receipt-------');
  system.Writeln('-------------------');

  terminal1 := terminal.Create;
  system.Writeln('<<Shopping cart items>>');

  system.Writeln('-----Total--------');
  system.Writeln('----- {shoppingCart.TotalPrice} ---------');
end;

end.
