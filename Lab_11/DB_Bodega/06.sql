/* 6. Realizar una consulta donde se liste el RUC, nombre de proveedor y la
cantidad de productos que provee cada uno, ordenado descendentemente. */

SELECT tblProveedor.RUC, tblProveedor.provNombre, COUNT(tblProducto.proNombre)
    AS CantidadProductos
FROM tblProveedor
INNER JOIN tblProducto ON tblProducto.RUC = tblProveedor.RUC
GROUP BY tblProveedor.RUC, tblProveedor.provNombre
ORDER BY CantidadProductos DESC