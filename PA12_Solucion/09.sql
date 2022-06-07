/*9. Consulta que muestre el DNI, nombre completo, fecha de nacimiento y edad 
de los clientes, cuyo distrito y sexo sea ingresado como parámetro. (2 puntos)
*/

DECLARE @distrito VARCHAR(50)
SET @distrito = 'Huancayo'

DECLARE @sexo VARCHAR(9)
SET @sexo = 'Masculino'

SELECT DNI, cliNombres + ' ' + cliApellidoPaterno + ' ' + cliApellidoMaterno
    AS NombreCompleto, cliFechaNacimiento,  DATEDIFF(YEAR, cliFechaNacimiento, GETDATE())
    - (
    CASE
        WHEN DATEADD(YY, DATEDIFF(YEAR, cliFechaNacimiento, GETDATE()), cliFechaNacimiento) > GETDATE()
        THEN 1
        ELSE 0
        END
    ) AS Edad
FROM tblCliente
WHERE cliDistrito = @distrito AND cliSexo = @sexo

--TESTS

/* SELECT DATEDIFF(YEAR, '2001-06-08', GETDATE()) - (
    CASE
        WHEN DATEADD(YY, DATEDIFF(YEAR, '2001-06-08', GETDATE()), '2001-06-08') > GETDATE()
        THEN 1
        ELSE 0
        END
) */

/* SELECT DATEADD(MONTH, 8, '2021-06-07') AS Test */