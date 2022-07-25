/*  Aumente el límite de descuento de los clientes en un 10 porciento adicional al que 
ya tienen. */


-- Esto nos devuelve un error Msg 271
/* UPDATE temp_tblCliente
SET
    [cliDescuento] = [cliDescuento] + 0.1 */

-- Entonses para solucionar esto tenemos que clonar nuestro campo de cliDescuento y hacer el incremento sin problema


/* 1. Clonamos neustar columna en una nueva que se denominará [cliDescuentoF] */

-- Creamos la nueva columna

ALTER TABLE temp_tblCliente
    ADD cliDescuentoF DECIMAL(3, 3)
GO

-- Copiamos todos los datos

UPDATE temp_tblCliente
    SET cliDescuentoF = cliDescuento
GO

/* 2. Realizamos el incremento */

UPDATE temp_tblCliente
    SET cliDescuentoF = cliDescuentoF + 0.1
GO