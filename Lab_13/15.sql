/* 15. Realizar un procedimiento almacenado donde se registre un nuevo detalle
en un determinado IDVenta. Se debe insertar un IDProducto y dvenCantidad en la
tabla DetalleVenta; y a la vez se debe actualizar el nuevo stock del producto*/

CREATE PROCEDURE uspNuevaVenta
    @IdProducto VARCHAR(5),
    @Cantidad INT
AS

BEGIN
    IF (SELECT proStock FROM tblProducto WHERE IDProducto = @IdProducto) < (@Cantidad)
        PRINT 'Insuficientes productos'

    ELSE 
        BEGIN
            INSERT INTO tblDetalleVenta VALUES('001-00001', @IdProducto, @Cantidad)
            UPDATE tblProducto
            SET proStock = proStock - @Cantidad
            WHERE IDProducto = @IdProducto
        END 
END

--Ejecutando
/* EXEC uspNuevaVenta 'P0002', 20 */