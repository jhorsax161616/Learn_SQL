/* En la tabla temp_tblCliente, a los clientes que son de sexo femenino, colocar en una 
nueva columna el descuento de 15 porciento, y a los varones el descuento de 10
porciento. La nueva columna se llamará cliDescuento */


ALTER TABLE temp_tblCliente
    ADD cliDescuento AS CASE temp_tblCliente.cliSexo
    WHEN 'Femenino' THEN 0.15
    WHEN 'Masculino' THEN 0.10
END