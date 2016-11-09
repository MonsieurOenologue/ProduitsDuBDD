CREATE trigger sum_price AFTER INSERT on Repas
DECLARE
	q_pain number;
	q_vin number;
	q_charcuterie number;
	q_fromage number;
	charcuterie_price number;
	pain_price number;
	fromage_price number;
	vin_price number;
	total_pain number;
	total_fromage number;
	total_vin number;
	total_charcuterie number;
	total_price number;
	BEGIN
		Select e.prixUnit into pain_price from Repas r, TABLE(r.Pain) e where ROWNUM < 2;
		Select e.prixKg into fromage_price from Repas r, TABLE(r.Fromage) e where ROWNUM < 2;
		Select e.prixL into vin_price from Repas r, TABLE(r.Vin) e where ROWNUM < 2;
		Select e.prixKg into charcuterie_price from Repas r, TABLE(r.Charcuterie) e where ROWNUM < 2;
		Select e.quantite into q_pain from Repas r, TABLE(r.Pain) e where ROWNUM < 2;
		Select e.quantite into q_fromage from Repas r, TABLE(r.Fromage) e where ROWNUM < 2;
		Select e.quantite into q_vin from Repas r, TABLE(r.Vin) e where ROWNUM < 2;
		Select e.quantite into q_charcuterie from Repas r, TABLE(r.Charcuterie) e where ROWNUM < 2;

		total_pain := pain_price * q_pain;
		total_fromage := fromage_price * q_fromage;
		total_vin := vin_price * q_vin;
		total_charcuterie := charcuterie_price * q_charcuterie;

		total_price := total_pain + total_charcuterie + total_vin + total_fromage;
		UPDATE Repas SET prixTot = total_price;
END sum_price;
/
