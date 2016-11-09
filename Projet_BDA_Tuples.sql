INSERT INTO Client VALUES(Client_t('Jean', 0666953278, Adresse_t('5 rue Albert Premier', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    1,
    25,
    List_of_pain_t(Pain_t('Baguette', 'Four', 2, 1.42, 2)),
    List_of_fromages_t(Fromage_t('Fromage de chèvre', 'Chèvre', 1, 1), Fromage_t('Mimolette', 'Vache', 1, 1)),
    Client_t('Jean', 0666953278, Adresse_t('5 rue Albert Premier', 34000, 'Montpellier')),
    List_of_vins_t(Vin_t('Château Vieux Robin, Cru Bourgeois', 10, 'rouge', 1999, 11, 2)),
    List_of_charcuterie_t(Charcuterie_t('Saucisse de canard','France - Alsace', 100, 3, 5))
);
/
INSERT INTO Client VALUES(Client_t('Chloé', 0656333609, Adresse_t('22 rue de la Vaslière', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    2,
    25,
    List_of_pain_t(Pain_t('Baguette', 'Four', 5, 2, 2)),
    List_of_fromages_t(Fromage_t('Mimolette', 'Vache', 5.92, 1)),
    Client_t('Chloé', 0656333609, Adresse_t('22 rue de la Vaslière', 34000, 'Montpellier')),
    List_of_vins_t(Vin_t('Château Vieux Robin, Cru Bourgeois', 10, 'rouge', 1999, 11, 2)),
    List_of_charcuterie_t(Charcuterie_t('Saucisse de canard', 'France - Bretagne', 3, 3, 5))
);
/
INSERT INTO Client VALUES(Client_t('Robert', 0668321234, Adresse_t('3 Avenue de Rome', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    3,
    25,
    List_of_pain_t(Pain_t('Baguette', 'Four', 5, 2, 2)),
    List_of_fromages_t(Fromage_t('Tome de Savoie', 'Vache', 7.32, 1)),
    Client_t('Robert', 0668321234, Adresse_t('3 Avenue de Rome', 34000, 'Montpellier')),
    List_of_vins_t(Vin_t('Château Le Font du Broc, Maestro', 12, 'rosé', 2010, 29, 11)),
    List_of_charcuterie_t(Charcuterie_t('Saucisse de canard', 'Espagne - Catalogne', 3, 5, 5))
);
/
INSERT INTO Client VALUES(Client_t('Ernesto', 0626884251, Adresse_t('18 Avenue d Occitanie', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    4,
    25,
    List_of_pain_t(Pain_t('Baguette', 'Four', 5, 2, 2)),
    List_of_fromages_t(Fromage_t('Fromage de chèvre', 'Chèvre', 4.43, 1)),
    Client_t('Ernesto', 0626884251, Adresse_t('18 Avenue d Occitanie', 34000, 'Montpellier')),
    List_of_vins_t(Vin_t('Château Vieux Robin, Cru Bourgeois', 11, 'blanc', 11, 1999, 11)),
    List_of_charcuterie_t(Charcuterie_t(100, 'Italie - Toscane', 3, 5, 5))
);
/
INSERT INTO Client VALUES(Client_t('Julien', 0743238976, Adresse_t('20 Rue de la Croix Verte', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    5,
    25,
    List_of_pain_t(Pain_Special_t('Baguette', 'Four', 5, 2, 2,  'Noisettes')),
    List_of_fromages_t(Fromage_t('Fromage de chèvre', 'Chèvre', 4.43, 1)),
    Client_t('Julien', 0743238976, Adresse_t('20 Rue de la Croix Verte', 34000, 'Montpellier')),
    NULL,
    List_of_charcuterie_t(Charcuterie_t('Pate de Champagne', 'Italie - Toscane', 3, 5, 6))
);
/
