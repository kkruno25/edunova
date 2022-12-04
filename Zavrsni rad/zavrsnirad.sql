# Otvoriti CMD
# Unijeti D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\Zavrsni rad\zavrsnirad.sql

drop database if exists zavrsnirad;
create database zavrsnirad default charset utf8;
use zavrsnirad;

create table vozilo(
    sifra int not null primary key auto_increment,
    registracija varchar(50),
    nosivost decimal(5,2),
    tipvozila varchar(50)
);
