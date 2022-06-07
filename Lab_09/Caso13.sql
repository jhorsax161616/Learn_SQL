-- Mostrar en una consulta el código, apellido paterno, apellido materno 
-- y email; de los clientes que tengan email nulo

SELECT DNI, cliApellidoPaterno AS Ap_Paterno, cliApellidoMaterno AS AP_Materno,
cliEmail AS Email
FROM tblCliente
WHERE cliEmail IS NULL