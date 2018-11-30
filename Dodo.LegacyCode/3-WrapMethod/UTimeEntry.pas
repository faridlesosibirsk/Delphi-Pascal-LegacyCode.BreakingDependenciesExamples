unit UTimeEntry;

interface

type
  TimeEntry = class
  private
    hours_: integer;
  public
    property Hours: integer read hours_ write hours_;
  end;

implementation

end.
