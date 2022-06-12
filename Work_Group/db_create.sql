CREATE DATABASE db_Essalud;
GO

USE db_Essalud

CREATE TABLE tblCategoria (
IdCategoria VARCHAR(5) PRIMARY KEY,
catNombre VARCHAR(15) NOT NULL
);

CREATE TABLE tblClase (
IdClase VARCHAR(5) PRIMARY KEY,
claNombre VARCHAR(15) NOT NULL
);

CREATE TABLE tblTransportista (
traRUC VARCHAR(13) PRIMARY KEY,
traNombres VARCHAR(50) NOT NULL,
traApPaterno VARCHAR(35) NOT NULL,
traApMaterno VARCHAR(35),
traDireccion VARCHAR(180) NOT NULL,
traGenero VARCHAR(9) NOT NULL,
traTelefono VARCHAR(15) NOT NULL,
traEmail VARCHAR(80)
);

CREATE TABLE  tblProveedor (
proRUC VARCHAR(13) PRIMARY KEY,
proNombres VARCHAR(50) NOT NULL,
proDireccion VARCHAR(180) NOT NULL,
proTelefono VARCHAR(15) NOT NULL,
proEmail VARCHAR(80) NOT NULL
);

CREATE TABLE tblAsistente (
asiRUC VARCHAR(13) PRIMARY KEY,
asiNombres VARCHAR(50) NOT NULL,
asiApPaterno VARCHAR(35) NOT NULL,
asiApMaterno VARCHAR(35) NOT NULL,
asiGenero VARCHAR(9) NOT NULL,
asiTelefono VARCHAR(15) NOT NULL,
asiEmail VARCHAR(80)
);

CREATE TABLE tblMedicamento (
IdMedicamento VARCHAR(11) PRIMARY KEY,
medNombre VARCHAR(180) NOT NULL,
medStock INT NOT NULL,
IdCategoria VARCHAR(5) NOT NULL,

FOREIGN KEY (IdCategoria) REFERENCES tblCategoria(IdCategoria)
);

CREATE TABLE tblEquipoMedico (
IdEquipoMedico VARCHAR(11) PRIMARY KEY,
equiNombre VARCHAR(180) NOT NULL,
equiStock INT NOT  NULL,
IdClase VARCHAR(5) NOT NULL,

FOREIGN KEY (IdClase) REFERENCES tblClase(IdClase)
);

CREATE TABLE tblPedido (
IdPedido VARCHAR(9) PRIMARY KEY,
pedPrecio DECIMAL(10, 2) NOT NULL,
pedIGV DECIMAL(7, 2) NOT NULL,
pedFechaLlegada DATE NOT NULL,
pedFechaSalida DATE NOT NULL,
traRUC VARCHAR (13) NOT NULL,
proRUC VARCHAR(13) NOT NULL,
asiRUC VARCHAR (13) NOT NULL,

FOREIGN KEY (traRUC) REFERENCES tblTransportista(traRUC),
FOREIGN KEY (proRUC) REFERENCES tblProveedor(proRUC),
FOREIGN KEY (asiRUC) REFERENCES tblAsistente(asiRUC)
);

CREATE TABLE tblDetalleMedicamento (
IdMedicamento VARCHAR(11) NOT NULL,
IdPedido VARCHAR(9) NOT NULL,
detMCantidad INT NOT NULL,
detMPrecioU DECIMAL(7,2) NOT NULL,

FOREIGN KEY (IdMedicamento) REFERENCES tblMedicamento(IdMedicamento),
FOREIGN KEY (IdPedido) REFERENCES tblPedido(IdPedido)
);

CREATE TABLE tblDetalleEquipo (
IdEquipoMedico VARCHAR(11) NOT NULL,
IdPedido VARCHAR(9) NOT NULL,
detECantidad INT NOT NULL,
detEPrecioU DECIMAL(10,2) NOT NULL,

FOREIGN KEY (IdEquipoMedico) REFERENCES tblEquipoMedico(IdEquipoMedico),
FOREIGN KEY (IdPedido) REFERENCES tblPedido(IdPedido)
);

GO