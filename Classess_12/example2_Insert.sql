/*Estamos insertando datos pero en una nueva tabla,
como una copia del resultado del select en una nueva tabla,
esta nueva tabla hereda las características de las tablas
padre.*/

SELECT tblProducto.IDProducto, tblProducto.proNombre,
tblProducto.proPrecioVenta, tblProducto.proStock,
tblCategoria.catNombre
INTO tblProductoCopia
FROM tblProducto INNER JOIN
tblCategoria ON tblProducto.IDCategoria = tblCategoria.IDCategoria
WHERE tblCategoria.catNombre IN ('Bebidas', 'Condimentos')

SELECT * FROM tblProductoCopia