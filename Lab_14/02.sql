/* 2. Realizar una función que devuelva el código de un proveedor.
El parámetro de entrada es el nombre del proveedor. */

CREATE FUNCTION ufcGetIdProveedor
(
    @NombreProveedor VARCHAR(100)
)
RETURNS VARCHAR(11)
AS

BEGIN
    DECLARE @IdProveedor VARCHAR(11)

    SELECT @IdProveedor = RUC
    FROM tblProveedor
    WHERE provNombre = @NombreProveedor

    RETURN @IdProveedor
END