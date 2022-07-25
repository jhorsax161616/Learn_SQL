CREATE FUNCTION ufnGenerarIDPasajeCordovaLeon
()
RETURNS VARCHAR (13)
AS
BEGIN
DECLARE @AmountPas INT
SELECT @AmountPas = COUNT(*) FROM tblPasaje

DECLARE @NewID VARCHAR(15)
IF (@AmountPas = 0)
BEGIN
SET @AmountPas = 'PAS001-000001'
END
ELSE
BEGIN



SET  @NewID=CONVERT(VARCHAR(6),@AmountPas + 1)
SET @NewID='PAS001-' + RIGHT('000000' + @NewID,6)
END
RETURN @NewID
END

/* DECLARE @Result VARCHAR(13)
EXEC @Result = ufnGenerarIDPasajeCordovaLeonB
PRINT @Result */

