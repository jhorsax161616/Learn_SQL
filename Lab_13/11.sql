/* 11. Realizar un procedimiento almacenado donde se inserte un nuevo registro
a la tabla Cliente. Todos los datos deben ser ingresados como parámetros. */

CREATE PROCEDURE uspEjercicio11
    @DNI VARCHAR(8),
    @ApPaterno VARCHAR(35),
    @ApMaterno VARCHAR(35),
    @Nombres VARCHAR(50),
    @Sexo VARCHAR(9),
    @FechaNacimiento DATE,
    @Direccion VARCHAR(180),
    @Distrito VARCHAR(50),
    @Telefono VARCHAR(15),
    @Email VARCHAR(80)
AS

BEGIN
    INSERT INTO tblCliente VALUES(@DNI, @ApPaterno,@ApMaterno, @Nombres, @Sexo,
        @FechaNacimiento, @Direccion, @Distrito, @Telefono, @Email)
    SELECT * FROM tblCliente WHERE DNI = @DNI
END

--Ejecutando
/* EXEC uspEjercicio11 '71660999', 'Toro', 'Vaca', 'Leon Mata', 'Masculino',
    '2001-05-14', 'Jr. Los mangos 555', 'Acappullco', '915532588', 'leonmatatoro@gmail.com' */