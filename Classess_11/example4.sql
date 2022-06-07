/*Cuantas ventas realizo cada empleado el 20 de enero de 2019*/
SELECT tblEmpleado.empApellidoPaterno, COUNT(tblVenta.venFecha) AS Ventas
FROM tblEmpleado
INNER JOIN tblVenta ON tblEmpleado.IDEmpleado = tblVenta.IDEmpleado
WHERE tblVenta.venFecha = '2019-01-20'
GROUP BY tblEmpleado.empApellidoPaterno