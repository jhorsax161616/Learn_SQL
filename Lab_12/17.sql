/* 17. Se decide diferenciar los productos por tipos en la base de datos. 
Estos tipos son B para los Bebidas, y al resto el tipo es O. Añada esta
información en la tabla temp_tblProducto con una columna nueva llamada proTipo.
*/

-- Para no tener el mismo problema que el bloque anterior lo haremos de forma no calculada

/* 1. Creamos la nueva columna */
ALTER TABLE temp_tblProducto
    ADD proTipo VARCHAR(2)
GO

/* 2. Actualizamos los datos */

UPDATE temp_tblProducto
SET proTipo = (
    CASE temp_tblProducto.catNombre
        WHEN 'Bebidas' THEN 'B'
        ELSE 'O'
    END
)