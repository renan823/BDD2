create table transporte(
    COD integer,
    Tipo varchar(40),
    NumCarga integer,
    Modelo varchar(40),
    Combustivel varchar(40),
    NumPass integer,
    CNPJ char(14),
    primary key(COD)
);

create table destino(
    Cidade varchar(40),
    Estado varchar(40),
    Pais varchar(40),
    NHab integer,
    Coord varchar(40),
    primary key(Cidade, Estado, Pais)
);

create table fusoDestino(
    Cidade varchar(40),
    Estado varchar(40),
    Pais varchar(40),
    Fuso integer,
    primary key(Cidade, Estado, Pais, Fuso),
    foreign key(Cidade, Estado, Pais) references destino(Cidade, Estado, Pais)
);

create table pTuristicoDestino(
    Cidade varchar(40),
    Estado varchar(40),
    Pais varchar(40),
    PTuris varchar(40),
    primary key(Cidade, Estado, Pais, PTuris),
    foreign key(Cidade, Estado, Pais) references destino(Cidade, Estado, Pais)
);

create table viagem(
    CodViagem integer,
    Cidade varchar(40),
    Estado varchar(40),
    Pais varchar(40),
    CodTransporte integer,
    Distancia float,
    DuracaoViagem float,
    DataPartida date,
    DataChegada date,
    CPFVendedor char(11),
    FormaPagar varchar(40),
    Valor float,
    CPFGuia char(11),
    Cache float,
    foreign key(Cidade, Estado, Pais) references destino(Cidade, Estado, Pais),
    foreign key(CodTransporte) references transporte(COD),
    primary key(CodViagem)
);
