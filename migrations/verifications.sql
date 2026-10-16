// Etape 1
// afficher les plats du plus cher au moins cher
SELECT * FROM plat ORDER BY prix DESC;

// Etape 2
SELECT c.nom_cat, COUNT(p.id_plat) AS nombre_plats FROM categorie c LEFT JOIN plat p ON c.id_cat = p.id_categorie GROUP BY c.id_cat, c.nom_cat;

// Etape 3
//montant de chaque commande
SELECT dc.id_commande, SUM(dc.quantite * p.prix_plat) AS montant_total FROM detail_commande dc JOIN plat p ON dc.id_plat = p.id_plat GROUP BY dc.id_commande ORDER BY dc.id_commande;