-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 24 Kwi 2021, 19:22
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `relacje`
--

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `a`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `a` (
`nazwisko` varchar(50)
,`imie` varchar(16)
,`Id_mieszkania` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `b`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `b` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`ulica` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `c`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `c` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`ulica` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `d`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `d` (
`imie` varchar(16)
,`nazwisko` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `e`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `e` (
`imie` varchar(16)
,`nazwisko` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `f`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `f` (
`imie` varchar(16)
,`nazwisko` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `g`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `g` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`miejscowosc` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `h`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `h` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`miejscowosc` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `i`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `i` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`miejscowosc` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `j`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `j` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`miejscowosc` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `k`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `k` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`Liczba mieszkań` bigint(21)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `la`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `la` (
`Kobiety` bigint(21)
,`Id_mieszkania` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `lb`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `lb` (
`Mężczyźni` bigint(21)
,`Id_mieszkania` int(11)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `m`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `m` (
`imie` varchar(16)
,`nazwisko` varchar(50)
,`id` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mieszkania`
--

CREATE TABLE `mieszkania` (
  `id` int(11) NOT NULL,
  `ulica` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `nr_domu` int(11) NOT NULL,
  `nr_mieszkania` int(11) NOT NULL,
  `kod` char(6) COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `mieszkania`
--

INSERT INTO `mieszkania` (`id`, `ulica`, `nr_domu`, `nr_mieszkania`, `kod`, `miejscowosc`) VALUES
(1, 'Gruszkowa', 21, 12, '60-123', 'Poznań'),
(2, 'Śliwkowa', 22, 15, '50-500', 'Wrocław'),
(3, 'Czereśniowa', 23, 16, '42-200', 'Żarki'),
(4, 'Poziomkowa', 24, 17, '14-420', 'Mikołajki');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `n`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `n` (
`nr_domu` int(11)
,`nazwisko` varchar(50)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `o`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `o` (
`id` int(11)
,`imie` varchar(16)
,`nazwisko` varchar(50)
,`telefon` char(9)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) NOT NULL,
  `imie` varchar(16) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `telefon` char(9) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `imie`, `nazwisko`, `telefon`) VALUES
(1, 'Jan', 'Kowalski', '123456789'),
(2, 'Andrzej', 'Malinowski', '234567890'),
(3, 'Anna', 'Nowak', '345678901'),
(4, 'Milena', 'Nowakowska', '456789012');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby_mieszkania`
--

CREATE TABLE `osoby_mieszkania` (
  `Id` int(11) NOT NULL,
  `Id_mieszkania` int(11) DEFAULT NULL,
  `Id_osoby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `osoby_mieszkania`
--

INSERT INTO `osoby_mieszkania` (`Id`, `Id_mieszkania`, `Id_osoby`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 2, 4),
(4, 3, 1),
(5, 4, 1);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `p`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `p` (
`id` int(11)
,`imie` varchar(16)
,`nazwisko` varchar(50)
,`telefon` char(9)
);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `q`
-- (Zobacz poniżej rzeczywisty widok)
--
CREATE TABLE `q` (
`id` int(11)
,`imie` varchar(16)
,`nazwisko` varchar(50)
,`telefon` char(9)
);

-- --------------------------------------------------------

--
-- Struktura widoku `a`
--
DROP TABLE IF EXISTS `a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `a`  AS SELECT `osoby`.`nazwisko` AS `nazwisko`, `osoby`.`imie` AS `imie`, `osoby_mieszkania`.`Id_mieszkania` AS `Id_mieszkania` FROM ((`osoby_mieszkania` join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) GROUP BY `osoby`.`id` HAVING `osoby_mieszkania`.`Id_mieszkania` not like 'NULL' ORDER BY `osoby`.`nazwisko` ASC ;

-- --------------------------------------------------------

--
-- Struktura widoku `b`
--
DROP TABLE IF EXISTS `b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `b`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `mieszkania`.`ulica` AS `ulica` FROM ((`osoby_mieszkania` join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) GROUP BY `osoby_mieszkania`.`Id_osoby` HAVING `mieszkania`.`ulica` like 'Gruszkowa' ;

-- --------------------------------------------------------

--
-- Struktura widoku `c`
--
DROP TABLE IF EXISTS `c`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `c`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `mieszkania`.`ulica` AS `ulica` FROM ((`osoby_mieszkania` join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) GROUP BY `osoby_mieszkania`.`Id_osoby` HAVING `mieszkania`.`ulica` like 'Śliwkowa' ;

-- --------------------------------------------------------

--
-- Struktura widoku `d`
--
DROP TABLE IF EXISTS `d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `d`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko` FROM ((`osoby_mieszkania` join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) WHERE `mieszkania`.`ulica` = 'Poziomkowa' OR `mieszkania`.`ulica` = 'Czereśniowa' GROUP BY `osoby`.`imie` ;

-- --------------------------------------------------------

--
-- Struktura widoku `e`
--
DROP TABLE IF EXISTS `e`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko` FROM `osoby` GROUP BY `osoby`.`id` HAVING `osoby`.`nazwisko` like 'No%' ;

-- --------------------------------------------------------

--
-- Struktura widoku `f`
--
DROP TABLE IF EXISTS `f`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `f`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko` FROM ((`osoby_mieszkania` join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) GROUP BY `osoby_mieszkania`.`Id_osoby` HAVING `osoby`.`imie` not like 'A%' ;

-- --------------------------------------------------------

--
-- Struktura widoku `g`
--
DROP TABLE IF EXISTS `g`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `g`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `mieszkania`.`miejscowosc` AS `miejscowosc` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) GROUP BY `osoby`.`id` HAVING `mieszkania`.`miejscowosc` like 'M%' OR `mieszkania`.`miejscowosc` like 'W%' ;

-- --------------------------------------------------------

--
-- Struktura widoku `h`
--
DROP TABLE IF EXISTS `h`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `h`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `mieszkania`.`miejscowosc` AS `miejscowosc` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) GROUP BY `osoby`.`id` HAVING `mieszkania`.`miejscowosc` not like 'P%' ;

-- --------------------------------------------------------

--
-- Struktura widoku `i`
--
DROP TABLE IF EXISTS `i`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `i`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `mieszkania`.`miejscowosc` AS `miejscowosc` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) WHERE `mieszkania`.`miejscowosc` in ('Poznań','Żarki','Mikołajki') ORDER BY `mieszkania`.`miejscowosc` DESC ;

-- --------------------------------------------------------

--
-- Struktura widoku `j`
--
DROP TABLE IF EXISTS `j`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `j`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `mieszkania`.`miejscowosc` AS `miejscowosc` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) WHERE `mieszkania`.`miejscowosc` <> 'Poznań' ;

-- --------------------------------------------------------

--
-- Struktura widoku `k`
--
DROP TABLE IF EXISTS `k`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `k`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, count(`mieszkania`.`id`) AS `Liczba mieszkań` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) GROUP BY `osoby`.`id` ;

-- --------------------------------------------------------

--
-- Struktura widoku `la`
--
DROP TABLE IF EXISTS `la`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `la`  AS SELECT count(`osoby`.`imie`) AS `Kobiety`, `osoby_mieszkania`.`Id_mieszkania` AS `Id_mieszkania` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) WHERE `osoby`.`imie` like '%a' HAVING `osoby_mieszkania`.`Id_mieszkania` not like 'NULL' ORDER BY `osoby`.`nazwisko` ASC ;

-- --------------------------------------------------------

--
-- Struktura widoku `lb`
--
DROP TABLE IF EXISTS `lb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lb`  AS SELECT count(`osoby`.`imie`) AS `Mężczyźni`, `osoby_mieszkania`.`Id_mieszkania` AS `Id_mieszkania` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) WHERE `osoby`.`imie` not like '%a' HAVING `osoby_mieszkania`.`Id_mieszkania` not like 'NULL' ORDER BY `osoby`.`nazwisko` ASC ;

-- --------------------------------------------------------

--
-- Struktura widoku `m`
--
DROP TABLE IF EXISTS `m`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `m`  AS SELECT `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `osoby`.`id` AS `id` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) WHERE `osoby`.`id` MOD 2 like 0 ;

-- --------------------------------------------------------

--
-- Struktura widoku `n`
--
DROP TABLE IF EXISTS `n`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `n`  AS SELECT `mieszkania`.`nr_domu` AS `nr_domu`, `osoby`.`nazwisko` AS `nazwisko` FROM ((`osoby_mieszkania` join `mieszkania` on(`osoby_mieszkania`.`Id_mieszkania` = `mieszkania`.`id`)) join `osoby` on(`osoby_mieszkania`.`Id_osoby` = `osoby`.`id`)) WHERE `mieszkania`.`nr_domu` between 20 and 30 ;

-- --------------------------------------------------------

--
-- Struktura widoku `o`
--
DROP TABLE IF EXISTS `o`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `o`  AS SELECT `osoby`.`id` AS `id`, `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `osoby`.`telefon` AS `telefon` FROM `osoby` ORDER BY `osoby`.`id` ASC LIMIT 0, 2 ;

-- --------------------------------------------------------

--
-- Struktura widoku `p`
--
DROP TABLE IF EXISTS `p`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `p`  AS SELECT `osoby`.`id` AS `id`, `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `osoby`.`telefon` AS `telefon` FROM `osoby` ORDER BY `osoby`.`id` DESC LIMIT 0, 2 ;

-- --------------------------------------------------------

--
-- Struktura widoku `q`
--
DROP TABLE IF EXISTS `q`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `q`  AS SELECT `osoby`.`id` AS `id`, `osoby`.`imie` AS `imie`, `osoby`.`nazwisko` AS `nazwisko`, `osoby`.`telefon` AS `telefon` FROM `osoby` LIMIT 1, 2 ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `mieszkania`
--
ALTER TABLE `mieszkania`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `osoby_mieszkania`
--
ALTER TABLE `osoby_mieszkania`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_osoby` (`Id_osoby`),
  ADD KEY `Id_mieszkania` (`Id_mieszkania`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `osoby_mieszkania`
--
ALTER TABLE `osoby_mieszkania`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `osoby_mieszkania`
--
ALTER TABLE `osoby_mieszkania`
  ADD CONSTRAINT `osoby_mieszkania_ibfk_1` FOREIGN KEY (`Id_mieszkania`) REFERENCES `mieszkania` (`id`),
  ADD CONSTRAINT `osoby_mieszkania_ibfk_2` FOREIGN KEY (`Id_osoby`) REFERENCES `osoby` (`id`),
  ADD CONSTRAINT `osoby_mieszkania_ibfk_3` FOREIGN KEY (`Id_mieszkania`) REFERENCES `mieszkania` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
