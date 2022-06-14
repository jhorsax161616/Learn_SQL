/*1. Realizar un procedimiento almacenado que muestre el IDProducto, pronombre,
proPrecioPropuesto y proStock; de los productos que tengan más de 100 unidades
en stock.*/
CREATE PROCEDURE uspProductosStock100
AS

BEGIN
    SELECT IDProducto, proNombre, proPrecioVenta, proStock
    FROM tblProducto
    WHERE proStock > 100
END

--Ejecutando
/* EXEC uspProductosStock100 */