/* 14. Realizar un procedimiento almacenado donde se elimine a un proveedor.
El RUC debe ser ingresado como parámetro. */

CREATE PROCEDURE uspBorrarProveedor
    @RUC VARCHAR(11)
AS

BEGIN
    DELETE FROM tblProveedor
    WHERE RUC = @RUC
END