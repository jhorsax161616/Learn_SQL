/* 5. Realizar un procedimiento almacenado que muestre el IDVenta, venFecha, 
IDEmpleado, empApellidoPaterno, DNI, Nombre completo del cliente y cliSexo; de
las ventas realizadas el 06 de noviembre de 2013. */

CREATE PROCEDURE uspVentas6noviembre2013
AS

BEGIN
    SELECT IDVenta, venFecha, tblVenta.IDEmpleado, empApellidoPaterno, tblVenta.DNI
        , cliNombres + ' ' + cliApellidoPaterno + ' ' + cliApellidoMaterno AS 
        Cliente, cliSexo
    FROM tblVenta
    INNER JOIN tblEmpleado ON tblVenta.IDEmpleado = tblEmpleado.IDEmpleado
    INNER JOIN tblCliente ON tblVenta.DNI = tblCliente.DNI
    WHERE venFecha = '2013-11-06'
END

--Ejecutando
/* EXEC uspVentas6noviembre2013 */