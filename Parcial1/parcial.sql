use master
go

create database dbColeccion
go

use dbColeccion
go

create table tblGenero (
    genCodigo varchar(75) primary key,
    genNombre varchar(180) not null
)

create table tblFormato (
    forCodigo varchar(75) primary key,
    forDescripcion varchar(180) not null
)

create table tblProductora (
    proCodigo varchar(75) primary key,
    proNombre varchar(180) not null,
    proDireccion varchar(180) not null,
    proPaisOperacion varchar(50) not null
)

create table tblCantante (
    cantCodigo varchar(75) primary key,
    cantNombre varchar(50) not null,
    cantApPaterno varchar(75) not null,
    cantApMaterno varchar(75),
    cantNombreArtistico varchar(180) not null,
    cantNacionalidad varchar(75),
    cantTipoVoz varchar(75)
)

create table tblCancion (
    cancCodigo varchar(75) primary key,
    cancNombre varchar(180) not null,
    cancDuracion time not null,
    genCodigo varchar(75) not null,

    foreign key (genCodigo) references tblGenero(genCodigo)
)

create table tblAlbum (
    albCodigo varchar(75) primary key,
    albNombre varchar(180) not null,
    albNumeroCanciones int not null,
    albFechaLanzamiento date not null,
    forCodigo varchar(75) not null,
    proCodigo varchar(75) not null,

    foreign key (forCodigo) references tblFormato(forCodigo),
    foreign key (proCodigo) references tblProductora(proCodigo)
)

create table tblParticipacion (
    cancCodigo varchar(75) not null,
    cantCodigo varchar(75) not null,
    rol varchar(180) not null,

    foreign key (cancCodigo) references tblCancion(cancCodigo),
    foreign key (cantCodigo) references tblCantante(cantCodigo)
)

create table tblAlbumCancion (
    cancCodigo varchar(75) not null,
    albCodigo varchar(75) not null,
    
    foreign key (cancCodigo) references tblCancion(cancCodigo),
    foreign key (albCodigo) references tblAlbum(albCodigo)
)