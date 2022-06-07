/* 10. Realizar una consulta donde se liste el código, fecha y monto total de
la venta de las 5 ventas que tengan el mayor monto total. */

SELECT TOP 5 tblVenta.IDVenta, tblVenta.venFecha, 'S/. ' + CONVERT( VARCHAR(15),
    SUM(tblDetalleVenta.dvenCantidad * tblProducto.proPrecioVenta)) AS MontoTotal
FROM tblVenta
INNER JOIN tblDetalleVenta ON tblVenta.IDVenta = tblDetalleVenta.IDVenta
INNER JOIN tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
GROUP BY tblVenta.IDVenta, tblVenta.venFecha
ORDER BY SUM(tblDetalleVenta.dvenCantidad * tblProducto.proPrecioVenta) DESC