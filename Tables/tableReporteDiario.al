table 60001 tableReporteDiario
{
    DataClassification = ToBeClassified;
    Permissions = TableData "tableUnidades" = r;
    fields
    {
        field(1; id; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;

        }
        field(2; Posting_Date; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(4; unidad; Text[150])
        {
            DataClassification = ToBeClassified;
            // TableRelation = tableUnidades.nameUnidad where(Capacidad = filter(> 0));
            // ValidateTableRelation = false;
        }
        field(24; Chofer; Text[150])
        {
            DataClassification = ToBeClassified;
            // TableRelation = tableUnidades.Chofer where(nameUnidad = field(unidad));
            // ValidateTableRelation = false;

        }
        field(3; cedis; Text[150])
        {
            DataClassification = ToBeClassified;
            // TableRelation = tableUnidades;
            // ValidateTableRelation = false;
        }

        field(22; TempMolecula; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(23; PresionMolecula; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(21; Capacidad; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            // TableRelation = tableUnidades.Capacidad;
            // ValidateTableRelation = false;
        }



        field(6; "OdometroInicialDeLaUnidad"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

        }
        field(7; "OdometroFInalDelaUnidad"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

        }
        field(8; "VariacionOdometro"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(9; "PorcentajeInicialRI"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(10; "PorcentajFianlRI"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(11; "VariacionRI"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(12; "MagnatelTanqueInicial"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(13; "MagnatelTanqueFinal"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(14; "VariacionMagnatelTanque"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(15; "MedidorCarburacionInicial"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(16; "MedidorCarburacionFianl"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(17; "VariacionMedidorCarburacion"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }

        field(18; "GasTanqueCarburacionInicial"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(19; "GasTanqueCarburacionFinal"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
        }
        field(20; "VariacionGasTanqueCarburacion"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

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