SELECT TOP 3 tblDetalleVenta.IDVenta, SUM(tblDetalleVenta.dvenCantidad * tblProducto.proPrecioVenta) AS Precio
FROM tblDetalleVenta
INNER JOIN tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
GROUP BY tblDetalleVenta.IDVenta
ORDER BY Precio DESC