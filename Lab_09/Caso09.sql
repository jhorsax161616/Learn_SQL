-- Mostrar en una consulta el código, apellido paterno, apellido materno y nombres;
-- de los clientes que tengan al menos uno de sus nombres con 5 letras en total y que empiece con “M” y termine con “A”

SELECT DNI, cliApellidoPaterno AS Apellido_Paterno,
cliApellidoMaterno AS Apellido_Materno, cliNombres AS Nombres
FROM tblCliente
WHERE cliNombres LIKE 'M___A %' OR cliNombres LIKE '% M___A' or cliNombres LIKE 'M___A'