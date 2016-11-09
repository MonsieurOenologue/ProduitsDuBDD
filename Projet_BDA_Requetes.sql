/*Retourner tout le contenu de la table repas*/
SELECT * FROM REPAS ;
/
/*Retourner tout le contenu de la table client*/
SELECT * FROM CLIENT;
/
/*Retourner les OID des objets de la table Client et de la table Repas*/
SELECT DISTINCT REF(i) FROM Client i, Repas i;
/
/*Retourner tous le pain et le fromage choisi par chaque client*/
SELECT DISTINCT R.Pain, R.Fromage, R.Client FROM Repas R;
/
/*Retourner le nom des clients habitant le 5 rue Albert Premier*/
SELECT DISTINCT nom FROM Client C WHERE C.Adresse.rue = '5 rue Albert Premier';
/
/*Retourner le nom et le numéro de téléphone des clients ayant commandé pour plus de 20e*/
SELECT DISTINCT c.nom, c.telephone FROM Client C, Repas r WHERE r.prixTot > 20;
/
/*Retourner l'appellation du vin commandé par tous les clients habitant à Montpellier*/
Select DISTINCT v.appellation from repas r, Table(r.vin) v, client c where c.adresse.ville='Montpellier';
/
/*Retourner le prix du fromage au kg des clients ayant commandé un pain baguette*/
SELECT DISTINCT f.prixKg FROM Repas r, TABLE(r.Fromage) f, TABLE(r.Pain) p  WHERE p.nom = 'Baguette';
/
/*Retourner le nom et le numéro de téléphone des clients ayant commandé pour plus de 20e avec un fromage à moins de 5e/kg*/
SELECT DISTINCT c.nom, c.telephone FROM Repas r, Client c, TABLE(r.Fromage) f WHERE r.prixTot > 20 AND f.prixKg < 5;
/
/*Retourner la note (prix payé) des clients n'ayant pas commandé de vin dans leur plateau*/
SELECT DISTINCT r.prixTot FROM Repas r WHERE r.Vin IS NULL;
