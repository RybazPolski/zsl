RENAME TABLE `lokata`  TO `lokomocja`; --zmiana nazwy 

ALTER TABLE `ankieta` ADD COLUMN `pesel` char(11) UNIQUE; --dodanie kolumny pesel

ALTER TABLE `ankieta` ADD COLUMN `rok_urodzenia` year DEFAULT(2005); --dodanie kolumny rok_urodzenia z domyślną wartością 2005

ALTER TABLE `ankieta` CHANGE `Dochod` `Zarobki` int; --zmiana nazwy kolumny Dochod na Zarobki

ALTER TABLE `ankieta` MODIFY `Zarobki` float; --zmiana typu kolumny Zarobki

ALTER TABLE `ankieta` DROP COLUMN `pesel`; --usunięcie kolumny pesel

INSERT INTO `ankieta` (`Imie`,`Zarobki`) VALUES ('Julian',0);  --wstawienie rekordu z imieniem Julian oraz zarobkami 0

INSERT INTO `ankieta` SET `Imie`='OLA',`Zarobki`=4523;  --wstawienie rekordu z imieniem Ola oraz zarobkami 4523

UPDATE `ankieta` SET `Imie`='Aleksandra', `rok_urodzenia`=2010 WHERE `Imie`='Ola' and `rok_urodzenia`=2005; --zmiana imienia i roku urodzenia dla Oli urodzonej w 2005

DELETE FROM `ankieta` WHERE `Id`%3=0 --usunięcie rekordów z id podzielnym przez 3


----------------------------------------------------------------------------------------------

--instrukcje warunkowe

if(Warunek,P,F) -- może występować po SELECT, WHERE, GROUP BY oraz ORDER BY

if(`imie` LIKE '%a', 1, 0) -- Zwróci 1 jeśli kończy się na 'a'

if(`imie` LIKE '%a', 'kobieta','mezczyzna') -- Zwróci 'kobieta' jeśli kończy się na 'a', w preciwnym razie zwróci 'mezczyzna'


--1
SELECT COUNT(`id`) AS `liczba`,if(`imie` LIKE '%a','Kobieta','Mężczyzna') AS 'plec' FROM `ankieta` GROUP BY `plec`;

--2
SELECT `Srod_lok`,COUNT(`Srod_lok`) FROM `lokata` INNER JOIN `ankieta` ON `lokata`.`Id_ank`=`ankieta`.`Id` WHERE `ankieta`.`Wojewodztwo`='Mazowieckie' AND `Pora_roku`='lato' GROUP BY `Srod_lok`;

--3
SELECT `Wojewodztwo`,COUNT(`Id`)  FROM `ankieta`  GROUP BY `Wojewodztwo` HAVING COUNT(`Id`)>20 

--4
SELECT `Imie`,`Nazwisko`,`Wojewodztwo`
FROM `ankieta`
WHERE `ankieta`.`Id` 
NOT IN(
    SELECT `Id_ank` FROM `zainteresowania`
    WHERE `zainteresowania`='informatyka' 
    OR `zainteresowania`='gry komputerowe'
) 
AND (`Wyksztalcenie`='wyzsze' OR `Wyksztalcenie`='srednie') 
AND `Wiek`>50 
ORDER BY `ankieta`.`Nazwisko` ASC;

--podzapytanie

--Wykluczenie osób które LUBIĄ informatykę i gry komputerowe
NOT IN(
	SELECT `Id_ank` FROM `zainteresowania`
	WHERE `zainteresowania`='informatyka' OR `zainteresowania`='gry komputerowe'
);


--5
SELECT AVG(`Dochod`),`Imie`,`Nazwisko` FROM `ankieta` 
INNER JOIN `lokata` ON `lokata`.`Id_ank`=`ankieta`.`Id`
WHERE `Imie` LIKE '%a' AND `Wojewodztwo`='zachodniopomorskie' AND `lokata`.`Srod_lok`='rower' GROUP BY `lokata`.`Pora_roku`,`Wojewodztwo`,`lokata`.`Srod_lok`;