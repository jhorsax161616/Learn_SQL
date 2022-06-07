/*Estamos actualizando la dirección y el distrito del cliente
que coincide en el DNI pasado - (cambiar direccioón y distrito para
ver los efectos)*/

SELECT * FROM tblCliente
WHERE cliApellidoPaterno = 'Quispe'

UPDATE tblCliente
SET cliDireccion = 'Calle Real 123', cliDistrito = 'Huancayo'
WHERE DNI = '07521458'

SELECT * FROM tblCliente
WHERE cliApellidoPaterno = 'Quispe'