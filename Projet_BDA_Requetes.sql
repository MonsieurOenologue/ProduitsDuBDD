/*Retourner tout le contenu de la table repas*/
SELECT * FROM REPAS;
/
/*Retourner tout le contenu de la table client*/
SELECT * FROM CLIENT;
/
/*Retourner les OID des objets de la table Client et de la table Repas*/
SELECT REF(i) FROM Client i, Repas i;
/
/*Retourner tous le pain et le fromage choisi par chaque client*/
SELECT R.Pain, R.Fromage, R.Client FROM Repas R;
/
/*Retourner le nom des clients habitant le 5 rue Albert Premier*/
SELECT nom FROM Client C WHERE C.Adresse.rue = '5 rue Albert Premier';
/
/*Retourner le nom et le numéro de téléphone des clients ayant commandé pour plus de 20e*/
SELECT nom, telephone FROM Client C WHERE Repas.prix > 20;
/
/*Retourner l'appellation du vin commandé par tous les clients habitant à Montpellier*/
/*Retourner le prix du fromage des clients ayant commandé un pain baguette*/
/*Retourner le nom et le numéro de téléphone des clients ayant commandé pour plus de 20e avec un fromage à moins de 5e*/
/*Retourner la note (prix payé) des clients n'ayant pas commandé de vin dans leur plateau*/
