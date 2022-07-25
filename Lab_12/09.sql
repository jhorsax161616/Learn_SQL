/*  Reemplazar todos los campos NULL de email, y colocar la frase “No tiene”.  */

-- Update rows in table 'temp_TblCliente'
UPDATE temp_TblCliente
SET
    [cliEmail] = 'No tiene'
WHERE 	[cliEmail] IS NULL
GO