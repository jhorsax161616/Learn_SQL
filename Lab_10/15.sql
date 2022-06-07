/*15. Que se muestre el IDEmpleado, ApellidoPaterno y Nombres; de la tabla Empleado. 
Donde la fecha de ingreso haya sido en el mes de febrero sin importar el año.
*/

SELECT IDEmpleado, empApPaterno, empNombres
FROM tblEmpleado
WHERE MONTH(empFechaIngreso) = 2