/*10. Consulta que muestre el código y fecha de venta, el DNI y nombres
completos del cliente, el nombre completo del empleado, cantidad de productos
comprados y monto total de la venta en soles. De una venta cuyo código es 
ingresado como parámetro. (2 puntos)*/

DECLARE @Codigo VARCHAR(9)
SET @Codigo = '001-00005'

SELECT tblVenta.IDVenta, venFecha, tblCliente.DNI, cliNombres + ' '
    + cliApellidoPaterno + ' ' + cliApellidoMaterno AS Cliente,
    empNombres + ' ' + empApellidoPaterno + ' ' + empApellidoMaterno AS Empleado,
    SUM(dvenCantidad) AS NumProductos, SUM(dvenCantidad * proPrecioVenta) AS Monto

FROM tblVenta
INNER JOIN tblDetalleVenta ON tblVenta.IDVenta = tblDetalleVenta.IDVenta
INNER JOIN tblCliente ON tblVenta.DNI = tblCliente.DNI
INNER JOIN tblEmpleado ON tblVenta.IDEmpleado = tblEmpleado.IDEmpleado
INNER JOIN tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
WHERE tblVenta.IDVenta = @Codigo
GROUP BY tblVenta.IDVenta, venFecha, tblCliente.DNI, cliNombres + ' '
    + cliApellidoPaterno + ' ' + cliApellidoMaterno, empNombres + ' '
    + empApellidoPaterno + ' ' + empApellidoMaterno