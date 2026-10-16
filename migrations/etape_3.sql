CREATE TABLE commande (
    id_com SERIAL PRIMARY KEY,
    date_com DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE detail_commande (
    id_commande INTEGER REFERENCES commande(id_com),
    id_plat INTEGER REFERENCES plat(id_plat),
    quantite INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY (id_commande, id_plat)
);
