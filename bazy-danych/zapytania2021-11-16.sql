-- 5.1
SELECT `Nazwisko`,`Imie` FROM `maturzysci` 
INNER JOIN `zdaje` ON `zdaje`.`Id_zdajacego`=`maturzysci`.`Id_zdajacego`
INNER JOIN `przedmioty` ON `zdaje`.`Id_przedmiotu`=`przedmioty`.`Id_przedmiotu`
WHERE `przedmioty`.`Nazwa_przedmiotu`="informatyka" ORDER BY `Nazwisko` ASC

-- 5.2
SELECT `przedmioty`.`Nazwa_przedmiotu`, COUNT(`maturzysci`.`Id_zdajacego`) 
FROM `przedmioty` 
INNER JOIN `zdaje` ON `zdaje`.`Id_przedmiotu`=`przedmioty`.`Id_przedmiotu`
INNER JOIN `maturzysci` ON `maturzysci`.`Id_zdajacego`=`zdaje`.`Id_zdajacego`
WHERE `Typ`="dodatkowy" GROUP BY `przedmioty`.`Id_przedmiotu` ORDER BY COUNT(`maturzysci`.`Id_zdajacego`) DESC LIMIT 1;

-- 5.3
SELECT `Imie`,`Nazwisko`,COUNT(`zdaje`.`Id_przedmiotu`) FROM `maturzysci`
INNER JOIN `zdaje` ON `zdaje`.`Id_zdajacego`=`maturzysci`.`Id_zdajacego`
INNER JOIN `przedmioty` ON `zdaje`.`Id_przedmiotu`=`przedmioty`.`Id_przedmiotu`
WHERE `przedmioty`.`Typ`="dodatkowy" GROUP BY `maturzysci`.`Id_zdajacego` ORDER BY COUNT(`zdaje`.`Id_przedmiotu`) DESC

-- 5.4
SELECT `Nazwa_przedmiotu`
FROM `przedmioty` 
WHERE `Id_przedmiotu` NOT IN (
	SELECT `Id_przedmiotu` FROM `zdaje`
) AND `Typ`="dodatkowy"

-- lub
SELECT `Nazwa_przedmiotu`
FROM `przedmioty` 
LEFT JOIN `zdaje` ON `zdaje`.`Id_przedmiotu`=`przedmioty`.`Id_przedmiotu`
WHERE `przedmioty`.`Typ`="dodatkowy" AND `zdaje`.`Id_przedmiotu` IS NULL;

-- 5.5
SELECT `Imie`,`Nazwisko`, `przedmioty`.`Nazwa_przedmiotu` FROM `maturzysci`
INNER JOIN `zdaje` ON `zdaje`.`Id_zdajacego`=`maturzysci`.`Id_zdajacego`
INNER JOIN `przedmioty` ON `zdaje`.`Id_przedmiotu`=`przedmioty`.`Id_przedmiotu`
WHERE `Data_urodzenia` IN (
	SELECT MAX(`Data_urodzenia`) FROM `maturzysci`
) AND `przedmioty`.`Typ`="dodatkowy"

-- 5.6
SELECT COUNT(mid(`Pesel`,10,1)%2) FROM `maturzysci` WHERE mid(`Pesel`,10,1)%2=1;

