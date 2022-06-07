/* 2. Realizar una consulta de resumen donde se muestre la cantidad de
empleados por cada oficina. */

SELECT tblEmpleado.IDOficina, COUNT(tblEmpleado.IDEmpleado) AS Cantidad
FROM tblEmpleado
GROUP BY tblEmpleado.IDOficina