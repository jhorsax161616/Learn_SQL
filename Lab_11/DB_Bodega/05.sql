/* 5. Realizar una consulta donde se liste el código, nombre y stock de los 3
primeros  productos que tengan mayor stock.  */

SELECT TOP 3 tblProducto.IDProducto, tblProducto.proNombre,
    tblProducto.proStock
FROM tblProducto
ORDER BY tblProducto.proStock DESC