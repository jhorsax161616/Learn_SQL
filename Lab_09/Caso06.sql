--Mostrar en una consulta el código, apellido paterno, apellido materno y nombres; de los clientes cuyos nombres terminan con la letra “E”.
SELECT DNI, cliApellidoPaterno AS Apellido_Paterno,
cliApellidoMaterno AS Apellido_Materno, cliNombres AS Nombres
FROM tblCliente
WHERE cliNombres LIKE '%E'