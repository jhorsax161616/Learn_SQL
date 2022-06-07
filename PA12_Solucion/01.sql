/*1. Consulta que muestre el código, nombre, precio propuesto y stock de los 
productos; donde el precio propuesto sea mayor a S/ 30 y cuyo stock sea menor 
a 40. (2 puntos)*/

SELECT tblProducto.IDProducto, tblProducto.proNombre,
    tblProducto.proPrecioVenta, tblProducto.proStock
FROM tblProducto
WHERE proPrecioVenta > 30 AND proStock < 40