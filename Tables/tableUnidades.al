table 60003 tableUnidades
{
    DataClassification = ToBeClassified;
    Permissions = TableData "tableReporteDiario" = rimd;
    fields
    {
        field(1; id; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; nameUnidad; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Capacidad; decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(4; CEDIS; code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = tableCedis.nameCedis;
            ValidateTableRelation = false;
        }
        field(5; Chofer; Text[100])
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

        key(Key2; nameUnidad)
        {
        }
        key(Key3; CEDIS)
        {
        }
        key(Key4; Chofer)
        {
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