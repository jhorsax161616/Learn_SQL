CREATE PROCEDURE uspImprimirDetalle
    @Venta VARCHAR(9)
AS
BEGIN
    SELECT tblProducto.proNombre, tblDetalleVenta.dvenCantidad,
    tblProducto.proPrecioVenta,
    tblDetalleVenta.dvenCantidad * tblProducto.proPrecioVenta AS Subtotal
    FROM tblDetalleVenta INNER JOIN
    tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
    WHERE tblDetalleVenta.IDVenta = @Venta
END