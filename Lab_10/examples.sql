/*Una Consulta que muestre el código y fecha de venta, y el nombre 
completo del cliente que participo de esa  venta*/

SELECT tblVenta.IDVenta, tblVenta.venFecha,
    tblCliente.cliNombres + ' ' + tblCliente.cliApellidoPaterno + ' '
    + tblCliente.cliApellidoMaterno AS NombreCompleto, tblEmpleado.empNombres + ' '
    + tblEmpleado.empApellidoPaterno + ' ' + tblEmpleado.empApellidoMaterno AS Empleado

FROM tblVenta
INNER JOIN tblCliente ON tblCliente.DNI = tblVenta.DNI
INNER JOIN tblEmpleado ON tblEmpleado.IDEmpleado = tblVenta.IDEmpleado