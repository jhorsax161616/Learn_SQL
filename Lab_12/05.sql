/*5. Elimine al cliente con DNI 80012772*/

SELECT * FROM temp_tblCliente WHERE DNI = '80012772'

DELETE temp_tblCliente
WHERE DNI = '80012772'

SELECT * FROM temp_tblCliente WHERE DNI = '80012772'