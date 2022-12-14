# Otvoriti CMD
# Unijeti D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\SQL\vjezba1.sql

drop database if exists vjezba1;
create database vjezba1 default charset utf8;
use vjezba1;

create table punac(
    sifra int not null primary key auto_increment,
    ogrlica int,
    gustoca decimal(14,9),
    hlace varchar(41) not null
);

create table cura(
    sifra int not null primary key auto_increment,
    novcica decimal(16,5) not null,
    gustoca decimal(18,6) not null,
    lipa decimal(13,10),
    ogrlica int not null,
    bojakose varchar(38),
    suknja varchar(36),
    punac int
);

create table mladic(
    sifra int not null primary key auto_increment,
    suknja varchar(50) not null,
    kuna decimal(16,8) not null,
    drugiputa datetime,
    asocijalno bit,
    ekstroventno bit not null,
    dukserica varchar(48) not null,
    muskarac int
);

create table muskarac(
    sifra int not null primary key auto_increment,
    bojaociju varchar(50) not null,
    hlace varchar(50),
    modelnaocala varchar(43),
    maraka decimal(14,5) not null,
    zena int not null
);

create table zena(
    sifra int not null primary key auto_increment,
    treciputa datetime,
    hlace varchar(46),
    kratkamajica varchar(31) not null,
    jmbag char(11) not null,
    bojaociju varchar(39)not null,
    haljina varchar(44),
    sestra int not null
);

create table sestra(
    sifra int not null primary key auto_increment,
    introvertno bit,
    haljina varchar(31) not null,
    maraka decimal(16,6),
    hlace varchar(46) not null,
    narukvica int not null
);

create table sestra_svekar(
    sifra int not null primary key auto_increment,
    sestra int not null,
    svekar int not null
);

create table svekar(
    sifra int not null primary key auto_increment,
    bojaociju varchar(40) not null,
    prstena int,
    dukserica varchar(41),
    lipa decimal(13,8),
    eura decimal(12,7),
    majica varchar(35)
);

# Vanjski ključevi
alter table cura add foreign key (punac) references punac(sifra);
alter table mladic add foreign key (muskarac) references muskarac (sifra);
alter table muskarac add foreign key (zena) references zena (sifra);
alter table zena add foreign key (sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (sestra) references sestra(sifra);
alter table sestra_svekar add foreign key (svekar) references svekar(sifra);

# mladic

insert into mladic(sifra,suknja,kuna,ekstroventno,dukserica)
values(null,'Kratka','100,00',0,'Crna');

# sestra
insert into sestra(sifra,haljina,hlace,narukvica)
values(null,'Ljetna','Capri','Plava');

insert into sestra(sifra,haljina,hlace,narukvica)
values(null,'Zimska','kratke','Žuta');

insert into sestra(sifra,haljina,hlace,narukvica)
values(null,'Proljetna','Dugacke','Zelena');

# zena
insert into zena(sifra,kratkamajica,jmbag,bojaociju,sestra)
values(null,'Ljetna','01234567890','smeđa',1);

insert into zena(sifra,kratkamajica,jmbag,bojaociju,sestra)
values(null,'Zimska','12345678901','roza',2);

insert into zena(sifra,kratkamajica,jmbag,bojaociju,sestra)
values(null,'Proljetna','2345678901','crvena',3);


# muskarac
insert into muskarac(sifra,bojaociju,maraka,zena)
values(null,'smeđa','450,99',1);

insert into muskarac(sifra,bojaociju,maraka,zena)
values(null,'zelena','323,70',2);

insert into muskarac(sifra,bojaociju,maraka,zena)
values(null,'plava','200,00',3);

# svekar
insert into svekar(sifra,bojaociju)
values(null,'Zelena');

insert into svekar(sifra,bojaociju)
values(null,'Plava');

insert into svekar(sifra,bojaociju)
values(null,'Smeđa');

# sestra_svekar
insert into sestra_svekar(svekar,sestra)
values
(1,1),(1,2),(1,3);

insert into sestra_svekar(svekar,sestra)
values
(2,1),(2,2),(2,3);

insert into sestra_svekar(svekar,sestra)
values
(3,1),(3,2),(3,3);

insert into cura(gustoca)
values (15.77);