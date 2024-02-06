-- 1) Les titres et dates de sortie des films du plus récent au plus ancien
SELECT titre, annee_sortie
FROM films
ORDER BY annee_sortie DESC;

--2) Les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique
SELECT nom_acteur, prenom_acteur, date_naissance, EXTRACT(YEAR FROM age(date_naissance)) AS age
FROM acteurs
WHERE date_naissance <= current_date - interval '30 years'
ORDER BY nom_acteur, prenom_acteur;

--3) La liste des acteurs/actrices principaux pour un film donné
SELECT nom_acteur, prenom_acteur
FROM acteurs
WHERE id IN (
   SELECT id_acteurs
   FROM jouer
   WHERE id_films = 1 AND role = 'Principal'
);

--4) La liste des films pour un acteur/actrice donné
SELECT films.titre, films.annee_sortie
FROM films
JOIN jouer ON films.id = jouer.id_films
WHERE jouer.id_acteurs = 2;

--5) Ajouter un film
INSERT INTO films (titre, duree, annee_sortie)
VALUES ('Anaconda', '02:30:00', '2022-01-01');

--6) Ajouter un acteur/actrice
INSERT INTO acteurs (nom_acteur, prenom_acteur, date_naissance)
VALUES ('TOTO', 'Jean', '1990-01-31');

--7) Modifier un film
UPDATE films
SET titre = 'Avengers', duree = '02:10:00', annee_sortie = '2022-01-12'
WHERE id = 1;

--8) Supprimer un acteur/actrice
DELETE FROM acteurs
WHERE id = 2;

--9) Afficher les 3 derniers acteurs/actrices ajouté(e)s
SELECT *
FROM acteurs
ORDER BY id DESC
LIMIT 3;

--10) Afficher le film le plus ancien
SELECT *
FROM films
ORDER BY annee_sortie ASC
LIMIT 1;

--11) Afficher l’acteur le plus jeune
SELECT *
FROM acteurs
ORDER BY date_naissance DESC
LIMIT 1;

--12) Compter le nombre de films réalisés en 1990
SELECT COUNT(*)
FROM films
WHERE EXTRACT(YEAR FROM annee_sortie) = 1990;

--13) Faire la somme de tous les acteurs ayant joué dans un film
SELECT COUNT(DISTINCT acteurs.id) AS somme_acteurs
FROM jouer
INNER JOIN acteurs ON jouer.id_acteurs = acteurs.id;


