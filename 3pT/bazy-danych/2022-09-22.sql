-- 1 
SELECT DISTINCT `przedmiot` FROM `oceny`;

-- 2
SELECT `imie`,`nazwisko` FROM `uczniowie` WHERE `nazwisko` LIKE 'B%';

-- 3
SELECT `imie`,`nazwisko` FROM `uczniowie` WHERE `nazwisko` LIKE 'M%' OR `nazwisko` LIKE 'N%';

-- 4
SELECT `imie`,`nazwisko` FROM `uczniowie` WHERE `imie` LIKE '%r%';

-- 5
SELECT `imie`,`nazwisko`,`ocena`,`przedmiot` FROM `uczniowie`, `oceny` WHERE `uczniowie`.`id`=`oceny`.`uczenId`;

-- 6
SELECT `imie`,`nazwisko`,`ocena`,`przedmiot` FROM `uczniowie`, `oceny` WHERE `uczniowie`.`id`=`oceny`.`uczenId` AND `imie`='Anna' AND `nazwisko`='Nowak';

-- 7
SELECT `imie`,`nazwisko` FROM `uczniowie`, `oceny` WHERE `uczniowie`.`id`=`oceny`.`uczenId` AND `ocena`=6;

-- 8
SELECT `imie`, `nazwisko`, COUNT(`ocena`) AS `ilosc_ocen` FROM `uczniowie`, `oceny` WHERE `uczniowie`.`id`=`oceny`.`uczenId` GROUP BY `uczniowie`.`id`;

-- 9
SELECT `imie`, `nazwisko` FROM `uczniowie`, `oceny` WHERE `uczniowie`.`id`=`oceny`.`uczenId` GROUP BY `uczniowie`.`id` ORDER BY COUNT(`ocena`) DESC LIMIT 1;

-- 10
SELECT `przedmiot`,COUNT(`ocena`) AS `ilosc_ocen` FROM `oceny` GROUP BY `przedmiot`

-- 11
SELECT COUNT(`ocena`) AS `ilosc_bdb` FROM `oceny` WHERE `ocena`=5;

-- 12
SELECT `imie`,`nazwisko`,ROUND(AVG(`ocena`),2) AS `srednia` FROM `uczniowie` INNER JOIN `oceny` ON `uczniowie`.`id`=`oceny`.`uczenId` GROUP BY `uczniowie`.`id`;

-- 13
SELECT `imie`, `nazwisko`, AVG(`oceny`.`ocena`) AS `srednia` FROM `uczniowie` INNER JOIN `oceny` ON `uczniowie`.`id`=`oceny`.`uczenId` GROUP BY `uczniowie`.`id` HAVING `srednia`>4.5;

-- 14
SELECT `przedmiot`, ROUND(AVG(`ocena`),2) AS `srednia_ocen` FROM `oceny` GROUP BY `przedmiot`;

-- 15
SELECT `przedmiot`, ROUND(AVG(`ocena`),2) AS `srednia_ocen` FROM `oceny` GROUP BY `przedmiot` HAVING `srednia_ocen`>4.5;

-- 16
INSERT INTO `uczniowie`(`imie`,`nazwisko`) VALUES ('Julian','Rybarczyk');
INSERT INTO `oceny`(`uczenId`,`przedmiot`,`ocena`) VALUES (7,'dowolny',7);

-- 17
CREATE USER 'DYREKTOR'@'localhost';
GRANT ALL PRIVILEGES ON `oceny`.* TO 'DYREKTOR'@'localhost' WITH GRANT OPTION;

-- 18
SHOW GRANTS FOR 'DYREKTOR'@'localhost'

-- 19
REVOKE ALL PRIVILEGES ON `oceny`.* FROM 'DYREKTOR'@'localhost';

-- 20
DROP USER 'DYREKTOR'@'localhost' 

-- 21
CREATE USER 'NAUCZYCIEL'@'localhost';
GRANT INSERT, SELECT, DELETE ON `oceny`.`oceny` TO 'NAUCZYCIEL'@'localhost';

-- 22
SHOW GRANTS FOR 'NAUCZYCIEL'@'localhost';

-- 23
REVOKE DELETE ON `oceny`.`oceny` FROM 'NAUCZYCIEL'@'localhost';

-- 24
SHOW GRANTS FOR 'NAUCZYCIEL'@'localhost';

-- 25
DROP USER 'NAUCZYCIEL'@'localhost';
