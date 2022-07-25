/*7. Se decide diferenciar los clientes por tipos en la base de datos. Estos
tipos son H para los clientes de Huancayo, T para los clientes de El Tambo y
C para los clientes de Chilca. Añada esta información en la tabla
temp_tblCliente con una columna nueva llamada cliTipo. */


-- Add a new column 'cliTipo' to table 'temp_tblCliente' in schema 'dbBodega'
ALTER TABLE temp_tblCliente
    ADD cliTipo AS CASE temp_tblCliente.cliDistrito
    WHEN 'Huancayo' THEN 'H'
    WHEN 'El Tambo' THEN 'T'
    WHEN 'Chilca' THEN 'C'
END