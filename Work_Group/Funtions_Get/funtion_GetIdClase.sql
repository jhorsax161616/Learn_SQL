/* Función para obtener el Id de una Clase:

    Parámetros de entrada:
        - Nombre de la Clase VARCHAR(15)
    Salida:
        IdClase VARCHAR(5) */

CREATE FUNCTION ufcGetIdClase
(
    @Nombre VARCHAR(15)
)
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @IdClase VARCHAR(5)
    SELECT @IdClase = IdClase
    FROM tblClase
    WHERE claNombre = @Nombre

    RETURN @IdClase
END