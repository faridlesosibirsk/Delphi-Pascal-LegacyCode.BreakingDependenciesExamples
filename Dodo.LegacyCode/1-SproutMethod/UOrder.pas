unit UOrder;

interface

type

  Order = class
  private
    getter: integer;
    setter: integer;
  public
    property Price: integer read getter write setter;
    procedure Recalculate;
  end;

implementation

{ Order }

procedure Order.Recalculate;
begin
  // some logic here ...
end;

end.
