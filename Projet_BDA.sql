CREATE OR REPLACE type Pain_t AS object
(
	nom VARCHAR(50),
	t_cuisson number,
	prix number
);
/

CREATE OR REPLACE type Pain_Special_t UNDER Pain_t
(
	ingredient VARCHAR(50)
);
/

CREATE OR REPLACE type Fromage_t AS object
(
	nom VARCHAR(50),
	t_lait VARCHAR(50),
	prix number
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
	annee number,
	prix number
);
/

CREATE OR REPLACE type Charcuterie_t AS object
(
	nom VARCHAR(50),
	provenance VARCHAR(50),
	poids number,
	t_viande VARCHAR(50),
	prix number
);
/

CREATE OR REPLACE type Jambon_t UNDER Charcuterie_t
(
	t_cuisson VARCHAR(50)
);
/

CREATE OR REPLACE type Pate_t UNDER Charcuterie_t
(
	garniture VARCHAR(50)
);
/

CREATE OR REPLACE type Saucisse_t UNDER Charcuterie_t
(
	taille number;
);
/

CREATE OR REPLACE type Repas_t AS object
(
	prix number,
	Pain Pain_t,
	Fromage Fromage_t,
	Client Client_t,
	Vin Vin_t,
	Charcuterie Charcuterie_t
);
/

CREATE TABLE Client OF Client_t;
CREATE TABLE Repas of Repas_t;
