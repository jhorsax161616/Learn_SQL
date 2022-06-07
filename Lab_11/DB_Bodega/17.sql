/* 17. Realizar una consulta donde se liste el código y fecha de venta donde
se han vendidos productos cuyo precio es menor o igual a 10 */

SELECT IDVenta, venFecha
FROM tblVenta
WHERE tblVenta.IDVenta IN (
    SELECT DISTINCT IDVenta
    FROM tblDetalleVenta
    WHERE tblDetalleVenta.IDProducto IN (
        SELECT IDProducto
        FROM tblProducto
        WHERE proPrecioVenta <= 10
    )
)