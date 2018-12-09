SELECT nomP FROM commandes WHERE nomC = 'Jean';

#SELECT nomF FROM prix
#WHERE nomP = (SELECT nomP FROM commandes WHERE nomC = 'Paul');

#SELECT adresseF FROM fournisseurs f
#INNER JOIN prix p ON f.nomF = p.nomF
#WHERE p.nomP = 'parpaing' 
#AND p.couts < 1200;

#SELECT f.nomF, f.adresseF, cl.nomC, cl.adresseC
#FROM fournisseurs f
#INNER JOIN prix p ON f.nomF = p.nomF
#INNER JOIN commandes c ON p.nomP = c.nomP
#INNER JOIN clients cl ON c.nomC = cl.nomC
#WHERE c.nomP = 'briques';

-- SELECT nomF FROM prix p
-- INNER JOIN commandes c
-- ON p.nomP = c.nomP
-- WHERE c.nomP = (SELECT nomP FROM commandes WHERE nomC = 'Jean');

#Question 2
select p.NomF
from prix p 
inner join commandes c on c.NomP = p.NomP
where c.NomC = 'paul';

#Question 3
select f.AdresseF
from fournisseurs f 
inner join prix p on f.NomF = p.NomF
where p.NomP = 'parpaing' and p.Couts < 1200;

#Question 4
select distinct cl.NomC,cl.AdresseC, f.NomF, f.AdresseF
from fournisseurs f
inner join prix p on f.NomF = p.NomF
inner join commandes c on p.NomP = c.NomP
inner join clients cl on c.NomC = cl.NomC
where c.NomP = 'Briques';

#Question 5
select DISTINCT p.NomF
from prix p 
where not exists (select c.NomP from commandes c where c.NomC = 'jean' and c.NomP not in
(select p1.NomP from prix p1 where p1.NomF = p.NomF));