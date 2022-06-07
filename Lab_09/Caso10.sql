-- Mostrar en una consulta el código, apellido paterno
-- y fecha de nacimiento; de los clientes que nacieron antes de 1985

SELECT DNI, cliApellidoPaterno AS Apellido_Paterno, cliFechaNacimiento AS Fecha_Nacimiento
FROM tblCliente
WHERE cliFechaNacimiento < '1985-01-01'