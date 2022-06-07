/*25. Que se muestre el IDEmpleado y Nombre Completo (ApellidoPaterno, 
ApellidoMaterno y Nombre); de la tabla Empleado. Sueldo de la tabla Categoria. 
Donde solo se muestre a las personas que ganan más de un valor ingresado como 
parámetro*/

DECLARE @Sueldo INT
SET @Sueldo = 1000

SELECT IDEmpleado, empApPaterno + ' ' + empApMaterno + ' ' + empNombres
    AS NombreCompleto, tblCategoria.catSueldo
FROM tblEmpleado
    INNER JOIN tblCategoria ON tblEmpleado.IDCategoria = tblCategoria.IDCategoria
WHERE tblCategoria.catSueldo > @Sueldo