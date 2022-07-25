CREATE FUNCTION ufcDevolverIdProducto
(
    --Parametros
    @NombreProducto VARCHAR(100)
)
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @R VARCHAR(5)

    SELECT @R = IdProducto FROM tblProducto
    WHERE proNombre = @NombreProducto

    RETURN @R
END