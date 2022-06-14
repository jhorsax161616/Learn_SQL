/* 3. Realizar un procedimiento almacenado que muestre el IDEmpleado, 
empApellidoPaterno, empApellidoMaterno y empNombres; de los empleados cuyo 
nombre empiece con la letra A. */

CREATE PROCEDURE uspEmpleadoA
AS

BEGIN
    SELECT IDEmpleado, empApellidoPaterno, empApellidoMaterno, empNombres
    FROM tblEmpleado
    WHERE empNombres LIKE 'A%'
END

--Ejecutando
/* EXEC uspEmpleadoA */