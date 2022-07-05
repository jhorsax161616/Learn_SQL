/* Función para obtener el Id de un Equipo Médico

    Parámetros de entrada:
        - Nombre del Equipo Médico VARCHAR(180)
    Salida:
        IdEquipoMedico VARCHAR(11) */

CREATE FUNCTION ufcGetIdEquipo
(
    @Nombre VARCHAR(180)
)
RETURNS VARCHAR(11)
AS

BEGIN
    DECLARE @IdEquipoMedico VARCHAR(11)
    SELECT @IdEquipoMedico = IdEquipoMedico
    FROM tblEquipoMedico
    WHERE equiNombre = @Nombre

    RETURN @IdEquipoMedico
END

/* DECLARE @IdEquipoMedico VARCHAR(11)
EXEC @IdEquipoMedico = ufcGetIdEquipo 'Buretras Infrainflamables'
PRINT @IdEquipoMedico */