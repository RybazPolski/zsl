CREATE TABLE `pacjenci`(
	`pacjent_id` int PRIMARY KEY AUTO_INCREMENT,
    `imie` varchar(64) NOT NULL,
    `nazwisko` varchar(128) NOT NULL,
    `data_zapisania` date NOT NULL,
	`lekarz_id` int NOT NULL
);

CREATE TABLE `lekarze`(
    `lekarz_id` int PRIMARY KEY AUTO_INCREMENT,
    `imie` varchar(64) NOT NULL,
    `nazwisko` varchar(128) NOT NULL,
    `specjalizacja` varchar(128) NOT NULL
);
ALTER TABLE `pacjenci` ADD FOREIGN KEY (`lekarz_id`) REFERENCES `lekarze`(`lekarz_id`);

CREATE TABLE `wizyty`(
	`wizyta_id` int PRIMARY KEY AUTO_INCREMENT,
    `pacjent_id` int NOT NULL,
    `data_wizyty` date NOT NULL,
    `godzina_wizyty` time NOT NULL
);
ALTER TABLE `wizyty` ADD FOREIGN KEY (`pacjent_id`) REFERENCES `pacjenci`(`pacjent_id`);


CREATE VIEW `wizyty_na_dzien` AS SELECT `data_wizyty` AS `data`, COUNT(`wizyta_id`) AS `ilosc_wizyt` FROM `wizyty` GROUP BY `data` ORDER BY `data` DESC, `ilosc_wizyt` DESC;

CREATE VIEW `wizyty_u_lekarzy_na_dzien` AS 
SELECT `lekarze`.`imie` AS `imie`,`lekarze`.`nazwisko` AS `nazwisko`, COUNT(`pacjenci`.`lekarz_id`) AS `ilosc_przyjec`, `wizyty`.`data_wizyty` AS `data` 
FROM `wizyty`
INNER JOIN `pacjenci` ON `pacjenci`.`pacjent_id`=`wizyty`.`pacjent_id`
INNER JOIN `lekarze` ON `lekarze`.`lekarz_id`=`pacjenci`.`lekarz_id`
GROUP BY `data`,`pacjenci`.`lekarz_id`
ORDER BY `data` DESC, `ilosc_przyjec` DESC;

CREATE VIEW `zapisani` AS SELECT `lekarze`.`imie` AS `imie`,`lekarze`.`nazwisko` AS `nazwisko`,COUNT(`pacjenci`.`lekarz_id`) AS `zapisanych_pacjentow` FROM `pacjenci`
INNER JOIN `lekarze` ON `lekarze`.`lekarz_id`=`pacjenci`.`lekarz_id`
GROUP BY `pacjenci`.`lekarz_id`;