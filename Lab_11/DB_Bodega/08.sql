/* 8. Realizar una consulta donde se liste el código, nombre y categoría de
los 5 productos que más se han vendido en la bodega. */

SELECT TOP 5 tblProducto.IDProducto, tblProducto.proNombre, tblProducto.IDCategoria
FROM tblProducto
INNER JOIN tblDetalleVenta 
    ON tblProducto.IDProducto = tblDetalleVenta.IDProducto
GROUP BY tblProducto.IDProducto, tblProducto.proNombre, tblProducto.IDCategoria
ORDER BY SUM(tblDetalleVenta.dvenCantidad) DESC