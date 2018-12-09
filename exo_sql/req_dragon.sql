# nom des dragons qui crachent du feu
#SELECT dragon FROM dragons
#WHERE crache_feu = TRUE;

#nom des dragons mâle qui crache du feu
#SELECT dragon FROM dragons
#WHERE crache_feu = TRUE AND sexe = 'M';

#noms des dragons femelles qui ne crachent pas du feu
#SELECT dragon FROM dragons
#WHERE sexe = 'F' AND crache_feu = FALSE;

#noms des dragons amoureux
#SELECT dragon_aimant FROM aime;

# qui aime passionnément 
#SELECT dragon_aimant FROM aime 
#WHERE force_amour = 'passionnément';

# noms des dragons qui aiment les oeufs
#SELECT dragon FROM repas
#WHERE produit = 'oeuf';

# Noms des dragons qui ne sont pas amoureux
#SELECT dragon FROM dragons
#WHERE dragon NOT IN (SELECT dragon_aimant FROM aime);

# Liste des couples de dragons qui s'aiment mutuellement


# Noms des dragons qui ne mangent pas 
#SELECT dragon FROM dragons
#WHERE dragon NOT IN (SELECT dragon FROM repas);

# Noms des dragons qui n'aiment personne et qui ne mangent pas
#SELECT dragon FROM dragons
#WHERE dragon NOT IN (SELECT dragon FROM repas)
#AND dragon NOT IN (SELECT dragon_aimant FROM aime);

# noms des dragons qui mangent de tout 
SELECT dragon FROM repas r
INNER JOIN nourritures n ON r.produit = n.produit
#WHERE count(n.produit) = ;