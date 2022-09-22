-- zapytanie 1
SELECT `id`,`dataWyjazdu`,`cel`,`cena` FROM `wycieczki` WHERE 
`dostepna`=1

-- zapytanie 2
SELECT `nazwaPliku`,`podpis` FROM `zdjecia` ORDER BY `podpis` ASC

-- zapytanie 3
SELECT `zdjecia`.`nazwaPliku`,`wycieczki`.`cel` FROM `zdjecia` INNER JOIN `wycieczki` ON `zdjecia`.`id`=`wycieczki`.`zdjecia_id` WHERE `wycieczki`.`cena`>1000

-- zapytanie 4
ALTER TABLE `wycieczki`
ADD COLUMN 	`dataPrzyjzdu` DATE	
AFTER `dataWyjazdu`