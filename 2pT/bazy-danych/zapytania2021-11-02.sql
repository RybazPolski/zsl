-- zad 2
CREATE TABLE `product`(
	`maker` varchar(10) NOT NULL,
    `model` varchar(50) PRIMARY KEY,
    `type` varchar(50) NOT NULL
);

CREATE TABLE `laptop`(
	`code` int PRIMARY KEY,
    `model` varchar(50) NOT NULL,
    `speed` SMALLINT NOT NULL,
    `ram` SMALLINT NOT NULL,
    `hd` REAL NOT NULL,
    `price` float,
    `screen` tinyint NOT NULL
    
);

CREATE TABLE `pc`(
	`code` int PRIMARY KEY,
    `model` varchar(50) NOT NULL,
    `speed` SMALLINT NOT NULL,
    `ram` SMALLINT NOT NULL,
    `hd` REAL NOT NULL,
	`cd` varchar(10) NOT NULL,
    `price` float
    
);

CREATE TABLE `printer`(
	`code` int PRIMARY KEY,
    `model` varchar(50) NOT NULL,
	`color` char(1) NOT NULL,
    `type` varchar(10) NOT NULL,
    `price` float
    
);
-- zad 3

INSERT INTO `product` (maker, model, type) 
 	SELECT NULL,  model, "PC"  FROM `pc`;
 	
INSERT INTO `product` (maker, model, type) 
 	SELECT NULL,  model, "PRINTER"  FROM `printer`;
 	
INSERT INTO `product` (maker, model, type) 
 	SELECT NULL,  model, "LAPTOP"  FROM `laptop`;


SET     maker =  CASE  
            WHEN model  LIKE 'HP%' THEN 'HEWLETT-PACKARD'
            WHEN model  LIKE 'IBM%' THEN 'IBM'
			WHEN model  LIKE 'SAM%' THEN 'SAMSUNG'
			WHEN model  LIKE 'LEN%' THEN 'LENOVO'
			WHEN model  LIKE 'COM%' THEN 'COMPAQ'
			WHEN model  LIKE 'TOS%' THEN 'TOSHIBA'
			WHEN model  LIKE 'AS%' THEN 'ASUS'
			WHEN model  LIKE 'FU%' THEN 'FUJI'
			WHEN model  LIKE 'CAN%' THEN 'CANON'
        END;

-- zad 1
SELECT `model` FROM `pc` 
WHERE `price` < (
    SELECT MIN(`price`) FROM `laptop`
);

-- zad 2
SELECT `maker`,`type` FROM `product` WHERE `model` IN (
	SELECT `model` FROM `laptop` WHERE `speed` > (
    	SELECT AVG(`speed`) FROM `pc`
    )
) AND `type`="LAPTOP" GROUP BY `maker`;

-- zad 3
SELECT MAX(`price`), MIN(`price`) FROM `pc`
--lub
SELECT MAX(`price`),(SELECT MIN(`price`) FROM `pc`) FROM `pc`;

-- zad 4
SELECT `maker`,COUNT(`type`) AS `Liczba PC-tów` FROM `product` WHERE `type`="PC" GROUP BY `maker`;

-- zad 5
SELECT `maker` FROM `product` WHERE `type`="LAPTOP" AND `maker` IN (
	SELECT `maker` FROM `product` WHERE `type`="PRINTER"
) GROUP BY `maker`;

-- zad 6
SELECT `maker` FROM `product` WHERE `maker` NOT IN (
	SELECT `maker` FROM `product` WHERE `type`="LAPTOP"
) GROUP BY `maker`;

-- zad 7
SELECT `maker`,`product`.`model`,`laptop`.`price` FROM `product` 
INNER JOIN `laptop` ON `laptop`.`model` = `product`.`model` 
WHERE `laptop`.`price` > (
    SELECT MAX(`price`) FROM `pc`
);

-- zad 8
SELECT `model` FROM `laptop` WHERE `speed` < (
	SELECT MIN(`speed`) FROM `pc` 
);

-- zad 9
SELECT `maker` FROM `product` WHERE `maker` NOT IN (
	SELECT `maker` FROM `product` WHERE `type`="PC" OR `type`="LAPTOP"
) GROUP BY `maker`;


-- zad 10
SELECT `model` FROM `laptop` WHERE `ram` > (
	SELECT MIN(`ram`) FROM `pc` 
);

-- zad 11
SELECT `model` FROM `laptop` WHERE `hd` = (
	SELECT ROUND(AVG(`hd`)) FROM `pc` 
);

-- zad 12
SELECT `model` FROM `laptop` WHERE `price` < (
    SELECT AVG(`price`) FROM `laptop` WHERE `screen` IN(
        SELECT MIN(`screen`) FROM `laptop`
    )
);

-- zad 13
SELECT COUNT(`type`),`maker` FROM `product` WHERE `type`="LAPTOP"
AND `maker` IN (
	SELECT `maker` FROM `product` GROUP BY `maker`
);
