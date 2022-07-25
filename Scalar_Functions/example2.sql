/* Crear una función que devuelva el monto total de una venta,
eL código de la venta debe ser ingresado como parámetro */

CREATE FUNCTION ufcDevuelveMontoTotal
(
    @CodigoVenta VARCHAR(9)
)
RETURNS DECIMAL(7, 2)
AS

BEGIN
    DECLARE @Monto DECIMAL(7, 2)

    SELECT @Monto = SUM(proPrecioVenta * dvenCantidad)
    FROM tblDetalleVenta
    INNER JOIN tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
    WHERE IDVenta = @CodigoVenta

    RETURN @Monto
END
