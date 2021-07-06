page 60004 HistoricoReporteDiario
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = tableReporteDiario;

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
                }
                field(Posting_Date; Rec.Posting_Date)
                {
                    ToolTip = 'Specifies the value of the Posting_Date field';
                    ApplicationArea = All;
                }
                field(unidad; Rec.unidad)
                {
                    ToolTip = 'Specifies the value of the unidad field';
                    ApplicationArea = All;
                }
                field(cedis; Rec.cedis)
                {
                    ToolTip = 'Specifies the value of the cedis field';
                    ApplicationArea = All;
                }
                field(Capacidad; Rec.Capacidad)
                {
                    ToolTip = 'Specifies the value of the Capacidad field';
                    ApplicationArea = All;
                }
                field(TempMolecula; Rec.TempMolecula)
                {
                    ToolTip = 'Specifies the value of the TempMolecula field';
                    ApplicationArea = All;
                }
                field(PresionMolecula; Rec.PresionMolecula)
                {
                    ToolTip = 'Specifies the value of the PresionMolecula field';
                    ApplicationArea = All;
                }
                field(Chofer; Rec.Chofer)
                {
                    ToolTip = 'Specifies the value of the Chofer field';
                    ApplicationArea = All;
                }
                field(OdometroInicialDeLaUnidad; Rec.OdometroInicialDeLaUnidad)
                {
                    ToolTip = 'Specifies the value of the OdometroInicialDeLaUnidad field';
                    ApplicationArea = All;
                }
                field(OdometroFInalDelaUnidad; Rec.OdometroFInalDelaUnidad)
                {
                    ToolTip = 'Specifies the value of the OdometroFInalDelaUnidad field';
                    ApplicationArea = All;
                }
                field(VariacionOdometro; Rec.VariacionOdometro)
                {
                    ToolTip = 'Specifies the value of the VariacionOdometro field';
                    ApplicationArea = All;
                }
                field(PorcentajeInicialRI; Rec.PorcentajeInicialRI)
                {
                    ToolTip = 'Specifies the value of the PorcentajeInicialRI field';
                    ApplicationArea = All;
                }
                field(PorcentajFianlRI; Rec.PorcentajFianlRI)
                {
                    ToolTip = 'Specifies the value of the PorcentajFianlRI field';
                    ApplicationArea = All;
                }
                field(VariacionRI; Rec.VariacionRI)
                {
                    ToolTip = 'Specifies the value of the VariacionRI field';
                    ApplicationArea = All;
                }
                field(MagnatelTanqueInicial; Rec.MagnatelTanqueInicial)
                {
                    ToolTip = 'Specifies the value of the MagnatelTanqueInicial field';
                    ApplicationArea = All;
                }
                field(MagnatelTanqueFinal; Rec.MagnatelTanqueFinal)
                {
                    ToolTip = 'Specifies the value of the MagnatelTanqueFinal field';
                    ApplicationArea = All;
                }
                field(VariacionMagnatelTanque; Rec.VariacionMagnatelTanque)
                {
                    ToolTip = 'Specifies the value of the VariacionMagnatelTanque field';
                    ApplicationArea = All;
                }
                field(MedidorCarburacionInicial; Rec.MedidorCarburacionInicial)
                {
                    ToolTip = 'Specifies the value of the MedidorCarburacionInicial field';
                    ApplicationArea = All;
                }
                field(MedidorCarburacionFianl; Rec.MedidorCarburacionFianl)
                {
                    ToolTip = 'Specifies the value of the MedidorCarburacionFianl field';
                    ApplicationArea = All;
                }
                field(VariacionMedidorCarburacion; Rec.VariacionMedidorCarburacion)
                {
                    ToolTip = 'Specifies the value of the VariacionMedidorCarburacion field';
                    ApplicationArea = All;
                }
                field(GasTanqueCarburacionInicial; Rec.GasTanqueCarburacionInicial)
                {
                    ToolTip = 'Specifies the value of the GasTanqueCarburacionInicial field';
                    ApplicationArea = All;
                }
                field(GasTanqueCarburacionFinal; Rec.GasTanqueCarburacionFinal)
                {
                    ToolTip = 'Specifies the value of the GasTanqueCarburacionFinal field';
                    ApplicationArea = All;
                }
                field(VariacionGasTanqueCarburacion; Rec.VariacionGasTanqueCarburacion)
                {
                    ToolTip = 'Specifies the value of the VariacionGasTanqueCarburacion field';
                    ApplicationArea = All;
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
}