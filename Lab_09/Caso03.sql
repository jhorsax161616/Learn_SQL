--Mostrar en una consulta el código, nombre y stock; de los productos cuyo stock es mayor a 100 unidades
SELECT IDProducto AS Codigo, proNombre AS Nombre, proStock AS Stock
FROM tblProducto
WHERE proStock > 100