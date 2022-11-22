# Otvoriti CMD
# Unesi D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\zadatak1.sql

drop database if exists zadatak1;
create database zadatak1 default charset utf8;
use zadatak1;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan int
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50)
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar(50)
);

# Vanjski kljucevi
alter table zupanija add foreign key (zupan) references zupan (sifra);
alter table opcina add foreign key (zupanija) references zupanija (sifra);
alter table mjesto add foreign key (opcina) references opcina (sifra);