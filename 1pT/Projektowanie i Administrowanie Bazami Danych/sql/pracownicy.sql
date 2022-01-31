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
-- Baza danych: `pracownicy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(15) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `placa` decimal(10,0) DEFAULT NULL,
  `stanowisko` varchar(30) DEFAULT NULL,
  `pesel` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `placa`, `stanowisko`, `pesel`) VALUES
(1, 'Adam', 'Kowalski', '1625', 'magazynier', '85121201234'),
(2, 'Adam', 'Nowak', '3760', 'kierownik', '90010111234'),
(3, 'Andrzej', 'Kowalski', '4200', 'kierownik', '82020209876'),
(4, 'Arkadiusz', 'Malinowski', '1600', 'kierowca', '93110212345'),
(5, 'Andrzej', 'Malinowski', '1450', 'sprzedawca', 'NULL'),
(6, 'Krzysztof', 'Nowicki', '1300', 'sprzedawca', 'NULL'),
(7, 'Kacper', 'Adamczyk', '1611', 'serwisant', '92090912468'),
(8, 'Kamil', 'Andrzejczak', '1200', 'asystent', 'NULL'),
(9, 'Krzysztof', 'Arkuszewski', '1500', 'magazynier', '80123109876'),
(10, 'Kamil', 'Borowski', '1600', 'sprzedawca', '95050515432');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
