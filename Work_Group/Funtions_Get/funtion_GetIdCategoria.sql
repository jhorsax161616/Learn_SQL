/* Función para obtener el Id de una Categoría:

    Parámetros de entrada:
        - Nombre de la Categoría VARCHAR(15)
    Salida:
        IdCategoria VARCHAR(5) */

CREATE FUNCTION ufcGetIdCategoria
(
    @Nombre VARCHAR(15)
)
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @IdCategoria VARCHAR(5)
    SELECT @IdCategoria = IdCategoria
    FROM tblCategoria
    WHERE catNombre = @Nombre

    RETURN @IdCategoria
END

/* DECLARE @IdCategoria VARCHAR(5)
EXEC  @IdCategoria = ufcGetIdCategoria 'Categoria D'
PRINT  @IdCategoria */
