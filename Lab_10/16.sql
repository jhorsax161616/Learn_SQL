/*16. Que se muestre el IDEmpleado, ApellidoPaterno, IDCategoria y HorasSemana; de 
la tabla Empleado. Donde el IDCategoria sea A y trabaje más de 20 horas a la 
semana.
*/

SELECT IDEmpleado, empApPaterno, empNombres, tblEmpleado.IDCategoria, empHorasSemanales
FROM tblEmpleado
INNER JOIN tblCategoria ON tblEmpleado.IDCategoria = tblCategoria.IDCategoria
WHERE tblEmpleado.IDCategoria = 'A' AND empHorasSemanales > 20