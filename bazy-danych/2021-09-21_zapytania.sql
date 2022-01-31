-- https://arkusze.pl/maturalne/informatyka-2016-maj-matura-stara-podstawowa-2.pdf

-- zad 5.1
SELECT `klienci`.`imie`, `klienci`.`nazwisko` FROM `zamowienia`
INNER JOIN `klienci` ON `klienci`.`id_klienta`=`zamowienia`.`id_klienta`
INNER JOIN `produkty` ON `produkty`.`id_produktu`=`zamowienia`.`id_produktu`
WHERE `produkty`.`producent` LIKE "HW" AND `produkty`.`gupa_towarowa` LIKE "Notebooki" 
ORDER BY `nazwisko` ASC


-- zad 5.2
SELECT `produkty`.`nazwa_produktu`, `produkty`.`gupa_towarowa`, `produkty`.`gupa_towarowa` FROM `zamowienia`
INNER JOIN `klienci` ON `klienci`.`id_klienta`=`zamowienia`.`id_klienta`
INNER JOIN `produkty` ON `produkty`.`id_produktu`=`zamowienia`.`id_produktu`
WHERE `klienci`.`imie` LIKE "Anna" AND `klienci`.`nazwisko` LIKE "Kotnicka"


-- zad 5.3
SELECT `klienci`.`imie`, `klienci`.`nazwisko`, COUNT(`zamowienia`.`id_zamowienia`) FROM `zamowienia`
INNER JOIN `klienci` ON `klienci`.`id_klienta`=`zamowienia`.`id_klienta`
INNER JOIN `produkty` ON `produkty`.`id_produktu`=`zamowienia`.`id_produktu`
WHERE 1
GROUP BY `klienci`.`id_klienta`
ORDER BY COUNT(`zamowienia`.`id_zamowienia`) DESC
LIMIT 1;

-- zad 5.4
SELECT `klienci`.`imie`, `klienci`.`nazwisko` FROM `zamowienia`
INNER JOIN `klienci` ON `klienci`.`id_klienta`=`zamowienia`.`id_klienta`
INNER JOIN `produkty` ON `produkty`.`id_produktu`=`zamowienia`.`id_produktu`
WHERE 1
GROUP BY `klienci`.`id_klienta`
ORDER BY ROUND(SUM(`produkty`.`cena_brutto`*`zamowienia`.`liczba_sztuk`),2) DESC
LIMIT 3;

-- zad 5.5
SELECT SUM(`zamowienia`.`liczba_sztuk`) AS `Notebooki zamówione w marcu` FROM `zamowienia`
INNER JOIN `klienci` ON `klienci`.`id_klienta`=`zamowienia`.`id_klienta`
INNER JOIN `produkty` ON `produkty`.`id_produktu`=`zamowienia`.`id_produktu`
WHERE `produkty`.`gupa_towarowa` LIKE "Notebooki" AND `zamowienia`.`data` LIKE "2013-03%";