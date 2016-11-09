INSERT INTO Client VALUES(Client_t('Jean', 0666953278, Adresse_t('5 rue Albert Premier', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    25,
    Pain_t('Baguette', 'Four', 2, 1.42, 2),
    List_of_fromages_t(Fromage_t('bite', 'bite', 1, 1), Fromage_t('bite', 'bite', 1, 1)),
    Client_t('Jean', 0666953278, Adresse_t('5 rue Albert Premier', 34000, 'Montpellier')),
    Vin_t('Château Vieux Robin, Cru Bourgeois', 10, 'rouge', 1999, 11, 2),
    Charcuterie_t('Saucisse de canard','France - Alsace', 100, 3, 5)
);
