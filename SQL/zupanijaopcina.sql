# Otvoriti CMD
# Unijeti D:\Programiranje\Xampp\mysql\bin\mysql -uroot < D:\Programiranje\javavjezbanje\edunova\SQL\SQL\zupanijaopcina.sql

drop database if exists zupanijaopcina;
create database zupanijaopcina;
use zupanijaopcina;

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int,
    naziv varchar(50)
);

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    zupan varchar(50) 
);

# Vanjski kljucevi
alter table opcina add foreign key (zupanija) references zupanija (sifra);