# Otvoriti CMD
# Unesi D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\zadatak1.sql

drop database if exists zadatak1;
create database zadatak1 default charset utf8;
use zadatak1;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan int
);

create table zupan(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50) not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    opcina int,
    naziv varchar(50) not null
);

# Vanjski kljucevi
alter table zupanija add foreign key (zupan) references zupan (sifra);
alter table opcina add foreign key (zupanija) references zupanija (sifra);
alter table mjesto add foreign key (opcina) references opcina (sifra);


#Inicijalni podatci
# 1
insert into zupanija (sifra,naziv)
values (null,'Osječko Baranjska');

# 2
insert into zupanija (sifra,naziv)
values (null,'Slavonsko Brodska');

# 1
insert into zupan (sifra,ime,prezime)
values (null,'Pero','Perić');

# 2
insert into zupan (sifra,ime,prezime)
values (null,'Marko','Marić');

insert into opcina (sifra,naziv)
values (null,'Osijek');

insert into mjesto (sifra,naziv)
values (null,'Osijek');