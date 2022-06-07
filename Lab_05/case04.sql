CREATE DATABASE dbConsecionaria
GO

USE dbConsecionaria
GO

CREATE TABLE tblCliente (
    RUC VARCHAR(25) PRIMARY KEY,
    cliNombre VARCHAR(50) NOT NULL,
    cliApPaterno VARCHAR(50) NOT NULL,
    cliApMaterno VARCHAR(50),
    cliDireccion VARCHAR(55),
    cliCiudad VARCHAR(30),
    cliTelefono VARCHAR(15)
)

CREATE TABLE tblRevision (
    IdRevision VARCHAR(15) PRIMARY KEY,
    revFiltro BIT NOT NULL,
    revAceite BIT NOT NULL,
    revFrenos BIT NOT NULL
)

CREATE TABLE tblAutomovil (
    MATRICULA VARCHAR(16) PRIMARY KEY,
    autMarca VARCHAR(30) NOT NULL,
    autModelo VARCHAR(30) NOT NULL,
    autColor VARCHAR(30) NOT NULL,
    autPrecio FLOAT NOT NULL,
    RUC VARCHAR(25) NOT NULL,
    IdRevision VARCHAR(15) NOT NULL,
    FOREIGN KEY (RUC) REFERENCES tblCliente(RUC),
    FOREIGN KEY (IdRevision) REFERENCES tblRevision(IdRevision)
)

GO