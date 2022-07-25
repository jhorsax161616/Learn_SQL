/* 5. Realizar un procedimiento almacenado donde se ingrese los datos de productos 
que llegan a almacén. Los datos a consignar son:
- Nombre del producto
- Precio propuesto
- Stock
- Nombre del proveedor
- Nombre de categoría
Si el producto ya existe, solo se debe actualizar el precio propuesto y aumentar el 
stock.
 */

CREATE PROCEDURE uspSetProducto
    @NombreProducto VARCHAR(100),
    @Precio DECIMAL(7, 2),
    @Stock INT,
    @Proveedor VARCHAR(100),
    @Categoria VARCHAR(40)
AS

BEGIN
    IF (@NombreProducto IN (SELECT proNombre FROM tblProducto))
        BEGIN
            UPDATE tblProducto
            SET proStock = proStock + @Stock, proPrecioVenta = @Precio
            WHERE proNombre = @NombreProducto
        END
    ELSE 
        BEGIN
            DECLARE @ID VARCHAR(5)
            DECLARE @IdProv VARCHAR(11)
            DECLARE @IdCat VARCHAR(5)
            EXEC @ID = ufcGetNewIdProducto
            EXEC @IdProv = ufcGetIdProveedor @Proveedor
            EXEC @IdCat = ufcGetIdCategoria @Categoria
            INSERT INTO tblProducto VALUES(@ID, @NombreProducto, @Precio, @Stock, @IdProv, @IdCat)
        END
END