/*18. Que se muestre el IDEmpleado y Nombres; de la tabla Empleado. Donde el Nombre 
empiece con M o con A.
*/

SELECT IDEmpleado, empNombres
FROM tblEmpleado
WHERE empNombres LIKE 'M%' OR empNombres LIKE 'A%'