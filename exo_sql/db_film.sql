drop database if exists film;
create database film;
use film;

CREATE TABLE artiste
(
nom varchar(45),
nation varchar(45),
sexe char(1)
);

CREATE TABLE film
(
titre varchar(45),
producteur varchar(45),
realisateur varchar(45)
);

CREATE TABLE joue
(
nom varchar(45),
titre varchar(45)
);

CREATE TABLE seance
(
numero int,
nomcine varchar(45),
horaire time,
titre varchar(45),
nb_salles int
);

CREATE TABLE spectateur
(
id_spectateur int,
nom_spect varchar(45)
);

CREATE TABLE aime
(
spectateur varchar(45),
titre varchar(45)
);

CREATE TABLE avu
(
spectateur varchar(45),
titre varchar(45)
);

ALTER TABLE aime ADD PRIMARY KEY pk_aime (spectateur, titre);
ALTER TABLE artiste ADD PRIMARY KEY pk_artiste (nom);
ALTER TABLE film ADD PRIMARY KEY pk_film (titre);
ALTER TABLE seance ADD PRIMARY KEY pk_seance (numero, nomcine, horaire);
ALTER TABLE spectateur ADD PRIMARY KEY pk_spectateur (id_spectateur);
ALTER TABLE joue ADD PRIMARY KEY fk_joue (titre, nom); 
ALTER TABLE avu ADD PRIMARY KEY pk_avu (spectateur, titre);

ALTER TABLE film ADD CONSTRAINT fk_film_realise FOREIGN KEY (realisateur) REFERENCES artiste(nom);
ALTER TABLE joue ADD CONSTRAINT fk_joue_film FOREIGN KEY (titre) REFERENCES film(titre);
ALTER TABLE joue ADD CONSTRAINT fk_joue_acteur FOREIGN KEY (nom) REFERENCES artiste(nom);
ALTER TABLE seance ADD CONSTRAINT fk_seance_titre FOREIGN KEY (titre) REFERENCES film(titre);
ALTER TABLE avu ADD CONSTRAINT fk_avu_film FOREIGN KEY (titre) REFERENCES film(titre);
ALTER TABLE aime ADD CONSTRAINT fk_aime_film FOREIGN KEY (titre) REFERENCES film(titre);

delimiter //
CREATE TRIGGER trigger_nb_salle 
BEFORE INSERT 
ON seance
FOR EACH ROW
BEGIN  
	IF NEW.nb_salles > 10
		THEN
			SET NEW.nb_salles = 10;
	END IF;
END //

CREATE TRIGGER trigger_heure_ouverture
BEFORE INSERT
ON seance
FOR EACH ROW
BEGIN
	IF NEW.horaire BETWEEN 000000 AND 100000
		THEN
			SET NEW.horaire = 100000;
	END IF;
END //



delimiter ;

INSERT INTO seance values (1, 'gaumont', 110000, 'yolo', 5);
INSERT INTO seance values (2, 'gaumont', 140000, 'yolo', 15);
INSERT INTO seance values (1, 'gaumont', 050000, 'yolo', 5);