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
-- Baza danych: `noworodki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mamy`
--

CREATE TABLE `mamy` (
  `idmamy` int(11) NOT NULL,
  `imie` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `wiek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `mamy`
--

INSERT INTO `mamy` (`idmamy`, `imie`, `wiek`) VALUES
(1, 'Agata', 25),
(2, 'Agnieszka', 33),
(3, 'Agnieszka', 23),
(4, 'Aleksandra', 36),
(5, 'Aleksandra', 19),
(6, 'Alicja', 35),
(7, 'Alicja', 31),
(8, 'Alina', 40),
(9, 'Alina', 23),
(10, 'Amelia', 26),
(11, 'Amelia', 21),
(12, 'Anita', 23),
(13, 'Anna', 39),
(14, 'Anna', 38),
(15, 'Anna', 37),
(16, 'Anna', 37),
(17, 'Anna', 37),
(18, 'Anna', 37),
(19, 'Anna', 35),
(20, 'Anna', 31),
(21, 'Anna', 30),
(22, 'Anna', 30),
(23, 'Anna', 28),
(24, 'Anna', 28),
(25, 'Anna', 28),
(26, 'Anna', 26),
(27, 'Anna', 25),
(28, 'Anna', 21),
(29, 'Antonina', 22),
(30, 'Barbara', 40),
(31, 'Barbara', 39),
(32, 'Barbara', 38),
(33, 'Barbara', 31),
(34, 'Barbara', 31),
(35, 'Barbara', 30),
(36, 'Barbara', 28),
(37, 'Barbara', 26),
(38, 'Barbara', 22),
(39, 'Beata', 38),
(40, 'Beata', 37),
(41, 'Beata', 22),
(42, 'Cecylia', 40),
(43, 'Celina', 38),
(44, 'Celina', 35),
(45, 'Celina', 26),
(46, 'Danuta', 34),
(47, 'Danuta', 28),
(48, 'Danuta', 23),
(49, 'Daria', 30),
(50, 'Dominika', 27),
(51, 'Dorota', 38),
(52, 'Dorota', 37),
(53, 'Dorota', 33),
(54, 'Dorota', 29),
(55, 'Dorota', 27),
(56, 'Dorota', 26),
(57, 'Dorota', 25),
(58, 'Dorota', 21),
(59, 'Dorota', 20),
(60, 'Edyta', 33),
(61, 'Eliza', 21),
(62, 'Ernestyna', 20),
(63, 'Ewa', 38),
(64, 'Ewa', 25),
(65, 'Ewa', 23),
(66, 'Ewa', 21),
(67, 'Ewa', 20),
(68, 'Ewelina', 35),
(69, 'Wiktoria', 30),
(70, 'Ewelina', 24),
(71, 'Halina', 35),
(72, 'Hanna', 22),
(73, 'Helena', 39),
(74, 'Helena', 31),
(75, 'Irena', 27),
(76, 'Irena', 19),
(77, 'Irma', 37),
(78, 'Iwona', 32),
(79, 'Izabela', 33),
(80, 'Jadwiga', 40),
(81, 'Jadwiga', 37),
(82, 'Jadwiga', 22),
(83, 'Jagoda', 36),
(84, 'Janina', 24),
(85, 'Joanna', 39),
(86, 'Jolanta', 40),
(87, 'Jolanta', 25),
(88, 'Jolanta', 23),
(89, 'Jolanta', 21),
(90, 'Julia', 20),
(91, 'Justyna', 39),
(92, 'Justyna', 39),
(93, 'Justyna', 36),
(94, 'Justyna', 32),
(95, 'Justyna', 32),
(96, 'Kaja', 31),
(97, 'Kalina', 32),
(98, 'Karolina', 40),
(99, 'Karolina', 39),
(100, 'Karolina', 37),
(101, 'Karolina', 35),
(102, 'Karolina', 33),
(103, 'Karolina', 28),
(104, 'Karolina', 25),
(105, 'Karolina', 22),
(106, 'Kinga', 25),
(107, 'Kleopatra', 35),
(108, 'Krystyna', 36),
(109, 'Krystyna', 32),
(110, 'Krystyna', 29),
(111, 'Krystyna', 22),
(112, 'Laura', 38),
(113, 'Laura', 22),
(114, 'Lidia', 29),
(115, 'Lidia', 26),
(116, 'Magdalena', 28),
(117, 'Magdalena', 26),
(118, 'Malwina', 36),
(119, 'Malwina', 36),
(120, 'Marcela', 27),
(121, 'Marcelina', 32),
(122, 'Marcelina', 19),
(123, 'Maria', 24),
(124, 'Maria', 23),
(125, 'Mariola', 30),
(126, 'Mariola', 21),
(127, 'Marta', 36),
(128, 'Marta', 32),
(129, 'Marta', 20),
(130, 'Maryla', 21),
(131, 'Marzena', 39),
(132, 'Marzena', 31),
(133, 'Marzena', 28),
(134, 'Marzena', 25),
(135, 'Marzena', 21),
(136, 'Michalina', 25),
(137, 'Monika', 36),
(138, 'Natalia', 34),
(139, 'Natalia', 29),
(140, 'Olga', 32),
(141, 'Patrycja', 35),
(142, 'Patrycja', 34),
(143, 'Paulina', 39),
(144, 'Paulina', 37),
(145, 'Paulina', 36),
(146, 'Paulina', 24),
(147, 'Paulina', 23),
(148, 'Paulina', 19),
(149, 'Renata', 28),
(150, 'Rozalia', 27),
(151, 'Sabina', 25),
(152, 'Sabrina', 20),
(153, 'Stefania', 34),
(154, 'Stefania', 26),
(155, 'Teresa', 39),
(156, 'Teresa', 38),
(157, 'Teresa', 21),
(158, 'Wanda', 29),
(159, 'Wiktoria', 36),
(160, 'Wiktoria', 26),
(161, 'Zenobia', 25),
(162, 'Zofia', 36),
(163, 'Zofia', 31),
(164, 'Zofia', 31),
(165, 'Zofia', 28),
(166, 'Zofia', 28),
(167, 'Zofia', 27),
(168, 'Zofia', 26),
(169, 'Zofia', 23),
(170, 'Zofia', 22),
(171, 'Zofia', 20),
(172, 'Zuzanna', 39),
(173, 'Zuzanna', 30),
(174, 'Zyta', 31);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `noworodki`
--

CREATE TABLE `noworodki` (
  `idnoworodki` int(11) NOT NULL,
  `plec` enum('c','s') COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `data urodzenia` date NOT NULL,
  `waga` int(11) NOT NULL,
  `wzrost` int(11) NOT NULL,
  `idmamy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `noworodki`
--

INSERT INTO `noworodki` (`idnoworodki`, `plec`, `imie`, `data urodzenia`, `waga`, `wzrost`, `idmamy`) VALUES
(1, 'c', 'Agnieszka', '1999-11-20', 2450, 48, 33),
(2, 's', 'Daniel', '1999-11-16', 4100, 55, 143),
(3, 's', 'Maciej', '1999-11-20', 3350, 55, 34),
(4, 'c', 'Laura', '1999-11-17', 3850, 56, 15),
(5, 's', 'Wojciech', '1999-11-20', 4200, 57, 163),
(6, 's', 'Sebastian', '1999-11-22', 3650, 52, 75),
(7, 's', 'Miko?aj', '1999-11-21', 3100, 54, 149),
(8, 's', 'Kacper', '1999-11-21', 3150, 52, 133),
(9, 'c', 'Olga', '1999-11-21', 3850, 56, 36),
(10, 'c', 'Maja', '1999-11-23', 3950, 61, 64),
(11, 'c', 'Karolina', '1999-11-23', 3150, 55, 106),
(12, 'c', 'Sandra', '1999-11-22', 3350, 55, 150),
(13, 'c', 'Karolina', '1999-11-21', 3450, 58, 23),
(14, 's', 'Jan', '1999-11-23', 4000, 56, 57),
(15, 's', 'Jerzy', '1999-11-24', 4250, 57, 27),
(16, 'c', 'Barbara', '1999-11-21', 3150, 54, 165),
(17, 'c', 'Katarzyna', '1999-11-23', 3450, 54, 161),
(18, 'c', 'Anna', '1999-11-21', 3700, 56, 24),
(19, 'c', 'Sandra', '1999-11-23', 3800, 55, 104),
(20, 's', 'Miko?aj', '1999-11-24', 3250, 55, 123),
(21, 's', 'Norbert', '1999-11-15', 4100, 58, 85),
(22, 's', '?ukasz', '1999-11-12', 3640, 51, 99),
(23, 's', 'Grzegorz', '1999-11-15', 2710, 54, 73),
(24, 'c', 'Kamila', '1999-11-16', 3400, 55, 14),
(25, 'c', 'Joanna', '1999-11-17', 3400, 54, 144),
(26, 'c', 'Marta', '1999-11-17', 3400, 58, 16),
(27, 'c', 'Zuzanna', '1999-11-18', 3380, 55, 4),
(28, 's', 'Andrzej', '1999-11-17', 3700, 56, 81),
(29, 's', 'Gabriel', '1999-11-16', 4100, 54, 112),
(30, 'c', 'Ma?gorzata', '1999-11-15', 3780, 52, 131),
(31, 's', 'Maciej', '1999-11-20', 3740, 54, 74),
(32, 's', 'Tomasz', '1999-11-18', 3370, 56, 127),
(33, 'c', 'Monika', '1999-11-21', 3350, 51, 116),
(34, 'c', 'Joanna', '1999-11-22', 3130, 53, 50),
(35, 's', 'Mateusz', '1999-11-22', 3640, 57, 154),
(36, 's', 'Jakub', '1999-11-11', 3200, 54, 8),
(37, 'c', 'Marika', '1999-11-11', 3470, 55, 80),
(38, 'c', 'Aleksandra', '1999-11-11', 4360, 59, 98),
(39, 's', 'B?a?ej', '1999-11-12', 3850, 54, 172),
(40, 's', 'Marcin', '1999-11-12', 3250, 56, 155),
(41, 's', 'Jakub', '1999-11-12', 4150, 56, 91),
(42, 's', 'Maciej', '1999-11-13', 3040, 53, 92),
(43, 'c', 'Magdalena', '1999-11-18', 3940, 54, 93),
(44, 's', 'Antoni', '1999-11-17', 3740, 57, 77),
(45, 's', 'Jakub', '1999-11-18', 3170, 52, 6),
(46, 's', 'Marek', '1999-11-17', 3750, 60, 40),
(47, 's', 'Jan', '1999-11-16', 4000, 55, 51),
(48, 'c', 'Aleksandra', '1999-11-18', 3300, 53, 101),
(49, 'c', 'Weronika', '1999-11-18', 4200, 56, 107),
(50, 's', 'Kacper', '1999-11-18', 3170, 52, 68),
(51, 's', 'Oskar', '1999-11-18', 3850, 62, 71),
(52, 'c', 'Klaudia', '1999-11-17', 2710, 52, 17),
(53, 'c', 'Sylwia', '1999-11-17', 3200, 53, 18),
(54, 'c', 'Paulina', '1999-11-20', 2500, 51, 96),
(55, 'c', 'Ma?gorzata', '1999-11-20', 3520, 53, 132),
(56, 's', 'Micha?', '1999-11-22', 3720, 56, 168),
(57, 's', 'Kacper', '1999-11-21', 2150, 51, 25),
(58, 's', 'Dawid', '1999-11-18', 2800, 50, 141),
(59, 's', 'Kacper', '1999-11-14', 3460, 55, 13),
(60, 's', 'Krzysztof', '1999-11-17', 4190, 58, 100),
(61, 'c', 'Katarzyna', '1999-11-19', 3800, 60, 60),
(62, 's', 'Bart?omiej', '1999-11-18', 3690, 56, 19),
(63, 's', 'Ernest', '1999-11-16', 3960, 61, 156),
(64, 's', '?ukasz', '1999-11-20', 3410, 55, 7),
(65, 'c', 'Wiktoria', '1999-11-17', 3040, 53, 118),
(66, 's', 'Mateusz', '1999-11-20', 3820, 59, 174),
(67, 's', 'Kajetan', '1999-11-16', 2560, 47, 39),
(68, 's', 'Artur', '1999-11-22', 3440, 56, 117),
(69, 's', 'Antoni', '1999-11-19', 3680, 58, 2),
(70, 's', 'Mateusz', '1999-11-19', 1900, 47, 53),
(71, 's', 'Pawe?', '1999-11-20', 3700, 55, 164),
(72, 's', 'Dominik', '1999-11-21', 2010, 52, 25),
(73, 'c', 'Wiktoria', '1999-11-20', 3350, 53, 69),
(74, 'c', 'Julia', '1999-11-23', 2650, 55, 136),
(75, 's', 'Kacper', '1999-11-23', 2100, 54, 1),
(76, 's', 'Piotr', '1999-11-16', 4250, 56, 63),
(77, 'c', 'Maria', '1999-11-20', 3700, 55, 35),
(78, 's', 'Wojciech', '1999-11-20', 3750, 57, 21),
(79, 's', 'Mateusz', '1999-11-20', 3450, 53, 125),
(80, 'c', 'Eryka', '1999-11-22', 3400, 52, 10),
(81, 's', 'Piotr', '1999-11-16', 3650, 55, 32),
(82, 'c', 'Magdalena', '1999-11-17', 3900, 59, 83),
(83, 's', 'Stanis?aw', '1999-11-20', 3600, 58, 173),
(84, 'c', 'Izabela', '1999-12-08', 3020, 52, 12),
(85, 's', 'Mateusz', '1999-12-04', 1880, 44, 9),
(86, 's', 'Miko?aj', '1999-12-04', 1940, 48, 88),
(87, 's', 'Przemys?aw', '1999-12-08', 4440, 55, 38),
(88, 's', 'Jakub', '1999-12-08', 2900, 51, 82),
(89, 's', 'Emil', '1999-12-07', 3960, 56, 48),
(90, 'c', 'Wiktoria', '1999-12-09', 1940, 52, 41),
(91, 's', 'Mateusz', '1999-12-07', 2880, 54, 147),
(92, 'c', 'Daria', '1999-12-07', 4160, 56, 124),
(93, 's', 'Filip', '1999-12-07', 3520, 54, 169),
(94, 's', 'Piotr', '1999-12-07', 3600, 53, 65),
(95, 'c', 'Klaudia', '1999-12-08', 2400, 48, 111),
(96, 'c', 'Wiktoria', '1999-12-06', 2760, 50, 3),
(97, 'c', 'Olga', '1999-12-09', 1890, 51, 41),
(98, 's', 'Wojciech', '1999-12-09', 3620, 56, 170),
(99, 'c', 'Weronika', '1999-12-10', 3900, 53, 157),
(100, 'c', 'Antonina', '1999-12-11', 3000, 52, 11),
(101, 'c', 'Maria', '1999-12-09', 3780, 55, 105),
(102, 's', 'Patryk', '1999-12-11', 3970, 56, 126),
(103, 's', 'Filip', '1999-12-09', 2900, 50, 113),
(104, 'c', 'Anna', '1999-12-09', 2520, 49, 72),
(105, 's', 'Kamil', '1999-12-11', 4530, 58, 135),
(106, 'c', 'Aleksandra', '1999-12-10', 3300, 54, 58),
(107, 'c', 'Julia', '1999-12-11', 2890, 52, 66),
(108, 'c', 'Paulina', '1999-12-10', 3300, 53, 130),
(109, 's', 'Mi?osz', '1999-12-11', 4220, 58, 61),
(110, 's', 'Jakub', '1999-12-10', 3480, 56, 89),
(111, 'c', 'Natalia', '1999-12-09', 2520, 46, 29),
(112, 'c', 'Weronika', '1999-12-10', 2950, 51, 28),
(113, 's', 'Jakub', '1999-12-12', 3420, 54, 67),
(114, 'c', 'Natalia', '1999-12-14', 3510, 55, 148),
(115, 'c', 'Zuzanna', '1999-12-14', 3720, 55, 122),
(116, 's', 'Micha?', '1999-12-13', 3690, 55, 59),
(117, 's', 'Dominik', '1999-12-11', 3600, 55, 129),
(118, 'c', 'Kamila', '1999-12-12', 2780, 54, 90),
(119, 'c', 'Weronika', '1999-12-11', 3460, 55, 62),
(120, 's', 'Rafa?', '1999-12-12', 2060, 53, 152),
(121, 'c', 'Katarzyna', '1999-12-12', 2010, 55, 152),
(122, 's', 'Krystian', '1999-12-12', 2980, 51, 171),
(123, 'c', 'Zofia', '1999-12-13', 2760, 49, 76),
(124, 'c', 'Julia', '1999-12-14', 3100, 52, 5),
(125, 'c', 'Natalia', '1999-11-17', 3050, 54, 159),
(126, 'c', 'Adela', '1999-11-16', 3470, 53, 43),
(127, 's', 'Kamil', '1999-11-16', 3400, 56, 52),
(128, 'c', 'Agnieszka', '1999-11-18', 3030, 51, 44),
(129, 's', 'Szymon', '1999-11-19', 3100, 57, 140),
(130, 's', 'Piotr', '1999-11-18', 3100, 53, 153),
(131, 'c', 'Marta', '1999-11-18', 3500, 57, 142),
(132, 'c', 'Weronika', '1999-11-19', 2800, 53, 109),
(133, 's', 'Patryk', '1999-11-19', 3450, 55, 128),
(134, 's', 'Krzysztof', '1999-11-18', 2980, 53, 138),
(135, 'c', 'Natalia', '1999-11-20', 3440, 57, 22),
(136, 's', 'Mateusz', '1999-11-19', 2500, 51, 121),
(137, 'c', 'Izabela', '1999-11-22', 2160, 52, 115),
(138, 'c', 'Sonia', '1999-11-22', 2100, 53, 115),
(139, 's', 'Adam', '1999-11-23', 1950, 54, 1),
(140, 's', 'Marcin', '1999-11-23', 3900, 59, 151),
(141, 's', 'Mateusz', '1999-11-18', 4300, 57, 46),
(142, 's', 'Kacper', '1999-11-20', 3340, 54, 49),
(143, 's', 'Adam', '1999-11-18', 3800, 59, 79),
(144, 's', 'Adam', '1999-11-19', 2260, 53, 121),
(145, 's', 'Andrzej', '1999-11-20', 3980, 55, 114),
(146, 's', 'Bart?omiej', '1999-11-19', 3420, 56, 94),
(147, 's', 'Borys', '1999-11-17', 4080, 57, 119),
(148, 'c', 'Anna', '1999-11-17', 4060, 56, 145),
(149, 's', 'Marcin', '1999-11-22', 3240, 54, 45),
(150, 'c', 'Maria', '1999-11-24', 4300, 58, 84),
(151, 's', 'Filip', '1999-11-22', 3700, 53, 26),
(152, 's', 'Artur', '1999-11-20', 2700, 51, 110),
(153, 's', 'Mateusz', '1999-11-24', 4640, 58, 146),
(154, 'c', 'Olga', '1999-11-23', 3340, 51, 87),
(155, 's', 'Marek', '1999-11-18', 3390, 57, 102),
(156, 'c', 'Ma?gorzata', '1999-11-20', 4150, 56, 158),
(157, 's', 'Miko?aj', '1999-11-21', 3800, 58, 166),
(158, 's', '?ukasz', '1999-11-22', 3500, 53, 37),
(159, 's', 'Mieszko', '1999-11-22', 4200, 54, 56),
(160, 'c', 'Zuzanna', '1999-11-21', 3360, 53, 167),
(161, 's', 'Damian', '1999-11-21', 3300, 57, 120),
(162, 's', 'Dariusz', '1999-11-17', 4550, 59, 162),
(163, 'c', 'Joanna', '1999-11-20', 3330, 54, 54),
(164, 'c', 'Alicja', '1999-11-11', 3420, 54, 86),
(165, 's', 'Marcin', '1999-11-13', 3800, 56, 31),
(166, 'c', 'Helena', '1999-11-19', 3600, 55, 78),
(167, 'c', 'Monika', '1999-11-19', 4200, 54, 95),
(168, 's', 'Piotr', '1999-11-17', 3560, 52, 137),
(169, 'c', 'Kamila', '1999-11-04', 3590, 56, 42),
(170, 's', 'Piotr', '1999-11-11', 4020, 60, 30),
(171, 's', 'Robert', '1999-11-20', 3050, 54, 139),
(172, 's', 'Roman', '1999-11-22', 3450, 55, 160),
(173, 's', 'Mateusz', '1999-11-19', 3060, 54, 97),
(174, 's', 'Janusz', '1999-11-20', 3930, 56, 47),
(175, 's', '?ukasz', '1999-11-21', 2900, 54, 55),
(176, 's', 'Sebastian', '1999-11-17', 4020, 57, 108),
(177, 's', 'Szymon', '1999-11-20', 3200, 54, 103),
(178, 'c', 'Patrycja', '1999-11-19', 3250, 53, 20),
(179, 's', 'Konstanty', '1999-11-23', 3550, 55, 134),
(180, 'c', 'Maria', '1999-11-24', 3000, 52, 70);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `mamy`
--
ALTER TABLE `mamy`
  ADD PRIMARY KEY (`idmamy`);

--
-- Indeksy dla tabeli `noworodki`
--
ALTER TABLE `noworodki`
  ADD PRIMARY KEY (`idnoworodki`),
  ADD KEY `idmamy` (`idmamy`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `mamy`
--
ALTER TABLE `mamy`
  MODIFY `idmamy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT dla tabeli `noworodki`
--
ALTER TABLE `noworodki`
  MODIFY `idnoworodki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `noworodki`
--
ALTER TABLE `noworodki`
  ADD CONSTRAINT `noworodki_ibfk_1` FOREIGN KEY (`idmamy`) REFERENCES `mamy` (`idmamy`),
  ADD CONSTRAINT `noworodki_ibfk_2` FOREIGN KEY (`idmamy`) REFERENCES `mamy` (`idmamy`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
