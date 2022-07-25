/* 1. Realizar una función que devuelva el código de un producto.
El parámetro de entrada es el nombre del producto. */

CREATE FUNCTION ufcGetIdProducto
(
    @NombreProducto VARCHAR(90)
)
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @IdProducto VARCHAR(5)

    SELECT @IdProducto = IdProducto
    FROM tblProducto
    WHERE proNombre = @NombreProducto

    RETURN @IdProducto
END