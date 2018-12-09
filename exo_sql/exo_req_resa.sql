#SELECT typeChambre, count(idChambre) FROM chambres group by typeChambre;

#select typeChambre, sum(prix), dateDebut from tarifs group by typeChambre, dateDebut;
#select chambres.TypeChambre, description, dateDebut, sum(prix) as CA
#from chambres inner join typesChambre on typesChambre.idTypeChambre = chambres.typeChambre
#inner join tarifs on Chambres.hotel = tarifs.hotel AND chambres.typeChambre = tarifs.typeChambre
#group by dateDebut, chambres.typeChambre, description;

#SELECT count(DISTINCT prix) AS nb_tarif_ch FROM tarifs;
#select count(idtarif) FROM tarifs;

#SELECT SUM(prix), typeChambre FROM tarifs GROUP BY typeChambre;

#SELECT max(prix) FROM tarifs;

#SELECT typeChambre, max(prix), min(prix) FROM tarifs GROUP BY typeChambre;

#SELECT typeChambre, AVG(prix) FROM tarifs GROUP BY typeChambre;

#select typeChambre from chambres where idChambre in ( select idChambre from chambres group by idChambre having count(*) < 4);
#select typeChambre, count(idChambre) from chambres having count(idChambre) < 4;
#SELECT idChambre, count(typeChambre) from chambres group by typeChambre having count(typeChambre)<4;
#SELECT typeChambre, COUNT(typeChambre) FROM tarifs GROUP BY typeChambre HAVING COUNT(typeChambre) < 4 ;

#SELECT typeChambre, AVG(prix) FROM tarifs WHERE prix > 60 GROUP BY typeChambre;