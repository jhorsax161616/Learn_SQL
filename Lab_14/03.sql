/* 3. Realizar una función que devuelva el código de una categoría.
El parámetro de  entrada es el nombre de la categoría. */

CREATE FUNCTION ufcGetIdCategoria
(
    @NombreCategoria VARCHAR(40)
)
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @IdCategoria VARCHAR(5)

    SELECT @IdCategoria = IDCategoria
    FROM tblCategoria
    WHERE catNombre = @NombreCategoria

    RETURN @IdCategoria
END