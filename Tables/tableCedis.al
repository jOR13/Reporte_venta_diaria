table 60002 tableCedis
{
    DataClassification = ToBeClassified;
    Permissions = TableData "tableCedis" = rimd;


    fields
    {
        field(1; id; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; nameCedis; code[150])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; id)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}