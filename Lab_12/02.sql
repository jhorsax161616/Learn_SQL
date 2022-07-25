/*2. Cambie el nombre de la cliente con DNI 20121055 a “Jennifer María” en
la tabla  temp_tblCliente. */

SELECT DNI, cliNombres FROM temp_tblCliente WHERE DNI = '20121055'

UPDATE temp_tblCliente
SET cliNombres = 'Jennifer María'
WHERE DNI = '20121055'

SELECT DNI, cliNombres FROM temp_tblCliente WHERE DNI = '20121055'