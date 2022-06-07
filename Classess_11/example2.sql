SELECT cliDistrito, cliSexo, COUNT(cliNombres) AS Total
FROM tblCliente
GROUP BY cliDistrito, cliSexo