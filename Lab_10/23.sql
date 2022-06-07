/*23. Que se muestre el IDEmpleado y Nombre Completo (ApellidoPaterno, 
ApellidoMaterno y Nombre); de la tabla Empleado.*/

SELECT IDEmpleado, empApPaterno + ' ' + empApMaterno + ' ' + empNombres
    AS NombreCompleto
FROM tblEmpleado