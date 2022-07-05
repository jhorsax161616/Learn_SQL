/* Procedure que registra el detalle de un pedido de medicamentos

    Parametros de entrada:
        Nombre_Medicamento VARCHAR(180)
        Precio_Unitario DECIMAL(7,2)
        Cantidad INT
        Id_Pedido VARCHAR(9)
    */
CREATE PROCEDURE uspRegistrarDetalleMedicamento
    @Nombre_Medicamento VARCHAR(180),
    @Precio_Unitario DECIMAL(7, 2),
    @Cantidad INT,
    @Id_Pedido VARCHAR(9)
AS

BEGIN
    DECLARE @Id_Medicamento VARCHAR(11)
    EXEC @Id_Medicamento = ufcGetIdMedicamento @Nombre_Medicamento

    INSERT INTO tblDetalleMedicamento  VALUES(@Id_Medicamento, @Id_Pedido, @Cantidad, @Precio_Unitario)

    UPDATE tblPedido
    SET pedPrecio = pedPrecio + @Cantidad * @Precio_Unitario,
        pedIGV = pedIGV + (@Cantidad * @Precio_Unitario) * 0.18
    WHERE tblPedido.IdPedido = @Id_Pedido

    UPDATE tblMedicamento
    SET medStock = medStock + @Cantidad
    WHERE tblMedicamento.IdMedicamento = @Id_Medicamento
END

/* EXEC uspRegistrarDetalleMedicamento 'Ibuprofeno', 10, 10, 'PED00011' */