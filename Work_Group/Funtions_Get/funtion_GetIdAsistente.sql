/* Función para obtener el Id (RUC) de un Asistente:

    Parámetros de entrada:
        - Nombre Completo del Asistente VARCHAR(180)
    Salida:
        IdAsistente VARCHAR(13) */

CREATE FUNCTION ufcGetIdAsistente
(
    @NombreCompleto VARCHAR(180)
)
RETURNS VARCHAR(13)
AS

BEGIN
    DECLARE @IdAsistente VARCHAR(13)
    
    SELECT @IdAsistente = asiRUC
    FROM tblAsistente
    WHERE REPLACE((asiNombres + asiApPaterno + asiApMaterno), ' ', '') = REPLACE(@NombreCompleto, ' ', '')

    RETURN @IdAsistente
END

/* DECLARE @IdAsistente VARCHAR(13)
EXEC @IdAsistente = ufcGetIdAsistente 'Alfonso Marí Sevilla'
PRINT @IdAsistente */