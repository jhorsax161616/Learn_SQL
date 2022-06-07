/* 15. Realizar una consulta donde se liste el código, nombre y stock de los
productos cuyo  proveedor tiene RUC que termina en el dígito 4. */

SELECT IDProducto, proNombre, proStock
FROM tblProducto
WHERE tblProducto.RUC IN (
    SELECT RUC
    FROM tblProveedor
    WHERE RUC LIKE '%4'
    )