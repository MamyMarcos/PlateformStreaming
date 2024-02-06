--En postgresql (pdAdmin)
CREATE TABLE IF NOT EXISTS films (
   id SERIAL PRIMARY KEY,
   titre VARCHAR(255) NOT NULL,
   duree TIME NOT NULL,
   annee_sortie DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS acteurs (
   id SERIAL PRIMARY KEY,
   nom_acteur VARCHAR(100) NOT NULL,
   prenom_acteur VARCHAR(100) NOT NULL,
   date_naissance DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS realisateurs (
   id SERIAL PRIMARY KEY,
   nom_realisateur VARCHAR(100) NOT NULL,
   prenom_realisateur VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS utilisateurs (
   id SERIAL PRIMARY KEY,
   nom_utilisateur VARCHAR(100) NOT NULL,
   prenom_utilisateur VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   mot_de_passe VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS jouer (
   id_films INT NOT NULL,
   id_acteurs INT NOT NULL,
   role VARCHAR(25) NOT NULL,
   FOREIGN KEY (id_films) REFERENCES films(id),
   FOREIGN KEY (id_acteurs) REFERENCES acteurs(id),
   PRIMARY KEY (id_films, id_acteurs)
);

CREATE TABLE IF NOT EXISTS realiser (
   id_films INT NOT NULL,
   id_realisateurs INT NOT NULL,
   FOREIGN KEY (id_films) REFERENCES films(id),
   FOREIGN KEY (id_realisateurs) REFERENCES realisateurs(id),
   PRIMARY KEY (id_films, id_realisateurs)
);

CREATE TABLE IF NOT EXISTS preferences (
   id_films INT NOT NULL,
   id_utilisateurs INT NOT NULL,
   role VARCHAR(50) NOT NULL,
   FOREIGN KEY (id_films) REFERENCES films(id),
   FOREIGN KEY (id_utilisateurs) REFERENCES utilisateurs(id),
   PRIMARY KEY (id_films, id_utilisateurs)
);