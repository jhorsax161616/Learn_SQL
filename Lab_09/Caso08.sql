--Mostrar en una consulta el código, apellido paterno, apellido materno y nombres; de los clientes que tengan en alguna parte de su nombre “carlos”.
SELECT DNI, cliApellidoPaterno AS Apellido_Paterno,
cliApellidoMaterno AS Apellido_Materno, cliNombres AS Nombres
FROM tblCliente
WHERE cliNombres LIKE '%carlos%'