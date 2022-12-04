# Otvoriti CMD
# Unijeti D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < "D:\Programiranje\javavjezbanje\edunova\SQL\Zavrsni rad\zavrsnirad.sql"

drop database if exists zavrsnirad;
create database zavrsnirad default charset utf8;
use zavrsnirad;

create table vozilo(
    sifra int not null primary key auto_increment,
    registracija varchar(50),
    nosivost decimal(5,2),
    tipvozila varchar(50)
);

create table vozac(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    brojmobitela char(10)
);

create table kupac(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    adresa varchar(50),
    oib char(11),
    brojmobitela char(10),
    email varchar(50)
);

create table gradiliste(
    sifra int not null primary key auto_increment,
    adresa varchar(50),
    narucenakolicinabetona char(5),
    nacinistovara varchar(50),
    kupac int
);

create table odvoz(
    sifra int not null primary key auto_increment,
    vrijemeodlaskasapogona datetime,
    dolazaknagradiliste datetime,
    pocetakistovara datetime,
    krajistovara datetime,
    vozilo int,
    vozac int
);

create table proizvodnja(
    sifra int not null primary key auto_increment,
    pocetakproizvodnje datetime,
    krajproizvodnje datetime,
    proizvedenakolicina decimal(1,1),
    razredcvrstoce varchar(6),
    gradiliste int,
    odvoz int
);

# Vanjski ključevi
alter table odvoz add foreign key (vozilo) references vozilo(sifra);
alter table odvoz add foreign key (vozac) references vozac(sifra);
alter table gradiliste add foreign key (kupac) references kupac(sifra);
alter table proizvodnja add foreign key (gradiliste) references gradiliste(sifra);
alter table proizvodnja add foreign key (odvoz) references odvoz(sifra);

