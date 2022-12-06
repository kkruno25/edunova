# Otvoriti CMD
# Unijeti D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\SQL\vjezba2.sql

drop database if exists vjezba2;
create database vjezba2 default charset utf8;
use vjezba2;

create table svekar(
    sifra int not null primary key auto_increment,
    stilfrizura varchar(48),
    ogrlica int not null,
    asocijalno bit not null
);

create table prijatelj(
    sifra int not null primary key auto_increment,
    modelnaocala varchar(37),
    treciputa datetime not null,
    ekstroventno bit not null,
    prviputa datetime,
    svekar int
);

create table brat(
    sifra int not null primary key auto_increment,
    suknja varchar(47),
    ogrlica int not null,
    asocijalno bit not null,
    neprijatelj int not null
);

create table neprijatelj(
    sifra int not null primary key auto_increment,
    majica varchar(32),
    haljina varchar(43) not null,
    lipa decimal(16,8),
    modelnaocala varchar(49) not null,
    kuna decimal(12,6) not null,
    jmbag char(11),
    cura int
);

create table cura(
    sifra int not null primary key auto_increment,
    haljina varchar(33) not null,
    drugiputa datetime not null,
    suknja varchar(38),
    narukvica int,
    introvertno bit,
    majica varchar(40) not null,
    decko int
);

create table decko(
    sifra int not null primary key auto_increment,
    indiferentno bit,
    vesta varchar(34),
    asocijalno bit not null
);

create table zarucnica(
    sifra int not null primary key auto_increment,
    narukvica int,
    bojakose varchar(37) not null,
    novcica decimal(15,9),
    lipa decimal(15,8) not null,
    indiferentno bit not null
);

create table decko_zarucnica(
    sifra int not null primary key auto_increment,
    decko int not null,
    zarucnica int not null
);


# Vanjski kljuc
alter table prijatelj add foreign key (svekar) references svekar(sifra);
alter table brat add foreign key (neprijatelj) references neprijatelj(sifra);
alter table neprijatelj add foreign key (cura) references cura(sifra);
alter table cura add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (decko) references decko(sifra);
alter table decko_zarucnica add foreign key (zarucnica) references zarucnica(sifra);

# zarucnica
insert into zarucnica(sifra,bojakose,lipa,indiferentno)
values(null,'Plava','110,00',1);

insert into zarucnica(sifra,bojakose,lipa,indiferentno)
values(null,'Smeđa','99,00',1);

insert into zarucnica(sifra,bojakose,lipa,indiferentno)
values(null,'Crvena','121,00',1);

# decko
insert into decko(sifra,indiferentno,vesta,asocijalno)
values(null,1,'Firefly',0);

insert into decko(sifra,indiferentno,vesta,asocijalno)
values(null,1,'Tom Tailor',0);

insert into decko(sifra,indiferentno,vesta,asocijalno)
values(null,1,'Galileo',0);

# decko_zarucnica
insert into decko_zarucnica(zarucnica,decko)
values
(1,1),(2,2),(3,3);

# cura
insert into cura(sifra,haljina,drugiputa,majica)
values(null,'Ljetna','2023-06-01 17:00:00','Ljetna');

insert into cura(sifra,haljina,drugiputa,majica)
values(null,'Proljetna','2023-04-01 17:00:00','Proljetna');

insert into cura(sifra,haljina,drugiputa,majica)
values(null,'Versace','2023-09-01 17:00:00','Jesenska');

# neprijatelj
insert into neprijatelj(sifra,haljina,modelnaocala,kuna)
values(null,'Svečana','Ray Ban','999,99');

insert into neprijatelj(sifra,haljina,modelnaocala,kuna)
values(null,'Jesenska','Police','1000,00');

insert into neprijatelj(sifra,haljina,modelnaocala,kuna)
values(null,'Versace','Gucci','1199,99');

# brat
insert into brat(sifra,ogrlica,asocijalno,neprijatelj)
values(null,'22',0,1);

insert into brat(sifra,ogrlica,asocijalno,neprijatelj)
values(null,'14',0,2);

# svekar
insert into svekar(sifra,ogrlica,asocijalno)
values(null,'Zlatna',0);

# prijatelj
insert into prijatelj(sifra,treciputa,ekstroventno,svekar)
values(null,'2020-04-30',0,1);

# u tablici brat obrisati zapise cija vrijednost kolone ogrlica razlicito od 14
delete from brat
where ogrlica!=14;

# izlistati suknja iz tablice cura uz uvjet da vrijednost kolone drugiputa nepoznate
select suknja from cura
where drugiputa is null;

#
select f.novcica,a.neprijatelj,b.haljina
from brat a
inner join neprijatelj b on a.neprijatelj=b.sifra
inner join cura c on b.cura=c.sifra
inner join decko d on c.decko=d.sifra 
inner join decko_zarucnica e on d.sifra=e.decko 
inner join zarucnica f on e.zarucnica=f.sifra
where d.vesta like '%ba%' and c.drugiputa is not null
order by b.haljina desc;
