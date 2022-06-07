/* 13. Realizar una consulta donde se liste el código de venta y la fecha de
venta de todos los clientes que viven en el distrito de Jauja */

SELECT IDVenta, venFecha
FROM tblVenta
WHERE tblVenta.DNI IN (
    SELECT DNI
    FROM tblCliente
    WHERE cliDistrito = 'Jauja')