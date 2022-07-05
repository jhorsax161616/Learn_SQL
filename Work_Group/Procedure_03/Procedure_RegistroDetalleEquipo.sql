/* Procedure que registra el detalle de un pedido de Equipos Médicos

    Parametros de entrada:
        Nombre_EquipoMedico VARCHAR(180)
        Precio_Unitario DECIMAL(7,2)
        Cantidad INT
        Id_Pedido VARCHAR(9)
    */
CREATE PROCEDURE uspRegistrarDetalleEquipo
    @Nombre_Equipo VARCHAR(180),
    @Precio_Unitario DECIMAL(10, 2),
    @Cantidad INT,
    @Id_Pedido VARCHAR(9)
AS

BEGIN
    DECLARE @Id_Equipo VARCHAR(11)
    EXEC @Id_Equipo = ufcGetIdEquipo @Nombre_Equipo

    INSERT INTO tblDetalleEquipo  VALUES(@Id_Equipo, @Id_Pedido, @Cantidad, @Precio_Unitario)

    UPDATE tblPedido
    SET pedPrecio = pedPrecio + @Cantidad * @Precio_Unitario,
        pedIGV = pedIGV + (@Cantidad * @Precio_Unitario) * 0.18
    WHERE tblPedido.IdPedido = @Id_Pedido

    UPDATE tblEquipoMedico
    SET equiStock = equiStock + @Cantidad
    WHERE tblEquipoMedico.IdEquipoMedico = @Id_Equipo
END

/* EXEC uspRegistrarDetalleEquipo 'Frigerador', 750, 3, 'PED00012' */