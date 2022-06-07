-- Mostrar en una consulta el código, apellido paterno
-- y fecha de nacimiento; de los clientes que nacieron los años 1985, 1988 o 1991.

SELECT DNI, cliApellidoPaterno AS Apellido_Paterno, cliFechaNacimiento AS Fecha_Nacimiento
FROM tblCliente
WHERE YEAR(cliFechaNacimiento) IN ('1985', '1988', '1991')