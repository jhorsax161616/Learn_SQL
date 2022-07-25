/* 8. Realizar una función que devuelva el código de un empleado. El parámetro de 
entrada es el nombre completo del empleado (Apellidos y nombres). */

CREATE FUNCTION ufcGetIdEmpleado (
    @NombreCompleto VARCHAR(180)
)
RETURNS INT
AS

BEGIN
    DECLARE @IdEmpleado INT

    SELECT @IdEmpleado = IDEmpleado
    FROM tblEmpleado
    WHERE (empApellidoPaterno + ' ' + empApellidoMaterno + ' ' + empNombres) = @NombreCompleto

    RETURN @IdEmpleadO
END