use master
go

create database dbAereolina
go

use dbAereolina
go

create table tblTripulante (
    DNI varchar(20) primary key,
    triNombre varchar(75) not null,
    triApPaterno varchar(50) not null,
    triApMaterno varchar(50),
    triTelefono varchar(25) not null,
    triEmail varchar(50),
    triTipoSange varchar(10) not null
)

create table tblPasajero (
    IdPasajero varchar(50) primary key,
    pasNombre varchar(75) not null,
    pasApPaterno varchar(50) not null,
    pasApMaterno varchar(50),
    pasTelefono varchar(25),
    pasEmail varchar(50),
    pasNacionalidad varchar(50) not null
)

create table tblAvion (
    Matricula varchar(75) primary key,
    aviMarca varchar(75) not null,
    aviModelo varchar(75) not null,
    aviCapacidad int not null
)

create table tblAreopuerto (
    IdAreopuerto varchar(25) primary key,
    areNombre varchar(75) not null,
    areLugar varchar(120) not null
)

create table tblVuelo (
    IdVuelo varchar(75) primary key,
    vueFecha date not null,
    vueHora varchar(10) not null,
    vuePrecio money not null,

    Matricula varchar(75) not null,
    IdAreopuertoSalida varchar(25) not null,
    IdAreopuertoLlegada varchar(25) not null
    FOREIGN KEY (Matricula) REFERENCES tblAvion(Matricula),
    FOREIGN KEY (IdAreopuertoSalida) REFERENCES tblAreopuerto(IdAreopuerto),
    FOREIGN KEY (IdAreopuertoLlegada) REFERENCES tblAreopuerto(IdAreopuerto)
)

create table tblAsignacionTripulanteVuelo (
    DNI varchar(20) not null,
    IdVuelo varchar(75) not null,
    rol varchar(120) not null
    FOREIGN key (DNI) REFERENCES tblTripulante(DNI),
    FOREIGN key (IdVuelo) REFERENCES tblVuelo(IdVuelo)
)

create table tblPasajeroVuelo (
    IdPasajero varchar(50) not null,
    IdVuelo varchar(75) not null,
    PesoEquipaje int,
    NumAsiento int not null

    FOREIGN KEY (IdPasajero) REFERENCES tblPasajero(IdPasajero),
    FOREIGN KEY (IdVuelo) REFERENCES tblVuelo(IdVuelo)
)