/*24. Que se muestre el IDEmpleado y Nombre Completo (ApellidoPaterno, 
ApellidoMaterno y Nombre); de la tabla Empleado. Donde solo se muestre a las 
personas de EstadoCivil solteros, ingresado por parametro.*/

DECLARE @EstadoCivil NCHAR(1)
SET @EstadoCivil = 'S'

SELECT IDEmpleado, empApPaterno + ' ' + empApMaterno + ' ' + empNombres
    AS NombreCompleto
FROM tblEmpleado
WHERE empEstadoCivil = @EstadoCivil
