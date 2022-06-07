--Mostrar en una consulta el código, apellido paterno, apellido materno y nombres; de los clientes cuyos nombres contengan la letra “X”.
SELECT DNI, cliApellidoPaterno AS Apellido_Paterno,
cliApellidoMaterno AS Apellido_Materno, cliNombres AS Nombres
FROM tblCliente
WHERE cliNombres LIKE '%X%'