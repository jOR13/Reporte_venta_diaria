page 60002 Cedis
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = tableCedis;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(name; Rec.nameCedis)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}