table 60001 tableReporteDiario
{
    DataClassification = ToBeClassified;
    Permissions = TableData "tableUnidades" = rimd;
    fields
    {
        field(1; id; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'Folio';

        }
        field(2; Posting_Date; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Fecha de registro';
        }
        field(4; unidad; Text[150])
        {
            DataClassification = ToBeClassified;
            // TableRelation = tableUnidades.nameUnidad where(Capacidad = filter(> 0));
            // ValidateTableRelation = false;
            Caption = 'Unidad';

        }
        field(24; Chofer; Text[150])
        {
            DataClassification = ToBeClassified;
            // TableRelation = tableUnidades.Chofer where(nameUnidad = field(unidad));
            // ValidateTableRelation = false;
            Caption = 'Chofer';

        }
        field(3; cedis; Text[150])
        {
            DataClassification = ToBeClassified;
            // TableRelation = tableUnidades;
            // ValidateTableRelation = false;
            Caption = 'Cedis';
        }

        field(22; TempMolecula; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Temp. Molecula';
        }
        field(23; PresionMolecula; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Presion Molecula';

        }
        field(21; Capacidad; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            // TableRelation = tableUnidades.Capacidad;
            // ValidateTableRelation = false;
            Caption = 'Capacidad Pipa';

        }


        //odometro
        field(6; "OdometroInicialDeLaUnidad"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Odometro inicial de la unidad';

        }
        field(7; "OdometroFInalDelaUnidad"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Odometro final de la unidad';


        }
        field(8; "VariacionOdometro"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Variacion odometro';
        }

        //ri
        field(9; "PorcentajeInicialRI"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Porcentaje inicial RI';

        }
        field(10; "PorcentajFianlRI"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Porcentaje final RI';

        }
        field(11; "VariacionRI"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Variacion RI';

        }

        //carburacion porcentaje
        field(15; "tanqueCarburacionInicialP"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Lectura inicial de medidor de carburacion %';

        }
        field(16; "tanqueCarburacionFinalP"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Lectura final de medidor de carburacion %';

        }
        field(17; "tanqueCarburacionVariacionP"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Variacion de lectura medidor de carburacion %';

        }

        field(18; "tanqueCarburacionInicialL"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Lectura inicial de medidor de carburacion (Litros)';

        }
        field(19; "tanqueCarburacionFinalL"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Lectura final de medidor de carburacion (Litros)';

        }
        field(20; "tanqueCarburacionVariacionL"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Variacion de lectura medidor de carburacion (Litros)';

        }
        field(25; "inicioTurnoLitros"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Inicio de turno (Litros)';

        }
        field(26; "inicioPorcentaje"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Inicio de turno (%)';
        }
        field(27; "Venta"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Venta';

        }
        field(28; "InicioVenta"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Inventario Final';
        }
        field(29; "finTurnoPorcentaje"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            Caption = 'Fin de turno (%)';
        }
        field(30; "finTurnoLitros"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Fin de turno (Litros)';
        }
        field(31; "diferencia"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Diferencia';
        }
        field(32; "diferenciaPorcentaje"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;

            Caption = 'Diferencia %';

        }
        field(33; "CapacidadT"; decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 1 : 2;
            InitValue = 120;

            Caption = 'Capacidad Tanque Carburacion';
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