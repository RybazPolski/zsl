CREATE TABLE `osoba`(
	`Idosoby` int PRIMARY KEY AUTO_INCREMENT,
    `Nazwisko` varchar(128),
    `Wiek` int unsigned,
    `PESEL` char(11)
) ;

ALTER TABLE `osoba` ADD COLUMN(`Data_urodzenia` date)

INSERT INTO `osoba`(`Nazwisko`, `Wiek`, `PESEL`, `Data_urodzenia`) VALUES ('Kot',20,'12345678909','2002-01-01'),('Zaba',18,'12345678908','2004-05-02'),('Kon',22,'12345678907','2000-12-14')

-- RENAME TABLE `osoba` TO `zoo`

CREATE USER 'michal'@'localhost' IDENTIFIED BY 'zaq1';

GRANT SELECT, DROP, UPDATE
ON `osoba`
TO 'michal'@'localhost'

GRANT INSERT(`Nazwisko`) 
ON `osoba` 
TO 'michal'@'localhost'; 

SHOW GRANTS FOR 'michal'@'localhost'; 

REVOKE DROP ON `osoba` FROM 'michal'@'localhost';

CREATE USER 'zosia'@'%' IDENTIFIED BY 'abc'

GRANT ALL PRIVILEGES ON `osoba` TO 'zosia'@'%' WITH GRANT OPTION; 
