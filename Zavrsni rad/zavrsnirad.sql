# Otvoriti CMD
# Unijeti D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < "D:\Programiranje\javavjezbanje\edunova\SQL\Zavrsni rad\zavrsnirad.sql"

drop database if exists zavrsnirad;
create database zavrsnirad default charset utf8;
use zavrsnirad;

create table vozilo(
    sifra int not null primary key auto_increment,
    registracija varchar(50) not null,
    nosivost decimal(7,2),
    tipvozila varchar(50) not null
);

create table gradiliste(
    sifra int not null primary key auto_increment,
    adresa varchar(50) not null,
    narucenakolicinabetona decimal(7,2) not null,
    narucenrazredcvrstoce varchar(6) not null,
    nacinistovara varchar(50) not null
);

create table odvoz(
    sifra int not null primary key auto_increment,
    vrijemeodlaskasapogona datetime,
    dolazaknagradiliste datetime,
    pocetakistovara datetime,
    krajistovara datetime,
    kolicinabetona decimal(3,2) not null,
    vozilo int not null
);

create table proizvodnja(
    sifra int not null primary key auto_increment,
    pocetakproizvodnje datetime not null,
    krajproizvodnje datetime not null,
    proizvedenakolicina decimal(4,2) not null,
    razredcvrstoce varchar(6) not null,
    gradiliste int not null,
    odvoz int not null
);

# Vanjski ključevi
alter table odvoz add foreign key (vozilo) references vozilo(sifra);
alter table proizvodnja add foreign key (gradiliste) references gradiliste(sifra);
alter table proizvodnja add foreign key (odvoz) references odvoz(sifra);

# vozilo
insert into vozilo(sifra,registracija,nosivost,tipvozila)
values(null,'OS-578-HS','18000.00','Mikser');

insert into vozilo(sifra,registracija,nosivost,tipvozila)
values(null,'OS-678-JS','16800.00','Mikser');

insert into vozilo(sifra,registracija,nosivost,tipvozila)
values(null,'OS-778-KS','18000.00','Mikser');

insert into vozilo(sifra,registracija,nosivost,tipvozila)
values(null,'OS-123-LS',null,'Autopumpa');

# gradiliste
insert into gradiliste(sifra,adresa,narucenakolicinabetona,narucenrazredcvrstoce,nacinistovara)
values(null,'Reisnerova 45,Osijek','14.50','C16/20','Kipanje');

insert into gradiliste(sifra,adresa,narucenakolicinabetona,narucenrazredcvrstoce,nacinistovara)
values(null,'Strossmayerova 132,Osijek','26.00','C30/37','Autopumpa');

insert into gradiliste(sifra,adresa,narucenakolicinabetona,narucenrazredcvrstoce,nacinistovara)
values(null,'Svačićeva 88,Osijek','19.00','C25/30','Kran');

# odvoz
insert into odvoz(sifra,vrijemeodlaskasapogona,dolazaknagradiliste,pocetakistovara,krajistovara,kolicinabetona,vozilo)
values(null,'2023-04-01 16:51:00','2023-04-01 17:06:00','2023-04-01 17:06:00','2023-04-01 17:41:00','7.50',1);

insert into odvoz(sifra,vrijemeodlaskasapogona,dolazaknagradiliste,pocetakistovara,krajistovara,kolicinabetona,vozilo)
values(null,'2023-04-01 17:21:00','2023-04-01 17:36:00','2023-04-01 17:41:00','2023-04-01 18:18:00','7.00',2);

# proizvodnja
insert into proizvodnja(sifra,pocetakproizvodnje,krajproizvodnje,proizvedenakolicina,razredcvrstoce,gradiliste,odvoz)
values(null,'2023-04-01 16:36:00','2023-04-01 16:46:00','7.50','C16/20',1,1);

insert into proizvodnja(sifra,pocetakproizvodnje,krajproizvodnje,proizvedenakolicina,razredcvrstoce,gradiliste,odvoz)
values(null,'2023-04-01 17:06:00','2023-04-01 17:16:00','7.00','C16/20',1,2);
