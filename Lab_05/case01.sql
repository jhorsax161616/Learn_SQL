CREATE DATABASE dbPeliculas
GO

USE dbPeliculas
GO

CREATE TABLE tblGenero (
    IdGenero VARCHAR(10) PRIMARY KEY,
    genNombre VARCHAR(30) NOT NULL
)

CREATE TABLE tblActor (
    IdActor VARCHAR(20) PRIMARY KEY,
    actNombre VARCHAR(30) NOT NULL,
    actApPaterno VARCHAR(30) NOT NULL,
    actApMaterno VARCHAR(30),
    actFechaNacimiento DATE,
    actSexo VARCHAR(1) NOT NULL,
    actNumOscars INT NOT NULL
)

CREATE TABLE tblFormato (
    IdFormato VARCHAR(10) PRIMARY KEY,
    forNombre VARCHAR(50) NOT NULL
)

CREATE TABLE tblPelicula (
    IdPelicula VARCHAR(25) PRIMARY KEY,
    pelNombre VARCHAR(120) NOT NULL,
    pelFecha DATE NOT NULL,
    IdFormato VARCHAR(10) NOT NULL,
    IdGenero VARCHAR(10) NOT NULL,
    FOREIGN KEY (IdFormato) REFERENCES tblFormato(IdFormato),
    FOREIGN KEY (IdGenero) REFERENCES tblGenero(IdGenero)
)

CREATE TABLE tblParticipantes (
    IdPelicula VARCHAR(25) NOT NULL,
    IdActor VARCHAR(20) NOT NULL,
    rol VARCHAR(30),
    FOREIGN KEY(IdPelicula) REFERENCES tblPelicula(IdPelicula),
    FOREIGN KEY(IdActor) REFERENCES tblActor(IdActor)
)

GO