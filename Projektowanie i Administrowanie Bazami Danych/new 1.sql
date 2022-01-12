CREATE TABLE `kandydaci` (
	`idosoby` char(4) PRIMARY KEY, 
    `imie` varchar(16) NOT NULL,
    `nazwisko` varchar(64) NOT NULL,
    `matematyka` int UNSIGNED NOT NULL,
    `informatyka` int UNSIGNED NOT NULL,
    `fizyka` int UNSIGNED NOT NULL,
    `jezykobcy` int UNSIGNED NOT NULL,
    `plec` ENUM('m','k') NOT NULL
);

CREATE TABLE `zgloszenia` (
	`kierunek` varchar(32),
    `idosoby` char(4) NOT NULL 
);

ALTER TABLE `zgloszenia` ADD FOREIGN KEY (`idosoby`) REFERENCES `kandydaci`(`idosoby`);

CREATE TABLE `zgloszenia` (
	`kierunek` varchar(32),
    `idosoby` char(4),
	FOREIGN KEY (`idosoby`) REFERENCES `kandydaci`(`idosoby`) 
);

LOAD DATA INFILE "//home//ryba//Downloads//Dane//kandydaci.txt" INTO TABLE `kandydaci` FIELDS TERMINATED BY ' ' LINES TERMINATED BY '\r\n' IGNORE 1 LINES