INSERT INTO Client VALUES(Client_t('Jean', 0666953278, Adresse_t('5 rue Albert Premier', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    25,
    Pain_t('Baguette', 50),
    Fromage_t('Comté', 'Vache', 5.21),
    Client_t('Jean', 0666953278, Adresse_t('5 rue Albert Premier', 34000, 'Montpellier')),
    Vins_t('Château Vieux Robin, Cru Bourgeois', 10, 1999, 11),
    Charcuterie_t(100, 'France - Alsace')
);
/
INSERT INTO Client VALUES(Client_t('Chloé', 0656333609, Adresse_t('22 rue de la Vaslière', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    25,
    Pain_t('Baguette', 50),
    Fromage_t('Mimolette', 'Vache', 5.92),
    Client_t('Chloé', 0656333609, Adresse_t('22 rue de la Vaslière', 34000, 'Montpellier')),
    Vins_t('Château Vieux Robin, Cru Bourgeois', 9, 1999, 11),
    Charcuterie_t(75, 'France - Bretagne')
);
/
INSERT INTO Client VALUES(Client_t('Robert', 0668321234, Adresse_t('3 Avenue de Rome', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    25,
    Pain_t('Baguette', 50),
    Fromage_t('Tome de Savoie', 'Vache', 7.32),
    Client_t('Robert', 0668321234, Adresse_t('3 Avenue de Rome', 34000, 'Montpellier')),
    Vins_t('Château Le Font du Broc, Maestro', 12, 2010, 29),
    Charcuterie_t(100, 'Espagne - Catalogne')
);
/
INSERT INTO Client VALUES(Client_t('Ernesto', 0626884251, Adresse_t('18 Avenue d Occitanie', 34000, 'Montpellier')));
INSERT INTO Repas VALUES
(
    25,
    Pain_t('Baguette', 50),
    Fromage_t('Fromage de chèvre', 'Chèvre', 4.43),
    Client_t('Ernesto', 0626884251, Adresse_t('18 Avenue d Occitanie', 34000, 'Montpellier')),
    Vins_t('Château Vieux Robin, Cru Bourgeois', 11, 1999, 11),
    Charcuterie_t(100, 'Italie - Toscane')
);
/