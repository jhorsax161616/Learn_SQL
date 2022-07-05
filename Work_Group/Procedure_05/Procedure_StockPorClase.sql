/* Procedimiento que muestra los equiepos medicos, sus
proveedores y el precio de compra, que pertenecen a una
clase ingresada por parámetro 

    Parámetros de entrada:
        - Nombre_Clase VARCHAR(15)*/

CREATE PROCEDURE uspEquiposPorClase
    @Clase VARCHAR(15)
AS

BEGIN
    DECLARE @IdClase VARCHAR(5)
    EXEC @IdClase = ufcGetIdClase @Clase


    SELECT equiNombre, equiStock, detEPrecioU, tblProveedor.proNombres
    FROM tblEquipoMedico
    INNER JOIN tblDetalleEquipo ON tblDetalleEquipo.IdEquipoMedico 
        = tblEquipoMedico.IdEquipoMedico
    INNER JOIN tblPedido ON tblPedido.IdPedido = tblDetalleEquipo.IdPedido
    INNER JOIN tblProveedor ON tblProveedor.proRUC = tblPedido.proRUC
    WHERE tblEquipoMedico.IdClase = @IdClase
END

/* EXEC uspEquiposPorClase 'Tipo V' */