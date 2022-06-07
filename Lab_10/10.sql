/*10. Que se muestre el IDEmpleado y Nombres; de la tabla Empleado. Donde el Nombre 
contenga la letra L.*/

SELECT IDEmpleado, empNombres
FROM tblEmpleado
WHERE empNombres LIKE '%L%'