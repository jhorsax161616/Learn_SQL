/* 7. Realizar una consulta donde se liste el código y fecha de venta de las
ventas donde se han vendido más productos en unidades.  */

SELECT tblVenta.IDVenta, tblVenta.venFecha, SUM(tblDetalleVenta.dvenCantidad)
    AS CantidadUnidades
FROM tblVenta
INNER JOIN tblDetalleVenta ON tblVenta.IDVenta = tblDetalleVenta.IDVenta
GROUP BY tblVenta.IDVenta, tblVenta.venFecha
ORDER BY CantidadUnidades DESC