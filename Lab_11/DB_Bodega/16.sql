/* 16. Realizar una consulta donde se liste el código y nombre de los 5
productos  preferidos, adquiridos por lo clientes que nacieron el año 1985 */

SELECT IDProducto, proNombre
FROM tblProducto
WHERE tblProducto.IDProducto IN (
    SELECT TOP 5 IDProducto
    FROM tblDetalleVenta
    WHERE tblDetalleVenta.IDVenta IN (
        SELECT IDVenta
        FROM tblVenta
        WHERE tblVenta.DNI IN (
            SELECT DNI
            FROM tblCliente
            WHERE YEAR(cliFechaNacimiento) = 1985
        )
    )
    GROUP BY IDProducto
    ORDER BY SUM(dvenCantidad) DESC
)