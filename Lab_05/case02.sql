CREATE DATABASE Bodega
GO

USE Bodega
GO

CREATE TABLE tblCliente (
    DNI VARCHAR(15) PRIMARY KEY,
    cliNombre VARCHAR(30) NOT NULL,
    cliApPaterno VARCHAR(30)  NOT NULL,
    cliApMaterno VARCHAR(30),
    cliDirecicon VARCHAR(50)
)

CREATE TABLE tblProveedor (
    RUC VARCHAR(30) PRIMARY KEY,
    provNombre VARCHAR(30) NOT NULL,
    provDireccion VARCHAR(50) NOT NULL
)

CREATE TABLE tblProducto (
    IdProducto VARCHAR(10) PRIMARY KEY,
    proNombre VARCHAR(30) NOT NULL,
    proPrecioUnit FLOAT NOT NULL,
    RUC VARCHAR(30) NOT NULL,
    FOREIGN KEY (RUC) REFERENCES tblProveedor(RUC)
)

CREATE TABLE tblCompra (
    DNI VARCHAR(15) NOT NULL,
    IdProducto VARCHAR(10) NOT NULL,
    FOREIGN KEY (DNI) REFERENCES tblCliente(DNI),
    FOREIGN KEY (IdProducto) REFERENCES tblProducto(IdProducto)
)

GO