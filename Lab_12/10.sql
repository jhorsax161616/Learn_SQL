/* La columna cliNombres en la tabla temp_tblCliente es demasiado corta. Aumente 
su longitud a 80 caracteres. Además, cambie la columna email para que no pueda 
aceptar valores nulos */

/* Parte 1 */
ALTER TABLE temp_tblCliente
ALTER COLUMN cliNombres VARCHAR(80);

/* Parte 2 */
ALTER TABLE temp_tblCliente
ALTER COLUMN cliEmail VARCHAR(80) NOT NULL;