-- Mostrar en una consulta el código, apellido paterno y fecha de nacimiento;
-- de los clientes que nacieron en el mes de agosto sin importar el año.

SELECT DNI, cliApellidoPaterno AS Apellido_Paterno, cliFechaNacimiento AS Fecha_Nacimiento
FROM tblCliente
WHERE MONTH(cliFechaNacimiento) = 08