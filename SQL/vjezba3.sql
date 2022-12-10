# Otvoriti CMD
# Unijeti D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\SQL\vjezba3.sql

drop database if exists vjezba3;
create database vjezba3 default charset utf8;
use vjezba3;

create table svekar(
    sifra int not null primary key auto_increment,
    novcica decimal(16,8) not null,
    suknja varchar(36) not null,
    bojakose varchar(36),
    prstena int,
    narukvica int not null,
    cura int not null
);

create table cura(
    sifra int not null primary key auto_increment,
    dukserica varchar(49),
    maraka decimal(13,7),
    drugiputa datetime,
    majica varchar(49),
    novcica decimal(15,8),
    ogrlica int not null
);

create table punica(
    sifra int not null primary key auto_increment,
    asocijalno bit,
    kratkamajica varchar(44),
    kuna decimal(13,8) not null,
    vesta varchar(32) not null,
    snasa int
);

create table snasa(
    sifra int not null primary key auto_increment,
    introvertno bit,
    kuna decimal(15,6) not null,
    eura decimal(12,9) not null,
    treciputa datetime,
    ostavljena int not null
);

create table ostavljena(
    sifra int not null primary key auto_increment,
    kuna decimal(17,5),
    lipa decimal(15,6),
    majica varchar(36),
    modelnaocala varchar(31) not null,
    prijatelj int
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    kuna decimal(16,10),
    haljina varchar(37),
    lipa decimal(13,10),
    dukserica varchar(31),
    indiferentno bit not null
);

create table brat(
    sifra int not null primary key auto_increment,
    jmbag char(11),
    ogrlica int not null,
    ekstroventno bit not null
);

create table prijatelj_brat(
    sifra int not null primary key auto_increment,
    prijatelj int not null,
    brat int not null
);

# Vanjski kljucevi
alter table svekar add foreign key (cura) references cura(sifra);
alter table punica add foreign key (snasa) references snasa(sifra);
alter table snasa add foreign key (ostavljena) references ostavljena(sifra);
alter table ostavljena add foreign key(prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key(prijatelj) references prijatelj(sifra);
alter table prijatelj_brat add foreign key(brat) references brat(sifra);

# inicijalni podatci
# prijatelj
insert into prijatelj(sifra,indiferentno)
values(null,1);

insert into prijatelj(sifra,indiferentno)
values(null,0);

insert into prijatelj(sifra,indiferentno)
values(null,1);

# ostavljena
insert into ostavljena(sifra,modelnaocala)
values(null,'RayBan');

insert into ostavljena(sifra,modelnaocala)
values(null,'Ferrera');

insert into ostavljena(sifra,modelnaocala)
values(null,'Armani');

# snasa
insert into snasa(sifra,kuna,eura,ostavljena)
values(null,499.00,66.23,1);

insert into snasa(sifra,kuna,eura,ostavljena)
values(null,749.00,99.42,2);

insert into snasa(sifra,kuna,eura,ostavljena)
values(null,999.00,132.60,3);

# punica
insert into punica(sifra,kratkamajica,kuna,vesta)
values(null,'AB',549.50,'Springfield');

insert into punica(sifra,kratkamajica,kuna,vesta)
values(null,'CD',649.50,'S''Oliver');

# brat
insert into brat(sifra,ogrlica,ekstroventno)
values(null,2,0);

insert into brat(sifra,ogrlica,ekstroventno)
values(null,1,0);

insert into brat(sifra,ogrlica,ekstroventno)
values(null,1,1);

# prijatelj_brat
insert into prijatelj_brat(prijatelj,brat)
values(1,1),(1,2),(1,3);

# cura
insert into cura(sifra,ogrlica)
values(null,0);

# svekar
insert into svekar(sifra,novcica,suknja,narukvica,cura)
values(null,600.00,'Kratka',0,1);

# u tablici svekar postaviti svim zapisima
# kolonu suknja na vrijednost Osijek

update svekar set suknja='Osijek';

# u tablici punica obrisite sve zapise cija je vrijednost
# kolone kratkamajica jednako AB

