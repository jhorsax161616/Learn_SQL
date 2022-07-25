/*6. Cambie a NULL el email del cliente 21117975 en la tabla temp_tblCliente*/

SELECT DNI, cliEmail FROM temp_tblCliente WHERE DNI = '21117975'

UPDATE temp_tblCliente
SET cliEmail = NULL
WHERE DNI = '21117975'

SELECT DNI, cliEmail FROM temp_tblCliente WHERE DNI = '21117975'