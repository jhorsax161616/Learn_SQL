/*20. Que se muestre el IDEmpleado, ApellidoPaterno, ApellidoMaterno y Nombres; de la 
tabla Empleado. IDCategoria y NombreCategoria; de la tabla Categoria. Donde 
solo se muestre la lista de los Jefes.
*/

SELECT IDEmpleado, empApPaterno, empApMaterno, empNombres,
    tblCategoria.IDCategoria, tblCategoria.catNombre
FROM tblEmpleado
INNER JOIN tblCategoria ON tblEmpleado.IDCategoria = tblCategoria.IDCategoria
WHERE tblCategoria.catNombre = 'Jefe'