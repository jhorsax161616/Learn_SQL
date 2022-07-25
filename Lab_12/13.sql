/* 13. Crear una nueva tabla a partir de la tabla tblProducto llamado temp_tblProducto, 
que contenga las siguientes columnas: IDProducto, proNombre, 
proPrecioPropuesto, proStock y nombre de categoría; insertando los datos 
completos de los productos que sean de la categoría bebidas, condimentos y 
repostería. */

SELECT IDProducto, proNombre, proPrecioVenta, proStock, catNombre
INTO temp_tblProducto
FROM tblProducto
INNER JOIN tblCategoria ON tblProducto.IDCategoria = tblCategoria.IDCategoria
WHERE catNombre IN ('Bebidas', 'Condimentos', 'Repostería')