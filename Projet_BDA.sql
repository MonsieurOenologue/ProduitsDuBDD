CREATE OR REPLACE type Pain_t AS object
(
	nom VARCHAR(50),
	typ_cuisson VARCHAR(30),
	prixUnit number,
	prixKg number,
	quantite number) NOT FINAL;
/

CREATE OR REPLACE type Pain_Special_t UNDER Pain_t
(
	ingredient VARCHAR(50)
);
/
CREATE OR REPLACE type List_of_fromages AS VARRAY(50) OF Fromage_t;
/
CREATE OR REPLACE type List_of_fromages_t AS object
(
	fromage List_of_fromages
);
/
CREATE OR REPLACE type Fromage_t AS object
(
	nom VARCHAR(50),
	typ_lait VARCHAR(50),
	prixKg number,
	quantite number
);
/

CREATE OR REPLACE type Adresse_t AS object
(
	rue VARCHAR(50),
	c_postal number,
	ville VARCHAR(50)
);
/

CREATE OR REPLACE type Client_t AS object
(
	nom VARCHAR(50),
	telephone number,
	adresse Adresse_t
);
/

CREATE OR REPLACE type Vin_t AS object
(
	appellation VARCHAR(100),
	p_alcool number,
	type VARCHAR(30),
	annee number,
	prixL number,
	quantite number
);
/

CREATE OR REPLACE type Charcuterie_t AS object
(
	nom VARCHAR(50),
	provenance VARCHAR(50),
	poids number,
	prixKg number,
	quantite number) NOT FINAL;
/

CREATE OR REPLACE type Jambon_t UNDER Charcuterie_t
(
	typ_cuisson VARCHAR(50)
);
/

CREATE OR REPLACE type Pate_t UNDER Charcuterie_t
(
	garniture VARCHAR(50)

);
/

CREATE OR REPLACE type Saucisse_t UNDER Charcuterie_t
(
	taille number
);
/

CREATE OR REPLACE type Repas_t AS object
(
	prixTot number,
	Pain Pain_t,
	Fromage List_of_fromages_t,
	Client Client_t,
	Vin Vin_t,
	Charcuterie Charcuterie_t
);
/

CREATE TABLE Client OF Client_t;
CREATE TABLE Repas of Repas_t;
