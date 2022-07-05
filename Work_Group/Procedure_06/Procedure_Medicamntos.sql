/* Procedure que muestra el nombre del medicamento,
precio Unitario, la cantidad, el nombre del proveedor, el nombre
completo del transportista y el asistente encargado de dicha
adquisición ordenado alfabéticamente */

CREATE PROCEDURE uspMedicamentosProveedor
AS

BEGIN
    SELECT medNombre, detMPrecioU, detMCantidad, proNombres, 
        traNombres + ' ' + traApPaterno + ' ' + traApMaterno AS Transportista,
        asiNombres + ' ' + asiApPaterno + ' ' + asiApMaterno AS Asistente
    FROM tblMedicamento
    INNER JOIN tblDetalleMedicamento ON tblDetalleMedicamento.IdMedicamento
        = tblMedicamento.IdMedicamento
    INNER JOIN tblPedido ON tblPedido.IdPedido = tblDetalleMedicamento.IdPedido
    INNER JOIN tblProveedor ON tblProveedor.proRUC = tblPedido.proRUC
    INNER JOIN tblAsistente ON tblPedido.asiRUC = tblAsistente.asiRUC
    INNER JOIN tblTransportista ON tblPedido.traRUC = tblTransportista.traRUC
    ORDER BY medNombre ASC
END