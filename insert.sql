-- Insertion dans la table films
INSERT INTO films (titre, duree, annee_sortie)
VALUES ('Marvel', '02:15:00', '2022-01-01');

INSERT INTO films (titre, duree, annee_sortie)
VALUES ('Apocalipce', '01:45:00', '2023-03-15');

-- Insertion dans la table acteurs
INSERT INTO acteurs (nom_acteur, prenom_acteur, date_naissance)
VALUES ('Bob', 'Maché', '1990-05-15');

INSERT INTO acteurs (nom_acteur, prenom_acteur, date_naissance)
VALUES ('super', 'man', '1985-09-20');

-- Insertion dans la table realisateurs
INSERT INTO realisateurs (nom_realisateur, prenom_realisateur)
VALUES ('jean', 'jacque');

INSERT INTO realisateurs (nom_realisateur, prenom_realisateur)
VALUES ('Steve', 'Maker');

-- Insertion dans la table utilisateurs
INSERT INTO utilisateurs (nom_utilisateur, prenom_utilisateur, email, mot_de_passe)
VALUES ('Doe', 'John', 'john.doe@example.com', 'm0td3p4ss3');

INSERT INTO utilisateurs (nom_utilisateur, prenom_utilisateur, email, mot_de_passe)
VALUES ('Smith', 'Jane', 'jane.smith@example.com', 'p4ssw0rd');

-- Insertion dans la table jouer
INSERT INTO jouer (id_films, id_acteurs, role)
VALUES (1, 1, 'Principal');

INSERT INTO jouer (id_films, id_acteurs, role)
VALUES (2, 1, 'Secondaire');

-- Insertion dans la table realiser
INSERT INTO realiser (id_films, id_realisateurs)
VALUES (2, 2);

INSERT INTO realiser (id_films, id_realisateurs)
VALUES (2, 1);

-- Insertion dans la table preferences
INSERT INTO preferences (id_films, id_utilisateurs, role)
VALUES (1, 2, 'Favori');

INSERT INTO preferences (id_films, id_utilisateurs, role)
VALUES (2, 1, 'À voir');

