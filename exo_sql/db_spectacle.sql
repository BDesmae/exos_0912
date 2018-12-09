
drop database if exists spectacle;
create database spectacle;
use spectacle;

CREATE TABLE salle (
salle CHAR(3),
nombrePlaces INT(5)
);

CREATE TABLE spectacles (
titre VARCHAR(30),
semaine INT(2),
salle CHAR (3)
);

CREATE TABLE intervenants (
titre VARCHAR(30),
intervenant VARCHAR(70),
type VARCHAR(30)
);

CREATE TABLE places (
semaine INT(2),
salle CHAR(3),
jour VARCHAR(15),
disponibilité INT (5)
);

INSERT INTO salle VALUES ('A', 150);
INSERT INTO salle VALUES ('B', 85);
INSERT INTO salle VALUES ('C', 320);

INSERT INTO spectacles VALUES ('L\'avare', 12, 'A');
INSERT INTO spectacles VALUES ('L\'avare', 13, 'A');
INSERT INTO spectacles VALUES ('L\'avare', 14, 'B');
INSERT INTO spectacles VALUES ('Le grand tour', 12, 'B');
INSERT INTO spectacles VALUES ('Le grand tour', 13, 'B');
INSERT INTO spectacles VALUES ('L\'échec', 14, 'B');
INSERT INTO spectacles VALUES ('L\'échec', 15, 'C');

INSERT INTO intervenants VALUES ("L'avare", 'Paul', 'Cléandre');
INSERT INTO intervenants VALUES ("L'avare", 'Jacques', 'L\'avare');
INSERT INTO intervenants VALUES ("L'avare", 'Jacqueline', 'Lucie');
INSERT INTO intervenants VALUES ("Le grand tour", 'Paul', 'M. Jolivet');
INSERT INTO intervenants VALUES ("Le grand tour", 'Pierre', 'Le notaire');
INSERT INTO intervenants VALUES ("L'échec", 'Paul', 'BHLmdr');

INSERT INTO places VALUES (12, 'A', 'mardi', 45);
INSERT INTO places VALUES (12, 'A', 'mercredi', 52);
INSERT INTO places VALUES (12, 'A', 'vendredi', 12);
INSERT INTO places VALUES (13, 'A', 'mercredi', 68);
INSERT INTO places VALUES (13, 'A', 'vendredi', 23);
INSERT INTO places VALUES (14, 'B', 'mardi', 51);
INSERT INTO places VALUES (14, 'B', 'mercredi', 27);
INSERT INTO places VALUES (14, 'B', 'samedi', 8);
INSERT INTO places VALUES (12, 'B', 'mardi', 52);
INSERT INTO places VALUES (12, 'B', 'samedi', 16);
INSERT INTO places VALUES (13, 'B', 'mercredi', 39);
INSERT INTO places VALUES (13, 'B', 'vendredi', NULL);
INSERT INTO places VALUES (14, 'B', NULL, NULL);
INSERT INTO places VALUES (15, 'C', NULL, NULL);
