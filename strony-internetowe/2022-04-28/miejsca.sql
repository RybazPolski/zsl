-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2022 at 02:48 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Lokalizator`
--

-- --------------------------------------------------------

--
-- Table structure for table `miejsca`
--

CREATE TABLE `miejsca` (
  `Id` int(10) NOT NULL,
  `Miasto` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `Adres` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `Otwarcie` time NOT NULL,
  `Zamkniecie` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `miejsca`
--

INSERT INTO `miejsca` (`Id`, `Miasto`, `Adres`, `Otwarcie`, `Zamkniecie`) VALUES
(1, 'Poznań', 'ul. Warszawska 16', '07:00:00', '16:00:00'),
(2, 'Poznan', 'ul. Kwiatkowska 16', '08:00:00', '17:00:00'),
(3, 'Kraków', 'ul. Słoneczna', '09:00:00', '22:00:00'),
(7, 'Kijów', 'ul. Bakłażana', '04:00:00', '23:00:00'),
(8, 'Warszawa', 'osiedle Krupy', '07:00:00', '18:00:00'),
(9, 'Warszawa', 'ul. Biała', '04:00:00', '16:00:00'),
(10, 'Grudziądz', 'ul. Grudziądzka 1', '08:00:00', '18:00:00'),
(11, 'Stacyjkowo', 'ul. Kolejowa 123', '00:00:12', '00:00:16'),
(12, 'Wiry', 'ul. Górna 242423612748', '12:00:00', '21:00:00'),
(13, 'Wyścigowo', 'ul. Asfaltowa 88 ', '07:00:00', '16:00:00'),
(14, 'Nieznam', 'Fajny', '12:00:00', '21:00:00');

--
-- Indexes for dumped tables
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
-- AUTO_INCREMENT for table `miejsca`
--
ALTER TABLE `miejsca`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
