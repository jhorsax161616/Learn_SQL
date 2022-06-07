DECLARE @Proveedor VARCHAR(100)
SET @Proveedor = 'Gloria S.A.'

SELECT DISTINCT tblVenta.IDVenta, tblVenta.venFecha
FROM tblVenta
INNER JOIN tblDetalleVenta ON tblVenta.IDVenta = tblDetalleVenta.IDVenta
WHERE tblDetalleVenta.IDProducto IN (
SELECT tblProducto.IDProducto
FROM tblProducto
INNER JOIN tblProveedor ON tblProducto.RUC = tblProveedor.RUC
WHERE tblProveedor.provNombre = @Proveedor)