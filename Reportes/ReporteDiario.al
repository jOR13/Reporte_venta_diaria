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

            column(folio; id)
            {
            }

            column(fecha; Posting_Date)
            {
            }
            column(unidad; unidad)
            {
            }

            column(cedis; cedis)
            {
            }
            column(capacidad; Capacidad)
            {
            }
            column(chofer; Chofer)
            {
            }



            column(inicioPor; inicioPorcentaje)
            {
            }
            column(inicioTurnoL; inicioTurnoLitros)
            {
            }
            column(Venta; Venta)
            {
            }
            column(InicioVenta; InicioVenta)
            {
            }
            column(finTurnoP; finTurnoPorcentaje)
            {
            }
            column(finTurnoL; finTurnoLitros)
            {
            }
            column(diferencia; diferencia)
            {
            }
            column(diferenciaP; diferenciaPorcentaje)
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