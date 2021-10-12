page 60001 pagReporteDiario
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = tableReporteDiario;
    Caption = 'Reporte diario';
    Description = 'Captura la información al inicio del recorrido.';

    layout
    {
        area(Content)
        {

            group("Datos de la unidad")
            {
                field(Folio; Rec.id)
                {
                    ApplicationArea = All;
                    Caption = 'Folio';
                    Editable = false;
                }
                field(Fecha; Rec.Posting_Date)
                {
                    ApplicationArea = All;
                    Caption = 'Fecha de registro';
                }

                field(Unidad; Rec.unidad)
                {
                    ApplicationArea = All;
                    Caption = 'Unidad';
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        tableUnidades: Record tableUnidades;
                    begin
                        if Page.RunModal(PAGE::Unidades, tableUnidades) = Action::LookupOK then begin
                            Text := tableUnidades.nameUnidad;
                            Rec.Capacidad := tableUnidades.Capacidad;
                            Rec.chofer := tableUnidades.chofer;
                            Rec.cedis := tableUnidades.cedis;
                            exit(true);
                        end;
                    end;

                }
                field(Chofer; Rec.Chofer)
                {
                    ApplicationArea = All;
                    Caption = 'Nombre chofer de la unidad';

                }
                field(CEDIS; Rec.cedis)
                {
                    ApplicationArea = All;
                    Caption = 'Centro de distribucion';
                }

                field(Capacidad; Rec.Capacidad)
                {
                    ToolTip = 'Specifies the value of the Capacidad field';
                    ApplicationArea = All;
                    Caption = 'Capacidad Pipa';
                }
                field(TempMolecula; Rec.TempMolecula)
                {
                    ToolTip = 'Specifies the value of the TempMolecula field';
                    ApplicationArea = All;
                    Caption = 'Temperatura molecula';
                }
                field(PresionMolecula; Rec.PresionMolecula)
                {
                    ToolTip = 'Specifies the value of the PresionMolecula field';
                    Caption = 'Presion molecula';
                    ApplicationArea = All;
                }
                field(CapacidadT; Rec.CapacidadT)
                {
                    ToolTip = 'Specifies the value of the PresionMolecula field';
                    Caption = 'Capacidad Tanque Carburacion';
                    ApplicationArea = All;

                }
            }

            group("Informacion de la venta")
            {

                field(inicioPorcentaje; Rec.inicioPorcentaje)
                {
                    ToolTip = 'Specifies the value of the inicioPorcentaje field.';
                    Caption = 'Inicio de turno (%)';
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Rec.inicioTurnoLitros := rec.inicioPorcentaje * rec.Capacidad / 100;
                    end;
                }
                field(inicioTurnoLitros; Rec.inicioTurnoLitros)
                {
                    ToolTip = 'Specifies the value of the inicioTurnoLitros field.';
                    ApplicationArea = All;
                    Caption = 'Inicio de turno (Litros)';
                    Editable = false;
                }
                field(Venta; Rec.Venta)
                {
                    ToolTip = 'Specifies the value of the Venta field.';
                    ApplicationArea = All;
                    Caption = 'Venta';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Rec.InicioVenta := rec.inicioTurnoLitros - rec.Venta;
                    end;
                }
                field(InicioVenta; Rec.InicioVenta)
                {
                    ToolTip = 'Specifies the value of the InicioVenta field.';
                    ApplicationArea = All;
                    Caption = 'Inventario final';
                    Editable = false;
                }
                field(finTurnoPorcentaje; Rec.finTurnoPorcentaje)
                {
                    ToolTip = 'Specifies the value of the finTurnoPorcentaje field.';
                    ApplicationArea = All;
                    Caption = 'Fin de turno (%)';
                    trigger OnValidate()
                    begin
                        Rec.finTurnoLitros := rec.finTurnoPorcentaje * rec.Capacidad / 100;
                        Rec.diferencia := rec.finTurnoLitros - rec.InicioVenta;
                        Rec.diferenciaPorcentaje := (rec.diferencia / rec.Venta) * 100;

                        if rec.diferencia < 0 then begin
                            TxtStyleExpr := 'Unfavorable'
                        end else begin
                            TxtStyleExpr := 'Favorable'
                        end;
                    end;
                }
                field(finTurnoLitros; Rec.finTurnoLitros)
                {
                    ToolTip = 'Specifies the value of the finTurnoLitros field.';
                    ApplicationArea = All;
                    Caption = 'Fin de turno (Litros)';
                    Editable = false;
                }

                grid(Grid2)
                {
                    field(diferencia; Rec.diferencia)
                    {
                        ToolTip = 'Specifies the value of the diferencia field.';
                        ApplicationArea = All;
                        Caption = 'Diferencia';
                        StyleExpr = TxtStyleExpr;
                        Editable = false;

                    }
                    field(diferenciaPorcentaje; Rec.diferenciaPorcentaje)
                    {
                        ToolTip = 'Specifies the value of the diferencia field.';
                        ApplicationArea = All;
                        Caption = '%';
                        StyleExpr = TxtStyleExpr;
                        Editable = false;
                    }

                }
            }
            group("Odometro de la unidad")
            {

                field("Odometro inicial de la unidad"; Rec.OdometroInicialDeLaUnidad)
                {
                    ToolTip = 'Specifies the value of the Odometro inicial de la unidad field';
                    ApplicationArea = All;
                    Caption = 'Odometro inicial de la unidad';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Rec.VariacionOdometro := rec.OdometroFInalDelaUnidad - rec.OdometroInicialDeLaUnidad;
                    end;
                }
                field("Odometro fianl de la unidad"; Rec.OdometroFInalDelaUnidad)
                {
                    ToolTip = 'Specifies the value of the Odometro fianl de la unidad field';
                    ApplicationArea = All;
                    Caption = 'Odometro final de la unidad';

                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Rec.VariacionOdometro := rec.OdometroFInalDelaUnidad - rec.OdometroInicialDeLaUnidad;
                    end;
                }
                field("Variacion odometro"; Rec.VariacionOdometro)
                {
                    ToolTip = 'Specifies the value of the Variacion odometro field';
                    ApplicationArea = All;
                    Caption = 'Variacion odometro';
                    Enabled = false;

                }
            }

            group("Lectura del sustena RI")
            {
                field("Porcentaje inicial RI"; Rec.PorcentajeInicialRI)
                {
                    ToolTip = 'Specifies the value of the Porcentaje inicial RI field';
                    ApplicationArea = All;
                    Caption = 'Porcentaje inicial RI';

                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Rec.VariacionRI := rec.PorcentajFianlRI - rec.PorcentajeInicialRI;
                    end;

                }
                field("Porcentaje fianl RI"; Rec.PorcentajFianlRI)
                {
                    ToolTip = 'Specifies the value of the Porcentaje fianl RI field';
                    ApplicationArea = All;
                    Caption = 'Porcentaje fianl RI';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Rec.VariacionRI := rec.PorcentajFianlRI - rec.PorcentajeInicialRI;
                    end;
                }

                field("Variacion RI"; Rec.VariacionRI)
                {
                    ToolTip = 'Specifies the value of the Variacion RI field';
                    ApplicationArea = All;
                    Caption = 'Variacion RI';
                    Enabled = false;
                }

            }



            group("Lecuta medidor de carburacion")
            {
                field("Lectura inicial de medidor de carburacion"; Rec.tanqueCarburacionInicialP)
                {
                    ToolTip = 'Specifies the value of the MedidorCarburacionInicial field';
                    ApplicationArea = All;
                    Caption = 'Lectura inicial de medidor de carburacion %';

                }
                field("Lectura final de medidor de carburacion"; Rec.tanqueCarburacionFinalP)
                {
                    ToolTip = 'Specifies the value of the MedidorCarburacionFianl field';
                    ApplicationArea = All;
                    Caption = 'Lectura final de medidor de carburacion %';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        Rec.tanqueCarburacionVariacionP := rec.tanqueCarburacionFinalP - rec.tanqueCarburacionInicialP;

                        Rec.tanqueCarburacionInicialL := (rec.tanqueCarburacionInicialP / rec.CapacidadT) * 100;
                        Rec.tanqueCarburacionFinalL := (rec.tanqueCarburacionFinalP / rec.CapacidadT) * 100;
                        Rec.tanqueCarburacionVariacionL := (rec.tanqueCarburacionVariacionP / rec.CapacidadT) * 100;
                    end;
                }
                field("Variacion de lectura medidor de carburacion"; Rec.tanqueCarburacionVariacionP)
                {
                    ToolTip = 'Specifies the value of the VariacionMedidorCarburacion field';
                    ApplicationArea = All;
                    Caption = 'Variacion de lectura medidor de carburacion %';
                    Enabled = false;
                }

                field("Lectura inicial de medidor de carburacion (Litros)"; Rec.tanqueCarburacionInicialL)
                {
                    ToolTip = 'Specifies the value of the MedidorCarburacionInicial field';
                    ApplicationArea = All;
                    Caption = 'Lectura inicial de medidor de carburacion (Litros)';

                }
                field("Lectura final de medidor de carburacion (litros)"; Rec.tanqueCarburacionFinalL)
                {
                    ToolTip = 'Specifies the value of the MedidorCarburacionFianl field';
                    ApplicationArea = All;
                    Caption = 'Lectura final de medidor de carburacion (Litros)';

                }
                field("Variacion de lectura medidor de carburacion (litros)"; Rec.tanqueCarburacionVariacionL)
                {
                    ToolTip = 'Specifies the value of the VariacionMedidorCarburacion field';
                    ApplicationArea = All;
                    Caption = 'Variacion de lectura medidor de carburacion (Litros)';
                    Enabled = false;

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
        TxtStyleExpr: Text;
}