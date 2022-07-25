CREATE FUNCTION ufnGenerIDTripulanteCordovaLeon
(
    @ApPaterno VARCHAR(35),
    @ApMaterno VARCHAR(35),
    @Nombres VARCHAR(50)
)
RETURNS VARCHAR(7)
AS

BEGIN
    DECLARE @IDTripulacion VARCHAR(7)
    DECLARE @Aux INT

    SET @IDTripulacion = 'T' + LEFT(@ApPaterno, 2) + RIGHT(@ApMaterno, 1)
        + SUBSTRING(@Nombres,2, 1)

    SELECT @Aux = COUNT(IDTripulacion)
    FROM tblTripulacion

    IF @Aux = 0
        SET @IDTripulacion =  @IDTripulacion + '01'
    ELSE
        BEGIN
            DECLARE @Aux2 VARCHAR(5)
            SET @Aux2 = '0' + CAST(@Aux AS VARCHAR(5))
            SET @IDTripulacion = @IDTripulacion + RIGHT(@Aux2, 2)
        END
    RETURN UPPER(@IDTripulacion)
END

/* DECLARE @IDTripulacion VARCHAR(7)
EXEC @IDTripulacion = ufnGenerIDTripulanteCordovaLeon 'Cordova', 'Poma', 'Jhordan Sax'
SELECT @IDTripulacion AS NewID */