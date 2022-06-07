/*4. Consulta que muestre el código, nombre de un producto, nombre de
categoría, nombre de proveedor; de los productos cuyo precio propuesto sea
mayor o igual al dato ingresado como parámetro. (2 puntos)*/

DECLARE @price DECIMAL(7, 2)
SET @price = 97.00

SELECT tblProducto.IDProducto, tblProducto.proNombre, tblCategoria.catNombre,
    tblProveedor.provNombre
FROM tblProducto
INNER JOIN tblCategoria ON tblProducto.IDCategoria = tblCategoria.IDCategoria
INNER JOIN tblProveedor ON tblProducto.RUC = tblProveedor.RUC
WHERE tblProducto.proPrecioVenta >= @price