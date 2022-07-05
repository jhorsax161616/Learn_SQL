/* Función para obtener el Id (RUC) de un proveedor:

    Parámetros de entrada:
        - Nombre del proveedor VARCHAR(50)
    Salida:
        IdProveedor VARCHAR(13) */

CREATE FUNCTION ufcGetIdProveedor
(
    @Nombre VARCHAR(50)
)
RETURNS VARCHAR(13)
AS

BEGIN
    DECLARE @IdProveedor VARCHAR(13)
    SELECT @IdProveedor = proRUC
    FROM tblProveedor
    WHERE proNombres = @Nombre

    RETURN @IdProveedor
END


/* DECLARE @IdProveedor VARCHAR(13)
EXEC @IdProveedor = ufcGetIdProveedor 'Dt Comunity E.i.r.l.'
PRINT @IdProveedor */