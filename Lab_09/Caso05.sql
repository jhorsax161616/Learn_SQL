-- Mostrar en una consulta el código, apellido paterno, apellido materno y nombres; de los clientes cuyos apellidos paternos empiezan con la letra “M”.
SELECT DNI, cliApellidoPaterno AS Apellido_Paterno,
cliApellidoMaterno AS Apellido_Materno, cliNombres AS Nombres
FROM tblCliente
WHERE cliApellidoPaterno LIKE 'M%'