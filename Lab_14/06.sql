/* 6. Realizar una función que devuelva el DNI de un cliente. El parámetro de
 entrada es el nombre completo del cliente (Apellidos y nombres). */

 CREATE FUNCTION ufcGetDNI (
    @NombreCompleto VARCHAR(180)
 )
 RETURNS VARCHAR(8)
 AS

 BEGIN
    DECLARE @DNI VARCHAR(8)

    SELECT @DNI = DNI
    FROM tblCliente
    WHERE (cliApellidoPaterno + ' ' + cliApellidoMaterno + ' ' + cliNombres) = @NombreCompleto

    RETURN @DNI
 END

 -- Ejecutando
/*  DECLARE @DNI VARCHAR(8)
 EXEC @DNI = ufcGetDNI 'Vilca Morales Alex Adolfo'
 PRINT @DNI */