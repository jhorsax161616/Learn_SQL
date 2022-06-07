/*14. Que se muestre el IDEmpleado, ApellidoPaterno y Nombres; de la tabla Empleado.
Donde la fecha de ingreso haya sido en el mes de octubre del 2011.*/

SELECT IDEmpleado, empApPaterno, empNombres
FROM tblEmpleado
WHERE YEAR(empFechaIngreso) = 2011 AND MONTH(empFechaIngreso) = 10