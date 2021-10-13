page 60004 HistoricoReporteDiario
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = tableReporteDiario;
    Caption = 'Reporte venta diaria';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {

                field(id; Rec.id)
                {
                    ToolTip = 'Specifies the value of the id field';
                    ApplicationArea = All;
                    Caption = 'Folio';
                    Style = Unfavorable;
                    StyleExpr = Emphasize;

                }
                field(Posting_Date; Rec.Posting_Date)
                {
                    ToolTip = 'Specifies the value of the Posting_Date field.';
                    ApplicationArea = All;
                    Caption = 'Fecha de registro';
                }
                field(unidad; Rec.unidad)
                {
                    ToolTip = 'Specifies the value of the unidad field.';
                    ApplicationArea = All;
                    Caption = 'Unidad';
                }
                field(Chofer; Rec.Chofer)
                {
                    ToolTip = 'Specifies the value of the Chofer field.';
                    ApplicationArea = All;
                    Caption = 'Nombre Chofer';
                }
                field(cedis; Rec.cedis)
                {
                    ToolTip = 'Specifies the value of the cedis field.';
                    ApplicationArea = All;
                    Caption = 'CEDIS';
                }
                field(Capacidad; Rec.Capacidad)
                {
                    ToolTip = 'Specifies the value of the Capacidad field.';
                    ApplicationArea = All;
                    Caption = 'Capacidad Pipa';
                }
                field(TempMolecula; Rec.TempMolecula)
                {
                    ToolTip = 'Specifies the value of the TempMolecula field.';
                    ApplicationArea = All;
                    Caption = 'Temp. Molecula';
                }
                field(PresionMolecula; Rec.PresionMolecula)
                {
                    ToolTip = 'Specifies the value of the PresionMolecula field.';
                    ApplicationArea = All;
                    Caption = 'Presion Molecula';
                }
                field(CapacidadT; Rec.CapacidadT)
                {
                    ToolTip = 'Specifies the value of the CapacidadT field.';
                    ApplicationArea = All;
                    Caption = 'Capacidad Tanque Carburacion';
                }
                field(inicioPorcentaje; Rec.inicioPorcentaje)
                {
                    ToolTip = 'Specifies the value of the inicioPorcentaje field.';
                    ApplicationArea = All;
                    Caption = 'Inicio turno';
                }
                field(inicioTurnoLitros; Rec.inicioTurnoLitros)
                {
                    ToolTip = 'Specifies the value of the inicioTurnoLitros field.';
                    ApplicationArea = All;
                    Caption = 'Inicio turno (ltr)';
                }
                field(Venta; Rec.Venta)
                {
                    ToolTip = 'Specifies the value of the Venta field.';
                    ApplicationArea = All;
                    Caption = 'Venta';
                }
                field(InicioVenta; Rec.InicioVenta)
                {
                    ToolTip = 'Specifies the value of the InicioVenta field.';
                    ApplicationArea = All;
                    Caption = 'Inventario Final';
                }
                field(finTurnoPorcentaje; Rec.finTurnoPorcentaje)
                {
                    ToolTip = 'Specifies the value of the finTurnoPorcentaje field.';
                    ApplicationArea = All;
                    Caption = 'Fin Turno %';
                }
                field(finTurnoLitros; Rec.finTurnoLitros)
                {
                    ToolTip = 'Specifies the value of the finTurnoLitros field.';
                    ApplicationArea = All;
                    Caption = 'Fin Turno (ltr)';
                }
                field(diferencia; Rec.diferencia)
                {
                    ToolTip = 'Specifies the value of the diferencia field.';
                    ApplicationArea = All;
                    Caption = 'Diferencia';
                    Style = Unfavorable;
                }
                field(diferenciaPorcentaje; Rec.diferenciaPorcentaje)
                {
                    ToolTip = 'Specifies the value of the diferenciaPorcentaje field.';
                    ApplicationArea = All;
                    Caption = 'Diferencia %';
                    StyleExpr = Emphasize;
                }
                field(OdometroInicialDeLaUnidad; Rec.OdometroInicialDeLaUnidad)
                {
                    ToolTip = 'Specifies the value of the OdometroInicialDeLaUnidad field.';
                    ApplicationArea = All;
                    Caption = 'Odometro inicial';
                }
                field(OdometroFInalDelaUnidad; Rec.OdometroFInalDelaUnidad)
                {
                    ToolTip = 'Specifies the value of the OdometroFInalDelaUnidad field.';
                    ApplicationArea = All;
                    Caption = 'Odometro final';
                }
                field(VariacionOdometro; Rec.VariacionOdometro)
                {
                    ToolTip = 'Specifies the value of the VariacionOdometro field.';
                    ApplicationArea = All;
                    Caption = 'Variacion Odometro';
                }
                field(PorcentajeInicialRI; Rec.PorcentajeInicialRI)
                {
                    ToolTip = 'Specifies the value of the PorcentajeInicialRI field.';
                    ApplicationArea = All;
                    Caption = 'Lectura RI inicial';
                }
                field(PorcentajFianlRI; Rec.PorcentajFianlRI)
                {
                    ToolTip = 'Specifies the value of the PorcentajFianlRI field.';
                    ApplicationArea = All;
                    Caption = 'Lectura RI final';
                }
                field(VariacionRI; Rec.VariacionRI)
                {
                    ToolTip = 'Specifies the value of the VariacionRI field.';
                    ApplicationArea = All;
                    Caption = 'Variacion RI';
                }
                field(tanqueCarburacionInicialP; Rec.tanqueCarburacionInicialP)
                {
                    ToolTip = 'Specifies the value of the tanqueCarburacionInicialP field.';
                    ApplicationArea = All;
                    Caption = 'Tanque carburacion Inicial %';
                }
                field(tanqueCarburacionFinalP; Rec.tanqueCarburacionFinalP)
                {
                    ToolTip = 'Specifies the value of the tanqueCarburacionFinalP field.';
                    ApplicationArea = All;

                    Caption = 'Tanque carburacion Final %';
                }
                field(tanqueCarburacionVariacionP; Rec.tanqueCarburacionVariacionP)
                {
                    ToolTip = 'Specifies the value of the tanqueCarburacionVariacionP field.';
                    ApplicationArea = All;

                    Caption = 'Variacion tanque carburacion %';
                }
                field(tanqueCarburacionInicialL; Rec.tanqueCarburacionInicialL)
                {
                    ToolTip = 'Specifies the value of the tanqueCarburacionInicialL field.';
                    ApplicationArea = All;
                    Caption = 'Tanque carburacion Inicial (Ltr)';
                }
                field(tanqueCarburacionFinalL; Rec.tanqueCarburacionFinalL)
                {
                    ToolTip = 'Specifies the value of the tanqueCarburacionFinalL field.';
                    ApplicationArea = All;
                    Caption = 'Tanque carburacion Final (Ltr)';
                }
                field(tanqueCarburacionVariacionL; Rec.tanqueCarburacionVariacionL)
                {
                    ToolTip = 'Specifies the value of the tanqueCarburacionVariacionL field.';
                    ApplicationArea = All;
                    Caption = 'Variacion carburacion (Ltr)';
                }


            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(Reporte)
            {
                ApplicationArea = All;
                Image = Report;

                trigger OnAction();
                var
                    reporte: Report ReporteDiarioInfo;
                begin
                    reporte.RunModal();
                end;
            }
        }
    }



    trigger OnAfterGetRecord()

    begin
        if Rec.diferencia < 0 then begin
            Emphasize := true
        end else begin
            Emphasize := false
        end;
    end;

    var

        Emphasize: Boolean;
}