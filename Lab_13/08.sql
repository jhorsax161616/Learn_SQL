/* 8. Realizar un procedimiento almacenado que muestre el IDVenta, venFecha, 
IDProducto, proNombre y DNI; de una venta donde la fecha de venta y el DNI del 
cliente hayan sido ingresados como parámetros */

CREATE PROCEDURE uspEjercicio08
    @FechaVenta DATE,
    @DNI VARCHAR(8)
AS

BEGIN
    SELECT tblVenta.IDVenta, venFecha, tblProducto.IDProducto, proNombre,
        DNI
    FROM tblVenta
    INNER JOIN tblDetalleVenta ON tblDetalleVenta.IDVenta = tblVenta.IDVenta
    INNER JOIN tblProducto ON tblDetalleVenta.IDProducto = tblProducto.IDProducto
    WHERE venFecha = @FechaVenta AND DNI = @DNI
END