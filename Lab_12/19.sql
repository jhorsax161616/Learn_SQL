/* 19. Reemplazar el stock a 0 de todos los productos cuyo stock sea menor a 20 */

UPDATE temp_tblProducto
    SET proStock = 0
WHERE proStock < 20