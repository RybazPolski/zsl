-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Mar 2022, 14:38
-- Wersja serwera: 10.1.8-MariaDB
-- Wersja PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `lokalizator`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miejsca`
--

CREATE TABLE `miejsca` (
  `Id` int(10) NOT NULL,
  `Miasto` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `Adres` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `Otwarcie` time(5) NOT NULL,
  `Zamkniecie` time(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `miejsca`
--

INSERT INTO `miejsca` (`Id`, `Miasto`, `Adres`, `Otwarcie`, `Zamkniecie`) VALUES
(1, 'Poznań', 'ul. Warszawska 16', '07:00:00.00000', '16:00:00.00000'),
(2, 'Poznan', 'ul. Kwiatkowska 16', '08:00:00.00000', '17:00:00.00000'),
(3, 'Kraków', 'ul. Słoneczna', '09:00:00.00000', '22:00:00.00000'),
(7, 'Kijów', 'ul. Bakłażana', '04:00:00.00000', '23:00:00.00000'),
(8, 'Warszawa', 'osiedle Krupy', '07:00:00.00000', '18:00:00.00000'),
(9, 'Warszawa', 'ul. Biała', '04:00:00.00000', '16:00:00.00000');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `miejsca`
--
ALTER TABLE `miejsca`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `miejsca`
--
ALTER TABLE `miejsca`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
