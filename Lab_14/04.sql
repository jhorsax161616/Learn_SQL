/* 4. Realizar una función que autogenera el código de un nuevo producto. */

CREATE FUNCTION ufcGetNewIdProducto()

RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @IdProducto VARCHAR(5)
    DECLARE @cantidad INT

    SELECT @cantidad = COUNT(IDProducto)
    FROM tblProducto

    SET @cantidad = @cantidad + 1
    SET @IdProducto = '000' + CONVERT(varchar, @cantidad)
    SET @IdProducto = 'P' + RIGHT(@IdProducto, 4)

    RETURN @IdProducto
END