/* Función para obtener el Id (RUC) de un transportista:

    Parámetros de entrada:
        - Nombre Completo del Transportista VARCHAR(180)
    Salida:
        IdTransportista VARCHAR(13) */

CREATE FUNCTION ufcGetIdTransportista
(
    @NombreCompleto VARCHAR(180)
)
RETURNS VARCHAR(13)
AS

BEGIN
    DECLARE @IdTransportista VARCHAR(13)
    
    SELECT @IdTransportista = traRUC
    FROM tblTransportista
    WHERE REPLACE((traNombres + traApPaterno + traApMaterno), ' ', '') = REPLACE(@NombreCompleto, ' ', '')

    RETURN @IdTransportista
END