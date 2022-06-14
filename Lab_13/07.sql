/* 7.Realizar un procedimiento almacenado que muestre el IDProducto, proNombre,
proPrecioPropuesto y proStock; de los productos cuyo IDCategoria haya sido 
ingresado como parámetro. */

CREATE PROCEDURE uspEjercicio07
    @Categoria VARCHAR(5)
AS

BEGIN
    SELECT IDProducto, proNombre, proPrecioVenta, proStock
    FROM tblProducto
    WHERE IDCategoria = @Categoria
END

--Ejecutando
/* EXEC uspEjercicio07 'CA04' */