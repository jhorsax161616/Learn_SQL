/* Función para generar un nuevo Id de un nuevo Equipo Médico:
    
    Sin parametros de entrada...
    
    Salida:
        - NewIdEquipo VARCHAR(11)*/

CREATE FUNCTION ufcNewIdEquipo()
RETURNS VARCHAR(11)
AS

BEGIN
    DECLARE @Aux INT, @NewIdEquipo VARCHAR(11)
    
    SELECT @Aux = COUNT(IdEquipoMedico)
    FROM tblEquipoMedico

    SET @NewIdEquipo = '000' + CONVERT(VARCHAR(4), @Aux + 1)

    SET @NewIdEquipo = 'EQUI' + RIGHT(@NewIdEquipo, 4)

    RETURN @NewIdEquipo
END