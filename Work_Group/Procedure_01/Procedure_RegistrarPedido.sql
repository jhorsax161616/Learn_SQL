/* Procedure que realiza el registro de un nuevo pedido.
    Parametros de entrada:
        -Fecha_Llegada DATE
        -Fecha_Salida DATE
        -Nombre completo del Transportista VARCHAR(180)
        -Nomvre completo del Proveedor VARCHAR(50)
        -Nombre Completo del Asistente VARCHAR(180)*/

CREATE PROCEDURE uspRegistrarPedido
    @Fecha_Llegada DATE,
    @Fecha_Salida DATE,
    @Transportista VARCHAR(180),
    @Proveedor VARCHAR(50),
    @Asistente VARCHAR(180)
AS

BEGIN
    DECLARE @newId VARCHAR(9), @IdTransp VARCHAR(13), @IdProv VARCHAR(13),
        @IdAsis VARCHAR(13)

    EXEC @newId = ufcNewIdPedido
    EXEC @IdTransp = ufcGetIdTransportista @Transportista
    EXEC @IdProv = ufcGetIdProveedor @Proveedor
    EXEC @IdAsis = ufcGetIdAsistente @Asistente

    INSERT INTO tblPedido VALUES(@newId, 0, 0, @Fecha_Llegada, @Fecha_Salida,
        @IdTransp, @IdProv, @IdAsis )
END

/* EXEC uspRegistrarPedido '2022-06-05', '2022-01-11', 'Jhordan Sax Cordova Poma',
    'Ghs Peru', 'Esmeralda Solís Amapi' */