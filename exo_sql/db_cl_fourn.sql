DROP DATABASE IF EXISTS cl_fourn;
CREATE DATABASE cl_fourn;
USE cl_fourn;

CREATE TABLE fournisseurs
(
nomF VARCHAR(45),
adresseF VARCHAR(45)
);

CREATE TABLE prix
(
nomF VARCHAR(45),
nomP VARCHAR(45),
couts int
);

CREATE TABLE commandes
(
numCom int,
nomC VARCHAR(45),
nomP VARCHAR(45),
qte int
);

CREATE TABLE clients
(
nomC VARCHAR(45),
adresseC VARCHAR(45),
solde int
);


INSERT INTO fournisseurs VALUES ('Abounayan', '92190 Meudon');
INSERT INTO fournisseurs VALUES ('Cima','75010 Paris');
INSERT INTO fournisseurs VALUES ('Preblocs','92230 Gennevilliers');
INSERT INTO fournisseurs VALUES ('Samaco','75116 Paris');

INSERT INTO prix VALUES ('Abounayan','sable',300);
INSERT INTO prix VALUES ('Abounayan','briques',1500);
INSERT INTO prix VALUES ('Abounayan','parpaing',1150);
INSERT INTO prix VALUES ('Preblocs','tuiles',1150);
INSERT INTO prix VALUES ('Preblocs','parpaing',1200);
INSERT INTO prix VALUES ('Samaco','parpaing',1150);
INSERT INTO prix VALUES ('Samaco','ciment',125);
INSERT INTO prix VALUES ('Samaco','briques',1200);

INSERT INTO commandes VALUES (1,'Jean','briques',5);
INSERT INTO commandes VALUES (2,'Jean','ciment',10);
INSERT INTO commandes VALUES (3,'Paul','briques',3);
INSERT INTO commandes VALUES (4,'Paul','parpaing',9);
INSERT INTO commandes VALUES (5,'Vincent','parpaing',7);

INSERT INTO clients VALUES ('Jean','75006 Paris',-12000);
INSERT INTO clients VALUES ('Paul','75003 Paris',0);
INSERT INTO clients VALUES ('Vincent','94200 Ivry',3000);
INSERT INTO clients VALUES ('Pierre','92400 Courbevoie',7000);