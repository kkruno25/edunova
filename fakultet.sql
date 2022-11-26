# Otvoriti CMD
# Unijeti sljedeci red bez (hash) znaka
# D:\Programiranje\Xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < D:\Programiranje\javavjezbanje\edunova\SQL\fakultet.sql

drop database if exists fakultet;
create database fakultet default charset utf8;
use fakultet;

create table kolegij(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    brojbodova char(3) not null,
    imeprofesora varchar(50)
);

create table rok(
    sifra int not null primary key auto_increment,
    termin datetime,
    ucionica varchar(50),
    kolegij int not null
);

create table student(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11),
    email varchar(50) not null
);
 
 create table student_rok(
    student int not null,
    rok int not null
 );

 # Vanjski ključevi
alter table rok add foreign key (kolegij) references kolegij(sifra);
alter table student_rok add foreign key (rok) references rok(sifra);
alter table student_rok add foreign key (student) references student (sifra);

# inicijalni podatci

# 1 kolegij
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
values (null,'2022-10-07 13:00:00','Učionica 1',1);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-21 14:00:00','Učionica 3',1);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-05 11:00:00','Učionica 3',3);

insert into rok(sifra,termin,ucionica,kolegij)
values (null,'2022-10-19 09:00:00','Učionica 4',3);

# 3 student
insert into student(ime,prezime,email)
values 
('Kristijan','Ratković','ratkovic.kristijan@gmail.com'),
('Kristijan','Vidaković','kristijan.vidakovic111@gmail.com'),
('Isidora','Karan','karanisidora@hotmail.com'),
('Martina','Novoselac','novoselac.martina@gmail.com'),
('Lorena','Čiček','cicek.lorena@gmail.com'),
('Marko','Mijatović','mijat5555@gmail.com'),
('Marko','Perak','markoperak469@gmail.com'),
('Lovre','Burazer-Pavešković','lburazer8@gmail.com'),
('Krunoslav','Kasalo','kkruno25@msn.com'),
('Karlo','Odobašić','karloodobasic26@gmail.com'),
('Karlo','Kapl','kaplkarlo0@gmail.com'),
('Ivan','Dubravac','ivandubravac99@gmail.com'),
('Mario','Živković','mario.zivkovic.znr@gmail.com'),
('Toni','Stojčević','stojcevict@gmail.com');

# 4 student_rok
insert into student_rok(rok,student)
values
(1,1),(1,2),(1,13),(1,14);

insert into student_rok(rok,student)
values
(3,3),(3,4),(3,5),(3,6),(3,7);

insert into student_rok(rok,student)
values
(5,8),(5,9),(5,10),(5,11),(5,12);

update rok set
termin='2022-10-07 11:00:00'
where sifra=3;

