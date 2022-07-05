/* Procedimiento que muestra los medicamentos, sus
proveedores y precios unitarios, que pertenecen a una
categoría ingresada por parámetro 

    Parámetros de entrada:
        - Nombre_Categoria VARCHAR(15)*/

CREATE PROCEDURE uspMedicamentosPorCategoria
    @Categoria VARCHAR(15)
AS

BEGIN
    DECLARE @IdCategoria VARCHAR(5)
    EXEC @IdCategoria = ufcGetIdCategoria @Categoria


    SELECT medNombre, medStock, detMPrecioU, tblProveedor.proNombres
    FROM tblMedicamento
    INNER JOIN tblDetalleMedicamento ON tblDetalleMedicamento.IdMedicamento 
        = tblMedicamento.IdMedicamento
    INNER JOIN tblPedido ON tblPedido.IdPedido = tblDetalleMedicamento.IdPedido
    INNER JOIN tblProveedor ON tblProveedor.proRUC = tblPedido.proRUC
    WHERE tblMedicamento.IdCategoria = @IdCategoria
END

/* EXEC uspMedicamentosPorCategoria 'Categoria A' */