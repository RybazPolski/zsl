-- 1. Wyświetl domki, których cena za dobę jest wyższa od średniej dla ośrodka

SELECT ROUND(AVG(`CenaZaDobe`),2) FROM `domki`;

SELECT * FROM `domki` 
WHERE `CenaZaDobe` > (
    SELECT ROUND(AVG(`CenaZaDobe`),2) FROM `domki`
);


-- 2. Wyświetl domki, które miały najdłuższą jednorazową rezerwację

SELECT MAX(`LiczbaDni`) FROM `rezerwacje` ORDER BY `LiczbaDni` DESC LIMIT 1

SELECT * FROM `rezerwacje`
WHERE `LiczbaDni` = (
    SELECT MAX(`LiczbaDni`) FROM `rezerwacje`
)


-- 3. Wyświetl listę pracowników, którzy rezerwowali jednorazowo domki na mniej niż 3 dni

SELECT `IdPracownika` FROM `rezerwacje` WHERE `LiczbaDni`<3

SELECT * FROM `pracownicy` 
WHERE `IDpracownika` IN (
    SELECT `IdPracownika` FROM `rezerwacje` WHERE `LiczbaDni`<3
)  


-- 4. Wyświetl listę domków, ich cenę za dobę, oraz o ile dany domek jest droższy od najtańszego w ośrodku

SELECT MIN(`CenaZaDobe`) FROM `domki` 

SELECT *, `CenaZaDobe`-(SELECT MIN(`CenaZaDobe`) FROM `domki`) AS `Droższy od najtańszego o` FROM `domki`;


-- 5. Wyświetl listę domków, ich cenę za dobę, oraz różnicę do średniej ceny za dobę (Wynik zaokrąglij do całości w górę)

SELECT AVG(`CenaZaDobe`) FROM `domki`

SELECT *, CEIL(`CenaZaDobe`-(SELECT AVG(`CenaZaDobe`) FROM `domki`)) AS `Różnica od średniej` FROM `domki`;


-- 6. Wyświetl listę identyfikatorów pracowników, którzy nie dokonali rezerwacji 

SELECT `IdPracownika` FROM `rezerwacje`

SELECT * FROM `pracownicy` 
WHERE `IdPracownika` NOT IN (
    SELECT `IdPracownika` FROM `rezerwacje`
);
