0. CREATE TABLE dvd (id_dvd int PRIMARY KEY AUTO_INCREMENT, tytul varchar(100), gatunek enum("Horror","Thriller","Komedia","Sensacyjny","Obyczajowy");

-- 1. Za pomocą polecenia select utwórz tabelę tytul ksiazki zawierającą tytul, gatunek z tabeli dvd
CREATE TABLE `tytul_ksiazki` as (SELECT `tytul`,`gatunek` FROM `dvd`);

-- 2. zmień nazwę tabeli tytuł ksiazki na ksiązki
ALTER TABLE `tytul_ksiazki` RENAME TO `książki`;

-- 3. dodaj kolumnę rok_wydania typu całkowitego bez znaku do tabeli ksiazki zaraz za kolumną tytul.
ALTER TABLE `książki` ADD COLUMN `rok_wydania` int unsigned AFTER `tytul`;

-- 4. zmień kolumnę tytul na kolumnę tytul ksiazki.
ALTER TABLE `książki` RENAME COLUMN `tytul` TO `tytul_ksiazki`;
ALTER TABLE `książki` CHANGE `tytul` `tytul_ksiazki` varchar(200)


-- 5. zmień typ kolumny rok_wydania na typ zwracający rok np. 1998
ALTER TABLE `książki` MODIFY `rok_wydania` YEAR;

-- 6. Utwórz konto użytkownika student pracującego lokalnie z hasłem: haslo.
CREATE USER 'student'@'localhost' IDENTIFIED BY 'haslo';

-- 7. Do tabeli dvd nadaj uprawnienie które pozwoli na utworzenie konta użySELECT `imie`,`nazwisko`,`miejscowosc` FROM `student` WHERE `id_kierunek`=3;tkownika bez żadnych uprawnień użytkownikowi student
GRANT USAGE ON `JakChcecie`.`dvd` TO 'student'@'localhost' WITH GRANT OPTIONS;

-- 8. utworzyć kopię zapasową bazy danych ....jako inf03.sql
mysqldump -u root --databases JakChcecie > inf03.sql

-- 9. Wypisz wszystkie rekordy, gdzie autor ma w nazwisku drugą literę a.
SELECT * FROM `ksiazki` WHERE `autor` LIKE '% _a%';

-- 10. Wyświetl id_student, imię, nazwisko studentów urodzonych w latach 1997 - 1999.
CREATE VIEW `z10` AS SELECT student.id_student, student.imie, student.nazwisko FROM `student` WHERE rok_urodzenia BETWEEN 1997 AND 1999;

-- 11. Pokaż imię, nazwisko i miejscowość wszystkich studentów, którzy wybrali kierunek (ID_WYDZIAŁU 3) Informatyka Stosowana
CREATE VIEW `z11` AS SELECT `imie`,`nazwisko`,`miejscowosc` FROM `student` WHERE `id_wydzial`=3;

-- 12. Pokaż po ilu studentow jest na każdym wydziale.
CREATE VIEW `z12` AS SELECT id_wydzial, COUNT(id_student) FROM `student` GROUP BY `id_wydzial`;

-- 13. Pokaż wszystkie wydziały, gdzie jest więcej niż 2 studentow posortowane malejąco po nazwie wydziału.
CREATE VIEW `z13` AS SELECT id_wydzial FROM `student` GROUP BY `id_wydzial` HAVING COUNT(id_student) > 2 ORDER BY `id_wydzial` DESC;

-- 14 Pani Magdalena Jędraszek wyszła za mąż, zmieniła nazwisko na Kowalczyk i przeprowadziła się do Krakowa w woj małopolskie.
SELECT "Kto pytał?";
UPDATE `student` SET `nazwisko`="Kowalczyk", `miejscowosc`="Krakowo", `wojewodztwo`="małopolskie" WHERE `imie`="Magdalena" AND `nazwisko`="Jędraszek"


--15. utwórz transakcje zmniejszającą rok użytkownikowi 1 o 5 lat, zwiększającą rok użytkownikowi 2 o 5 lat. Wycofaj transakcję.
START TRANSACTION;
UPDATE `student` SET `rok_studiow`=`rok_studiow`-5 WHERE `id_student`=1;
UPDATE `student` SET `rok_studiow`=`rok_studiow`+5 WHERE `id_student`=2;
ROLLBACK;


