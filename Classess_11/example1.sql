SELECT tblCliente.cliNombres, cliSexo
FROM tblCliente

SELECT cliSexo ,COUNT(tblCliente.cliNombres) AS TotalClientes
FROM tblCliente
GROUP BY cliSexo