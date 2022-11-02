CREATE DATABASE `DlaWas`;
CREATE TABLE `marki`(
	`id_marki` varchar(8) PRIMARY KEY,
    `nazwa_m` varchar(32) NOT NULL
);
CREATE TABLE `perfumy`(
	`id_perfum` varchar(8) PRIMARY KEY,
    `nazwa_p` varchar(64) NOT NULL,
    `id_marki` varchar(8),
    `rodzina_zapachow` varchar(64) NOT NULL,
    `cena` int NOT NULL
);
CREATE TABLE `sklad`(
	`id_perfum` varchar(8),
    `nazwa_skladnika` varchar(64) NOT NULL
);
ALTER TABLE `perfumy` ADD FOREIGN KEY (`id_marki`) REFERENCES `marki`(`id_marki`);
ALTER TABLE `sklad` ADD FOREIGN KEY (`id_perfum`) REFERENCES `perfumy`(`id_perfum`);
LOAD DATA INFILE "/srv/http/GitHub/marki.txt" INTO TABLE `marki` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE "/srv/http/GitHub/sklad.txt" INTO TABLE `sklad` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
LOAD DATA INFILE "/srv/http/GitHub/perfumy.txt" INTO TABLE `perfumy` FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;

-- kw 1
SELECT `nazwa_p` FROM `perfumy` WHERE `id_perfum` IN (SELECT `id_perfum` FROM `sklad` WHERE `nazwa_skladnika` = "absolut jasminu");

-- kw 2
SELECT `rodzina_zapachow`,`nazwa_p` AS `najtanszy_perfum`,MIN(`cena`) AS `cena` FROM `perfumy` GROUP BY `rodzina_zapachow`

-- kw 3
SELECT `nazwa_m` FROM `marki` WHERE `id_marki` NOT IN ( SELECT `perfumy`.`id_marki` FROM `sklad` INNER JOIN `perfumy` ON `perfumy`.`id_perfum`=`sklad`.`id_perfum` INNER JOIN `marki` ON `marki`.`id_marki`=`perfumy`.`id_marki` WHERE `nazwa_skladnika` LIKE "%paczula%" GROUP BY `perfumy`.`id_marki` );

-- kw 4
SELECT `nazwa_p`,`cena`*0.85 AS `cena_promocyjna` FROM `perfumy`
INNER JOIN `marki` ON `perfumy`.`id_marki`=`marki`.`id_marki` WHERE `marki`.`nazwa_m` LIKE "Mou De Rosine";\

-- kw 5
SELECT `nazwa_m`,`rodzina_zapachow` FROM `perfumy`
INNER JOIN `marki` ON `perfumy`.`id_marki`=`marki`.`id_marki`
GROUP BY `perfumy`.`id_marki`
HAVING COUNT(DISTINCT `rodzina_zapachow`)=1
