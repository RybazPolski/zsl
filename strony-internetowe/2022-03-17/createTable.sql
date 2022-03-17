 CREATE TABLE `Miejsca`(
     `Id` int PRIMARY KEY, 
     `Miasto` varchar(64), 
     `Adres` varchar(128), 
     `Otwarcie` time, 
     `Zamkniecie` time
 )