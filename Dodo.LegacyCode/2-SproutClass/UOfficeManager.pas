unit UOfficeManager;

interface

type
  OfficeManager = class
  private
    name_: string;
    items_: IEnumerable<string>;
  public
    property Items: IEnumerable<string> read items_ write items_;
    property Name: string read name_ write name_;
  end;

implementation

end.
