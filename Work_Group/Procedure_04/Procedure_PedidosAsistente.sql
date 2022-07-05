/* Procedimiento que retorna todos los pedidos que
atendió un asistente ó los pedidos que atendió en
un determinado mes de un año, el nombre es ingresado
como parámetro y la fecha o opción general también

Si en el parametro Opcion ingresa * devolvera todos
los pedidos que atendió el asistente.

    Parametros de entrada:
        - NombreAsistente VARCHAR(180)
        - Opcion VARCHAR(10) */

CREATE PROCEDURE uspPedidosDelAsistente
    @NombreAsistente VARCHAR(180),
    @Opcion VARCHAR(7)
AS

BEGIN
    DECLARE @IdAsistente VARCHAR(13)
    EXEC @IdAsistente = ufcGetIdAsistente @NombreAsistente

    IF @Opcion = '*'
        BEGIN
            SELECT  IdPedido, pedPrecio, pedIGV, pedFechaLlegada, pedFechaSalida
            FROM tblPedido
            WHERE asiRUC = @IdAsistente
        END
    ELSE
        BEGIN
            DECLARE @Year INT, @Month INT

            SET @Year = CONVERT(INT , LEFT(@Opcion, 4))
            SET @Month = CONVERT(INT, SUBSTRING(@Opcion, 6, LEN(@Opcion) - 5))

            SELECT IdPedido, pedPrecio, pedIGV, pedFechaLlegada
            FROM tblPedido
            WHERE asiRUC = @IdAsistente AND YEAR(pedFechaLlegada) = @Year
                AND MONTH(pedFechaLlegada) = @Month
        END
END

/* EXEC uspPedidosDelAsistente 'Esmeralda Solís Amapi', '*' */