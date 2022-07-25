/* 20. La columna proNombre en la tabla temp_tblProducto es demasiado corta.
Aumente su longitud a 150 caracteres.  */

ALTER TABLE temp_tblProducto
ALTER COLUMN proNombre VARCHAR(150);