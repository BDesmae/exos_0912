drop database if exists dragon;
create database dragon;
use dragon;

CREATE TABLE dragons
(
dragon varchar(45),
sexe char(1),
longueur int(5),
nb_ecaille int(10),
crache_feu boolean,
comp_amoureux varchar(45)
);

CREATE TABLE repas
(
dragon varchar(45),
produit varchar(45),
quantité int(10)
);

CREATE TABLE nourritures
(
produit varchar(45),
calories int(10)
);

CREATE TABLE aime
(
dragon_aimant varchar(45),
dragon_aimé varchar(45),
force_amour varchar(45)
);

INSERT INTO dragons VALUES ('Smaug', 'M', 152, 1857, TRUE, 'macho');
INSERT INTO dragons VALUES ('Birdurh', 'M', 258, 4787, FALSE, 'timide');
INSERT INTO dragons VALUES ('Négueth', 'F', 128,1581, TRUE, 'sincère');
INSERT INTO dragons VALUES ('MissToc', 'F', 183, 2781, FALSE, 'superflu');
INSERT INTO dragons VALUES ('Bolong', 'M', 213, 2751, TRUE, 'macho');
INSERT INTO dragons VALUES ('Miloch', 'M', 83, 718, TRUE, 'timide');
INSERT INTO dragons VALUES ('Nessie', 'M', 168, 1721, FALSE, 'absent');
INSERT INTO dragons VALUES ('Tarak', 'F', 123, 851, TRUE, 'timide');
INSERT INTO dragons VALUES ('Solong', 'M', 173, 1481, TRUE, 'sincère');

INSERT INTO repas VALUES ('Smaug','cacahuète',1000);
INSERT INTO repas VALUES ('Smaug','pomme',16);
INSERT INTO repas VALUES ('Birdurh','oeuf',4);
INSERT INTO repas VALUES ('Négueth','orange',6);
INSERT INTO repas VALUES ('Négueth','oeuf',1);
INSERT INTO repas VALUES ('Miloch','vert',53);
INSERT INTO repas VALUES ('Miloch','cacahuète',100);
INSERT INTO repas VALUES ('Nessie','poisson',20);
INSERT INTO repas VALUES ('Tarak','pomme',10);
INSERT INTO repas VALUES ('Tarak','orange',10);
INSERT INTO repas VALUES ('Solong','oeuf',6);
INSERT INTO repas VALUES ('Solong','poisson',1);
INSERT INTO repas VALUES ('Solong','orange',2);

INSERT INTO nourritures VALUES ('pomme',7);
INSERT INTO nourritures VALUES ('cacahuète',10);
INSERT INTO nourritures VALUES ('orange',25);
INSERT INTO nourritures VALUES ('oeuf',15);
INSERT INTO nourritures VALUES ('vert',3);
INSERT INTO nourritures VALUES ('poisson',35);

INSERT INTO aime VALUES ('Smaug','Négueth','passionnément');
INSERT INTO aime VALUES ('Birdurh','Négueth','beaucoup');
INSERT INTO aime VALUES ('Négueth','Miloch','à la folie');
INSERT INTO aime VALUES ('Miloch','Négueth','à la folie');
INSERT INTO aime VALUES ('Tarak','Bolong','un peu ');
INSERT INTO aime VALUES ('Solong','Tarak','beaucoup');




