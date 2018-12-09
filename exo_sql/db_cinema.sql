drop database if exists cinema;
create database cinema;
use cinema;

create table film
(
id_film int primary key,
titre varchar(45) not null,
metteur_en_scene varchar(45) not null,
acteur varchar(45)
);

create table salle
(
id_salle int primary key,
nom_salle varchar(45) not null,
adresse_salle varchar(100),
telephone varchar(15)
);

create table programme
(
id_programme int primary key,
nom_salle VARCHAR(45),
titre varchar(45),
horaire time
);

alter table film add pkprog int;
alter table film add foreign key (pkprog) references programme(id_programme);

alter table salle add pkfilm int;
alter table salle add foreign key (pkfilm) references film(id_film);

insert into film values (1, 'Cris et chuchotements', 'Bergam', 'Ullman', 1);
insert into film values (2, 'Cris et chuchotements', 'Bergam', 'Andresson', 2);
insert into film values (3, 'Cris et chuchotements', 'Bergam', 'Thulin', 3);
insert into film values (4, 'Speed 2', 'Jan de Bont', 'S Bullock', 4);
insert into film values (5, 'Speed 2', 'Jan de Bont', 'W Dafoe', 5);
insert into film values (6, 'Marion', 'M Poirier', 'C Tetard', 6);
insert into film values (7, 'Marion', 'M Poirier', 'MF Pisier', 7);
insert into film values (8, 'Marion', 'M Poirier', 'M Poirier', 8);
insert into film values (9, 'Eyes Wide Shut', 'Kubrick', 'Cruise', 9);
insert into film values (10, 'Eyes Wide Shut', 'Kubrick', 'Kidman', 10);

insert into salle values (1, 'Diagonal Capitol', '5, rue de Verdun', '0467585810', 1);
insert into salle values (2, 'Diagonal Centre', '18, place Saint Denis', '0467929181', 2);
insert into salle values (3, 'Gaumont', 'Place de l\'oeuf', '0467322581', 3);

insert into programme values (1, 'Diagonal Centre', 'Eyes Wide Shut', 140000); 
insert into programme values (2, 'Diagonal Centre', 'Eyes Wide Shut', 173000);
insert into programme values (3, 'Gaumont', 'Speed 2', 143000);
insert into programme values (4, 'Gaumont', 'Speed 2', 183000);
insert into programme values (5, 'Gaumont', 'Speed 2', 223000);
insert into programme values (6, 'Gaumont', 'Marion', 183000);
insert into programme values (7, 'Gaumont', 'Marion', 203000);





