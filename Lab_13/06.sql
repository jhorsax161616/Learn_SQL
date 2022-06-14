/* 6. Realizar un procedimiento almacenado que muestre el IDVenta, venFecha, 
IDProducto, pronombre y dvenCantidad; de los productos que pertenecen a la 
categoría Condimentos. */

CREATE PROCEDURE ventasCondimentos
AS

BEGIN
    SELECT tblVenta.IDVenta, venFecha, tblProducto.IDProducto, proNombre,
        dvenCantidad
    FROM tblVenta
    INNER JOIN tblDetalleVenta ON tblDetalleVenta.IDVenta = tblVenta.IDVenta
    INNER JOIN tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
    INNER JOIN tblCategoria ON tblCategoria.IDCategoria = tblProducto.IDCategoria
    WHERE catNombre = 'Condimentos'
END

--Ejecutando
/* EXEC ventasCondimentos */