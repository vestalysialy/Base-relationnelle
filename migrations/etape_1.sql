CREATE DATABASE gargote;
\c gargote

CREATE TABLE categorie (
    id_cat SERIAL PRIMARY KEY,
    nom_cat VARCHAR (100) NOT NULL
);

CREATE TABLE plat (
    id_plat SERIAL PRIMARY KEY,
    nom_plat VARCHAR (100) NOT NULL,
    id_categorie INTEGER REFERENCES categorie(id_cat),
    prix_plat INTEGER
);

INSERT INTO categorie(nom_cat) VALUES 
    ('Plat malagasy'),
    ('Plat chinois'),
    ('Soupe'),
    ('Dessert et goûter'),
    ('Boisson');

INSERT INTO plat (nom_plat, id_categorie, prix_plat) VALUES
    ('Romazava', 1, 7000),
    ('Ravitoto sy henakisoa', 1, 8000),
    ('Akoho sy voanio', 1, 8500),
    ('Mi sao', 2, 6000),
    ('Soupe chinoise', 3, 5000),
    ('Mofo gasy (les 4)', 4, 1000),
    ('Ranon''ampango', 5, 500);