/*8. Que se muestre el IDEmpleado, ApellidoPaterno y Nombres; de la tabla Empleado. 
Donde el Nombre empiece con la letra A y termine con la L.*/

SELECT IDEmpleado, empApPaterno, empNombres
FROM tblEmpleado
WHERE empNombres LIKE 'A%L'