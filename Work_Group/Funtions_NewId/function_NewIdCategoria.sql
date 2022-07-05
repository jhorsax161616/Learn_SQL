/* Función para generar un nuevo Id de una nueva Categoría:
    
    Sin parametros de entrada...
    
    Salida:
        - NewIdCategoría VARCHAR(5)*/

CREATE FUNCTION ufcNewIdCategoria()
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @Aux INT, @NewIdCategoria VARCHAR(5)
    
    SELECT @Aux = COUNT(IdCategoria)
    FROM tblCategoria

    SET @NewIdCategoria = '00' + CONVERT(VARCHAR(3), @Aux + 1)

    SET @NewIdCategoria = 'CA' + RIGHT(@NewIdCategoria, 3)

    RETURN @NewIdCategoria
END

/* DECLARE @NewIdCategoria VARCHAR(5)
EXEC @NewIdCategoria = ufcNewIdCategoria
PRINT @NewIdCategoria */