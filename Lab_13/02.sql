/*2. Realizar un procedimiento almacenado que muestre el DNI,
cliApellidoPaterno, cliApellidoMaterno, cliNombres, cliSexo, cliFechaNacimiento
y cliDistrito; de los clientes que nacieron entre el año 1987 y 1988. */

CREATE PROCEDURE uspClientes1987y1988
AS

BEGIN
    SELECT DNI, cliApellidoPaterno, cliApellidoMaterno, cliNombres, cliSexo,
        cliFechaNacimiento, cliDistrito
    FROM tblCliente
    WHERE YEAR(cliFechaNacimiento) BETWEEN 1987 AND 1988
END

--Ejecutando
/* EXEC uspClientes1987y1988 */