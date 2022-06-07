/*19. Que se muestre el IDEmpleado y Nombres; de la tabla Empleado. Donde el Nombre 
no empiece con C ni con E.*/

SELECT IDEmpleado, empNombres
FROM tblEmpleado
WHERE empNombres NOT LIKE 'C%' OR empNombres NOT LIKE 'E%'