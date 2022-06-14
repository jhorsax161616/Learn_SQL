/* 12. Realizar un procedimiento almacenado donde se actualice el email de un 
determinado cliente. El DNI y el nuevo email deben ser ingresados como 
parámetros. */

CREATE PROCEDURE uspEjercicio12
    @DNI VARCHAR(8),
    @NuevoEmail VARCHAR(80)
AS
BEGIN
    UPDATE tblCliente
    SET cliEmail = @NuevoEmail
    WHERE DNI = @DNI

    SELECT DNI, cliNombres, cliEmail
    FROM tblCliente
    WHERE DNI = @DNI
END

--Ejecutar
/* EXEC uspEjercicio12 '71660999', 'toro@microsoft.com' */