unit UUtils;

interface

uses
  SysUtils;

type
  Presenter = class
    procedure show;
  end;

  Utils = class
  public
    class function Format(dateTime: TDateTime): string; static;
    class procedure ReFormat;
    class procedure AnotherFormat;
  end;

implementation

{ Presenter }

procedure Presenter.show;
begin
  // ...
  // formattedDateTime := Utils.Format(dateTime);
  // ...
end;

{ Utils }

class procedure Utils.AnotherFormat;
begin
  // ...
end;

class function Utils.Format(dateTime: TDateTime): string;
begin
  result := '$"DateTime - {dateTime.ToLongTimeString()}";';
end;

class procedure Utils.ReFormat;
begin
  // ...
end;

end.
