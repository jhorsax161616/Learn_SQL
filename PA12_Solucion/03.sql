/*3. Consulta que muestre el código, nombre, precio propuesto y stock de los
productos que contengan en su nombre la letra “M” y cuyo código de producto
termine con el dígito “3” o “7”. (2 puntos)*/

SELECT tblProducto.IDProducto, tblProducto.proNombre, tblProducto.proPrecioVenta,
    tblProducto.proStock
FROM tblProducto
WHERE (tblProducto.proNombre LIKE '%M%')
    AND (tblProducto.IDProducto LIKE '%[3,7]')