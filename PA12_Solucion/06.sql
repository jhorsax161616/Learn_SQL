/*6. Consulta que muestre cuantos productos provee cada proveedor. Mostrar el 
nombre del proveedor y la cantidad. (2 puntos)*/

SELECT tblProveedor.provNombre, COUNT(tblProducto.IDProducto) AS Cantidad
FROM tblProveedor
INNER JOIN tblProducto ON tblProveedor.RUC = tblProducto.RUC
GROUP BY tblProveedor.provNombre