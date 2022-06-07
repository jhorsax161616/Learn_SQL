/*17. Que se muestre el IDEmpleado y Nombres; de la tabla Empleado. Donde el 
IDEmpleado empiece con E18 y el Nombre termine con la leta L.*/

SELECT IDEmpleado, empNombres
FROM tblEmpleado
WHERE IDEmpleado LIKE 'E18%' AND empNombres LIKE '%L'