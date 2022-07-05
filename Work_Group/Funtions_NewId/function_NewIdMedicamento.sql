/* Función para generar un nuevo Id de un nuevo Medicamento:
    
    Sin parametros de entrada...
    
    Salida:
        - NewIdMedicamento VARCHAR(11)*/

CREATE FUNCTION ufcNewIdMedicamento()
RETURNS VARCHAR(11)
AS

BEGIN
    DECLARE @Aux INT, @NewIdMedicamento VARCHAR(11)
    
    SELECT @Aux = COUNT(IdMedicamento)
    FROM tblMedicamento

    SET @NewIdMedicamento = '000' + CONVERT(VARCHAR(4), @Aux + 1)

    SET @NewIdMedicamento = 'MED' + RIGHT(@NewIdMedicamento, 4)

    RETURN @NewIdMedicamento
END