/* Función para generar un nuevo Id de una nueva Clase:
    
    Sin parametros de entrada...
    
    Salida:
        - NewIdClase VARCHAR(5)*/

CREATE FUNCTION ufcNewIdClase()
RETURNS VARCHAR(5)
AS

BEGIN
    DECLARE @Aux INT, @NewIdClase VARCHAR(5)
    
    SELECT @Aux = COUNT(IdClase)
    FROM tblClase

    SET @NewIdClase = '00' + CONVERT(VARCHAR(3), @Aux + 1)

    SET @NewIdClase = 'CL' + RIGHT(@NewIdClase, 3)

    RETURN @NewIdClase
END