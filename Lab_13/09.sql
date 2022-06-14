/* 9.Realizar un procedimiento almacenado que muestre el DNI, Nombres completos
del cliente y la cantidad de ventas realizadas; de un cliente cuyo DNI haya
sido ingresado como parámetro. */

CREATE PROCEDURE uspEjercicio09
    @DNI VARCHAR(8)
AS

BEGIN
    SELECT tblVenta.DNI, cliNombres + ' ' + cliApellidoPaterno + ' ' +
        cliApellidoMaterno AS Cliente, COUNT(IDVenta) AS NumeroVentas
    FROM tblVenta
    INNER JOIN tblCliente ON tblVenta.DNI = tblCliente.DNI
    WHERE tblVenta.DNI = @DNI
    GROUP BY tblVenta.DNI, cliNombres + ' ' + cliApellidoPaterno + ' ' +
        cliApellidoMaterno
END

--Eejcutando
/* EXEC uspEjercicio09 '10173850' */