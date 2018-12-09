#bars fréquentés par Charles Dupont
SELECT bar FROM frequente WHERE personne ='Charles Dupont';

#bars qui servent une bière que Charles Dupont aime
SELECT bar FROM frequente f
INNER JOIN aime a ON f.personne = a.personne
WHERE 