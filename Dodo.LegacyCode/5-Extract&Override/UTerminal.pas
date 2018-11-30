unit UTerminal;

interface

type
  Terminal = class
  public
    procedure PrintLine(message1: string); virtual;
  end;

implementation

{ Terminal }

procedure Terminal.PrintLine(message1: string);
begin
   system.WriteLn(message1);
end;

end.
