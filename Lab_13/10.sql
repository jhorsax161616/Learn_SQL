/* 10. Realizar un procedimiento almacenado donde se inserte un nuevo registro
a la tabla Categoría. Todos los datos deben ser ingresados como parámetros.*/

CREATE PROCEDURE uspEjercicio10
    @IDCategoria VARCHAR(5),
    @Nombre VARCHAR(40)
AS

BEGIN
    SELECT * FROM tblCategoria

    INSERT INTO tblCategoria VALUES(@IDCategoria, @Nombre)

    SELECT * FROM tblCategoria
END

--Ejecutando
/* EXEC uspEjercicio10 'CA50', 'Grasas' */