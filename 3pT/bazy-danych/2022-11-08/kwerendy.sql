-- kw1
SELECT `id`,`nr_rejsu`,`czas`,`kierunek`,`status_lotu` FROM `odloty` ORDER BY `czas` DESC;

-- kw2
SELECT MIN(`czas`) FROM `odloty` WHERE `czas` BETWEEN "10:10" AND "10:19"; 

-- kw3
SELECT `nr_rejsu`, `linie` FROM `odloty` INNER JOIN `samoloty` ON `samoloty`.`id`=`odloty`.`samoloty_id` WHERE `kierunek`="Malta"; 

-- kw4
UPDATE `przyloty` SET `status_lotu`='planowy' WHERE `nr_rejsu`="LH9829";