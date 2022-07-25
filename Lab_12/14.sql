/* 14. Cambie el nombre del producto con código P0059 a “Whisky Johnnie Walker Blue 
Label” en la tabla temp_tblProducto, el precio a S/ 600, y cambie también su 
categoría a Bebidas  */

/* Observación:
    - En la tabla temp_tblProducto no está el producto P0059 ya que no
        conformaba parte de ninguna de las 3 categorías de lejercicio 13, por
        ello cambiaremos al P0049 ya que este si se encuentra en la tabla */

-- Update rows in table 'temp_tblProducto'
UPDATE temp_tblProducto
SET
    [proNombre] = 'Whisky Johnnie Walker Blue Label',
    [proPrecioVenta] = 600,
    [catNombre] = 'Bebidas'
WHERE IDProducto = 'P0049'
GO