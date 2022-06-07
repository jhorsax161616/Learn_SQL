/* 9. Realizar una consulta donde se visualice el código, fecha y monto total de las
ventas realizadas el día 07/11/2013 */

SELECT tblVenta.IDVenta, tblVenta.venFecha, '$ ' + CONVERT( VARCHAR(15),
    SUM(tblDetalleVenta.dvenCantidad * tblProducto.proPrecioVenta)) AS MontoTotal
FROM tblVenta
INNER JOIN tblDetalleVenta ON tblVenta.IDVenta = tblDetalleVenta.IDVenta
INNER JOIN tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
WHERE tblVenta.venFecha = '2013-11-07'
GROUP BY tblVenta.IDVenta, tblVenta.venFecha