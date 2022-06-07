/*6. Que se muestre el IDEmpleado, ApellidoPaterno, ApellidoMaterno y Nombres; de la 
tabla Empleado. Donde el ApellidoMaterno termine con la letra A*/

SELECT IDEmpleado, empApPaterno, empApMaterno, empNombres
FROM tblEmpleado
WHERE empApMaterno LIKE '%A'