/*4. Realizar un procedimiento almacenado que muestre el IDProducto, proNombre,
RUC y provNombre; de todos los productos donde el proveedor sea Alicorp S.A */

CREATE PROCEDURE uspProductosAicorp
AS

BEGIN
    SELECT IDProducto, proNombre, tblProveedor.RUC, provNombre
    FROM tblProducto
    INNER JOIN tblProveedor ON tblProducto.RUC = tblProveedor.RUC
    WHERE provNombre = 'Alicorp S.A'
END

--Ejecutando
/* EXECUTE uspProductosAicorp */