-- 1)
SELECT * FROM `pozyczki` WHERE `kwota`<(
	SELECT AVG(`kwota`) FROM `pozyczki`
)

-- 2)
SELECT * FROM `pozyczki` WHERE `okres_splaty` IN (
	SELECT MAX(`okres_splaty`) FROM `pozyczki`
)

-- 3)
SELECT `imie`,`nazwisko` FROM `klienci`
LEFT JOIN `pozyczki` ON `klienci`.`id_klienta`=`pozyczki`.`id_klienta`
WHERE `pozyczki`.`id_klienta` IS NULL

-- 4) 
SELECT * FROM `pozyczki` WHERE `firma` IN (
	SELECT MAX(`firma`) FROM `pozyczki` ORDER BY MAX(`kwota`) DESC
);
--LUB
SELECT * FROM `pozyczki` WHERE `firma` = (SELECT `firma` FROM `pozyczki` WHERE `kwota`=(SELECT MAX(`kwota`) FROM `pozyczki`) LIMIT 1)

-- 5)
SELECT * FROM `pozyczki` WHERE `firma` IN (
	SELECT `firma` FROM `firmy` WHERE `kraj`="Polska"   
)    

-- 6)
SELECT COUNT(`firma`) FROM `firmy` WHERE `firma` IN (
	SELECT `firma` FROM `pozyczki` GROUP BY `firma` HAVING COUNT(`id_pozyczki`)>4
)

-- 7)
SELECT * FROM `klienci` WHERE `plec`='m' AND `wiek` <(
	SELECT AVG(`wiek`) FROM `klienci` WHERE `plec`="m"
)

-- 8)
SELECT COUNT(`id_klienta`) FROM `klienci` WHERE `plec`='k' AND `id_klienta` IN (
	SELECT `id_klienta` FROM `pozyczki` GROUP BY `id_klienta` HAVING SUM(`kwota`)>2000 
)

-- 9)
SELECT `imie`,`nazwisko` FROM `klienci` WHERE `imie` IN (
 SELECT `imie` FROM `dluznicy`    
) AND `nazwisko` IN (
 SELECT `nazwisko` FROM `dluznicy`    
)

-- 10)
SELECT `imie`,`nazwisko` FROM `dluznicy` WHERE concat(`nazwisko`,`imie`) NOT IN (
 SELECT concat(`nazwisko`,`imie`) FROM `klienci`    
);
-- LUB
SELECT `dluznicy`.`imie`,`dluznicy`.`nazwisko` FROM `dluznicy`
LEFT JOIN `klienci` 
ON concat(`klienci`.`imie`,`klienci`.`nazwisko`)=concat(`dluznicy`.`imie`,`dluznicy`.`nazwisko`)
WHERE concat(`klienci`.`imie`,`klienci`.`nazwisko`) IS NULL
