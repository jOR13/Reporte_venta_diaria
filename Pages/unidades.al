page 60003 Unidades
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = tableUnidades;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.nameUnidad)
                {
                    ApplicationArea = All;

                }
                field(Capacidad; Rec.Capacidad)
                {
                    ApplicationArea = All;

                }
                field(CEDIS; Rec.CEDIS)
                {
                    ToolTip = 'Specifies the value of the CEDIS field';
                    ApplicationArea = All;
                }
                field(Chofer; Rec.Chofer)
                {
                    ToolTip = 'Specifies the value of the Chofer field';
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