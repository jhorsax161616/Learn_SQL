/* Funcion que devuelve el precio promedio de un 
medicamento.

    Parametros de Entrada:
        - Nombre_Medicamento VARCHAR(180)
    Salida:
        - PrecioPromedio  DECIMAL(7,2)*/

CREATE FUNCTION ufcPrecioPromeMedicamento(
    @Nombre_Medicamento VARCHAR(180)
)
RETURNS DECIMAL(7,2)
AS

BEGIN
    DECLARE @PrecioPromedio DECIMAL(7,2)
    DECLARE @IdMedicamento VARCHAR(11)
    EXEC @IdMedicamento = ufcGetIdMedicamento @Nombre_Medicamento

    SELECT @PrecioPromedio = SUM(detMPrecioU) / COUNT(IdMedicamento)
    FROM tblDetalleMedicamento
    WHERE tblDetalleMedicamento.IdMedicamento = @IdMedicamento

    RETURN @PrecioPromedio
END

/* DECLARE @PrecioPromedio DECIMAL(7,2)
EXEC @PrecioPromedio = ufcPrecioPromeMedicamento 'Paracetamol'
PRINT @PrecioPromedio */