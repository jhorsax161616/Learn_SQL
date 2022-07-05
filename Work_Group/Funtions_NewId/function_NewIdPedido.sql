/* Función para generar un nuevo Id de un nuevo pedido:
    
    Sin parametros de entrada...
    
    Salida:
        - NewIdPedido varchar(9) */

CREATE FUNCTION ufcNewIdPedido()
RETURNS VARCHAR(9)
AS

BEGIN
    DECLARE @Aux INT, @NewIdPedido VARCHAR(9)
    
    SELECT @Aux = COUNT(IdPedido)
    FROM tblPedido

    SET @NewIdPedido = '0000' + CONVERT(VARCHAR(5), @Aux + 1)

    SET @NewIdPedido = 'PED' + RIGHT(@NewIdPedido, 5)

    RETURN @NewIdPedido
END

/* DECLARE @NewIdPedido VARCHAR(9)
EXEC @NewIdPedido = ufcNewIdPedido
PRINT @NewIdPedido */