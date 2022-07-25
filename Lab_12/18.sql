/* 18. En la tabla temp_tblProducto, a los productos que son condimentos,
colocar en una nueva columna (Nuevo precio) el aumento de precio en S/ 5,
y a las bebidas aumentar en S/ 10, y S/ 3 en repostería */

-- Para no tener el mismo problema que en el bloque anterior, igualmente lo haremos de forma no calculada

ALTER TABLE temp_tblProducto
    ADD proNuevoPrecio DECIMAL(7, 2)
GO

UPDATE temp_tblProducto
SET proNuevoPrecio = proPrecioVenta
GO

UPDATE temp_tblProducto
SET proNuevoPrecio += (
    CASE temp_tblProducto.catNombre
        WHEN 'condimentos' THEN 5
        WHEN 'Bebidas' THEN 10
        WHEN 'Repostería' THEN 3
    END
)
GO