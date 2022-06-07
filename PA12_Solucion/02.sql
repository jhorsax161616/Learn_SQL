/*2. Consulta que muestre el DNI, apellido paterno, apellido materno, nombres
y fecha de nacimiento de los clientes que nacieron en febrero de los años
1980, 1985 o 1990. (2 puntos)*/

SELECT tblCliente.DNI, tblCliente.cliApellidoPaterno, tblCliente.cliApellidoMaterno,
    tblCliente.cliNombres, tblCliente.cliFechaNacimiento
FROM tblCliente
WHERE MONTH(tblCliente.cliFechaNacimiento) = 2 
    AND YEAR(tblCliente.cliFechaNacimiento) IN (1980, 1985, 1990)