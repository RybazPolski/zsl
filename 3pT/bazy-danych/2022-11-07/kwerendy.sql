-- kw1
CREATE TABLE `uzytkownicy`( `id` int unsigned PRIMARY KEY AUTO_INCREMENT, `login` varchar(50), `haslo` varchar(50) ); 

-- kw2
INSERT INTO `uzytkownicy`(`id`, `login`, `haslo`) VALUES (null,'Grzegorz','g'); 

-- kw3
SELECT `login` FROM `uzytkownicy`;

-- kw4
SELECT `id`,`login` FROM `uzytkownicy` WHERE `haslo` LIKE "4%"; 