/*3. Que se muestre el IDEmpleado, ApellidoPaterno y Nombres; de la tabla Empleado. 
Donde las horas semanales sean mayores que 20 y menores que 48.*/

SELECT IDEmpleado, empApPaterno, empNombres
FROM tblEmpleado
WHERE empHorasSemanales > 20 AND empHorasSemanales < 48