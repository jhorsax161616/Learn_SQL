/* 7. Realizar una función que devuelva el código de un producto. El parámetro de 
entrada es el nombre del producto.
*/

CREATE FUNCTION ufcGetIdProducto (
    @Nombre VARCHAR(100)
)
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @IdProducto VARCHAR(5)

    SELECT @IdProducto = IDProducto
    FROM tblProducto
    WHERE proNombre = @Nombre

    RETURN @IdProducto
END

 -- Ejecutando
/*  DECLARE @IdProducto VARCHAR(5)
 EXEC @IdProducto = ufcGetIdProducto 'Té Dharamsala'
 PRINT @IdProducto */