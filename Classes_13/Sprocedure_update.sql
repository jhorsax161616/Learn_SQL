CREATE PROCEDURE uspActualizarDireccion
    --Creando parametros
    @DNI VARCHAR(8),
    @NuevaDireccion VARCHAR(180)
AS
BEGIN
    SELECT DNI, cliApellidoPaterno, cliApellidoMaterno,
    cliNombres, cliDireccion
    FROM tblCliente
    WHERE DNI = @DNI

    UPDATE tblCliente
    SET cliDireccion = @NuevaDireccion
    WHERE DNI = @DNI

    SELECT DNI, cliApellidoPaterno, cliApellidoMaterno,
    cliNombres, cliDireccion
    FROM tblCliente
    WHERE DNI = @DNI
END