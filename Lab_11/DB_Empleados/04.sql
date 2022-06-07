/* 4. Realizar una consulta donde se muestre la cantidad de empleados por
cada  oficina que ingresaron a trabajar a partir del 2013. */

SELECT tblEmpleado.IDOficina, COUNT(tblEmpleado.IDEmpleado) AS Cantidad
FROM tblEmpleado
WHERE YEAR(tblEmpleado.empFechaIngreso) >= 2013
GROUP BY tblEmpleado.IDOficina