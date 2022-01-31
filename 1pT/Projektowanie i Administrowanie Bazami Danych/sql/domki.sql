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
-- Baza danych: `domki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `domki`
--

CREATE TABLE `domki` (
  `nrdomku` int(11) NOT NULL,
  `liczbapokoi` int(11) NOT NULL,
  `garaz` enum('Tak','Nie') COLLATE utf8_polish_ci NOT NULL,
  `cenazadobe` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `domki`
--

INSERT INTO `domki` (`nrdomku`, `liczbapokoi`, `garaz`, `cenazadobe`) VALUES
(1, 4, 'Tak', 200),
(2, 4, 'Nie', 160),
(3, 2, 'Tak', 120),
(4, 2, 'Nie', 100),
(5, 3, 'Tak', 170),
(6, 3, 'Nie', 140),
(7, 5, 'Tak', 250),
(8, 5, 'Nie', 200),
(9, 6, 'Tak', 300);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `idpracownika` int(2) NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `cena` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`idpracownika`, `nazwisko`, `imie`, `cena`) VALUES
(1, 'Wroblewski', 'Janusz', '100'),
(2, 'Wiecek', 'Jaremi', '100'),
(3, 'Zawada', 'Witold', '100'),
(4, 'Ulatowski', 'Edwin', '100'),
(5, 'Adamski', 'Adam', '100'),
(9, 'Mikolajczyk', 'Aldona', '100'),
(10, 'Rokicka', 'Aleksandra', '100'),
(11, 'lis', 'Andrzej', '100'),
(12, 'Opielski', 'Andrzej', '100'),
(13, 'Sadej', 'Andrzej', '100'),
(14, 'Zajdowicz', 'Arleta', '100'),
(15, 'Kuryllo', 'Artur', '100'),
(16, 'Ratajczyk', 'Artur', '100'),
(17, 'Kujawa', 'Bogdan', '100'),
(18, 'Prokopowicz', 'Bogdan', '100'),
(19, 'Hamerak', 'Blazej', '100'),
(20, 'Antasowski', 'Dariusz', '100'),
(21, 'Zielinska', 'Dariusz', '100'),
(22, 'Walkusz', 'Elzbieta', '100'),
(23, 'Wrobl', 'Elzbieta', '100'),
(24, 'Garbatowska', 'Ewa', '100'),
(25, 'lazowski', 'Ewa', '100'),
(26, 'Bardzewska', 'Grazyna', '100'),
(27, 'Radziemski', 'Grzegorz', '100'),
(28, 'Rak', 'Grzegorz', '100'),
(29, 'Iwanowska', 'Hanka', '100'),
(30, 'Rajkowski', 'Hieronim', '100'),
(31, 'Gorna', 'Ilona', '100'),
(32, 'Magdzinska', 'Irena', '100'),
(33, 'Wojtasiak', 'Jacek', '100'),
(34, 'Radke', 'Janusz', '100'),
(35, 'Baran', 'Janusz', '100'),
(36, 'Fratczak', 'Janusz', '100'),
(37, 'Hadynski', 'Jaroslaw', '100'),
(38, 'Mikulajewski', 'Jerzy', '100'),
(39, 'Wilkowska', 'Kamila', '100'),
(40, 'lisiecki', 'Karol', '100'),
(41, 'Stachowiak', 'Katarzyna', '100'),
(42, 'Sikorska', 'Kinga', '100'),
(43, 'Wawrzyniak', 'Krzysztofa', '100'),
(44, 'laczkowski', 'leszek', '100'),
(45, 'Seidel', 'lidia', '100'),
(46, 'Strozycka', 'lorena', '100'),
(47, 'Hamerak', 'Magdalena', '100'),
(48, 'Kozikiewicz', 'Magdalena', '100'),
(49, 'Jelonek', 'Marcin', '100'),
(50, 'Finkel', 'Marek', '100'),
(51, 'Haberko', 'Marek', '100'),
(52, 'Wawrzynowski', 'Marek', '100'),
(53, 'Golawska', 'Maria', '100'),
(54, 'Wrobl', 'Maria', '100'),
(55, 'Konieczny', 'Marian', '100'),
(56, 'lencki', 'Marian', '100'),
(57, 'Finkel', 'Mariola', '100'),
(58, 'Beskowicz', 'Mariusz', '100'),
(59, 'Koralewski', 'Mariusz', '100'),
(60, 'Prozalska', 'Malgorzata', '100'),
(61, 'Goralczyk', 'Michal', '100'),
(62, 'Misiewicz', 'Michal', '100'),
(63, 'Tomiczek', 'Michal', '100'),
(64, 'Jedrzejczak', 'Mieczyslaw', '100'),
(65, 'Jarzembowski', 'Miroslaw', '100'),
(66, 'Szajda', 'Miroslawa', '100'),
(67, 'Wojtasiak', 'Monika', '100'),
(68, 'Zapotoczny', 'Norbert', '100'),
(69, 'Piekarzewski', 'Pawel', '100'),
(70, 'Nawrocki', 'Piotr', '100'),
(71, 'Ritter', 'Piotr', '100'),
(72, 'Czarnecki', 'Przemyslaw', '100'),
(73, 'Zetlerowicz', 'Radoslaw', '100'),
(74, 'Dubielski', 'Robert', '100'),
(75, 'Piekarzewski', 'Robert', '100'),
(76, 'Kazmierczak', 'Roman', '100'),
(77, 'Mlodozeniec', 'Roman', '100'),
(78, 'Gasiorowski', 'Ryszard', '100'),
(79, 'Kowalski', 'Sebastian', '100'),
(80, 'Szelagowski', 'Sebastian', '100'),
(81, 'Mikulajewski', 'Stanislaw', '100'),
(82, 'Prozalski', 'Stanislaw', '100'),
(83, 'Slawinski', 'Szymon', '100'),
(84, 'Iwaszkiewicz', 'Slawomir', '100'),
(85, 'Fickowski', 'Tadeusz', '100'),
(86, 'Kwiatkowski', 'Tadeusz', '100'),
(87, 'Spychala', 'Tadeusz', '100'),
(88, 'Kozikiewicz', 'Tomasz', '100'),
(89, 'Olejniczak', 'Tomasz', '100'),
(90, 'Stefankiewicz', 'Tomasz', '100'),
(91, 'Strozycki', 'Tomasz', '100'),
(92, 'Tonak', 'Tomasz', '100'),
(93, 'Krugiolka', 'Tomasz', '100'),
(94, 'Strozycki', 'Wojciech', '100'),
(95, 'Piasecki', 'Zbigniew', '100'),
(96, 'Lehmann', 'Zdzislaw', '100'),
(97, 'Kasprzak', 'Zofia', '100'),
(98, 'Matysiak', 'Mateusz', '100');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `nrrezerwacji` int(11) NOT NULL,
  `idpracownika` int(11) DEFAULT NULL,
  `nrdomku` int(11) DEFAULT NULL,
  `liczbadni` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rezerwacje`
--

INSERT INTO `rezerwacje` (`nrrezerwacji`, `idpracownika`, `nrdomku`, `liczbadni`) VALUES
(1, 5, 2, 2),
(2, 20, 5, 2),
(3, 35, 6, 3),
(4, 26, 2, 2),
(5, 58, 3, 4),
(6, 72, 6, 2),
(7, 74, 8, 4),
(8, 85, 7, 10),
(9, 57, 6, 4),
(10, 50, 9, 2),
(11, 36, 5, 4),
(12, 24, 4, 1),
(13, 78, 3, 7),
(14, 53, 4, 2),
(15, 6, 6, 2),
(16, 61, 5, 7),
(17, 31, 3, 6),
(18, 51, 2, 3),
(19, 37, 8, 5),
(20, 47, 1, 5),
(21, 19, 2, 2),
(22, 29, 4, 4),
(23, 84, 2, 10),
(24, 65, 5, 2),
(25, 49, 6, 1),
(26, 64, 3, 7),
(27, 97, 2, 8),
(28, 76, 7, 2),
(29, 55, 5, 3),
(30, 59, 3, 4),
(31, 79, 2, 7),
(32, 88, 7, 4),
(33, 48, 5, 1),
(34, 93, 9, 4),
(35, 17, 9, 5),
(36, 15, 9, 3),
(37, 86, 8, 10),
(38, 25, 5, 2),
(39, 44, 3, 2),
(40, 96, 2, 3),
(41, 56, 4, 2),
(42, 11, 6, 3),
(43, 40, 8, 2),
(44, 7, 4, 2),
(45, 32, 2, 3),
(46, 9, 1, 2),
(47, 38, 5, 4),
(48, 81, 7, 7),
(49, 62, 8, 7),
(50, 77, 4, 2),
(51, 70, 6, 4),
(52, 89, 9, 2),
(53, 12, 8, 4),
(54, 8, 7, 2),
(55, 95, 2, 2),
(56, 69, 2, 4),
(57, 75, 3, 2),
(58, 18, 7, 6),
(59, 60, 6, 2),
(60, 82, 4, 8),
(61, 34, 7, 3),
(62, 27, 5, 2),
(63, 30, 4, 5),
(64, 28, 7, 3),
(65, 16, 8, 4),
(66, 71, 6, 3),
(67, 10, 4, 2),
(68, 13, 2, 5),
(69, 45, 1, 3),
(70, 42, 1, 2),
(71, 83, 1, 8),
(72, 87, 1, 2),
(73, 41, 5, 3),
(74, 90, 7, 5),
(75, 46, 5, 4),
(76, 91, 3, 7),
(77, 94, 8, 3),
(78, 66, 6, 3),
(79, 80, 8, 7),
(80, 63, 9, 7),
(81, 92, 6, 5),
(82, 4, 6, 3),
(83, 22, 8, 2),
(84, 43, 3, 2),
(85, 52, 2, 2),
(86, 39, 3, 2),
(87, 67, 1, 4),
(88, 33, 1, 3),
(89, 54, 9, 2),
(90, 23, 7, 2),
(91, 1, 5, 5),
(92, 14, 4, 4),
(93, 2, 3, 5),
(94, 68, 4, 5),
(95, 3, 2, 5),
(96, 73, 3, 3),
(97, 21, 4, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `domki`
--
ALTER TABLE `domki`
  ADD PRIMARY KEY (`nrdomku`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`idpracownika`);

--
-- Indeksy dla tabeli `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`nrrezerwacji`),
  ADD KEY `idpracownika` (`idpracownika`),
  ADD KEY `nrdomku` (`nrdomku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
