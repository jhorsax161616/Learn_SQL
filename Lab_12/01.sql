/*1. Crear una nueva tabla a partir de la tabla tblCliente llamada temp_tblCliente, que 
contenga las siguientes columnas: DNI, cliApellidoPaterno, cliApellidoMaterno, 
cliNombres, cliSexo, cliDistrito y cliEmail; insertando los datos de los clientes que vivan 
en Huancayo, El Tambo o Chilca.*/

SELECT DNI, cliApellidoPaterno, cliApellidoMaterno, cliNombres, cliSexo,
    cliDistrito, cliEmail
INTO temp_tblCliente
FROM tblCliente
WHERE cliDistrito IN ('Huancayo', 'El Tambo', 'Chilca')

SELECT * FROM temp_tblCliente