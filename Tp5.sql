-- a. Mettez en minuscules la désignation de l'article dont l'identifiant est 2

UPDATE article
SET DESIGNATION = LOWER(DESIGNATION)
WHERE ID = 2;

-- b. Mettez en majuscules les désignations de tous les articles dont le prix est strictement supérieur à 10€

UPDATE article
SET DESIGNATION = UPPER(DESIGNATION)
WHERE PRIX > 10;

-- c. Baissez de 10% le prix de tous les articles qui n'ont pas fait l'objet d'une commande.

UPDATE article
SET PRIX = PRIX * 0.90
WHERE ID NOT IN (SELECT ID_ART FROM compo);

-- d. Une erreur s'est glissée dans les commandes concernant Française d'imports. Les chiffres en base ne sont pas bons. Il faut doubler les quantités de tous les articles commandés à cette société.

UPDATE compo c
JOIN bon b ON c.ID_BON = b.ID
SET c.QTE = c.QTE * 2
WHERE b.ID_FOU = 1;
