/* 12. Realizar una consulta donde se liste el código, nombre completo,y
monto total de  los 10 clientes que han gastado más en compras a la bodega. */

SELECT TOP 10 tblCliente.DNI , cliNombres + ' ' + cliApellidoPaterno
    + ' ' + cliApellidoMaterno AS NombreCompleto , SUM(tblDetalleVenta.dvenCantidad
    * tblProducto.proPrecioVenta) AS PrecioTotal
FROM tblCliente
INNER JOIN tblVenta ON tblVenta.DNI = tblCliente.DNI
INNER JOIN tblDetalleVenta ON tblDetalleVenta.IDVenta = tblVenta.IDVenta
INNER JOIN tblProducto ON tblProducto.IDProducto = tblDetalleVenta.IDProducto
GROUP BY tblCliente.DNI, CliNombres + ' ' + cliApellidoPaterno
    + ' ' + cliApellidoMaterno
ORDER BY PrecioTotal DESC