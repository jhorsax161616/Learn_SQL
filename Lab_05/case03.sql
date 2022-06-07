CREATE DATABASE dbTransportista
GO

USE dbTransportista
GO

CREATE TABLE tblCamionero (
    DNI VARCHAR(15) PRIMARY KEY,
    camNombre VARCHAR(30) NOT NULL,
    camApPaterno VARCHAR(30) NOT NULL,
    camApMaterno VARCHAR(30),
    camDireccion VARCHAR(50) NOT NULL,
    camTelefono VARCHAR(15)
)

CREATE TABLE tblCamion (
    matricula VARCHAR(7) PRIMARY KEY,
    camiModelo VARCHAR(25) NOT NULL
)

CREATE TABLE tblProvincia (
    IdProvincia VARCHAR(10) PRIMARY KEY,
    proNombre VARCHAR(30) NOT NULL
)

CREATE TABLE tblPaquete (
    IdPaquete VARCHAR(20) PRIMARY KEY,
    paqDescripcion VARCHAR(180) NOT NULL,
    paqOrigen VARCHAR(30) NOT NULL,
    DNI VARCHAR(15) NOT NULL,
    IdProvincia VARCHAR(10) NOT NULL,
    FOREIGN KEY (DNI) REFERENCES tblCamionero(DNI),
    FOREIGN KEY (IdProvincia) REFERENCES tblProvincia(IdProvincia)
)

CREATE TABLE tblConduce (
    DNI VARCHAR(15) NOT NULL,
    matricula VARCHAR(7) NOT NULL,
    conFecha DATE NOT NULL,
    FOREIGN KEY (DNI) REFERENCES tblCamionero(DNI),
    FOREIGN KEY (matricula) REFERENCES tblCamion(matricula)
)
GO