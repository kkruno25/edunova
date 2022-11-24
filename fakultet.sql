# Otvoriti CMD
# Unijeti sljedeci red bez (hash) znaka
# D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\fakultet.sql

drop database if exists fakultet;
create database fakultet default charset utf8;
use fakultet;

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    brojbodova char(3),
    imeprofesora varchar(50)
);

create table rok(
    sifra int not null primary key auto_increment,
    termin datetime,
    ucionica varchar(50),
    kolegij int
);

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    email varchar(50)
);
 
 create table student_rok(
    student int,
    rok int
 );

 # Vanjski ključevi
alter table rok add foreign key (kolegij) references kolegij(sifra);
alter table student_rok add foreign key (rok) references rok(sifra);
alter table student_rok add foreign key (student) references student (sifra);

# inicijalni podatci

# 1 Kolegij
insert into kolegij(sifra,naziv,brojbodova,imeprofesora)
values (null,'Fizika',6,'Pero Perić');

insert into kolegij(sifra,naziv,brojbodova,imeprofesora)
values (null,'Statika',10,'Mirela Marić');

insert into kolegij(sifra,naziv,brojbodova,imeprofesora)
values (null,'Mehanika',9,'Tena Petrović');


# 2 rok
insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-01 16:00:00','Učionica 5',2);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-15 14:00:00','Učionica 2',2);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-07','Učionica 1',1);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-21','Učionica 3',1);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-05','Učionica 3',3);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-19','Učionica 4',3);


# 3 student