/* Realizar una consulta de resumen donde se visualice la cantidad de
solteros, casados y viudos. */

SELECT tblEmpleado.empEstadoCivil, COUNT(tblEmpleado.IDEmpleado) AS Cantidad
FROM tblEmpleado
GROUP BY tblEmpleado.empEstadoCivil