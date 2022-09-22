-- zad 1
SELECT SUM(`zabiegi`.`cena`) AS `Kwota wszystkich wizyt` FROM `klienci` 
INNER JOIN `wizytydane` ON `klienci`.`id_klienta`=`wizytydane`.`id_klienta` 
INNER JOIN `wizytyzabiegi` ON `wizytyzabiegi`.`id_wizyty`=`wizytydane`.`id_wizyty`
INNER JOIN `zabiegi` ON `wizytyzabiegi`.`kod_zabiegu`=`zabiegi`.`kod_zabiegu` 
WHERE `imie`="Alicja" AND `nazwisko` = "Kowalska";

-- 1punkt



-- zad 2
SELECT `imie`,`nazwisko`, COUNT(`wizytydane`.`id_wizyty`) AS `Liczba wizyt` FROM `klienci` 
INNER JOIN `wizytydane` ON `klienci`.`id_klienta`=`wizytydane`.`id_klienta`
GROUP BY `klienci`.`id_klienta`
ORDER BY COUNT(`wizytydane`.`id_wizyty`) DESC
LIMIT 1;




-- zad 4
SELECT COUNT(`klienci`.`id_klienta`) AS `Ilosc klientow`,

(SELECT SUM(`zabiegi`.`cena`)*0.8 FROM `klienci` 
INNER JOIN `wizytydane` ON `klienci`.`id_klienta`=`wizytydane`.`id_klienta`
INNER JOIN `wizytyzabiegi` ON `wizytyzabiegi`.`id_wizyty`=`wizytydane`.`id_wizyty`
INNER JOIN `zabiegi` ON `wizytyzabiegi`.`kod_zabiegu`=`zabiegi`.`kod_zabiegu`

WHERE `klienci`.`id_klienta` LIKE 'X%' AND `zabiegi`.`dzial`="MAKIJAZ" AND `wizytydane`.`data` BETWEEN "2017-12-06" AND "2018-01-15") AS `Laczna kwota`

FROM `klienci` 
INNER JOIN `wizytydane` ON `klienci`.`id_klienta`=`wizytydane`.`id_klienta`
INNER JOIN `wizytyzabiegi` ON `wizytyzabiegi`.`id_wizyty`=`wizytydane`.`id_wizyty`
INNER JOIN `zabiegi` ON `wizytyzabiegi`.`kod_zabiegu`=`zabiegi`.`kod_zabiegu`

WHERE `klienci`.`id_klienta` LIKE 'X%' AND `zabiegi`.`dzial`="MAKIJAZ" AND `wizytydane`.`data` BETWEEN "2017-12-06" AND "2018-01-15"
GROUP BY `zabiegi`.`dzial`;




-- zad 5
SELECT `zabieg` AS `nie wykonane` FROM `zabiegi` WHERE `dzial`="FRYZJER MESKI" AND `kod_zabiegu` NOT IN (
    SELECT `kod_zabiegu` FROM `wizytyzabiegi`
);

-- 3pkt
