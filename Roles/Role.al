pageextension 60000 RoleMod extends "Business Manager Role Center"
{
    layout
    {

    }

    actions
    {

        addlast(Payments)
        {

            action("Historico SGCWEB")
            {
                ApplicationArea = All;
                CaptionML = ESP = 'Historico de reporte diario SGCWEB', ENG = 'Posted Daily journal SGCWEB';
                RunObject = Page HistoricoReporteDiario;

            }

        }

        addbefore("Chart of Accounts")
        {
            action("Historico SGCWEB ")
            {
                ApplicationArea = All;
                CaptionML = ESP = 'Historico de reporte diario SGCWEB', ENG = 'Posted Daily journal SGCWEB';
                RunObject = Page HistoricoReporteDiario;

            }
            action("Capturar venta SGCWEB ")
            {
                ApplicationArea = All;
                CaptionML = ESP = 'Historico de reporte diario SGCWEB', ENG = 'Posted Daily journal SGCWEB';
                RunObject = Page pagReporteDiario;

            }
        }
    }

    var
        myInt: Integer;
}