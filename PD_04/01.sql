CREATE PROCEDURE uspInactivosCordovaLeon
    @Month INT,
    @Year INT
AS
BEGIN
    SELECT tblPasajero.DNI, pasApellidoPaterno + ' '
        + pasApellidoMaterno + ' ' + pasNombres AS NombreCompleto,
        pasTelefono
    FROM tblPasajero
    INNER JOIN tblPasaje ON tblPasaje.DNI = tblPasajero.DNI
    INNER JOIN tblViaje ON tblViaje.IDViaje = tblPasaje.IDViaje
    WHERE (MONTH(tblViaje.viaFecha) != @Month) 
        OR (YEAR(tblViaje.viaFecha) != @Year)
    GROUP BY tblPasajero.DNI, pasApellidoPaterno + ' '
        + pasApellidoMaterno + ' ' + pasNombres, pasTelefono
END

EXEC uspInactivosCordovaLeon 11, 2021

/* SELECT tblPasajero.DNI
FROM tblPasaje
RIGHT OUTER JOIN tblPasajero ON tblPasaje.DNI = tblPasajero.DNI
WHERE 
GROUP BY tblPasajero.DNI */