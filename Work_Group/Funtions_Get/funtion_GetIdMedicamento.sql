/* Función para obtener el Id de un medicamento:

    Parámetros de entrada:
        - Nombre del medicamento VARCHAR(180)
    Salida:
        IdMedicamento VARCHAR(11) */

CREATE FUNCTION ufcGetIdMedicamento
(
    @Nombre VARCHAR(180)
)
RETURNS VARCHAR(11)
AS

BEGIN
    DECLARE @IdMedicamento VARCHAR(11)
    SELECT @IdMedicamento = IdMedicamento
    FROM tblMedicamento
    WHERE medNombre = @Nombre

    RETURN @IdMedicamento
END