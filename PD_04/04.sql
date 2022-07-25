Create Procedure ufcRegistrarPasajCordovaLeon
@Name VARCHAR(122),
@IDViaje VARCHAR (15)
AS

BEGIN
    DECLARE @NewID Varchar(15)
    exec @NewID= ufnGenerarIDPasajeCordovaLeon

    DECLARE @AuxDNI VARCHAR(8)
    EXEC @AuxDNI=ufnObtenerDNIcordovaLeon @Name

    INSERT INTO tblPasaje VALUES
    (@NewID,@AuxDNI,@iDViaje)
END







Exec ufcRegistrarPasajCordovaLeon 'HINOSTROZA INGA PAMELA SUE', 'VIA20211122-002'
Exec ufcRegistrarPasajCordovaLeon 'PAITAN MUCHA PEDRO MIGUEL' , 'VIA20211122-002'
