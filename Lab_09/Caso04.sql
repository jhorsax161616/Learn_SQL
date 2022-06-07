--Mostrar en una consulta el código, nombre y precio; de los productos cuyo precio es entre S/. 40 y S/.50
SELECT IDProducto AS Codigo, proNombre AS Nombre, proPrecioVenta AS Precio
FROM tblProducto
WHERE proPrecioVenta BETWEEN 40 AND 50