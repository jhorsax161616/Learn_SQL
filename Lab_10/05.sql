/*5. Que se muestre el IDEmpleado, ApellidoPaterno, ApellidoMaterno y Nombres; de la 
tabla Empleado. Donde el ApellidoPaterno empiece con la letra C.*/

SELECT IDEmpleado, empApPaterno, empApMaterno, empNombres
FROM tblEmpleado
WHERE empApPaterno LIKE 'C%'