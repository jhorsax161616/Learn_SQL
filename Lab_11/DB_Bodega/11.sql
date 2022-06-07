/* 11. Realizar una consulta donde se liste el código, nombre completo y monto
total de los 3 empleados que han realizado más ventas en la bodega.  */

SELECT TOP 3 tblEmpleado.IDEmpleado, empNombres + ' ' + empApellidoPaterno
    + ' ' + empApellidoMaterno AS NombreCompleto , SUM(tblDetalleVenta.dvenCantidad
    * tblProducto.proPrecioVenta) AS PrecioTotal
FROM tblEmpleado
INNER JOIN tblVenta ON tblVenta.IDEmpleado = tblEmpleado.IDEmpleado
INNER JOIN tblDetalleVenta ON tblDetalleVenta.IDVenta = tblVenta.IDVenta
INNER JOIN tblProducto ON tblProducto.IDProducto = tblDetalleVenta.IDProducto
GROUP BY tblEmpleado.IDEmpleado, empNombres + ' ' + empApellidoPaterno 
    + ' ' + empApellidoMaterno
ORDER BY PrecioTotal DESC