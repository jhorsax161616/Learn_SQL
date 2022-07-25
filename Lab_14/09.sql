/* 9. Realizar una función que autogenere el código de un nuevo venta */

CREATE FUNCTION ufcGetNewIdVenta ()
RETURNS VARCHAR(9)
AS

BEGIN
    DECLARE @IdVenta VARCHAR(9), @Aux INT

    SELECT @Aux = COUNT(IDVenta)
    FROM tblVenta

    SET @IdVenta = '0000' + CONVERT(VARCHAR(5), @Aux + 1)

    SET @IdVenta = '001-' + RIGHT(@IdVenta, 5)

    RETURN @IdVenta
END

 -- Ejecutando
/*  DECLARE @IdVenta VARCHAR(9)
 EXEC @IdVenta = ufcGetNewIdVenta
 PRINT @IdVenta */