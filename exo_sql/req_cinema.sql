# informations sur le film speed 2
#SELECT f.titre, f.metteur_en_scene, p.horaire FROM film f, programme p
#WHERE f.titre = 'speed 2' group by horaire;

# information concernant la programmation de Eyes Wide Shut après 14h
#SELECT horaire FROM programme
#WHERE titre = 'Eyes Wide Shut'
#AND horaire > 140000;

# extraire les films dont un acteur est metteur en scène dece film
#SELECT titre FROM film WHERE metteur_en_scene = acteur;

# prorammation des films dont le titre est Marion ou qui passent au diagonal centre
#SELECT titre, horaire FROM programme
#WHERE titre = 'Marion'
#OR nom_salle = 'Diagonal Centre';

#Titre des flms dans lesquels joue MF Pisier et qui sont à l'affiche
#SELECT f.titre, p.horaire FROM film f
#INNER JOIN programme p 
#ON f.titre = p.titre
#WHERE acteur = 'MF Pisier';

# Les metteurs en scène qui sont aussi des acteurs (mais qui ont forcément joué dans un film qu'ils ont mis en scène)
#SELECT metteur_en_scene, acteur FROM film 
#WHERE metteur_en_scene = acteur;

# les films dirigés par au moins deux metteurs en scène
#SELECT titre FROM film HAVING count(metteur_en_scene) > 2;

#Toutes les personnes ayant travaillé au tournage de marion
#SELECT metteur_en_scene, acteur FROM film
#WHERE titre = 'Marion'
#GROUP BY metteur_en_scene, acteur;

