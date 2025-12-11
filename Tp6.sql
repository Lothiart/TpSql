-- a. Supprimer dans la table compo toutes les lignes concernant les bons de commande d'avril 2019

DELETE c
FROM compo c
JOIN bon b ON c.ID_BON = b.ID
WHERE b.DATE_CMDE >= '2019-04-01'
  AND b.DATE_CMDE <  '2019-05-01';

-- b. Supprimer dans la table bon tous les bons de commande d'avril 2019.

DELETE
FROM bon
WHERE DATE_CMDE >= '2019-04-01'
  AND DATE_CMDE <  '2019-05-01';
