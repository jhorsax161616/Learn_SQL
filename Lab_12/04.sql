/*4. En la tabla temp_tblCliente cambie el nombre de la cliente 42510728 a
“María Isabel”. */

SELECT DNI, cliNombres FROM temp_tblCliente WHERE DNI = '42510728'

UPDATE temp_tblCliente
SET cliNombres = 'María Isabel'
WHERE DNI = '42510728'

SELECT DNI, cliNombres FROM temp_tblCliente WHERE DNI = '42510728'