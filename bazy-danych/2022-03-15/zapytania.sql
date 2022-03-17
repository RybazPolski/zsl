CREATE TABLE `uczniowie`(
	`id_ucznia` int PRIMARY KEY AUTO_INCREMENT,
    `imie` varchar(64),
    `nazwisko` varchar(128),
    `klasa` char(1),
    `rok_nauki` int
)

CREATE TABLE `glosy`(
	`id_glosu` int PRIMARY KEY AUTO_INCREMENT,
    `id_ucznia` int,
    `id_kandydata` int
)

CREATE TABLE `kandydaci`(
	`id_kandydata` int PRIMARY KEY AUTO_INCREMENT,
    `imie` varchar(64),
    `nazwisko` varchar(128)
)

ALTER TABLE `glosy` ADD FOREIGN KEY (`id_kandydata`) REFERENCES `kandydaci`(`id_kandydata`)

ALTER TABLE `glosy` ADD FOREIGN KEY (`id_ucznia`) REFERENCES `uczniowie`(`id_ucznia`)

LOAD DATA INFILE "/opt/lampp/htdocs/GitHub/julianrybarczyk.github.io/bazy-danych/2022-03-15/uczniowie.txt" 
INTO TABLE `uczniowie`
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
IGNORE 1 LINES

LOAD DATA INFILE "/opt/lampp/htdocs/GitHub/julianrybarczyk.github.io/bazy-danych/2022-03-15/kandydaci.txt" 
INTO TABLE `kandydaci`
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
IGNORE 1 LINES

LOAD DATA INFILE "/opt/lampp/htdocs/GitHub/julianrybarczyk.github.io/bazy-danych/2022-03-15/glosy.txt" 
INTO TABLE `glosy`
FIELDS TERMINATED BY "\t"
LINES TERMINATED BY "\n"
IGNORE 1 LINES

-- ===================================================================

-- 6.1
SELECT COUNT(`imie`) AS `dziewczeta`, (SELECT COUNT(`imie`) FROM `uczniowie` WHERE `imie` NOT LIKE "%a") AS `chlopcy` FROM `uczniowie` WHERE `imie` LIKE "%a";

-- 6.2
SELECT `imie`,`nazwisko`,COUNT(`glosy`.`id_glosu`) AS `uzyskane_glosy` FROM `kandydaci` 
INNER JOIN `glosy` ON `glosy`.`id_kandydata`=`kandydaci`.`id_kandydata`
GROUP BY `kandydaci`.`id_kandydata` ORDER BY `uzyskane_glosy` DESC LIMIT 10;

-- 6.3
SELECT COUNT(`id_ucznia`) AS `uczniowie_ktorzy_nie_glosowali` FROM `uczniowie` WHERE `id_ucznia` NOT IN (SELECT `id_ucznia` FROM `glosy`);

-- 6.4
CREATE VIEW `klasy_na_rocznik` AS SELECT `klasa` FROM `uczniowie` GROUP BY `klasa`

SELECT `rok_nauki`, ROUND(COUNT(`glosy`.`id_glosu`)/`l`.`ilosc_klas`,2) AS `avg` FROM `uczniowie`
INNER JOIN `glosy` ON `glosy`.`id_ucznia`=`uczniowie`.`id_ucznia`
INNER JOIN (SELECT COUNT(`klasa`) AS `ilosc_klas` FROM `klasy_na_rocznik`) AS `l` 
GROUP BY `rok_nauki`;





