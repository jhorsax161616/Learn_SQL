/*5. Consulta que muestre cuantos clientes existen por cada mes según la 
fecha de nacimiento. Mostrar el mes y la cantidad. (2 puntos)*/

SELECT DATENAME(MONTH, tblCliente.cliFechaNacimiento) AS Mes, COUNT(tblCliente.DNI)
    AS Cantidad
FROM tblCliente
GROUP BY DATENAME(MONTH, tblCliente.cliFechaNacimiento)