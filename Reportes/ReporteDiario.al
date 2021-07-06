report 60000 ReporteDiarioInfo
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = 'Reporte de venta por unidad.docx';

    dataset
    {
        dataitem(DataItemName; tableReporteDiario)
        {

            column(id; id)
            {
            }
            column(uni; unidad)
            {
            }
            column(cedis; cedis)
            {
            }
            column(temp; TempMolecula)
            {
            }
            column(presion; PresionMolecula)
            {
            }
            column(date; Posting_Date)
            {
            }
            column(capacidad; Capacidad)
            {
            }
            column(chofer; Chofer)
            {
            }
            column(gastanqueI; GasTanqueCarburacionInicial)
            {
            }
            column(gastanqueF; GasTanqueCarburacionFinal)
            {
            }
            column(mtf; MagnatelTanqueFinal)
            {
            }
            column(mti; MagnatelTanqueInicial)
            {
            }
            column(mcf; MedidorCarburacionFianl)
            {
            }
            column(mci; MedidorCarburacionInicial)
            {
            }
            column(ofu; OdometroFInalDelaUnidad)
            {
            }
            column(oiu; OdometroInicialDeLaUnidad)
            {
            }
            column(prif; PorcentajFianlRI)
            {
            }
            column(piri; PorcentajeInicialRI)
            {
            }
            column(vgtc; VariacionGasTanqueCarburacion)
            {
            }
            column(vmt; VariacionMagnatelTanque)
            {
            }
            column(vmc; VariacionMedidorCarburacion)
            {
            }
            column(vo; VariacionOdometro)
            {
            }
            column(vri; VariacionRI)
            {
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        myInt: Integer;
}