/*9. Que se muestre el IDEmpleado, ApellidoPaterno y Nombres; de la tabla Empleado. 
Donde el Nombre empiece con la letra M y termine con la A, y que en total tenga 
solo 5 caracteres.
*/

SELECT IDEmpleado, empApPaterno, empNombres
FROM tblEmpleado
WHERE empNombres LIKE 'M___A'