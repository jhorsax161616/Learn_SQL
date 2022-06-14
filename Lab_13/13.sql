/* 13. Realizar un procedimiento almacenado donde se actualice el sueldo del 
empleado. El apellido paterno, apellido materno, nombre y nuevo sueldo; deben 
ser ingresados como parámetros. */

CREATE PROCEDURE ejercicio13
    @ApPaterno VARCHAR(35),
    @ApMaterno VARCHAR(35),
    @Nombre VARCHAR(50),
    @NuevoSueldo DECIMAL(7,2)
AS

BEGIN
    SELECT * FROM tblEmpleado WHERE empApellidoPaterno = @ApPaterno AND
        empApellidoMaterno = @ApMaterno AND empNombres = @Nombre 

    UPDATE tblEmpleado
    SET empSueldo = @NuevoSueldo
    WHERE empApellidoPaterno = @ApPaterno AND empApellidoMaterno = @ApMaterno
        AND empNombres = @Nombre
    
    SELECT * FROM tblEmpleado WHERE empApellidoPaterno = @ApPaterno AND
        empApellidoMaterno = @ApMaterno AND empNombres = @Nombre 
END

--Ejecutando
/* EXEC ejercicio13 "Davolio", "Huaman", "Nancy", 3500.50 */