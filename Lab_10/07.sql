/*7. Que se muestre el IDEmpleado, ApellidoPaterno y Nombres; de la tabla Empleado. 
Donde el Nombre tenga como segunda letra A.*/

SELECT IDEmpleado, empApPaterno, empNombres
FROM tblEmpleado
WHERE empNombres LIKE '_A%'