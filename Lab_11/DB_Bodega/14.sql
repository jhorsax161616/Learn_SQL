/* 14. Realizar una consulta donde se liste el código de venta y la fecha de
venta del empleado que tenga el mayor sueldo. */

SELECT IDVenta, venFecha
FROM tblVenta
WHERE tblVenta.IDEmpleado IN (
    SELECT TOP 1 IDEmpleado
    FROM tblEmpleado
    ORDER BY empSueldo DESC
    )