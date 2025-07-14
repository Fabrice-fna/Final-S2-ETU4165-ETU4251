CREATE DATABASE emprunt_objet;
use emprunt_objet;

CREATE TABLE membre(
id_membre INT AUTO_INCREMENT PRIMARY KEY,
nom VARCHAR(100),
date_naissance DATE,
genre ENUM('Homme', 'Femme'),
email VARCHAR(150) UNIQUE,
ville VARCHAR(255),
image_profil VARCHAR(255)
);

CREATE TABLE categorie_objet(
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    nom_categorie VARCHAR(100)
);

CREATE TABLE objet(
    id_objet INT AUTO_INCREMENT PRIMARY KEY,
    nom_objet VARCHAR(100),
    id_categorie INT,
    FOREIGN KEY (id_categorie) REFERENCES categorie_objet(id_categorie),
    FOREIGN KEY (id_membre) REFERENCES membre(id_membre)
);

CREATE TABLE images_objet(
    id_image INT AUTO_INCREMENT PRIMARY KEY,
    id_objet INT,
    nom_image VARCHAR (255),
    FOREIGN KEY (id_objet) REFERENCES objet(id_objet)
);

CREATE TABLE emprunt(
    id_emprunt INT AUTO_INCREMENT PRIMARY KEY,
    id_objet INT,
    id_membre INT,
    date_emprunt DATE,
    date_retour DATE,
    FOREIGN KEY (id_objet) REFERENCES objet(id_objet),
    FOREIGN KEY (id_membre) REFERENCES membre(id_membre)
);




INSERT INTO membre (nom, date_naissance, genre, email, ville, mdp, image_profil) VALUES
('Alice', '1999-01-01', 'Femme', 'alice@test.com', 'Tana', 'password', 'alice.jpg'),
('Bob', '1998-02-01', 'Homme', 'bob@test.com', 'Toamasina', 'password', 'bob.jpg'),
('Clara', '1993-08-04', 'Femme', 'clara@test.com', 'Fianarantsoa', 'password', 'clara.jpg'),
('David', '2000-03-14', 'Homme', 'david@test.com', 'Tana', 'password', 'david.jpg');

INSERT INTO cat


