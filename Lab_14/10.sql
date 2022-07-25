/* 10. Realizar un procedimiento almacenado donde se ingrese los datos de una venta.
Los datos a consignar son:
    - Nombre completo del cliente
    - Nombre completo del empleado
    - Fecha de venta
Asimismo, realizar un procedimiento almacenado donde se ingrese los datos del 
detalle de esa venta. Los datos a consignar son:
    - Nombre del producto
    - Cantidad
*/

/* Parte 1 */

/* CREATE PROCEDURE uspNewVenta
    @NombreCliente VARCHAR(180),
    @NombreEmpleado VARCHAR(180),
    @FechaVenta DATE
AS

BEGIN
    DECLARE @IdVenta VARCHAR(9), @DNI VARCHAR(8), @IdEmpleado INT

    EXEC @IdVenta = ufcGetNewIdVenta
    EXEC @DNI = ufcGetDNI @NombreCliente
    EXEC @IdEmpleado = ufcGetIdEmpleado @NombreEmpleado

    INSERT INTO tblVenta VALUES(@IdVenta, @FechaVenta, @DNI, @IdEmpleado)
END

-- Ejecutando
EXEC uspNewVenta 'Cano Torres Astrid Eva', 'Davolio Huaman Nancy', '2022-07-25' */

/* Parte 2 */

-- Ya que no especifica parametros de entrada, vamos a asumir que todos los registro de
    -- detalle de venta se ingresarán en relación con la última venta creada
    -- Tampoco se está considerando la reducción de stock ya que no lo especifíca, pero esto se puede hacer con un simple IF y un UPDATE

CREATE PROCEDURE uspDetalleVenta
    @Producto VARCHAR(100),
    @Cantidad INT
AS

BEGIN
    DECLARE @IdProducto VARCHAR(5), @IdVenta VARCHAR(9)

    EXEC @IdProducto = ufcGetIdProducto @Producto

    SELECT @IdVenta = MAX(IDVenta)
    FROM tblVenta

    INSERT INTO tblDetalleVenta VALUES(@IdVenta, @IdProducto, @Cantidad)
END

-- Eejcutando
EXEC uspDetalleVenta 'Té Dharamsala', 16