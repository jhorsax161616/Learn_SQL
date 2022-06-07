use master
go

create database dbInstituto
go

use dbInstituto
go

create table tblEspecialidad (
    espCodigo varchar(75) primary key,
    espNombre varchar(180) not null 
)

create table tblFacultad (
    facCodigo varchar(75) primary key,
    facNombre varchar(180) not null
)

create table tblCurso (
    curCodigo varchar(75) primary key,
    curNombre varchar(180) not null,
    curTipo varchar(10) not null,
    curCreditos int not null
)

create table tblCarrera (
    carCodigo varchar(75) primary key,
    carNombre varchar(180) not null,
    carDuracion int not null,
    facCodigo varchar(75) not null,

    foreign key (facCodigo) references tblFacultad(facCodigo)
)

create table tblProfesor (
    proDNI varchar(15) primary key,
    proNombre varchar(50) not null,
    proApPaterno varchar(50) not null,
    proApMaterno varchar(50),
    proEmail varchar(75) not null,
    proTelefono varchar(25),
    espCodigo varchar(75) not null,

    foreign key (espCodigo) references tblEspecialidad(espCodigo)
)

create table tblAlumno (
    aluCodigo varchar(75) primary key,
    aluNombre varchar(50) not null,
    aluApPaterno varchar(50) not null,
    aluApMaterno varchar(50) not null,
    aluSexo varchar(5) not null,
    aluFechaNacimiento date not null,
    aluTelefono varchar(25),
    carCodigo varchar(75) not null,

    foreign key (carCodigo) references tblCarrera(carCodigo)
)

create table tblSeccion (
    secCodigo varchar(75) primary key,
    secSeccion varchar(50) not null,
    secPerAcademico varchar(50) not null,
    proDNI varchar(15) not null,
    curCodigo varchar(75) not null,

    foreign key (proDNI) references tblProfesor(proDNI),
    foreign key (curCodigo) references tblCurso(curCodigo)
)

create table tblMatricula (
    matNota1 int not null,
    matNota2 int not null,
    secCodigo varchar(75) not null,
    aluCodigo varchar(75) not null,

    foreign key (secCodigo) references tblSeccion(secCodigo),
    foreign key (aluCodigo) references tblAlumno(aluCodigo)
)