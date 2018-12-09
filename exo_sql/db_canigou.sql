drop database if exists marcheurs;
create database marcheurs;
use marcheurs;

create table adherent
(
code_adherent int primary key,
nom_adherent varchar(45) not null,
prenom_adherent varchar(45) not null,
ddn date not null
);

create table marche 
(
code_marche int primary key,
date_marche date
);

create table lieu
(
lieu varchar(45) primary key
);

create table realiser
(
code_marche int,
code_adherent int
);

create table annee
(
annee int primary key,
prix_cotisation_adulte int not null,
prix_cotisation_mineur int not null
);

create table payercot
(
code_adherent int,
annee int
);

ALTER TABLE marche ADD fklieu varchar(45);
ALTER TABLE marche ADD FOREIGN KEY (fklieu) REFERENCES lieu(lieu);

ALTER TABLE realiser ADD fkcode_adh_real int;
ALTER TABLE realiser ADD FOREIGN KEY (fkcode_adh_real) REFERENCES adherent(code_adherent);

ALTER TABLE realiser ADD fkcode_marche int;
ALTER TABLE realiser ADD FOREIGN KEY (fkcode_marche) REFERENCES marche(code_marche);

ALTER TABLE payercot ADD fkannee int;
ALTER TABLE payercot ADD FOREIGN KEY (fkannee) REFERENCES annee(annee);

ALTER TABLE payercot ADD fkcode_adh int;
ALTER TABLE payercot ADD FOREIGN KEY (fkcode_adh) REFERENCES adherent(code_adherent);

ALTER TABLE marche ADD difficulte ENUM ('Facile', 'Moyen', 'Difficile', 'Compétition');
ALTER TABLE annee ADD CONSTRAINT cst_check CHECK(annee > 2000 AND annee <= 2020);


/*  
Si l'ordre est mauvais, il y aura soit une erreur dans l'affection des valeurs, soit uen inversion de valeurs dans la base de données
*/
INSERT INTO adherent VALUES (1, 'Dubois', 'Jean', '1980-05-23');
INSERT INTO adherent VALUES (2, 'Dupont', 'Marc', '1970-06-13');

INSERT INTO lieu VALUES ('Bruxelles');
INSERT INTO lieu VALUES ('Montpellier');

INSERT INTO marche VALUES (1, '2012-06-23', 'Montpellier', 'Moyen');
INSERT INTO marche VALUES (2, '2019-01-03', 'Bruxelles', 'Difficile');

INSERT INTO annee VALUES (2, 50, 25);
INSERT INTO annee VALUES (2017, 40, 20);


