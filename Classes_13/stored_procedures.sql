CREATE PROCEDURE uspSeleccionarCliente

AS
BEGIN
    SELECT DNI, cliApellidoPaterno, cliApellidoMaterno,
    cliNombres, cliDistrito, cliSexo
    FROM tblCliente
END