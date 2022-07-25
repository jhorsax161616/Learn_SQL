CREATE FUNCTION ufnObtenerDNIcordovaLeon

(@NombresCompletos VARCHAR(120))
RETURNS VARCHAR (8)
AS
BEGIN
DECLARE @AuxDNI VARCHAR (8)
Select @AuxDNI= DNI
FROM tblPasajero
WHERE pasApellidoPaterno + ' ' + pasApellidoMaterno + ' '+
pasNombres = @NombresCompletos
RETURN @AuxDNI

END